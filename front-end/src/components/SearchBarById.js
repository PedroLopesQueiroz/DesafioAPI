// SearchBarById.js
import React, { useState } from 'react';
import axios from 'axios';

const SearchBarById = ({ onSearchResult }) => {
  const [searchId, setSearchId] = useState('');

  const handleSearch = async () => {
    try {
      const response = await axios.get(`http://localhost:4000/users/${searchId}`);
      onSearchResult(response.data); // Passa o resultado da pesquisa para o componente pai
    } catch (error) {
      console.error('Erro ao buscar usuário pelo ID!', error);
      onSearchResult(null); // Em caso de erro, passa null para o componente pai
    }
  };

  return (
    <div>
      <input
        type="number"
        value={searchId}
        onChange={(e) => setSearchId(e.target.value)}
        placeholder="Ex.: 2"
      />
      <button className="search-button" onClick={handleSearch}>Pesquisar por ID</button>
    </div>
  );
};

export default SearchBarById;
