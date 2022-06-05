library ieee;
use ieee.std_logic_1164.all;

entity contador is
  port (clk : in std_logic;
        count: out std_logic_vector(2 downto 0));
 end contador;


architecture cont_arch of contador is  
component flipflopjk
    port(
    clk,J,K : in std_logic;
    Q,Qnot: out std_logic);
end component;

signal qnot : std_logic_vector(2 downto 0);

begin
ff0 : flipflopjk
    port map (clk, '1', '1', count(0), qnot(0));
ff1 : flipflopjk
	port map (qnot(0), '1','1', count(1), qnot(1));
ff2 : flipflopjk
	port map (qnot(1), '1','1', count(2), qnot(2));
end cont_arch;