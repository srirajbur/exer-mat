import React, { useContext } from 'react';
import CreateTodo from './CreateTodo';
import Todo from './Todo';
import { TodoContext } from './TodoContext';

function Active() {
  const [todos, setTodos] = useContext(TodoContext);
  const activeTodos = todos.filter((todo) => {
    if (todo.active) {
      return todo;
    }
  });

  return (
    <div className="Active">
      <CreateTodo />
      {activeTodos.map((todo) => {
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

export default Active;
