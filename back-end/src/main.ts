const express = require('express');
const { Pool } = require('pg');

const cors = require('cors');
const app = express();
const port = 4000;

// Middleware for parsing JSON and URL-encoded data
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

// PostgreSQL configuration
const pool = new Pool({
    user: 'postgres',
    host: 'database',
    password: '131011',
    database: 'datapedro',
    port: '5432'
});

// Create a user
app.post('/users', async (req, res) => {
    const { data_cadastro, titulo, categoria, descricao, status } = req.body;
    const response = await pool.query('INSERT INTO users (data_cadastro, titulo, categoria, descricao, status) VALUES ($1, $2, $3, $4, $5) RETURNING *', [data_cadastro, titulo, categoria, descricao, status]);
    res.status(201).json(response.rows[0]);
});

// Read all users
app.get('/users', async (req, res) => {
    const response = await pool.query('SELECT * FROM users ORDER BY id ASC');
    res.status(200).json(response.rows);
});

// Read a user by ID
app.get('/users/:id', async (req, res) => {
    const id = parseInt(req.params.id);
    const response = await pool.query('SELECT * FROM users WHERE id = $1', [id]);
    if (response.rows.length === 0) {
        res.status(404).json({ message: 'User not found' });
    } else {
        res.status(200).json(response.rows[0]);
    }
});


// Read a user by titulo
app.get('/users/titulo/:titulo', async (req, res) => {
    try {
        const { titulo } = req.params;

        const query = 'SELECT * FROM users WHERE titulo = $1';
        const values = [titulo];

        const response = await pool.query(query, values);

        if (response.rows.length === 0) {
            res.status(404).json({ message: 'User not found' });
        } else {
            res.status(200).json(response.rows[0]);
        }
    } catch (error) {
        console.error(error);
        res.status(500).json({ message: 'Internal server error' });
    }
});

// Update a user by ID
app.put('/users/:id', async (req, res) => {
    const id = parseInt(req.params.id);
    const { data_cadastro, titulo, categoria, descricao, status } = req.body;

    const response = await pool.query('UPDATE users SET data_cadastro = $1, titulo = $2, categoria = $3, descricao = $4, status = $5 WHERE id = $6 RETURNING *', [
        data_cadastro, titulo, categoria, descricao, status, id
    ]);

    if (response.rows.length === 0) {
        res.status(404).json({ message: 'User not found' });
    } else {
        res.status(200).json(response.rows[0]);
    }
});

// Delete a user by ID
app.delete('/users/:id', async (req, res) => {
    const id = parseInt(req.params.id);
    const response = await pool.query('DELETE FROM users WHERE id = $1 RETURNING *', [id]);

    if (response.rows.length === 0) {
        res.status(404).json({ message: 'User not found' });
    } else {
        res.status(200).json({ message: `User ${id} deleted successfully` });
    }
});

// Start the Express server
app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
