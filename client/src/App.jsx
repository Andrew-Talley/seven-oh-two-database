import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';
import Landing from './components/landing';
import './stylesheets/main.scss';

const App = () => {
	return (
		<h1>Hello World!</h1>
	);
};

ReactDOM.render(<App />, document.getElementById('root'));
