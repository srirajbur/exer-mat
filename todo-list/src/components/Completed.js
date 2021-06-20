import React, { useContext } from 'react';
import Todo from './Todo';
import { TodoContext } from './TodoContext';

function Completed() {
  const [todos, setTodos] = useContext(TodoContext);

  const completedTodos = todos.filter((todo) => {
    if (!todo.active) {
      return todo;
    }
  });

  return (
    <div className="Completed">
      {completedTodos.map((todo) => {
        return <Todo key={todo.id} title={todo.title} id={todo.id} />;
      })}
    </div>
  );
}

export default Completed;
