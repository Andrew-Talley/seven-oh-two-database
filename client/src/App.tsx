import * as React from 'react';
const { useState } = React;
import * as ReactDOM from 'react-dom';
import { BrowserRouter as Router, Switch, Route, Link, useRouteMatch } from 'react-router-dom';
import { Navbar, NavbarToggler, Collapse, NavItem, Nav, NavLink, NavbarBrand, Container } from 'reactstrap';
import client from './apollo-setup';
import { ApolloProvider } from '@apollo/client';
// import Landing from './components/landing';
import 'react-bootstrap-table-next/dist/react-bootstrap-table2.min.css';
import 'bootswatch/dist/lux/bootstrap.min.css';
import './stylesheets/main.scss';
import { routes } from './routes';


const App = () => {
	const [isOpen, setOpen] = useState(false);

	// const match = useRouteMatch(); 

	return (
		<ApolloProvider client={client}>
			<Router>
				<div>
					<Navbar color="primary" dark expand="md">
						<NavbarBrand href="/">sevenohtwo</NavbarBrand>
						<NavbarToggler onClick={() => setOpen(!isOpen)} />
						<Collapse isOpen={isOpen} navbar>
							<Nav navbar color="light">
								<NavItem>
									<Link to="/tournament">
										<NavLink tag="span">
											Tournaments
										</NavLink>
									</Link>
								</NavItem>
								<NavItem>
									<Link to="/teams">
										<NavLink tag="span">
											Teams
										</NavLink>
									</Link>
								</NavItem>
								<NavItem>
									<Link to="/cases">
										<NavLink tag="span">
											Cases
										</NavLink>
									</Link>
								</NavItem>
								<NavItem>
									<Link to="/stats">
										<NavLink tag="span">
											Stats
										</NavLink>
									</Link>
								</NavItem>
							</Nav>
						</Collapse>
					</Navbar>
					<Container>
						<Switch>
							<div className="pt-4">
								{routes.map(r => (
									<Route 
										key={r.path}
										{...r}
									/>
								))}
							</div>
						</Switch>
					</Container>
				</div>
			</Router>
		</ApolloProvider>
	);
};

ReactDOM.render(<App />, document.getElementById('root'));
