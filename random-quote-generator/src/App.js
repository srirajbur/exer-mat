import React, { useState } from 'react';
import './App.css';

function App() {
  const { randomQuote } = require('quotegarden');

  const [quote, setQuote] = useState({
    data: [
      {
        _id: '5eb17ab3b69dc744b4e81942',
        quoteText: 'Does this trolley go to Tahiti?',
        quoteAuthor: 'Arthur Morgan',
      },
    ],
  });

  async function fetchData() {
    const newQuote = await randomQuote();
    setQuote(newQuote);
  }

  const quoteText = quote.data[0].quoteText;
  const quoteAuthor = quote.data[0].quoteAuthor;

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
