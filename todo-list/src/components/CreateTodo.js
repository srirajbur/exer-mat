import React, { useContext, useState } from 'react';
import { TodoContext } from './TodoContext';

function CreateTodo() {
  const [todos, setTodos] = useContext(TodoContext);
  const [todo, setTodo] = useState({ title: '', active: false });

  function addTodo(e) {
    e.preventDefault();
    console.log(todos);
    setTodos(todos.concat(todo));
    setTodo({ title: '' });
    e.target.reset();
  }

  function handleChange(e) {
    const newTodo = e.target.value;
    setTodo({ title: newTodo, active: false });
  }

  return (
    <div className="CreateTodo">
      <form onSubmit={addTodo}>
        <input type="text" required onChange={handleChange} />
        <button type="submit">Add</button>
      </form>
    </div>
  );
}

export default CreateTodo;
