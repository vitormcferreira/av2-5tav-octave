% (a)
% XI (retorno da função)
function [pp, dia_extrapolacao, y_dia_extrapolacao] = av2()
  % Calcula a extrapolação para o gráfico da soma acumulativa de casos de
  % covid e plota um gráfico com os dados.
  %
  % Saída:
  %   pp: os coeficientes da curva estimada para os dados.
  %   dia_extrapolacao: o dia inserido pelo usuario.
  %   y_dia_extrapolacao: o valor de y estimado para o dia inserido pelo
  %                       usuario.

  % I
  [fname, fpath] = uigetfile(".xlsx", "Escolha o arquivo onde estao os dados");

  arquivo_existe = fname != 0;

  if !arquivo_existe
    return
  endif

  [dados] = ler_planilha(fname, fpath);

  % II
  casos = get_casos(dados);

  % IV
  dias = 1:1:length(casos);

  % III
  casos_acc = calcula_casos_acc(casos);

  % V
  dia_extrapolacao = input("digite o dia que deseja ver a previsão: ");
  dias_est = 1:1:dia_extrapolacao;

  % VI
  pp = splinefit(dias, casos_acc, 65);

  % VII
  y_estimado = ppval(pp, dias_est);

  % VIII, IX e X
  plota_grafico(dias, casos_acc, dias_est, y_estimado);

  % (e)
  save "variaveis_de_ambiente.mat";

  y_dia_extrapolacao = y_estimado(end);
endfunction
