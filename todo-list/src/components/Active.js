import React, { useContext } from 'react';
import { TodoContext } from './TodoContext';

function Active() {
  const [cartItems, setCartItems] = useContext(TodoContext);

  return (
    <div className="Active">
      {
        //iterate through todos and display only actives'
      }
    </div>
  );
}

export default Active;
