// This component should render the tasks
import React, { Component } from 'react';

class Overview extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    const { tasks } = this.props;

    return (
      <div className="tasks">
        {tasks.map((task, number) => {
          return (
            <div className="task" key={task.id}>
              {number + 1}. {task.text}
              <button>X</button>
            </div>
          );
        })}
      </div>
    );
  }
}

export default Overview;
