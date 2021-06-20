import React, { useContext } from 'react';
import CreateTodo from './CreateTodo';
import Todo from './Todo';
import { TodoContext } from './TodoContext';

function All() {
  const [todos, setTodos] = useContext(TodoContext);

  return (
    <div className="All">
      <CreateTodo />
      {todos.map((todo) => {
        return (
          <Todo
            key={todo.id}
            title={todo.title}
            id={todo.id}
            active={todo.active}
          />
        );
      })}
    </div>
  );
}

export default All;
