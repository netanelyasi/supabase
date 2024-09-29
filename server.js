const express = require('express');
const { Pool } = require('pg');

const app = express();
const port = 8000;

const pool = new Pool({
  connectionString: process.env.SUPABASE_DB_URL
});

app.get('/', (req, res) => {
  res.send('Supabase API is running');
});

app.listen(port, () => {
  console.log(`Supabase API listening at http://localhost:${port}`);
});
