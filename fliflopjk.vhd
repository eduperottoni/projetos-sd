library ieee;
use ieee.std_logic_1164.all;

entity flipflopjk is
  port (clk,J,K : in std_logic;
        Q,Qnot: out std_logic);
 end flipflopjk;


architecture ffjk_arch of flipflopjk is  
signal qout: std_logic;

begin
    process(clk)
        begin
            if clk'event and clk = '1' then
                if (j = '0' and k = '0') then qout <= qout;
                elsif (j = '1' and k = '1') then qout <= not qout;
                elsif (j = '0' and k = '1') then qout <= '0';
                else qout <= '1';
                end if;
            end if;
        Q <= qout;
        Qnot <= not qout;
    end process;
end ffjk_arch;