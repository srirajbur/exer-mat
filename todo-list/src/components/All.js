import React, { useContext } from 'react';
import { TodoContext } from './TodoContext';

function All() {
  const [cartItems, setCartItems] = useContext(TodoContext);

  return (
    <div className="All">
      {
        //iterate through todos and display
      }
    </div>
  );
}

export default All;
