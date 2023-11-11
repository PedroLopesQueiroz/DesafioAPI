import React, { useState } from 'react';
import axios from 'axios';

const UserForm = ({ onUserCreated }) => {
  const [formData, setFormData] = useState({
    titulo: '',
    categoria: '',
    descricao: '',
    status: ''
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData(prevState => ({
      ...prevState,
      [name]: value
    }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const response = await axios.post('http://localhost:4000/users', formData);
      onUserCreated(response.data);
      setFormData({ titulo: '', categoria: '', descricao: '', status: '' });
    } catch (error) {
      console.error('Erro ao criar usuário!', error);
    }
  };

  return (
    <form onSubmit={handleSubmit}>
      {/* Removido o campo ID */}
      <input
        type="text"
        name="titulo"
        value={formData.titulo}
        onChange={handleChange}
        placeholder="Título"
      />
      <input
        type="text"
        name="categoria"
        value={formData.categoria}
        onChange={handleChange}
        placeholder="Categoria"
      />
      <input
        type="text"
        name="descricao"
        value={formData.descricao}
        onChange={handleChange}
        placeholder="Descrição"
      />
      <input
        type="text"
        name="status"
        value={formData.status}
        onChange={handleChange}
        placeholder="Status"
      />
      <button className="search-button" type="submit">Criar Usuário</button>
    </form>
  );
};

export default UserForm;
