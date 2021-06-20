import { Link } from 'react-router-dom';

function Nav() {
  return (
    <div className="Nav">
      <header>#todo</header>
      <div className="todo-states">
        <Link to="/">
          <div>All</div>
        </Link>
        <Link to="/active">
          <div>Active</div>
        </Link>
        <Link to="/completed">
          <div>Completed</div>
        </Link>
      </div>
    </div>
  );
}

export default Nav;
