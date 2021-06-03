import logo from './logo.svg';
import './App.css';
import React, { useEffect, useState } from 'react';

const App = () => {
  const [color, setColor] = useState('black');

  useEffect(() => {
    const changeColorOnClick = () => {
      if (color === 'black') {
        setColor('red');
      } else {
        setColor('black');
      }
    };

    document.addEventListener('click', changeColorOnClick);

    return () => {
      document.removeEventListener('click', changeColorOnClick);
    };
  }, [color]);

  //dependency Array

  //empty -> componentDidMount
  //not Empty -> componentDidUpdate
  //not Included -> componentDidMount and componentDidUpdate. Runs after inital render and any updates

  //Return statement

  //The return statement is equivalent to componentWillUnmount

  return (
    <div>
      <div
        id="myDiv"
        style={{
          color: 'white',
          width: '100px',
          height: '100px',
          position: 'absolute',
          left: '50%',
          top: '50%',
          backgroundColor: color,
          cursor: 'pointer',
        }}
      >
        Click to change background color.
      </div>
    </div>
  );
};

export default App;
