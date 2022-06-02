library ieee;
use ieee.std_logic_1164.all;


entity testbench is
end testbench;

architecture tb of testbench is
	 signal clk : std_logic; -- input
    signal count: std_logic_vector(2 downto 0); --output

begin
    UUT : entity work.contador port map (clk => clk, count => count);

   tb1 : process
        constant period: time := 20 ns;
        begin
            clk <= '1';
            wait for period;
            assert(count = "001")
            report "teste falhou no 1° ciclo"  severity error;
				
				clk <= '0';
				wait for period;
				
            clk <= '1';
            wait for period;
            assert (count="010")
            report "teste falhou no 2° ciclo"  severity error;

				clk <= '0';
				wait for period;
            
				clk <= '1';
            wait for period;
            assert (count = "011")
            report "teste falhou no 3° ciclo"  severity error;
				
				clk <= '0';
				wait for period;
				
            clk <= '1';
            wait for period;
            assert (count = "100")
            report "teste falhou no 4° ciclo"  severity error;
			
				clk <= '0';
				wait for period;
				
            clk <= '1';
            wait for period;
            assert (count = "100")
            report "teste falhou no 5° ciclo, mas ele deveria falhar mesmo" severity error;


            wait;
	end process;
end tb ;