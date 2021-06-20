import { Link } from 'react-router-dom';

function Nav() {
  return (
    <div className="Nav">
      <header>#todo</header>
      <div className="todo-states">
        <div className="state">
          <Link to="/">All</Link>
        </div>
        <div className="state state2">
          <Link to="/active">Active</Link>
        </div>
        <div className="state">
          <Link to="/completed">Completed</Link>
        </div>
      </div>
    </div>
  );
}

export default Nav;
