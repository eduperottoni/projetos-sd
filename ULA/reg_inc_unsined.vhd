LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
use ieee.numeric_std.all;

entity reg_inc_unsined IS
    PORT (Enable, Reset, Clock: IN STD_LOGIC ;
    Q : OUT unsigned(4 downto 0));
end reg_inc_unsined ;

ARCHITECTURE Behavior OF reg_inc_unsined IS
    signal soma: unsigned(4 downto 0);
BEGIN
    process (Reset, Clock)
    begin
        IF Reset = '1' THEN
            soma <= "00000" ;
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