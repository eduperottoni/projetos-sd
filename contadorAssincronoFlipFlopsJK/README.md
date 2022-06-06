# RELATÓRIO CONTADOR ASSÍNCRONO USANDO FLIP-FLOPs JK

## Descrição do circuito:

Os contadores assíncronos são contadores binários construídos a partir do encadeamento de Flip-Flops. O contador assíncrono construído é formado por três flip-flops JK, todos possuindo entradas J e K iguais a 1. Isso faz com que a saída seja alternada cada vez que o pulso do clock ser uma borda descendente (entrada passar do nível alto para o baixo).
Este circuito é assíncrono, pois os pulsos do clock são aplicados apenas na entrada do primeiro flip-flop. A saída do primeiro flip-flop está conectada à entrada de clock do segundo flip-flop, e assim por diante.
Ao final de cada clock concatena-se as saídas dos flip-flops e inverte-se a ordem, pois o bit mais significativo representa a saída do último flip-flop. Ao final obtém-se a contagem de 0 até 7 (3 bits).

## Resultados:

A frequência utilizada pelo projeto foi de 1000.0MHz em cada um dos clock, esses resultados podem ser visualizados na figura 4.1. Para a implementação do projeto foram utilizados 3 elementos lógicos e 3 registradores, como pode se ver nos resultados gerados pelo Quartus na figura 4.2.

## Testbench:

No testbench foram criados 5 testes, em cada um deles o clock é ativado por 20 ns, testado o resultado (count) com o assert, reportado caso o teste não passe e, por fim, o clock é desativado por 20 ns. Nos 4 primeiros testes o contador deve passar sem nenhum erro, já o último teste foi criado para que o contador não passe, ou seja, o report deve aparecer. Os resultados em forma de onda e o report do último teste pode se ver nos resultados gerados pelo Quartus na figura 5.

### Figura 5.
Simulação em forma de onda gerada a partir do arquivo testbench e report da falha no 5° teste.
![all text](https://github.com/eduperottoni/projetos-sd/blob/main/contadorAssincronoFlipFlopsJK/img/simulacaoOndaTestbench.png)
