function casos_acc = calcula_casos_acc(casos)
  % Faz a soma acumulativa de casos.
  %
  % Parâmetros:
  %   casos: vetor com os casos de covid/dia.
  %
  % Saída:
  %   casos_acc: vetor com a soma acumulativa de casos.

  casos_acc = [];

  % primeiro dia não possui anterior
  casos_acc(1) = casos(1);

  for i = 2:length(casos)
    % a partir do segundo dia existe dia anterior
    acumulo_dias_anteriores = casos_acc(i - 1);
    dia_atual = casos(i);

    casos_acc(i) = acumulo_dias_anteriores + dia_atual;
  endfor

endfunction
