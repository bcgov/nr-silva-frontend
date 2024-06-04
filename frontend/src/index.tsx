window.global ||= window;
import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import { ClassPrefix } from '@carbon/react';
import { Provider } from 'react-redux'
import store from './store'
import App from './App';
import { ThemePreference } from './utils/ThemePreference';
import { createRoot } from 'react-dom/client';
import PaginationProvider from './contexts/PaginationProvider';
const container:any = document.getElementById('root');
const root = createRoot(container);

root.render(
  <React.StrictMode>
    <ClassPrefix prefix='bx'>
      <ThemePreference>
        <Provider store={store}>
          <PaginationProvider>
            <App />
          </PaginationProvider>
        </Provider>
      </ThemePreference>
    </ClassPrefix>
  </React.StrictMode>
);
