import React, {useEffect, useState} from "react";
import FavouriteCard from "../../components/FavouriteCard";
import PageTitle from "../../components/PageTitle";
import './Opening.scss'
import { TabList } from "@carbon/react";
import { Tabs } from "@carbon/react";
import { Tab } from "@carbon/react";
import { TabPanels } from "@carbon/react";
import { TabPanel } from "@carbon/react";
import OpeningsTab from "../../components/OpeningsTab";
import OpeningMetricsTab from "../../components/OpeningMetricsTab";

const Opening: React.FC = () => {
  const [showSpatial, setShowSpatial] = useState<boolean>(false);

  useEffect(() => {
    console.log(`showSpatial changed=${showSpatial}`);
  }, [showSpatial]);

  return (
    <>
      <div className="container-fluid">
        <div className="row px-0 py-4 p-sm-4" data-testid="opening-pagetitle">
          <PageTitle
            title="Openings"
            subtitle="Create, manage or check opening information"
          />
        </div>
      </div>

      {!showSpatial && (
        <div className="favourite-activities">
          <div className="row gy-0 gy-sm-4 ">
            <div className="col-sm-6 col-md-6 col-lg-6 col-xl-6 col-xxl-3">
              <FavouriteCard index={1} title={'Search opening'} link="#" icon={'SearchLocate'} description={'Search for a opening to update or consult using advance filters such as activities, standards, codes or links'}/>
            </div>
            <div className="col-sm-6 col-md-6 col-lg-6 col-xl-6 col-xxl-3">
              <FavouriteCard index={1} title={'Create a new opening'} link="#" icon={'MapBoundary'} description={'Register a opening for tracking silviculture treatments'}/>
            </div>
            <div className="col-sm-6 col-md-6 col-lg-6 col-xl-6 col-xxl-3">
              <FavouriteCard index={1} title={'Reports'} link="#" icon={'ReportData'} description={'Consult and manage opening reports'}/>
            </div>
            <div className="col-sm-6 col-md-6 col-lg-6 col-xl-6 col-xxl-3">
              <FavouriteCard index={1} title={'Upcoming activities'} link="#" icon={'Activity'} description={'Track opening activities and milestones'}/>
            </div>
          </div>
        </div>
      )}

      <Tabs>
        <TabList aria-label="List of Tab" contained>
          <Tab><div className="tab-header">Recent Openings</div></Tab>
          <Tab><div className="tab-header">Dashboard</div></Tab>
        </TabList>
        <TabPanels>
          <TabPanel className="tab-content">
            <OpeningsTab 
              showSpatial={showSpatial}
              setShowSpatial={setShowSpatial}
            />
          </TabPanel>
          <TabPanel className="tab-content">
            <OpeningMetricsTab />
          </TabPanel>
        </TabPanels>
      </Tabs>
    </>
  );
};

export default Opening;
