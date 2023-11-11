// App.js
import React, { useState } from 'react';
// import logo from './logo.svg';
import './App.css';
import UsersList from './components/UserList';
import SearchBar from './components/SearchBar';
import SearchBarById from './components/SearchBarById';
import UserForm from './components/UserForm';
import UserEditForm from './components/UserEditForm';
import axios from 'axios';

function App() {
  const [searchResult, setSearchResult] = useState(null);
  const [isEditing, setIsEditing] = useState(false);
  const [/*isEditingId*/, setIsEditingId] = useState(false);
  const [newId, /*setNewId*/] = useState('');
  const [users, setUsers] = useState([]);
  const [showUsersList, setShowUsersList] = useState(true);

  const handleUserUpdated = (updatedUser) => {
    setUsers(users.map(user => user.id === updatedUser.id ? updatedUser : user));
    if (searchResult && searchResult.id === updatedUser.id) {
      setSearchResult(updatedUser);
    }
    setIsEditing(false); 
  };

  /*const handleEditIdClick = (userId) => {
    setIsEditingId(true);
    setNewId(userId.toString());
  };*/

  const handleUpdateId = (e) => {
    e.preventDefault();
    const userId = searchResult.id;
    if (users.some(user => Number(user.id) === Number(newId))) {
      alert('ID já está em uso. Por favor, escolha outro ID.');
      return;
    }

    
    axios.put(`http://localhost:4000/users/${userId}`, { id: newId })
      .then(response => {
        // Atualiza a lista de usuários com o novo ID
        setUsers(users.map(user => user.id === userId ? { ...user, id: newId } : user));
        if (searchResult && searchResult.id === userId) {
          setSearchResult({ ...searchResult, id: newId });
        }
        setIsEditingId(false); 
      })
      .catch(error => {
        console.error('Erro ao atualizar ID do usuário!', error);
      });
  };

  const handleUserCreated = (newUser) => {
    setUsers([...users, newUser]); 
  };

  const handleEditClick = () => {
    setIsEditing(true); 
  };

  const handleCancelEdit = () => {
    setIsEditing(false); 
  };

  const handleDeleteSearchResult = async () => {
    const userId = searchResult.id;
    try {
      await axios.delete(`http://localhost:4000/users/${userId}`);
      setUsers(users.filter(user => user.id !== userId)); 
      setSearchResult(null); 
      setShowUsersList(true); 
    } catch (error) {
      console.error('Erro ao excluir usuário!', error);
    }
  };
  
  
  const toggleUsersList = () => {
    setShowUsersList(!showUsersList);
    setSearchResult(null); 
  };

  const handleSearch = (result) => {
    setSearchResult(result);
    setShowUsersList(false); 
  };

  const explanationParagraph = (
    <p className="app-explanation">
      - Para buscar um usuário (cliente) use o nome (no formato: "Nome Sobrenome" [Case Sensitive]) ou ID (1..200 [inicialmente]).<br />
      - Para editar ou excluir um usuário, faça a busca e atualize ou apague o mesmo no card de resultado de pesquisa.
    </p>
  );

  return (
    <div className="App">
      <header className="App-header">
        {/*<img src={logo} className="App-logo" alt="logo" />*/}
        <h1 className="bounce-top">Desafio API</h1>
        <div className="search-and-explanation-container">
        {explanationParagraph}
        <div className="search-container">
          <SearchBar onSearchResult={handleSearch} />
          <SearchBarById onSearchResult={handleSearch} />
        </div>
        
        </div>
        <div className="create-user-container">
          <UserForm onUserCreated={handleUserCreated} />
        </div>
        <button className="white-button" onClick={toggleUsersList}>
          {showUsersList ? 'Esconder Lista de Usuários' : 'Mostrar Lista de Usuários'}
        </button>
      </header>
      <div className="search-results">
  {searchResult && !isEditing && !showUsersList ? (
    <div className="result-container">
      <div className="info-container">
        <h2>Resultado da Pesquisa:</h2>
        <p><strong>ID:</strong> {searchResult.id}</p>
        <p><strong>Título:</strong> {searchResult.titulo}</p>
        <p><strong>Categoria:</strong> {searchResult.categoria}</p>
        <p><strong>Descrição:</strong> {searchResult.descricao}</p>
        <p><strong>Status:</strong> {searchResult.status}</p>
      </div>
      <div className="button-container">
        <button className="update-button" onClick={handleEditClick}>Editar</button>
        <button className="card-delete-button" onClick={handleDeleteSearchResult}>Excluir</button>
        <button className="white-button-wframe" onClick={() => {
          setSearchResult(null);
          setShowUsersList(true);
        }}>Cancelar Busca</button>
      </div>
    </div>
  ) : null}
  {isEditing ? (
    <UserEditForm user={searchResult} onUserUpdated={handleUserUpdated} onCancel={handleCancelEdit} />
  ) : null}
  {showUsersList && !searchResult && <UsersList users={users} onUserUpdated={handleUserUpdated} />}
</div>
    </div>
  );
}

export default App;
