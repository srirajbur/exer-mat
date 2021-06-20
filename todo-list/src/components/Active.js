import React, { useContext } from 'react';
import CreateTodo from './CreateTodo';
import { TodoContext } from './TodoContext';

function Active() {
  const [todos, setTodos] = useContext(TodoContext);
  const activeTodos = todos.filter((todo) => {});

  return (
    <div className="Active">
      <CreateTodo />
      {
        //iterate through todos and display only actives'
      }
    </div>
  );
}

export default Active;
