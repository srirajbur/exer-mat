import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import './App.css';
import Active from './components/Active';
import All from './components/All';
import Completed from './components/Completed';
import Nav from './components/Nav';
import { TodosProvider } from './components/TodoContext';

function App() {
  return (
    <TodosProvider>
      <Router>
        <Nav />
        <Switch>
          <Route exact path="/" component={All} />
          <Route exact path="/active" component={Active} />
          <Route exact path="/completed" component={Completed} />
        </Switch>
      </Router>
    </TodosProvider>
  );
}

export default App;
