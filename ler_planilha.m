function [dados_num, texto] = ler_planilha(fname, fpath)
  % Le a planilha.
  %
  % Parâmetros:
  %   fname: nome do arquivo.
  %   fpath: caminho do arquivo.
  %
  % Saida:
  %   dados_num: dados numericos da planilha.
  %   texto: dados de texto da planilha.

  % para usar a função xlsread
  pkg load io;

  [dados_num, texto] = xlsread([fpath fname], "b6:b911");
endfunction
