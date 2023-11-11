// components/UserEditForm.js
import React, { useState } from 'react';
import axios from 'axios';

const UserEditForm = ({ user, onUserUpdated, onCancel }) => {
    const [formData, setFormData] = useState({ ...user });
  
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
        const response = await axios.put(`http://localhost:4000/users/${user.id}`, formData);
        onUserUpdated(response.data); // Atualiza o usuário no estado do componente pai
      } catch (error) {
        console.error('Erro ao atualizar usuário!', error);
      }
    };

  return (
    <form onSubmit={handleSubmit}>
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
      <div className="form-actions">
        <button className="update-button" type="submit">Atualizar Usuário</button>
        <button className="search-button" type="button" onClick={onCancel}>Voltar</button> {/* Botão para cancelar a edição */}
      </div>
    </form>
  );
};

export default UserEditForm;
