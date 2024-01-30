const express = require('express')

const app = express()

app.get('/', (req, res) => {
  res.send('Hello World!')
})


app.get("/health", (req, res) => {
  res.json({
    status: true,
  });
});



const PORT = process.env.PORT || 3001;

const server = app.listen(PORT, () => {
  console.log(`🎉🎉🎉 Application running on port: ${PORT} 🎉🎉🎉`);
});

module.exports = server;
