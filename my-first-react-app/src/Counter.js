import React, { Component } from 'react';

class Counter extends Component {
  constructor(props) {
    console.log('Constructor');
    super(props);

    this.state = {
      counter: 0,
    };

    this.increment = () => this.setState({ counter: this.state.counter + 1 });
    this.decrement = () => this.setState({ counter: this.state.counter - 1 });
  }

  componentDidMount() {
    //right after render
    console.log('component did mount');
    console.log('--------------------');
  }

  render() {
    const { counter } = this.state;
    console.log('Render');
    return (
      <div>
        <button onClick={this.increment}>Increment</button>
        <button onClick={this.decrement}>Decrement</button>
        <div>counter: {counter}</div>
      </div>
    );
  }

  componentDidUpdate(prevProps, prevState, snapshot) {
    console.log('component did update');
    console.log('--------------------');
  }

  componentWillUnmount() {
    console.log('Component Will unmount');
    console.log('--------------------');
  }
}

export default Counter;
