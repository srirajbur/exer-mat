import React, { useState } from 'react';
import './App.css';
import randomQuote from './randomQuote';

function App() {
  const [quote, setQuote] = useState({
    _id: '5eb17ab3b69dc744b4e81942',
    quoteText: 'Does this trolley go to Tahiti?',
    quoteAuthor: 'Arthur Morgan',
  });

  async function fetchData() {
    const newQuote = await randomQuote();
    setQuote(newQuote);
  }

  const quoteText = quote.quoteText;
  const quoteAuthor = quote.quoteAuthor;

  return (
    <div className="App">
      <div className="quote-info">
        <div className="quote">
          <div className="quote-text">{`"${quoteText}"`}</div>
          <div className="quote-author">{quoteAuthor}</div>
          <button className="random-quote-btn" onClick={fetchData}>
            Random Quote
          </button>
        </div>
      </div>
    </div>
  );
}

export default App;
