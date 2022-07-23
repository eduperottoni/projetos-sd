library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  
  entity MemROM is
      generic(
          addr_width : integer := 32; -- quantidade de linhas do Array
          addr_bits  : integer := 5; -- numero de bits do REGPC
          data_width : integer := 8 -- quantidade de bits do elemento
          );
  port(
      addr : in std_logic_vector(addr_bits-1 downto 0);
      data : out std_logic_vector(data_width-1 downto 0)
  );
  end MemROM;
  
  architecture arch of MemROM is  
      type rom_type is array (0 to addr_width-1) of std_logic_vector(data_width-1 downto 0);
      
      signal rom : rom_type := (
                              "00000001", -- op A+B (62 = 00111110)
                              "00110010", -- A (50)
                              "00001100", -- B (12)
										
										"00000010", -- op A - B (-38 = 11011010) COM SINAL
                              "00001100", -- A (12)
                              "00110010", -- B (50)
										
                              "00000011", -- op A++ (31 = 00011111)
                              "00011110", -- A
										
										"00000011", -- op A-- 
                              "00000010", -- A
										
										"00000101", -- op not A ( 201 = 11001001)
                              "00110110", -- A
										
										"00000110", -- op A and B (7 = 00000111)
                              "00100111", -- A 
                              "11001111", -- B
										
                              "00000111", -- op A or B (187 = 10111011)
                              "00011010", -- A 
                              "10110001", -- B
										
										"00001000", -- op A xor B (30 = 00011110)
                              "00101110", -- A 
                              "00110000", -- B
								
       								"00001001", -- op A * B (36 = 00100100)
                              "00000011", -- A (3)
                              "00001100", -- B (12)
																				                             									
                              "00001010", -- op sqrt (6 = 00000110)
                              "00100100", -- A (36)
										
										"00001010", -- op sqrt (5 = 00000101)
                              "00011101", -- A (29)
											
                              "00000011", -- op sqrt (11 = 00001011)
                              "01111111", -- A (127)
										
										"00000000", -- op noOperation
                 
                              "00001111"  -- HALT
          );
  begin	
      data <= rom(to_integer(unsigned(addr)));
  end arch;