LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
use ieee.std_logic_unsigned.all;

entity reg_cont_7bits IS
	PORT (Enable, Reset, Clock: IN STD_LOGIC ;
	Q : OUT integer);
end reg_cont_7bits ;

ARCHITECTURE Behavior OF reg_cont_7bits IS
	signal soma: integer := 0;
BEGIN
	process (Reset, Clock)
	begin
		IF Reset = '1' THEN
			soma <= 0 ;
		ELSIF Clock'EVENT AND Clock = '1' THEN 
			if Enable = '1' then 
				soma <= soma + 1;
			else
				soma <= soma;
			end if;
		END IF;
		Q <= soma;
	END PROCESS;
	
END Behavior;