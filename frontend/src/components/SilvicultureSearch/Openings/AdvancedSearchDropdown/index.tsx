import React, { useEffect } from "react";
import {
  Checkbox,
  CheckboxGroup,
  Dropdown,
  TextInput,
  FormLabel,
  Tooltip,
  DatePicker,
  DatePickerInput,
  Loading,
  FlexGrid,
  Row,
  Column,
} from "@carbon/react";
import "./AdvancedSearchDropdown.scss";
import * as Icons from "@carbon/icons-react";
import { useOpeningFiltersQuery } from "../../../../services/queries/search/openingQueries";
import { useOpeningsSearch } from "../../../../contexts/search/OpeningsSearch";

interface AdvancedSearchDropdownProps {
  toggleShowFilters: () => void; // Function to be passed as a prop
}

const AdvancedSearchDropdown: React.FC<AdvancedSearchDropdownProps> = ({
  toggleShowFilters,
}) => {
  const defaultFilters = {
    startDate: null as Date | null,
    endDate: null as Date | null,
    orgUnit: null as string | null,
    category: null as string | null,
    clientAcronym: "",
    blockStatus: "",
    cutBlock: "",
    cuttingPermit: "",
    grossArea: "",
    timberMark: "",
    dateType: null as string | null,
    openingFilters: [] as string[], // Array to hold multiple checkbox selections
    blockStatuses: [] as string[], // Array to hold multiple block statuses
  };

  const { filters, setFilters, clearFilters } = useOpeningsSearch();
  const { data, isLoading, isError } = useOpeningFiltersQuery();

  const handleFilterChange = (updatedFilters: Partial<typeof filters>) => {
    const newFilters = { ...filters, ...updatedFilters };
    setFilters(newFilters);
  };

  const handleCheckboxChange = (value: string, group: string) => {
    const selectedGroup = filters[group as keyof typeof filters] as string[];
    const updatedGroup = selectedGroup.includes(value)
      ? selectedGroup.filter((item) => item !== value)
      : [...selectedGroup, value];

    handleFilterChange({ [group]: updatedGroup });
  };

  const handleClearFilters = () => {
    console.log("clearing filters");
    setFilters(defaultFilters);
  };

  if (isLoading) {
    return <Loading withOverlay={true} />;
  }

  if (isError) {
    return (
      <div>
        <p>There was an error while loading the advanced filters.</p>
      </div>
    );
  }

  const categoryItems =
    data.categories?.map((item: any) => ({
      text: item.code,
      value: item.code,
    })) || [];

  const orgUnitItems =
    data.orgUnits?.map((item: any) => ({
      text: item.orgUnitCode,
      value: item.orgUnitCode,
    })) || [];

  return (
    <div className="advanced-search-dropdown">
      <FlexGrid className="container-fluid advanced-search-container p-32">
        <Row className="pb-32">
          <Column sm={4} className="group-1">
            <CheckboxGroup
              orientation="horizontal"
              legendText="Opening Filters"
            >
              <Checkbox
                labelText={`Openings created by me`}
                id="checkbox-label-1"
                checked={filters.openingFilters.includes(
                  "Openings created by me"
                )}
                onChange={() =>
                  handleCheckboxChange(
                    "Openings created by me",
                    "openingFilters"
                  )
                }
              />
              <Checkbox
                labelText={`Submitted to FRPA section 108`}
                id="checkbox-label-2"
                checked={filters.openingFilters.includes(
                  "Submitted to FRPA section 108"
                )}
                onChange={() =>
                  handleCheckboxChange(
                    "Submitted to FRPA section 108",
                    "openingFilters"
                  )
                }
              />
            </CheckboxGroup>
          </Column>
        </Row>

        <Row className="mb-3">
          <Column lg={8}>
            <Dropdown
              id="orguni-dropdown"
              titleText="Org unit"
              items={orgUnitItems}
              itemToString={(item: any) => (item ? item.text : "")}
              onChange={(e: any) =>
                handleFilterChange({ orgUnit: e.selectedItem.value })
              }
              label="Enter or choose an org unit"
              selectedItem={orgUnitItems.find(
                (item: any) => item.value === filters.orgUnit
              )}
            />
          </Column>
          <Column lg={8}>
            <Dropdown
              id="category-dropdown"
              titleText="Category"
              items={categoryItems}
              itemToString={(item: any) => (item ? item.text : "")}
              onChange={(e: any) =>
                handleFilterChange({ category: e.selectedItem.value })
              }
              label="Enter or choose a category"
              selectedItem={categoryItems.find(
                (item: any) => item.value === filters.category
              )}
            />
          </Column>
        </Row>

        <Row className="mb-3">
          <Column lg={8}>
            <FormLabel>Client acronym</FormLabel>
            <Tooltip
              align="bottom"
              label="If you don't remember the client information you can go to client search."
            >
              <button className="bx--tooltip__trigger" type="button">
                <Icons.Information />
              </button>
            </Tooltip>
            <TextInput
              id="text-input-1"
              type="text"
              labelText=""
              className="mt-2"
              value={filters.clientAcronym}
              onChange={(e: any) =>
                handleFilterChange({ clientAcronym: e.target.value })
              }
            />
          </Column>
          <Column lg={8}>
            <FormLabel>Block</FormLabel>
            <Tooltip
              align="bottom"
              label="If you don't remember the client information you can go to client search."
            >
              <button className="bx--tooltip__trigger" type="button">
                <Icons.Information />
              </button>
            </Tooltip>
            <div className="d-flex flex-auto mt-2">
              <TextInput
                id="text-input-2"
                type="text"
                placeholder="Cut block"
                labelText=""
                className="mx-1"
                value={filters.cutBlock}
                onChange={(e: any) =>
                  handleFilterChange({ cutBlock: e.target.value })
                }
              />
              <TextInput
                id="text-input-3"
                placeholder="Cutting permit"
                labelText=""
                type="text"
                value={filters.cuttingPermit}
                onChange={(e: any) =>
                  handleFilterChange({ cuttingPermit: e.target.value })
                }
              />
            </div>
          </Column>
        </Row>

        <Row className="mb-3">
          <Column lg={8}>
            <TextInput
              id="gross-area-input"
              type="number"
              className="mt-2"
              labelText="Gross area"
              value={filters.grossArea}
              onChange={(e: any) =>
                handleFilterChange({ grossArea: e.target.value })
              }
            />
          </Column>
          <Column lg={8}>
            <TextInput
              id="timber-mark-input"
              type="number"
              className="mt-2"
              labelText="Timber mark"
              value={filters.timberMark}
              onChange={(e: any) =>
                handleFilterChange({ timberMark: e.target.value })
              }
            />
          </Column>
        </Row>

        <Row className="">
          <Column lg={8}>
            <FlexGrid className="p-0">
              <Row>
                <Column sm={4} lg={16} xl={16} max={5} className="date-type-col">
                  <Dropdown
                    id="date-type-dropdown"
                    titleText="Date type"
                    items={categoryItems}
                    itemToString={(item: any) => (item ? item.text : "")}
                    onChange={(e: any) =>
                      handleFilterChange({ dateType: e.selectedItem.value })
                    }
                    label="Date type"
                  />
                </Column>
                <Column sm={4} lg={16} xl={16} max={11} className="date-selectors-col">
                  <div className="d-flex flex-auto">
                    <DatePicker
                      datePickerType="single"
                      className="me-1"
                      onChange={(dates: [Date]) => {
                        handleFilterChange({ startDate: dates[0] });
                      }}
                    >
                      <DatePickerInput
                        id="start-date-picker-input-id"
                        placeholder="yyyy/MM/dd"
                        size="md"
                        labelText="Start Date"
                        value={
                          filters.startDate
                            ? filters.startDate.toISOString().slice(0, 10)
                            : ""
                        }
                      />
                    </DatePicker>
                    <DatePicker
                      datePickerType="single"
                      onChange={(dates: [Date]) => {
                        handleFilterChange({ endDate: dates[0] });
                      }}
                    >
                      <DatePickerInput
                        id="end-date-picker-input-id"
                        placeholder="yyyy/MM/dd"
                        size="md"
                        labelText="End Date"
                        value={
                          filters.endDate
                            ? filters.endDate.toISOString().slice(0, 10)
                            : ""
                        }
                      />
                    </DatePicker>
                  </div>
                </Column>
              </Row>
            </FlexGrid>
          </Column>
          <Column lg={8}>
            <CheckboxGroup
              orientation="horizontal"
              className="horizontal-checkbox-group"
              legendText="Status"
            >
              <div className="d-flex">
                <Checkbox
                  labelText={`DFT - Draft`}
                  id="checkbox-label-dft"
                  checked={filters.blockStatuses.includes("DFT - Draft")}
                  onChange={() =>
                    handleCheckboxChange("DFT - Draft", "blockStatuses")
                  }
                />
                <Checkbox
                  labelText={`APP - Approved`}
                  id="checkbox-label-app"
                  checked={filters.blockStatuses.includes("APP - Approved")}
                  onChange={() =>
                    handleCheckboxChange("APP - Approved", "blockStatuses")
                  }
                />
              </div>
              <div className="d-flex">
                <Checkbox
                  labelText={`RJC - Rejected`}
                  id="checkbox-label-rjc"
                  checked={filters.blockStatuses.includes("RJC - Rejected")}
                  onChange={() =>
                    handleCheckboxChange("RJC - Rejected", "blockStatuses")
                  }
                />
                <Checkbox
                  labelText={`CNL - Cancelled`}
                  id="checkbox-label-cnl"
                  checked={filters.blockStatuses.includes("CNL - Cancelled")}
                  onChange={() =>
                    handleCheckboxChange("CNL - Cancelled", "blockStatuses")
                  }
                />
              </div>
            </CheckboxGroup>
          </Column>
        </Row>
      </FlexGrid>
    </div>
  );
};

export default AdvancedSearchDropdown;
