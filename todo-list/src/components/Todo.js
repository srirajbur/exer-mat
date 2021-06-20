import React from 'react';

function Todo(props) {
  return (
    <div className="Todo">
      <input type="checkbox" />
      <span>{props.title}</span>
    </div>
  );
}

export default Todo;
