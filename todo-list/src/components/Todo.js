import React, { useContext } from 'react';
import { TodoContext } from './TodoContext';

function Todo(props) {
  const [todos, setTodos] = useContext(TodoContext);

  function findTodo(id) {
    return todos.find((item) => {
      if (item.id === id) {
        return item;
      }
    });
  }

  function handleChange(e) {
    //find todo
    //update active property
    //setTodos to todos
    const id = e.target.id;
    const updatedTodo = findTodo(id);
    const updatedTodos = todos.map((todo) => {
      if (todo.id === updatedTodo.id) {
        todo.active = !todo.active;
      }
      return todo;
    });
    setTodos(updatedTodos);
  }

  return (
    <div className="Todo" id={props.id}>
      <input
        checked={props.active ? false : true}
        type="checkbox"
        id={props.id}
        onChange={handleChange}
      />
      <span>{props.title}</span>
    </div>
  );
}

export default Todo;
