async function randomQuote() {
  const API_URL = `https://quote-garden.herokuapp.com/api/v3/quotes/random`;

  try {
    const response = await fetch(API_URL, { mode: 'cors' });
    const data = await response.json();

    return data.data[0];
  } catch (error) {
    return error;
  }
}

export default randomQuote;
