import React from 'react';
import { Route, Switch } from 'react-router-dom'

const App = () => {
    return (
        <Switch>
            <Route exact path="/" component={Airlines} />
            <Route exact path="/:slug" component="Airline" />
        </Switch>
    );
};

export default App;