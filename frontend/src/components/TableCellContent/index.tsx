// TableCellContent.tsx

import React from "react";
import StatusTag from "../StatusTag";
import ActionButtons from "../ActionButtons";
import SpatialCheckbox from "../SpatialCheckbox";
import { OpeningsSearch } from "../../types/OpeningsSearch";
import TruncatedText from "../TruncatedText";

interface TableCellContentProps {
  headerKey: string;
  row: OpeningsSearch;
  showSpatial: boolean;
  selectedRows: string[];
  handleRowSelectionChanged: (rowId: string) => void;
}

const TableCellContent: React.FC<TableCellContentProps> = ({
  headerKey,
  row,
  showSpatial,
  selectedRows,
  handleRowSelectionChanged
}) => {
  switch (headerKey) {
    case "statusDescription":
      return <StatusTag code={row[headerKey] as string} />;
    case "actions":
      return (
        <>
        {showSpatial && (
            <SpatialCheckbox
              rowId={row.openingId.toString()}
              selectedRows={selectedRows}
              handleRowSelectionChanged={handleRowSelectionChanged}
            />
          )}
          <ActionButtons 
            favorited={row.favourite as boolean} 
            rowId={row.openingId.toString()} 
          />
        </>
      );
    case "Category":
      return (
        <TruncatedText text={row["categoryCode"] + " - " + row["categoryDescription"]} />
      );
    default:
      return <>{row[headerKey as keyof OpeningsSearch]}</>;
  }
};

export default TableCellContent;
