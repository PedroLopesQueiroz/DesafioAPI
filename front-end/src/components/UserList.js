// UserList.js
import React, { useState, useEffect } from 'react';
import axios from 'axios';
import UserEditForm from './UserEditForm';

const UsersList = ({ onUserUpdated, onUserDeleted }) => {
  const [users, setUsers] = useState([]);
  const [editingUserId, setEditingUserId] = useState(null);

  useEffect(() => {
    axios.get('http://localhost:4000/users')
      .then(response => {
        setUsers(response.data);
      })
      .catch(error => {
        console.error('Houve um erro ao buscar os usuários!', error);
      });
  }, []);

  const handleEditClick = (userId) => {
    setEditingUserId(userId);
  };

  const handleDeleteClick = async (userId) => {
    try {
      await axios.delete(`http://localhost:4000/users/${userId}`);
      onUserDeleted(userId); // Chama o manipulador para remover o usuário da lista
      
      // Atualiza o estado com uma função para garantir o estado mais recente
      setUsers(currentUsers => currentUsers.filter(user => user.id !== userId));
    } catch (error) {
      console.error('Erro ao excluir usuário!', error);
    }
  };

  const handleCancel = () => {
    setEditingUserId(null);
  };

  const handleSave = (updatedUser) => {
    setUsers(users.map(user => user.id === updatedUser.id ? updatedUser : user));
    setEditingUserId(null);
    onUserUpdated(updatedUser);
  };

  return (
    <div>
      <h1>Lista de Usuários</h1>
      <ul className="user-list">
        {users.map(user => (
          <li key={user.id} className="user-item">
            {editingUserId === user.id ? (
              <UserEditForm user={user} onSave={handleSave} onCancel={handleCancel} />
            ) : (
              <div className="user-info">
                <p><strong>ID:</strong> {user.id}</p>
                <p><strong>Título:</strong> {user.titulo}</p>
                <p><strong>Categoria:</strong> {user.categoria}</p>
                <p><strong>Descrição:</strong> {user.descricao}</p>
                <p><strong>Status:</strong> {user.status}</p>
                <div className="user-actions">
                </div>
              </div>
            )}
          </li>
        ))}
      </ul>
    </div>
  );
};

export default UsersList;
