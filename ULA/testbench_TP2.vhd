library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity testbench_TP2 is
	generic (N : natural := 8);
end testbench_TP2;	

architecture comp of testbench_TP2 is
signal s_low, s_high: signed(N-1 downto 0);
signal inicio, reset, pronto: std_logic;
signal clk: std_logic := '0';
signal flagZ, flagOvf, flagN, flagError,enable_PC, ENABLE_A, enable_b, enable_op, calcular_sinal: std_logic;
constant clk_period : time := 10 ns;

file output_buf : text open write_mode is "saidas.txt"; 
constant num_of_clocks : integer := 65;
signal i : integer := 0;

component TP1 is
	generic (N : natural := 8 );
	PORT (clk, inicio, reset : IN STD_LOGIC;
   s_low, s_high: OUT SIGNED (N-1 DOWNTO 0);
   flagZ, flagOvf, flagN, flagError, enable_PC, ENABLE_A, enable_b, enable_op, calcular_sinal: OUT std_logic);
end component;

begin
	DUT: TP1 generic map (N) port map(clk, inicio, reset, s_low, s_high, flagZ, flagOvf, flagN, flagError, enable_PC, ENABLE_A, enable_b, enable_op, calcular_sinal);
	process
		begin
			reset <= '1';
				wait for 2 ns;
			reset <= '0'; inicio <= '1';
				wait;
	end process;	

	clk_process :process
   begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
		  
		  if (i = num_of_clocks) then
            file_close(output_buf);
            wait;
        else
            i <= i + 1;
        end if;
   end process;
	
	file_io: process(s_low, s_high)
			variable write_col_to_output_buf : line;
      begin 
			write(write_col_to_output_buf, std_logic_vector(signed(s_high)));
			write(write_col_to_output_buf, std_logic_vector(signed(s_low)));
			write(write_col_to_output_buf, string'(" "));
			write(write_col_to_output_buf, (flagZ));
			write(write_col_to_output_buf, string'(" "));
			write(write_col_to_output_buf, (flagOvf));
			write(write_col_to_output_buf, string'(" "));
			write(write_col_to_output_buf, (flagN));
			write(write_col_to_output_buf, string'(" "));
			write(write_col_to_output_buf, (flagError));
         writeline(output_buf, write_col_to_output_buf);
	end process;
	
end comp;