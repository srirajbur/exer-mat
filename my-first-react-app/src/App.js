import React, { Component } from 'react';
import Counter from './Counter';

class App extends Component {
  constructor(props) {
    super(props);

    this.state = {
      mount: true,
      ignoreProp: 0,
    };

    this.mountCounter = () => this.setState({ mount: true });
    this.unmountCounter = () => this.setState({ mount: false });
  }

  render() {
    return (
      <div>
        <button onClick={this.mountCounter} disabled={this.state.mount}>
          Mount Counter
        </button>
        <button onClick={this.unmountCounter} disabled={!this.state.mount}>
          Unmount Counter
        </button>
        {this.state.mount ? <Counter /> : null}
      </div>
    );
  }
}

export default App;
