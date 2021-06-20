import React, { useContext } from 'react';
import { TodoContext } from './TodoContext';

function Completed() {
  const [cartItems, setCartItems] = useContext(TodoContext);

  return (
    <div className="Completed">
      {
        //iterate through todos and display completed
      }
    </div>
  );
}

export default Completed;
