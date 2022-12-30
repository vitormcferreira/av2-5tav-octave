function plota_grafico(dias, casos_acc, dias_est, y_estimado)
  % Plota os casos (pontos azuis) e a curva estimada para o conjunto de
  % casos (linha vermelha pontilhada).
  %
  % Parâmetros:
  %   dias: eixo x dos pontos azuis (casos).
  %   casos_acc: eixo y dos pontos azuis (casos).
  %   dias_est: eixo x da linha vermelha (estimação).
  %   y_estimado: eixo y da linha vermelha (estimação).

  % VIII
  plot(dias, casos_acc, ".b",
  % IX
  dias_est, y_estimado, "--r",
  dias_est(end), y_estimado(end), "or");

  % X
  xlabel("Dias desde o dia inicial");
  ylabel("Número de casos acumulados ate o dia");
  title("Casos de Covid registrados no Estado do Rio de Janeiro");
  legend({"dados informados",
        "comportamento estimado pelo modelo",
        "valor previsto"},
  "location", "northwest");
  ylim auto;
endfunction
