import { nanoid } from 'nanoid';
import React, { useContext, useState } from 'react';
import { TodoContext } from './TodoContext';

function CreateTodo() {
  const [todos, setTodos] = useContext(TodoContext);
  const [todo, setTodo] = useState('');

  function addTodo(e) {
    e.preventDefault();
    setTodos(todos.concat(todo));
    console.log(todos);
    setTodo('');
    e.target.reset();
  }

  function handleChange(e) {
    const newTodo = e.target.value;
    setTodo({ title: newTodo, active: true, id: nanoid() });
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
