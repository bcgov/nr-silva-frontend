import React, { useState, useEffect, useContext } from "react";
import "./styles.scss";
import EmptySection from "../../../EmptySection";
import OpeningsSearchBar from "../OpeningsSearchBar";
import TableSkeleton from "../../../TableSkeleton";
import SearchScreenDataTable from "../SearchScreenDataTable";
import { headers } from "../SearchScreenDataTable/testData";
import OpeningsMap from "../../../OpeningsMap";
import { useOpeningsQuery } from "../../../../services/queries/search/openingQueries";
import { useOpeningsSearch } from "../../../../contexts/search/OpeningsSearch";
import PaginationContext from "../../../../contexts/PaginationContext";

const OpeningsSearchTab: React.FC = () => {
  const [showSpatial, setShowSpatial] = useState<boolean>(false);
  const [loadId, setLoadId] = useState<number | null>(null);
  const [openingPolygonNotFound, setOpeningPolygonNotFound] =
    useState<boolean>(false);
  const [filtersApplied, setFiltersApplied] = useState<boolean>(false);
  const [searchParams, setSearchParams] = useState<Record<string, any>>({});
  const [finalParams, setFinalParams] = useState<Record<string, any>>({}); // Store params for query after search
  const [isSearchTriggered, setIsSearchTriggered] = useState<boolean>(false); // Trigger state for search
  const { currentPage, itemsPerPage, totalResultItems } = useContext(PaginationContext);

  // Only fetch when search is triggered and with finalParams
  const { data, isFetching } = useOpeningsQuery(finalParams, isSearchTriggered);
  const { filters } = useOpeningsSearch();

  const toggleSpatial = () => {
    setShowSpatial(!showSpatial);
  };

  const toggleFiltersApplied = () => {
    setFiltersApplied(!filtersApplied);
  };

  const handleSearch = () => {
    toggleFiltersApplied();
    setFiltersApplied(true); // Set filters as applied to show results
    setFinalParams(searchParams); // Only update finalParams on search
    setIsSearchTriggered(true); // Trigger the search
  };

  const handleFiltersChanged = () => {
    setSearchParams((prevParams) => ({
      ...prevParams,
      ...filters,
      page: currentPage,
      perPage: itemsPerPage
    }));
  };

  const handlePaginationChanged = () => {
    setFinalParams((prevParams) => ({
      ...prevParams,
      page: currentPage,
      perPage: itemsPerPage
    }));
  }

  const handleSearchInputChange = (searchInput: string) => {
    setSearchParams((prevParams) => ({
      ...prevParams,
      searchInput,
      page: 1, //going back to page 1 when the user clicks to make another search
      perPage: itemsPerPage
    }));
  };

  useEffect(() => {
    handleFiltersChanged();
  }, [filters]);

  useEffect(() => {
    handlePaginationChanged();
  }, [currentPage, itemsPerPage]);

  return (
    <>
      <div className="container-fluid p-0 pb-5 align-content-center">
        <OpeningsSearchBar
          onSearchInputChange={handleSearchInputChange}
          onSearchClick={handleSearch}
        />
        {showSpatial ? (
          <div className="search-spatial-container row p-0">
            <div className="leaflet-container">
              <OpeningsMap
                openingId={null}
                setOpeningPolygonNotFound={setOpeningPolygonNotFound}
              />
            </div>
          </div>
        ) : null}
        <div className="row">
          {filtersApplied ? (
            <>
              {isFetching ? (
                <TableSkeleton headers={headers} />
              ) : (
                <SearchScreenDataTable
                  headers={headers}
                  rows={data?.data || []}
                  setOpeningId={setLoadId}
                  toggleSpatial={toggleSpatial}
                  showSpatial={showSpatial}
                  totalItems={(data?.perPage ?? 0) * (data?.totalPages ?? 0)}
                />
              )}
            </>
          ) : (
            <EmptySection
              pictogram="Summit"
              title={"Nothing to show yet"}
              description={
                "At least one criteria must be entered to start the search: opening ID, opening number, timber mark, file ID or apply advanced search criteria. The matching results will be shown here."
              }
              fill="#0073E6"
            />
          )}
        </div>
      </div>
    </>
  );
};

export default OpeningsSearchTab;