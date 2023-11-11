import React, { useState } from 'react';
import axios from 'axios';

const SearchBar = ({ onSearchResult }) => {
  const [searchTerm, setSearchTerm] = useState('');

  const handleSearch = async () => {
    try {
      const response = await axios.get(`http://localhost:4000/users/titulo/${searchTerm}`);
      onSearchResult(response.data); // Passa o resultado da pesquisa para o componente pai
    } catch (error) {
      console.error('Erro ao buscar usuário!', error);
      onSearchResult(null); // Em caso de erro, passa null para o componente pai
    }
  };

  return (
    <div>
      <input
        type="text"
        value={searchTerm}
        onChange={(e) => setSearchTerm(e.target.value)}
        placeholder="Ex.: Marcelo Cuper"
      />
      <button className="search-button" onClick={handleSearch}>Pesquisar</button>
    </div>
  );
};

export default SearchBar;
