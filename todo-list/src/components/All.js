import React, { useContext } from 'react';
import CreateTodo from './CreateTodo';
import Todo from './Todo';
import { TodoContext } from './TodoContext';

function All() {
  const [todos, setTodos] = useContext(TodoContext);

  return (
    <div className="All">
      <CreateTodo />
      {todos.map((todo, index) => {
        return <Todo key={index} title={todo.title} />;
      })}
    </div>
  );
}

export default All;
