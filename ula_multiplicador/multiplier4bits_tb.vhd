library ieee;
use ieee.std_logic_1164.all;


entity multiplier4bits_tb is
end multiplier4bits_tb;

architecture tb of multiplier4bits_tb is
    signal a, b : std_logic_vector(3 downto 0);
    signal result: std_logic_vector(7 downto 0);
begin
    -- connecting testbench signals with half_adder.vhd
    UUT : entity work.multiplier4bits port map (a => a, b => b, result => result);

    tb1 : process
        constant period: time := 20 ns;
        begin
            a <= "0000";
            b <= "0000";
            wait for period;
            assert (result = "00000000")  -- expected output
            -- error will be reported if sum or carry is not 0
            report "test failed for input combination 00" severity error;

            a <= "0000";
            b <= "1111";
            wait for period;
            assert (result = "11110000")
            report "test failed for input combination 01" severity error;

            a <= "1001";
            b <= "1101";
            wait for period;
            assert (result = "01110101")
            report "test failed for input combination 10" severity error;

            a <= "1111";
            b <= "1111";
            wait for period;
            assert (result = "11100001")
            report "test failed for input combination 11" severity error;

            -- Fail test
            a <= "0111";
            b <= "0011";
            wait for period;
            assert (result = "00010101")
            report "test failed for input combination 01 (fail test)" severity error;


            wait; -- indefinitely suspend process
        end process;
end tb;