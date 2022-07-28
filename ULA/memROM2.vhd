library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  
  entity memROM2 is
      generic(
          addr_width : integer := 32; -- quantidade de linhas do Array
          addr_bits  : integer := 5; -- numero de bits do REGPC
          data_width : integer := 8 -- quantidade de bits do elemento
          );
  port(
		addr : in integer;
      --addr : in std_logic_vector(addr_bits-1 downto 0);
      data : out signed(data_width-1 downto 0)
  );
  end memROM2;
  
  architecture arch of memROM2 is  
      type rom_type is array (0 to addr_width-1) of signed(data_width-1 downto 0);
      
      signal rom : rom_type := (
                              "00000001", -- op A+B (62 = 00111110)
                              "00110011", -- A (50)
                              "00001100", -- B (12)
										
										"00000001", -- op A+B (62 = 00111110)
                              "00110011", -- A (50)
                              "00001100", -- B (12)
										
                              "00000001", -- op A+B (62 = 00111110)
                              "00110011", -- A (50)
                              "00001100", -- B (12)
										
										"00000001", -- op A+B (62 = 00111110)
                              "00110011", -- A (50)
                              "00001100", -- B (12)
										
										"00000001", -- op A+B (62 = 00111110)
                              "00110011", -- A (50)
                              "00001100", -- B (12)
										
										"00000001", -- op A+B (62 = 00111110)
                              "00110011", -- A (50)
                              "00001100", -- B (12)
										
                              "00000001", -- op A+B (62 = 00111110)
                              "00110011", -- A (50)
                              "00001100", -- B (12)
										
										"00000001", -- op A+B (62 = 00111110)
                              "00110011", -- A (50)
                              "00001100", -- B (12)
								
       								"00000001", -- op A+B (62 = 00111110)
                              "00110011", -- A (50)
                              "00001100", -- B (12)
																				                             									
                              "00000001", -- op A+B (62 = 00111110)
                              "00110011", -- A (50)
                              "00001100", -- B (12)
										
										"00000000", -- op noOperation
                 
                              "00001111"  -- HALT
          );
  begin	
		data <= rom(addr);
      --data <= rom(to_integer(unsigned(addr)));
  end arch;