import React from 'react';
import { Link } from 'react-router-dom';
const App = () => {
  return (
    <ul>
      <li>
        <Link to="/home">Home</Link>
      </li>
      <li>
        <Link to="/profile">Profile</Link>
      </li>
    </ul>
  );
};

export default App;
