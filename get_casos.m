function casos = get_casos(dados)
  % Extrai a coluna casos de dados e transpõe ela para linha
  %
  % Parâmetro:
  %   dados: dados extraídos da planilha.

  casos_vertical = dados(:, 1);

  % transpõe a coluna (vertical) para linha (horizontal) para facilitar na
  % hora de fazer os cálculos ;)
  casos = casos_vertical';
endfunction
