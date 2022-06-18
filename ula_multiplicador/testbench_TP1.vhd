library ieee;
use ieee.std_logic_1164.all;

entity testbench_TP1 is
end testbench_TP1;

architecture tb of testbench_TP1 is
	signal clk, inicio, reset : STD_LOGIC;
	signal dado : SIGNED(N-1 DOWNTO 0);
	signal s_low, s_high : SIGNED (N-1 DOWNTO 0);
	signal flagZ, flagOvf, flagN : std_logic);
begin
   UUT : entity work.tp1 port map (clk => clk, inicio => inicio, reset => reset, dado => dado, s_low => s_low, s_high => s_high, flagZ => flagZ, flagOvf => flagOvf, flagN => flagN);

   tb1 : process
        constant period: time := 20 ns;
        begin
            clk <= '1';
				reset <= '0';
            wait for period;
				
				inicio => '1';
				dado => "0010";
				clk <= '0';
				wait for period;
				
				dado => "1111"
            assert(saidaH = "0000")
				assert(saidaL = "1001")
            report "teste falhou no 1° ciclo" severity error;
				
				clk <= '0';
				inicio => '0';
				wait for period;
				
            clk <= '1';
            wait for period;
				
				inicio => '1';
            entA => "0100";
				entB => "0011";
            assert(saidaH = "0000")
				assert(saidaL = "1101")
            report "teste falhou no 2° ciclo"  severity error;

				clk <= '0';
				inicio => '0';
				wait for period;
				
            inicio => '1';
				entA => "0000";
				entB => "0011";
            assert(saidaH = "0000")
				assert(saidaL = "0000")
            report "teste falhou no 3° ciclo"  severity error;
				
				clk <= '0';
				inicio => '0';
				wait for period;
				
            clk <= '1';
            wait for period;
				inicio => '1';
				entA => "0001";
				entB => "0011";
            assert(saidaH = "0000")
				assert(saidaL = "0011")
            report "teste falhou no 4° ciclo"  severity error;
			
				clk <= '0';
				inicio => '0';
				wait for period;
				
            clk <= '1';
            wait for period;
				
				inicio => '1';
            entA => "0010";
				entB => "0011";
            assert(saidaH = "0010")
				assert(saidaL = "1111")
            report "teste falhou no 5° ciclo, mas ele deveria falhar mesmo" severity error;


            wait;
	end process;
end tb ;