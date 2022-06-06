# RELATÓRIO CONTADOR ASSÍNCRONO USANDO FLIP-FLOPs JK

## Descrição do circuito:
Os contadores assíncronos são contadores binários construídos a partir do encadeamento de Flip-Flops. O contador assíncrono construído é formado por três flip-flops JK, todos possuindo entradas J e K iguais a 1. Isso faz com que a saída seja alternada cada vez que o pulso do clock ser uma borda descendente (entrada passar do nível alto para o baixo).
Este circuito é assíncrono, pois os pulsos do clock são aplicados apenas na entrada do primeiro flip-flop. A saída do primeiro flip-flop está conectada à entrada de clock do segundo flip-flop, e assim por diante.
Ao final de cada clock concatena-se as saídas dos flip-flops e inverte-se a ordem, pois o bit mais significativo representa a saída do último flip-flop. Ao final obtém-se a contagem de 0 até 7 (3 bits).

**Figura 1.** Representação do circuito e dos sinais gerados por cada saída dos flip-flops JKs que, em série, formam um contador assíncrono.
![figura 1]()

**Fonte:** UFF (Universidade Federal Fluminense).


## Hierarquia:
Para esse projeto utilizou-se a hierarquização de projeto com VHDL, da seguinte forma:

**Figura 2.** Hierarquia do circuito contador assíncrono.
![figura 2]()

**Fonte:** autores.


## Circuito:
O circuito gerado a partir do RTL Viewer está representado na figura 3.

**Figura 3.** Circuito.
![figura 3](https://github.com/eduperottoni/projetos-sd/blob/main/contadorAssincronoFlipFlopsJK/img/hierarquia.png?raw=true)

**Fonte:** autores.


## Resultados:
A frequência utilizada pelo projeto foi de 1000.0MHz em cada um dos clock, esses resultados podem ser visualizados na figura 4.1. Para a implementação do projeto foram utilizados 3 elementos lógicos e 3 registradores, como pode se ver nos resultados gerados pelo Quartus na figura 4.2.

**Figura 4.1.** Resultados de frequência.
![figura 4.1]()

**Fonte:** autores.

**Figura 4.2.** Área em elementos lógicos e registradores.
![figura 4.2]()

**Fonte:** autores.

## Testbench:
No testbench foram criados 5 testes, em cada um deles o clock é ativado por 20 ns, testado o resultado (count) com o assert, reportado caso o teste não passe e, por fim, o clock é desativado por 20 ns. Nos 4 primeiros testes o contador deve passar sem nenhum erro, já o último teste foi criado para que o contador não passe, ou seja, o report deve aparecer. Os resultados em forma de onda e o report do último teste pode se ver nos resultados gerados pelo Quartus na figura 5.

**Figura 5.** Simulação em forma de onda gerada a partir do arquivo testbench e report da falha no 5° teste.
![figura 5](https://github.com/eduperottoni/projetos-sd/blob/main/contadorAssincronoFlipFlopsJK/img/simulacaoOndaTestbench.png)

**Fonte:** autores.

## Simulação em forma de onda:
Segue a figura com o resultado da simulação funcional utilizando a ferramenta ModelSim. Neste caso, utilizou-se o force num arquivo .do, mostrado na figura 6.1:

**Figura 6.1.** Arquivo simulation.do utilizado para a simulação funcional em forma de onda.
![figura 6.1]()

**Fonte:** autores.


Com a execução desse arquivo, foram geradas as formas de onda representadas na figura 6.2:

**Figura 6.2.** Formas de onda geradas pelo arquivo simulation.do
![figura 6.2]()

**Fonte:** autores.

Desse modo, vemos que o contador funcionou e que a cada ciclo de clock temos
o incremento na saída.
