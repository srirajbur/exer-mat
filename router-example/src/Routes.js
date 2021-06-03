import React from 'react';
import { BrowserRouter, Switch, Route } from 'react-router-dom';
import App from './App';
import Profile from './Profile';
import Home from './Home';

const Routes = () => {
  return (
    <BrowserRouter>
      <App />
      <hr />
      <Switch>
        <Route exact path="/home" component={Home} />
        <Route exact path="/profile" component={Profile} />
      </Switch>
    </BrowserRouter>
  );
};

export default Routes;
