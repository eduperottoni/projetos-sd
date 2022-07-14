library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  
  entity memROM is
      generic(
          addr_width : integer := 32; -- quantidade de linhas do Array
          addr_bits  : integer := 5; -- numero de bits do REGPC
          data_width : integer := 8; -- quantidade de bits do elemento
          );
  port(
      addr : in std_logic_vector(addr_bits-1 downto 0);
      data : out std_logic_vector(data_width-1 downto 0)
  );
  end memROM;
  
  architecture arch of memROM is
  
      type rom_type is array (0 to addr_width-1) of std_logic_vector(data_width-1 downto 0);
      
      signal rom : rom_type := (
                              "00000001", -- op A+B 
                              "00110010", -- A
                              "00001100", -- B
                              "00000011", -- op A++ 
                              "00011110", -- A 
                              "00001001", -- op A * B 
                              "00110010", -- A
                              "00001100", -- B
                              "00000010", -- op A - B
                              "00001100", -- A
                              "00110010", -- B
                              "00000101", -- op not A
                              "00110010", -- A
                              "00000000", -- no op
                              "00001010", -- op divisao
                              "00100000", -- A
                              "00000101", -- B 
                              "00000110", -- op A and B 
                              "00110010", -- A 
                              "11001101", -- B
                              "00000111", -- op A or B 
                              "00011110", -- A 
                              "00100001", -- B 
                              "00001000", -- op A xor B 
                              "00001111", -- A 
                              "00110000", -- B 
                              "00000011", -- op A++ teste overflow 
                              "01111111", -- A 
                              "00001010", -- op divisao 
                              "00000100", -- A 
                              "00000010", -- B 
                              "00001111"  -- HALT
          );
  begin
      data <= rom(to_integer(unsigned(addr)));
  end arch;