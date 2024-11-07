import React, { useState, useEffect } from "react";
import History from '../../types/History';
import FavoriteButton from '../FavoriteButton';
import './styles.scss';
import { useNotification } from '../../contexts/NotificationProvider';
import { fetchOpeningTrends, deleteOpeningFavorite } from "../../services/OpeningFavoriteService";


const OpeningHistory: React.FC = () => {
  const { displayNotification } = useNotification();
  const [histories, setHistories] = useState<History[]>([]);

  const loadTrends = async () => {    
    const history = await fetchOpeningTrends();    
    setHistories(history?.map(item => ({ id: item, steps: [] })) || []);
  };

  useEffect(() => { loadTrends(); },[]);


  const handleFavoriteChange = async (newStatus: boolean, openingId: number) => {
    try {
      if(!newStatus){      
        await deleteOpeningFavorite(openingId);
        displayNotification({
          title: 'Favorite Removed',
          subTitle: `Opening Id ${openingId} removed from favorites`,
          type: 'success',
          dismissIn: 8000,
          onClose: () => {}
        });
        loadTrends();
      }
    } catch (error) {
      displayNotification({
        title: 'Error',
        subTitle: `Failed to update favorite status for ${openingId}`,
        type: 'error',
        dismissIn: 8000,
        onClose: () => {}
      });
    }
  };

  return (
    <div className='px-3 pb-3'>
      <div className="row activity-history-container gx-4">
        {histories.map((history, index) => (
          <div key={index} className="col-12 col-sm-4">
            <div className='d-flex'>
              <div className="activity-history-header">              
                <div className="d-flex flex-row align-items-center" data-id={history.id}>
                  <div className="favorite-icon">
                    <FavoriteButton
                      tooltipPosition="bottom"
                      kind="ghost"
                      size="sm"
                      fill="#0073E6"
                      favorited={true}
                      onFavoriteChange={(newStatus: boolean) => handleFavoriteChange(newStatus, history.id)}
                    />
                  </div>
                  <span className="trend-title">Opening ID</span>
                  &nbsp;
                  {history.id}
                </div>
              </div>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default OpeningHistory;
