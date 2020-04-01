import * as React from 'react';
const { useState } = React;
import * as ReactDOM from 'react-dom';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';
import { Navbar, NavbarToggler, Collapse, NavItem } from 'reactstrap';
// import Landing from './components/landing';
import 'bootswatch/dist/lux/bootstrap.min.css';
import './stylesheets/main.scss';

const App = () => {
	const [isOpen, setOpen] = useState(false);

	return (
		<Router>
			<div>
				<Navbar>
					<NavbarToggler onClick={() => setOpen(!isOpen)} />
					<Collapse isOpen={isOpen}>
						<NavItem>Tournaments</NavItem>
						<NavItem>Teams</NavItem>
						<NavItem>Stats</NavItem>
					</Collapse>
				</Navbar>
				<div>
					Hello, World!
				</div>
			</div>
		</Router>
	);
};

ReactDOM.render(<App />, document.getElementById('root'));
