-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "07/27/2022 10:13:02"

-- 
-- Device: Altera EP2C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TP1 IS
    PORT (
	clk : IN std_logic;
	inicio : IN std_logic;
	reset : IN std_logic;
	s_low : OUT std_logic_vector(7 DOWNTO 0);
	s_high : OUT std_logic_vector(7 DOWNTO 0);
	flagZ : OUT std_logic;
	flagOvf : OUT std_logic;
	flagN : OUT std_logic;
	flagError : OUT std_logic;
	enable_PC : OUT std_logic;
	ENABLE_A : OUT std_logic;
	enable_b : OUT std_logic;
	enable_op : OUT std_logic;
	calcular_sinal : OUT std_logic;
	opcode_teste : OUT std_logic_vector(3 DOWNTO 0)
	);
END TP1;

-- Design Ports Information
-- s_low[0]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_low[1]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_low[2]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_low[3]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_low[4]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_low[5]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_low[6]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_low[7]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_high[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_high[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_high[2]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_high[3]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_high[4]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_high[5]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_high[6]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_high[7]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- flagZ	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- flagOvf	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- flagN	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- flagError	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- enable_PC	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ENABLE_A	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- enable_b	=>  Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- enable_op	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- calcular_sinal	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- opcode_teste[0]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- opcode_teste[1]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- opcode_teste[2]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- opcode_teste[3]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inicio	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF TP1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_inicio : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_s_low : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_s_high : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_flagZ : std_logic;
SIGNAL ww_flagOvf : std_logic;
SIGNAL ww_flagN : std_logic;
SIGNAL ww_flagError : std_logic;
SIGNAL ww_enable_PC : std_logic;
SIGNAL ww_ENABLE_A : std_logic;
SIGNAL ww_enable_b : std_logic;
SIGNAL ww_enable_op : std_logic;
SIGNAL ww_calcular_sinal : std_logic;
SIGNAL ww_opcode_teste : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo0|ula0|somasub0|Add0~3_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add3~0_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~14_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~0_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~0_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~0_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~0_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~15_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~25_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~18_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~28_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~10_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add11~2_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~21_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~14_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~10_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~10_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add13~4_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add13~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~23\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add11~10_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~26_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux7~0_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux7~1_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux6~2_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~5_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux6~4_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux6~5_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux5~0_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux5~1_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux5~2_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux4~0_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux4~1_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux4~2_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~14_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux3~3_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux3~4_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux2~6_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux2~7_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|p1~5_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux1~2_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~20_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux1~4_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux0~0_combout\ : std_logic;
SIGNAL \bo0|ula0|flag_z_n_ovf_e[3]~3_combout\ : std_logic;
SIGNAL \bo0|ula0|flag_z_n_ovf_e[3]~4_combout\ : std_logic;
SIGNAL \bo0|ula0|flag_z_n_ovf_e[1]~11_combout\ : std_logic;
SIGNAL \bo0|mem|rom~0_combout\ : std_logic;
SIGNAL \bo0|mem|rom~16_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inicio~combout\ : std_logic;
SIGNAL \bo0|regPC|soma[1]~5_combout\ : std_logic;
SIGNAL \bo0|regPC|soma[2]~8\ : std_logic;
SIGNAL \bo0|regPC|soma[3]~9_combout\ : std_logic;
SIGNAL \bo0|regPC|soma[3]~10\ : std_logic;
SIGNAL \bo0|regPC|soma[4]~11_combout\ : std_logic;
SIGNAL \bo0|mem|rom~3_combout\ : std_logic;
SIGNAL \bo0|mem|rom~4_combout\ : std_logic;
SIGNAL \bo0|mem|rom~5_combout\ : std_logic;
SIGNAL \bc0|Selector1~0_combout\ : std_logic;
SIGNAL \bc0|Selector1~1_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \bc0|state.carrega_OP~regout\ : std_logic;
SIGNAL \bo0|mem|rom~1_combout\ : std_logic;
SIGNAL \bo0|mem|rom~2_combout\ : std_logic;
SIGNAL \bc0|Equal0~1_combout\ : std_logic;
SIGNAL \bc0|Equal0~0_combout\ : std_logic;
SIGNAL \bc0|state~11_combout\ : std_logic;
SIGNAL \bc0|state.carrega_A~regout\ : std_logic;
SIGNAL \bc0|Selector2~0_combout\ : std_logic;
SIGNAL \bc0|Selector2~1_combout\ : std_logic;
SIGNAL \bc0|Selector2~2_combout\ : std_logic;
SIGNAL \bc0|Selector2~3_combout\ : std_logic;
SIGNAL \bc0|state.calcula~regout\ : std_logic;
SIGNAL \bc0|state~10_combout\ : std_logic;
SIGNAL \bc0|state.carrega_saida~regout\ : std_logic;
SIGNAL \bc0|WideOr3~0_combout\ : std_logic;
SIGNAL \bo0|mem|rom~6_combout\ : std_logic;
SIGNAL \bo0|mem|rom~7_combout\ : std_logic;
SIGNAL \bo0|mem|rom~8_combout\ : std_logic;
SIGNAL \bo0|regOp|q[2]~feeder_combout\ : std_logic;
SIGNAL \bc0|Equal1~0_combout\ : std_logic;
SIGNAL \bc0|Selector0~0_combout\ : std_logic;
SIGNAL \bc0|state.reset~regout\ : std_logic;
SIGNAL \bo0|regPC|soma[0]~4_combout\ : std_logic;
SIGNAL \bo0|regPC|soma[1]~6\ : std_logic;
SIGNAL \bo0|regPC|soma[2]~7_combout\ : std_logic;
SIGNAL \bo0|mem|rom~18_combout\ : std_logic;
SIGNAL \bo0|mem|rom~19_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux2~2_combout\ : std_logic;
SIGNAL \bc0|state~12_combout\ : std_logic;
SIGNAL \bc0|state.carrega_B~regout\ : std_logic;
SIGNAL \bo0|ula0|Mux7~2_combout\ : std_logic;
SIGNAL \bo0|ula0|Equal4~0_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux7~3_combout\ : std_logic;
SIGNAL \bo0|regS_low|q[0]~feeder_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|s[9]~1_cout\ : std_logic;
SIGNAL \bo0|ula0|booth0|s[10]~2_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux6~7_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux6~3_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux6~6_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux2~1_combout\ : std_logic;
SIGNAL \bo0|ula0|soma_temp~0_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~8_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~0_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~2_cout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~4\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~7\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~9_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux5~3_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux5~4_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux5~5_combout\ : std_logic;
SIGNAL \bo0|regA|q[3]~feeder_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~11_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~10\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~12_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux2~0_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux4~3_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux4~4_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux4~5_combout\ : std_logic;
SIGNAL \bo0|mem|rom~10_combout\ : std_logic;
SIGNAL \bo0|mem|rom~9_combout\ : std_logic;
SIGNAL \bo0|mem|rom~11_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|s[10]~3\ : std_logic;
SIGNAL \bo0|ula0|booth0|s[11]~5\ : std_logic;
SIGNAL \bo0|ula0|booth0|s[12]~7\ : std_logic;
SIGNAL \bo0|ula0|booth0|s[13]~8_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|p1~3_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|s[11]~4_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|p1~1_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~15\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~17\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~20\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~22_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|s[12]~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|p1~2_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|p1~0_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add3~1\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add3~3\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add3~5\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add3~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~39_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~24_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~1\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~3\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~4_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~19_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add3~4_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~38_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~21_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~16_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add3~2_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~37_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~18_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~1\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~3\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~8_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~9_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~2_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~2_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~4_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~5_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~1\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~2_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~1\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~2_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~4_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~5_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~0_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add9~0_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux3~0_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux3~1_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux3~2_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux3~5_combout\ : std_logic;
SIGNAL \bo0|mem|rom~12_combout\ : std_logic;
SIGNAL \bo0|mem|rom~13_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add11~0_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~3\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~4_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|s[13]~9\ : std_logic;
SIGNAL \bo0|ula0|booth0|s[14]~10_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|p1~4_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add3~7\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add3~8_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~40_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~27_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~5\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~7\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~10_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~12_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~13_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~3\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~8_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~9_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add9~1\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add9~2_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~1\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~2_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~4_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~5_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~0_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux2~3_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux2~4_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux2~5_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux2~8_combout\ : std_logic;
SIGNAL \bo0|mem|rom~14_combout\ : std_logic;
SIGNAL \bo0|mem|rom~15_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux1~5_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add3~9\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add3~10_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|s[14]~11\ : std_logic;
SIGNAL \bo0|ula0|booth0|s[15]~12_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~41_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~30_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~7\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~8_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~11\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~14_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~16_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~17_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~5\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~12_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~13_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~3\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add9~3\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add9~4_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~8_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~9_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~1\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~2_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~4_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~5_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~0_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add13~0_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux1~0_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux1~1_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux1~3_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux1~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~15\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~18_combout\ : std_logic;
SIGNAL \bo0|mem|rom~17_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|s[15]~13\ : std_logic;
SIGNAL \bo0|ula0|booth0|s[16]~14_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|p1~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~23\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~26\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~29\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~31_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add3~11\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add3~12_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~33_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~42_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~9\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~10_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~20_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~21_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~7\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~8_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~16_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~17_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add9~5\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add9~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~12_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~13_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~3\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add11~1\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add11~3\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add11~4_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~8_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~9_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~1\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~2_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add13~1\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add13~2_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~4_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~5_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~23_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~17_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~13\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~16\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~19\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~22\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~24_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux0~3_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux0~4_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux0~5_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux0~2_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux0~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Equal14~0_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add16~0_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add15~0_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux0~1_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux0~8_combout\ : std_logic;
SIGNAL \bo0|ula0|Equal4~1_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux0~7_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~19\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~22_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~32\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~34_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add3~13\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add3~14_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~36_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~43_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~11\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~12_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~24_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~25_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~9\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~10_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~7\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~11\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~15\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~18_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~20_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~21_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add9~7\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add9~8_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~7\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~11\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~14_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~16_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~17_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add11~5\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add11~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~12_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~13_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~3\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~8_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~9_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add16~1\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add16~2_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add15~1\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add15~2_combout\ : std_logic;
SIGNAL \bo0|ula0|s_high[0]~0_combout\ : std_logic;
SIGNAL \bo0|ula0|s_high[0]~1_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~11\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~12_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~19\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~22_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~24_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~23\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~26_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~13\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~14_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~28_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~29_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~25_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add9~9\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add9~10_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~15\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~18_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~20_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~21_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~7\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~11\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~14_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add11~7\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add11~8_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~16_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~17_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~7\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~10_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~12_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~13_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add15~3\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add15~4_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add16~3\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add16~4_combout\ : std_logic;
SIGNAL \bo0|ula0|s_high[1]~2_combout\ : std_logic;
SIGNAL \bo0|ula0|s_high[1]~3_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~13\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~14_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~23\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~26_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~28_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~29_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add9~11\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add9~12_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~19\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~22_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~24_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~25_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~15\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~18_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~20_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~21_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add13~3\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add13~5\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add13~7\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add13~8_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~11\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~14_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~16_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~17_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add15~5\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add15~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add16~5\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add16~6_combout\ : std_logic;
SIGNAL \bo0|ula0|s_high[2]~4_combout\ : std_logic;
SIGNAL \bo0|ula0|s_high[2]~5_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add9~13\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add9~14_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~28_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add10~29_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add11~9\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add11~11\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add11~12_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~19\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~22_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~24_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~25_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add13~9\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add13~10_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~15\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~18_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~20_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~21_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add15~7\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add15~8_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add16~7\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add16~8_combout\ : std_logic;
SIGNAL \bo0|ula0|s_high[3]~6_combout\ : std_logic;
SIGNAL \bo0|ula0|s_high[3]~7_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~23\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~26_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add11~13\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add11~14_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~28_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add12~29_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~19\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~22_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add13~11\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add13~12_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~24_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~25_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add15~9\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add15~10_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add16~9\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add16~10_combout\ : std_logic;
SIGNAL \bo0|ula0|s_high[4]~8_combout\ : std_logic;
SIGNAL \bo0|ula0|s_high[4]~9_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~23\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~26_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add13~13\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add13~14_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~28_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add14~29_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add15~11\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add15~12_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add16~11\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add16~12_combout\ : std_logic;
SIGNAL \bo0|ula0|s_high[5]~10_combout\ : std_logic;
SIGNAL \bo0|ula0|s_high[5]~11_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add15~13\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add15~14_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add16~13\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add16~14_combout\ : std_logic;
SIGNAL \bo0|ula0|s_high[6]~12_combout\ : std_logic;
SIGNAL \bo0|ula0|s_high[6]~13_combout\ : std_logic;
SIGNAL \bo0|ula0|flag_z_n_ovf_e[3]~0_combout\ : std_logic;
SIGNAL \bo0|ula0|flag_z_n_ovf_e[3]~1_combout\ : std_logic;
SIGNAL \bo0|ula0|flag_z_n_ovf_e[3]~2_combout\ : std_logic;
SIGNAL \bo0|ula0|flag_z_n_ovf_e[3]~5_combout\ : std_logic;
SIGNAL \bo0|ula0|flag_z_n_ovf_e[1]~10_combout\ : std_logic;
SIGNAL \bo0|ula0|flag_z_n_ovf_e[1]~6_combout\ : std_logic;
SIGNAL \bo0|ula0|flag_z_n_ovf_e[1]~7_combout\ : std_logic;
SIGNAL \bo0|ula0|flag_z_n_ovf_e[1]~8_combout\ : std_logic;
SIGNAL \bo0|ula0|flag_z_n_ovf_e[1]~9_combout\ : std_logic;
SIGNAL \bo0|ula0|flag_z_n_ovf_e[1]~12_combout\ : std_logic;
SIGNAL \bo0|regB|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bo0|regS_low|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bo0|regS_high|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bo0|regflag_z_n_ovf|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo0|regPC|soma\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \bo0|regA|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bo0|regOp|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bc0|ALT_INV_state.reset~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_inicio <= inicio;
ww_reset <= reset;
s_low <= ww_s_low;
s_high <= ww_s_high;
flagZ <= ww_flagZ;
flagOvf <= ww_flagOvf;
flagN <= ww_flagN;
flagError <= ww_flagError;
enable_PC <= ww_enable_PC;
ENABLE_A <= ww_ENABLE_A;
enable_b <= ww_enable_b;
enable_op <= ww_enable_op;
calcular_sinal <= ww_calcular_sinal;
opcode_teste <= ww_opcode_teste;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\bc0|ALT_INV_state.reset~regout\ <= NOT \bc0|state.reset~regout\;

-- Location: LCCOMB_X13_Y11_N14
\bo0|ula0|somasub0|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add0~3_combout\ = (\bo0|regA|q\(0) & ((\bo0|ula0|somasub0|Add0~0_combout\ & (\bo0|ula0|somasub0|Add0~2_cout\ & VCC)) # (!\bo0|ula0|somasub0|Add0~0_combout\ & (!\bo0|ula0|somasub0|Add0~2_cout\)))) # (!\bo0|regA|q\(0) & 
-- ((\bo0|ula0|somasub0|Add0~0_combout\ & (!\bo0|ula0|somasub0|Add0~2_cout\)) # (!\bo0|ula0|somasub0|Add0~0_combout\ & ((\bo0|ula0|somasub0|Add0~2_cout\) # (GND)))))
-- \bo0|ula0|somasub0|Add0~4\ = CARRY((\bo0|regA|q\(0) & (!\bo0|ula0|somasub0|Add0~0_combout\ & !\bo0|ula0|somasub0|Add0~2_cout\)) # (!\bo0|regA|q\(0) & ((!\bo0|ula0|somasub0|Add0~2_cout\) # (!\bo0|ula0|somasub0|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(0),
	datab => \bo0|ula0|somasub0|Add0~0_combout\,
	datad => VCC,
	cin => \bo0|ula0|somasub0|Add0~2_cout\,
	combout => \bo0|ula0|somasub0|Add0~3_combout\,
	cout => \bo0|ula0|somasub0|Add0~4\);

-- Location: LCCOMB_X8_Y11_N6
\bo0|ula0|booth0|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add3~0_combout\ = (\bo0|regA|q\(0) & (\bo0|ula0|booth0|p1~0_combout\ $ (VCC))) # (!\bo0|regA|q\(0) & (\bo0|ula0|booth0|p1~0_combout\ & VCC))
-- \bo0|ula0|booth0|Add3~1\ = CARRY((\bo0|regA|q\(0) & \bo0|ula0|booth0|p1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(0),
	datab => \bo0|ula0|booth0|p1~0_combout\,
	datad => VCC,
	combout => \bo0|ula0|booth0|Add3~0_combout\,
	cout => \bo0|ula0|booth0|Add3~1\);

-- Location: LCCOMB_X7_Y11_N0
\bo0|ula0|booth0|Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~14_combout\ = (\bo0|ula0|booth0|p1~0_combout\ & (\bo0|regA|q\(0) $ (VCC))) # (!\bo0|ula0|booth0|p1~0_combout\ & (\bo0|regA|q\(0) & VCC))
-- \bo0|ula0|booth0|Add4~15\ = CARRY((\bo0|ula0|booth0|p1~0_combout\ & \bo0|regA|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|p1~0_combout\,
	datab => \bo0|regA|q\(0),
	datad => VCC,
	combout => \bo0|ula0|booth0|Add4~14_combout\,
	cout => \bo0|ula0|booth0|Add4~15\);

-- Location: LCCOMB_X13_Y11_N16
\bo0|ula0|somasub0|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add0~6_combout\ = ((\bo0|ula0|somasub0|Add0~5_combout\ $ (\bo0|regA|q\(1) $ (!\bo0|ula0|somasub0|Add0~4\)))) # (GND)
-- \bo0|ula0|somasub0|Add0~7\ = CARRY((\bo0|ula0|somasub0|Add0~5_combout\ & ((\bo0|regA|q\(1)) # (!\bo0|ula0|somasub0|Add0~4\))) # (!\bo0|ula0|somasub0|Add0~5_combout\ & (\bo0|regA|q\(1) & !\bo0|ula0|somasub0|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|somasub0|Add0~5_combout\,
	datab => \bo0|regA|q\(1),
	datad => VCC,
	cin => \bo0|ula0|somasub0|Add0~4\,
	combout => \bo0|ula0|somasub0|Add0~6_combout\,
	cout => \bo0|ula0|somasub0|Add0~7\);

-- Location: LCCOMB_X9_Y11_N0
\bo0|ula0|booth0|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add5~0_combout\ = (\bo0|ula0|booth0|Add4~18_combout\ & (\bo0|regA|q\(0) $ (VCC))) # (!\bo0|ula0|booth0|Add4~18_combout\ & (\bo0|regA|q\(0) & VCC))
-- \bo0|ula0|booth0|Add5~1\ = CARRY((\bo0|ula0|booth0|Add4~18_combout\ & \bo0|regA|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add4~18_combout\,
	datab => \bo0|regA|q\(0),
	datad => VCC,
	combout => \bo0|ula0|booth0|Add5~0_combout\,
	cout => \bo0|ula0|booth0|Add5~1\);

-- Location: LCCOMB_X10_Y11_N4
\bo0|ula0|booth0|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~0_combout\ = (\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add4~18_combout\ $ (VCC))) # (!\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add4~18_combout\ & VCC))
-- \bo0|ula0|booth0|Add6~1\ = CARRY((\bo0|regA|q\(0) & \bo0|ula0|booth0|Add4~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(0),
	datab => \bo0|ula0|booth0|Add4~18_combout\,
	datad => VCC,
	combout => \bo0|ula0|booth0|Add6~0_combout\,
	cout => \bo0|ula0|booth0|Add6~1\);

-- Location: LCCOMB_X10_Y10_N14
\bo0|ula0|booth0|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add7~0_combout\ = (\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add6~5_combout\ $ (VCC))) # (!\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add6~5_combout\ & VCC))
-- \bo0|ula0|booth0|Add7~1\ = CARRY((\bo0|regA|q\(0) & \bo0|ula0|booth0|Add6~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(0),
	datab => \bo0|ula0|booth0|Add6~5_combout\,
	datad => VCC,
	combout => \bo0|ula0|booth0|Add7~0_combout\,
	cout => \bo0|ula0|booth0|Add7~1\);

-- Location: LCCOMB_X9_Y10_N4
\bo0|ula0|booth0|Add8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~0_combout\ = (\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add6~5_combout\ $ (VCC))) # (!\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add6~5_combout\ & VCC))
-- \bo0|ula0|booth0|Add8~1\ = CARRY((\bo0|regA|q\(0) & \bo0|ula0|booth0|Add6~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(0),
	datab => \bo0|ula0|booth0|Add6~5_combout\,
	datad => VCC,
	combout => \bo0|ula0|booth0|Add8~0_combout\,
	cout => \bo0|ula0|booth0|Add8~1\);

-- Location: LCCOMB_X13_Y11_N22
\bo0|ula0|somasub0|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add0~15_combout\ = (\bo0|ula0|somasub0|Add0~14_combout\ & ((\bo0|regA|q\(4) & (\bo0|ula0|somasub0|Add0~13\ & VCC)) # (!\bo0|regA|q\(4) & (!\bo0|ula0|somasub0|Add0~13\)))) # (!\bo0|ula0|somasub0|Add0~14_combout\ & ((\bo0|regA|q\(4) & 
-- (!\bo0|ula0|somasub0|Add0~13\)) # (!\bo0|regA|q\(4) & ((\bo0|ula0|somasub0|Add0~13\) # (GND)))))
-- \bo0|ula0|somasub0|Add0~16\ = CARRY((\bo0|ula0|somasub0|Add0~14_combout\ & (!\bo0|regA|q\(4) & !\bo0|ula0|somasub0|Add0~13\)) # (!\bo0|ula0|somasub0|Add0~14_combout\ & ((!\bo0|ula0|somasub0|Add0~13\) # (!\bo0|regA|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|somasub0|Add0~14_combout\,
	datab => \bo0|regA|q\(4),
	datad => VCC,
	cin => \bo0|ula0|somasub0|Add0~13\,
	combout => \bo0|ula0|somasub0|Add0~15_combout\,
	cout => \bo0|ula0|somasub0|Add0~16\);

-- Location: LCCOMB_X7_Y11_N8
\bo0|ula0|booth0|Add4~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~25_combout\ = ((\bo0|regA|q\(4) $ (\bo0|ula0|booth0|p1~4_combout\ $ (!\bo0|ula0|booth0|Add4~23\)))) # (GND)
-- \bo0|ula0|booth0|Add4~26\ = CARRY((\bo0|regA|q\(4) & ((\bo0|ula0|booth0|p1~4_combout\) # (!\bo0|ula0|booth0|Add4~23\))) # (!\bo0|regA|q\(4) & (\bo0|ula0|booth0|p1~4_combout\ & !\bo0|ula0|booth0|Add4~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(4),
	datab => \bo0|ula0|booth0|p1~4_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add4~23\,
	combout => \bo0|ula0|booth0|Add4~25_combout\,
	cout => \bo0|ula0|booth0|Add4~26\);

-- Location: LCCOMB_X13_Y11_N24
\bo0|ula0|somasub0|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add0~18_combout\ = ((\bo0|regA|q\(5) $ (\bo0|ula0|somasub0|Add0~17_combout\ $ (!\bo0|ula0|somasub0|Add0~16\)))) # (GND)
-- \bo0|ula0|somasub0|Add0~19\ = CARRY((\bo0|regA|q\(5) & ((\bo0|ula0|somasub0|Add0~17_combout\) # (!\bo0|ula0|somasub0|Add0~16\))) # (!\bo0|regA|q\(5) & (\bo0|ula0|somasub0|Add0~17_combout\ & !\bo0|ula0|somasub0|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(5),
	datab => \bo0|ula0|somasub0|Add0~17_combout\,
	datad => VCC,
	cin => \bo0|ula0|somasub0|Add0~16\,
	combout => \bo0|ula0|somasub0|Add0~18_combout\,
	cout => \bo0|ula0|somasub0|Add0~19\);

-- Location: LCCOMB_X7_Y11_N10
\bo0|ula0|booth0|Add4~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~28_combout\ = (\bo0|ula0|booth0|p1~5_combout\ & ((\bo0|regA|q\(5) & (\bo0|ula0|booth0|Add4~26\ & VCC)) # (!\bo0|regA|q\(5) & (!\bo0|ula0|booth0|Add4~26\)))) # (!\bo0|ula0|booth0|p1~5_combout\ & ((\bo0|regA|q\(5) & 
-- (!\bo0|ula0|booth0|Add4~26\)) # (!\bo0|regA|q\(5) & ((\bo0|ula0|booth0|Add4~26\) # (GND)))))
-- \bo0|ula0|booth0|Add4~29\ = CARRY((\bo0|ula0|booth0|p1~5_combout\ & (!\bo0|regA|q\(5) & !\bo0|ula0|booth0|Add4~26\)) # (!\bo0|ula0|booth0|p1~5_combout\ & ((!\bo0|ula0|booth0|Add4~26\) # (!\bo0|regA|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|p1~5_combout\,
	datab => \bo0|regA|q\(5),
	datad => VCC,
	cin => \bo0|ula0|booth0|Add4~26\,
	combout => \bo0|ula0|booth0|Add4~28_combout\,
	cout => \bo0|ula0|booth0|Add4~29\);

-- Location: LCCOMB_X9_Y10_N10
\bo0|ula0|booth0|Add8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~10_combout\ = (\bo0|ula0|booth0|Add6~17_combout\ & ((\bo0|regA|q\(3) & (\bo0|ula0|booth0|Add8~7\ & VCC)) # (!\bo0|regA|q\(3) & (!\bo0|ula0|booth0|Add8~7\)))) # (!\bo0|ula0|booth0|Add6~17_combout\ & ((\bo0|regA|q\(3) & 
-- (!\bo0|ula0|booth0|Add8~7\)) # (!\bo0|regA|q\(3) & ((\bo0|ula0|booth0|Add8~7\) # (GND)))))
-- \bo0|ula0|booth0|Add8~11\ = CARRY((\bo0|ula0|booth0|Add6~17_combout\ & (!\bo0|regA|q\(3) & !\bo0|ula0|booth0|Add8~7\)) # (!\bo0|ula0|booth0|Add6~17_combout\ & ((!\bo0|ula0|booth0|Add8~7\) # (!\bo0|regA|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add6~17_combout\,
	datab => \bo0|regA|q\(3),
	datad => VCC,
	cin => \bo0|ula0|booth0|Add8~7\,
	combout => \bo0|ula0|booth0|Add8~10_combout\,
	cout => \bo0|ula0|booth0|Add8~11\);

-- Location: LCCOMB_X14_Y10_N6
\bo0|ula0|booth0|Add11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add11~2_combout\ = (\bo0|ula0|booth0|s[10]~2_combout\ & ((\bo0|ula0|booth0|Add10~9_combout\ & (\bo0|ula0|booth0|Add11~1\ & VCC)) # (!\bo0|ula0|booth0|Add10~9_combout\ & (!\bo0|ula0|booth0|Add11~1\)))) # (!\bo0|ula0|booth0|s[10]~2_combout\ 
-- & ((\bo0|ula0|booth0|Add10~9_combout\ & (!\bo0|ula0|booth0|Add11~1\)) # (!\bo0|ula0|booth0|Add10~9_combout\ & ((\bo0|ula0|booth0|Add11~1\) # (GND)))))
-- \bo0|ula0|booth0|Add11~3\ = CARRY((\bo0|ula0|booth0|s[10]~2_combout\ & (!\bo0|ula0|booth0|Add10~9_combout\ & !\bo0|ula0|booth0|Add11~1\)) # (!\bo0|ula0|booth0|s[10]~2_combout\ & ((!\bo0|ula0|booth0|Add11~1\) # (!\bo0|ula0|booth0|Add10~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[10]~2_combout\,
	datab => \bo0|ula0|booth0|Add10~9_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add11~1\,
	combout => \bo0|ula0|booth0|Add11~2_combout\,
	cout => \bo0|ula0|booth0|Add11~3\);

-- Location: LCCOMB_X13_Y11_N26
\bo0|ula0|somasub0|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add0~21_combout\ = (\bo0|ula0|somasub0|Add0~20_combout\ & ((\bo0|regA|q\(6) & (\bo0|ula0|somasub0|Add0~19\ & VCC)) # (!\bo0|regA|q\(6) & (!\bo0|ula0|somasub0|Add0~19\)))) # (!\bo0|ula0|somasub0|Add0~20_combout\ & ((\bo0|regA|q\(6) & 
-- (!\bo0|ula0|somasub0|Add0~19\)) # (!\bo0|regA|q\(6) & ((\bo0|ula0|somasub0|Add0~19\) # (GND)))))
-- \bo0|ula0|somasub0|Add0~22\ = CARRY((\bo0|ula0|somasub0|Add0~20_combout\ & (!\bo0|regA|q\(6) & !\bo0|ula0|somasub0|Add0~19\)) # (!\bo0|ula0|somasub0|Add0~20_combout\ & ((!\bo0|ula0|somasub0|Add0~19\) # (!\bo0|regA|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|somasub0|Add0~20_combout\,
	datab => \bo0|regA|q\(6),
	datad => VCC,
	cin => \bo0|ula0|somasub0|Add0~19\,
	combout => \bo0|ula0|somasub0|Add0~21_combout\,
	cout => \bo0|ula0|somasub0|Add0~22\);

-- Location: LCCOMB_X9_Y10_N12
\bo0|ula0|booth0|Add8~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~14_combout\ = ((\bo0|ula0|booth0|Add6~21_combout\ $ (\bo0|regA|q\(4) $ (!\bo0|ula0|booth0|Add8~11\)))) # (GND)
-- \bo0|ula0|booth0|Add8~15\ = CARRY((\bo0|ula0|booth0|Add6~21_combout\ & ((\bo0|regA|q\(4)) # (!\bo0|ula0|booth0|Add8~11\))) # (!\bo0|ula0|booth0|Add6~21_combout\ & (\bo0|regA|q\(4) & !\bo0|ula0|booth0|Add8~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add6~21_combout\,
	datab => \bo0|regA|q\(4),
	datad => VCC,
	cin => \bo0|ula0|booth0|Add8~11\,
	combout => \bo0|ula0|booth0|Add8~14_combout\,
	cout => \bo0|ula0|booth0|Add8~15\);

-- Location: LCCOMB_X12_Y10_N6
\bo0|ula0|booth0|Add10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~10_combout\ = (\bo0|ula0|booth0|Add8~17_combout\ & ((\bo0|regA|q\(3) & (\bo0|ula0|booth0|Add10~7\ & VCC)) # (!\bo0|regA|q\(3) & (!\bo0|ula0|booth0|Add10~7\)))) # (!\bo0|ula0|booth0|Add8~17_combout\ & ((\bo0|regA|q\(3) & 
-- (!\bo0|ula0|booth0|Add10~7\)) # (!\bo0|regA|q\(3) & ((\bo0|ula0|booth0|Add10~7\) # (GND)))))
-- \bo0|ula0|booth0|Add10~11\ = CARRY((\bo0|ula0|booth0|Add8~17_combout\ & (!\bo0|regA|q\(3) & !\bo0|ula0|booth0|Add10~7\)) # (!\bo0|ula0|booth0|Add8~17_combout\ & ((!\bo0|ula0|booth0|Add10~7\) # (!\bo0|regA|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add8~17_combout\,
	datab => \bo0|regA|q\(3),
	datad => VCC,
	cin => \bo0|ula0|booth0|Add10~7\,
	combout => \bo0|ula0|booth0|Add10~10_combout\,
	cout => \bo0|ula0|booth0|Add10~11\);

-- Location: LCCOMB_X15_Y10_N6
\bo0|ula0|booth0|Add12~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~10_combout\ = (\bo0|regA|q\(3) & ((\bo0|ula0|booth0|Add10~17_combout\ & (\bo0|ula0|booth0|Add12~7\ & VCC)) # (!\bo0|ula0|booth0|Add10~17_combout\ & (!\bo0|ula0|booth0|Add12~7\)))) # (!\bo0|regA|q\(3) & 
-- ((\bo0|ula0|booth0|Add10~17_combout\ & (!\bo0|ula0|booth0|Add12~7\)) # (!\bo0|ula0|booth0|Add10~17_combout\ & ((\bo0|ula0|booth0|Add12~7\) # (GND)))))
-- \bo0|ula0|booth0|Add12~11\ = CARRY((\bo0|regA|q\(3) & (!\bo0|ula0|booth0|Add10~17_combout\ & !\bo0|ula0|booth0|Add12~7\)) # (!\bo0|regA|q\(3) & ((!\bo0|ula0|booth0|Add12~7\) # (!\bo0|ula0|booth0|Add10~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(3),
	datab => \bo0|ula0|booth0|Add10~17_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add12~7\,
	combout => \bo0|ula0|booth0|Add12~10_combout\,
	cout => \bo0|ula0|booth0|Add12~11\);

-- Location: LCCOMB_X15_Y9_N10
\bo0|ula0|booth0|Add13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add13~4_combout\ = ((\bo0|ula0|booth0|s[11]~4_combout\ $ (\bo0|ula0|booth0|Add12~13_combout\ $ (!\bo0|ula0|booth0|Add13~3\)))) # (GND)
-- \bo0|ula0|booth0|Add13~5\ = CARRY((\bo0|ula0|booth0|s[11]~4_combout\ & ((\bo0|ula0|booth0|Add12~13_combout\) # (!\bo0|ula0|booth0|Add13~3\))) # (!\bo0|ula0|booth0|s[11]~4_combout\ & (\bo0|ula0|booth0|Add12~13_combout\ & !\bo0|ula0|booth0|Add13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[11]~4_combout\,
	datab => \bo0|ula0|booth0|Add12~13_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add13~3\,
	combout => \bo0|ula0|booth0|Add13~4_combout\,
	cout => \bo0|ula0|booth0|Add13~5\);

-- Location: LCCOMB_X15_Y9_N12
\bo0|ula0|booth0|Add13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add13~6_combout\ = (\bo0|ula0|booth0|Add12~17_combout\ & ((\bo0|ula0|booth0|s[12]~6_combout\ & (\bo0|ula0|booth0|Add13~5\ & VCC)) # (!\bo0|ula0|booth0|s[12]~6_combout\ & (!\bo0|ula0|booth0|Add13~5\)))) # 
-- (!\bo0|ula0|booth0|Add12~17_combout\ & ((\bo0|ula0|booth0|s[12]~6_combout\ & (!\bo0|ula0|booth0|Add13~5\)) # (!\bo0|ula0|booth0|s[12]~6_combout\ & ((\bo0|ula0|booth0|Add13~5\) # (GND)))))
-- \bo0|ula0|booth0|Add13~7\ = CARRY((\bo0|ula0|booth0|Add12~17_combout\ & (!\bo0|ula0|booth0|s[12]~6_combout\ & !\bo0|ula0|booth0|Add13~5\)) # (!\bo0|ula0|booth0|Add12~17_combout\ & ((!\bo0|ula0|booth0|Add13~5\) # (!\bo0|ula0|booth0|s[12]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add12~17_combout\,
	datab => \bo0|ula0|booth0|s[12]~6_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add13~5\,
	combout => \bo0|ula0|booth0|Add13~6_combout\,
	cout => \bo0|ula0|booth0|Add13~7\);

-- Location: LCCOMB_X12_Y10_N12
\bo0|ula0|booth0|Add10~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~22_combout\ = ((\bo0|regA|q\(6) $ (\bo0|ula0|booth0|Add8~29_combout\ $ (!\bo0|ula0|booth0|Add10~19\)))) # (GND)
-- \bo0|ula0|booth0|Add10~23\ = CARRY((\bo0|regA|q\(6) & ((\bo0|ula0|booth0|Add8~29_combout\) # (!\bo0|ula0|booth0|Add10~19\))) # (!\bo0|regA|q\(6) & (\bo0|ula0|booth0|Add8~29_combout\ & !\bo0|ula0|booth0|Add10~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(6),
	datab => \bo0|ula0|booth0|Add8~29_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add10~19\,
	combout => \bo0|ula0|booth0|Add10~22_combout\,
	cout => \bo0|ula0|booth0|Add10~23\);

-- Location: LCCOMB_X14_Y10_N14
\bo0|ula0|booth0|Add11~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add11~10_combout\ = (\bo0|ula0|booth0|Add10~25_combout\ & ((\bo0|ula0|booth0|s[14]~10_combout\ & (\bo0|ula0|booth0|Add11~9\ & VCC)) # (!\bo0|ula0|booth0|s[14]~10_combout\ & (!\bo0|ula0|booth0|Add11~9\)))) # 
-- (!\bo0|ula0|booth0|Add10~25_combout\ & ((\bo0|ula0|booth0|s[14]~10_combout\ & (!\bo0|ula0|booth0|Add11~9\)) # (!\bo0|ula0|booth0|s[14]~10_combout\ & ((\bo0|ula0|booth0|Add11~9\) # (GND)))))
-- \bo0|ula0|booth0|Add11~11\ = CARRY((\bo0|ula0|booth0|Add10~25_combout\ & (!\bo0|ula0|booth0|s[14]~10_combout\ & !\bo0|ula0|booth0|Add11~9\)) # (!\bo0|ula0|booth0|Add10~25_combout\ & ((!\bo0|ula0|booth0|Add11~9\) # (!\bo0|ula0|booth0|s[14]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add10~25_combout\,
	datab => \bo0|ula0|booth0|s[14]~10_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add11~9\,
	combout => \bo0|ula0|booth0|Add11~10_combout\,
	cout => \bo0|ula0|booth0|Add11~11\);

-- Location: LCCOMB_X12_Y10_N14
\bo0|ula0|booth0|Add10~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~26_combout\ = \bo0|regA|q\(7) $ (\bo0|ula0|booth0|Add10~23\ $ (\bo0|ula0|booth0|Add8~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo0|regA|q\(7),
	datad => \bo0|ula0|booth0|Add8~29_combout\,
	cin => \bo0|ula0|booth0|Add10~23\,
	combout => \bo0|ula0|booth0|Add10~26_combout\);

-- Location: LCCOMB_X14_Y11_N16
\bo0|ula0|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux7~0_combout\ = (\bo0|regB|q\(0) & (\bo0|regOp|q\(0) $ (!\bo0|regA|q\(0)))) # (!\bo0|regB|q\(0) & (!\bo0|regOp|q\(0) & \bo0|regA|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(0),
	datac => \bo0|regOp|q\(0),
	datad => \bo0|regA|q\(0),
	combout => \bo0|ula0|Mux7~0_combout\);

-- Location: LCCOMB_X13_Y11_N8
\bo0|ula0|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux7~1_combout\ = (\bo0|ula0|Mux2~0_combout\ & (((\bo0|ula0|Mux2~1_combout\)))) # (!\bo0|ula0|Mux2~0_combout\ & ((\bo0|ula0|Mux2~1_combout\ & ((\bo0|ula0|somasub0|Add0~3_combout\))) # (!\bo0|ula0|Mux2~1_combout\ & (!\bo0|regA|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(0),
	datab => \bo0|ula0|Mux2~0_combout\,
	datac => \bo0|ula0|somasub0|Add0~3_combout\,
	datad => \bo0|ula0|Mux2~1_combout\,
	combout => \bo0|ula0|Mux7~1_combout\);

-- Location: LCCOMB_X6_Y11_N20
\bo0|ula0|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux6~2_combout\ = (\bo0|regB|q\(0) & (((\bo0|ula0|booth0|Add4~14_combout\ & !\bo0|regB|q\(1))))) # (!\bo0|regB|q\(0) & (\bo0|ula0|booth0|Add3~0_combout\ & ((\bo0|regB|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add3~0_combout\,
	datab => \bo0|regB|q\(0),
	datac => \bo0|ula0|booth0|Add4~14_combout\,
	datad => \bo0|regB|q\(1),
	combout => \bo0|ula0|Mux6~2_combout\);

-- Location: LCCOMB_X12_Y11_N30
\bo0|ula0|somasub0|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add0~5_combout\ = (\bo0|regOp|q\(0) & (\bc0|Equal0~0_combout\ $ (((\bo0|ula0|soma_temp~0_combout\) # (!\bo0|regB|q\(1)))))) # (!\bo0|regOp|q\(0) & (((\bo0|ula0|soma_temp~0_combout\)) # (!\bo0|regB|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(0),
	datab => \bo0|regB|q\(1),
	datac => \bc0|Equal0~0_combout\,
	datad => \bo0|ula0|soma_temp~0_combout\,
	combout => \bo0|ula0|somasub0|Add0~5_combout\);

-- Location: LCCOMB_X9_Y11_N26
\bo0|ula0|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux6~4_combout\ = (\bo0|ula0|Mux2~1_combout\ & (((\bo0|ula0|Mux2~0_combout\) # (\bo0|ula0|somasub0|Add0~6_combout\)))) # (!\bo0|ula0|Mux2~1_combout\ & (!\bo0|regA|q\(1) & (!\bo0|ula0|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(1),
	datab => \bo0|ula0|Mux2~1_combout\,
	datac => \bo0|ula0|Mux2~0_combout\,
	datad => \bo0|ula0|somasub0|Add0~6_combout\,
	combout => \bo0|ula0|Mux6~4_combout\);

-- Location: LCCOMB_X8_Y11_N24
\bo0|ula0|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux6~5_combout\ = (\bo0|ula0|Mux2~2_combout\ & ((\bo0|regB|q\(1) & ((\bo0|ula0|Mux6~4_combout\) # (\bo0|regA|q\(1)))) # (!\bo0|regB|q\(1) & (\bo0|ula0|Mux6~4_combout\ & \bo0|regA|q\(1))))) # (!\bo0|ula0|Mux2~2_combout\ & 
-- (((\bo0|ula0|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux2~2_combout\,
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|Mux6~4_combout\,
	datad => \bo0|regA|q\(1),
	combout => \bo0|ula0|Mux6~5_combout\);

-- Location: LCCOMB_X6_Y11_N16
\bo0|ula0|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux5~0_combout\ = (\bo0|regB|q\(1) & (((!\bo0|regB|q\(2) & \bo0|ula0|booth0|Add6~0_combout\)))) # (!\bo0|regB|q\(1) & (\bo0|ula0|booth0|Add5~0_combout\ & (\bo0|regB|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add5~0_combout\,
	datab => \bo0|regB|q\(1),
	datac => \bo0|regB|q\(2),
	datad => \bo0|ula0|booth0|Add6~0_combout\,
	combout => \bo0|ula0|Mux5~0_combout\);

-- Location: LCCOMB_X6_Y11_N18
\bo0|ula0|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux5~1_combout\ = (\bo0|ula0|Mux5~0_combout\) # ((\bo0|ula0|booth0|Add4~18_combout\ & (\bo0|regB|q\(2) $ (!\bo0|regB|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|ula0|booth0|Add4~18_combout\,
	datac => \bo0|ula0|Mux5~0_combout\,
	datad => \bo0|regB|q\(1),
	combout => \bo0|ula0|Mux5~1_combout\);

-- Location: LCCOMB_X6_Y11_N26
\bo0|ula0|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux5~2_combout\ = (\bo0|regOp|q\(0) & (((\bo0|ula0|Mux5~1_combout\)))) # (!\bo0|regOp|q\(0) & (\bo0|regB|q\(2) $ (((\bo0|regA|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|ula0|Mux5~1_combout\,
	datac => \bo0|regA|q\(2),
	datad => \bo0|regOp|q\(0),
	combout => \bo0|ula0|Mux5~2_combout\);

-- Location: LCCOMB_X9_Y10_N20
\bo0|ula0|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux4~0_combout\ = (\bo0|regB|q\(3) & (!\bo0|regB|q\(2) & ((\bo0|ula0|booth0|Add7~0_combout\)))) # (!\bo0|regB|q\(3) & (\bo0|regB|q\(2) & (\bo0|ula0|booth0|Add8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|regB|q\(2),
	datac => \bo0|ula0|booth0|Add8~0_combout\,
	datad => \bo0|ula0|booth0|Add7~0_combout\,
	combout => \bo0|ula0|Mux4~0_combout\);

-- Location: LCCOMB_X9_Y10_N22
\bo0|ula0|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux4~1_combout\ = (\bo0|ula0|Mux4~0_combout\) # ((\bo0|ula0|booth0|Add6~5_combout\ & (\bo0|regB|q\(3) $ (!\bo0|regB|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|regB|q\(2),
	datac => \bo0|ula0|Mux4~0_combout\,
	datad => \bo0|ula0|booth0|Add6~5_combout\,
	combout => \bo0|ula0|Mux4~1_combout\);

-- Location: LCCOMB_X9_Y10_N0
\bo0|ula0|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux4~2_combout\ = (\bo0|regOp|q\(0) & (((\bo0|ula0|Mux4~1_combout\)))) # (!\bo0|regOp|q\(0) & (\bo0|regB|q\(3) $ ((\bo0|regA|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|regOp|q\(0),
	datac => \bo0|regA|q\(3),
	datad => \bo0|ula0|Mux4~1_combout\,
	combout => \bo0|ula0|Mux4~2_combout\);

-- Location: LCCOMB_X12_Y11_N2
\bo0|ula0|somasub0|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add0~14_combout\ = (\bo0|regOp|q\(0) & (\bc0|Equal0~0_combout\ $ (((\bo0|ula0|soma_temp~0_combout\) # (!\bo0|regB|q\(4)))))) # (!\bo0|regOp|q\(0) & ((\bo0|ula0|soma_temp~0_combout\) # ((!\bo0|regB|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(0),
	datab => \bo0|ula0|soma_temp~0_combout\,
	datac => \bc0|Equal0~0_combout\,
	datad => \bo0|regB|q\(4),
	combout => \bo0|ula0|somasub0|Add0~14_combout\);

-- Location: LCCOMB_X13_Y11_N0
\bo0|ula0|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux3~3_combout\ = (\bo0|ula0|Mux2~1_combout\ & (((\bo0|ula0|Mux2~0_combout\) # (\bo0|ula0|somasub0|Add0~15_combout\)))) # (!\bo0|ula0|Mux2~1_combout\ & (!\bo0|regA|q\(4) & (!\bo0|ula0|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(4),
	datab => \bo0|ula0|Mux2~1_combout\,
	datac => \bo0|ula0|Mux2~0_combout\,
	datad => \bo0|ula0|somasub0|Add0~15_combout\,
	combout => \bo0|ula0|Mux3~3_combout\);

-- Location: LCCOMB_X13_Y11_N30
\bo0|ula0|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux3~4_combout\ = (\bo0|ula0|Mux2~2_combout\ & ((\bo0|regA|q\(4) & ((\bo0|regB|q\(4)) # (\bo0|ula0|Mux3~3_combout\))) # (!\bo0|regA|q\(4) & (\bo0|regB|q\(4) & \bo0|ula0|Mux3~3_combout\)))) # (!\bo0|ula0|Mux2~2_combout\ & 
-- (((\bo0|ula0|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux2~2_combout\,
	datab => \bo0|regA|q\(4),
	datac => \bo0|regB|q\(4),
	datad => \bo0|ula0|Mux3~3_combout\,
	combout => \bo0|ula0|Mux3~4_combout\);

-- Location: LCCOMB_X14_Y11_N0
\bo0|ula0|Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux2~6_combout\ = (\bo0|ula0|Mux2~1_combout\ & ((\bo0|ula0|somasub0|Add0~18_combout\) # ((\bo0|ula0|Mux2~0_combout\)))) # (!\bo0|ula0|Mux2~1_combout\ & (((!\bo0|regA|q\(5) & !\bo0|ula0|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux2~1_combout\,
	datab => \bo0|ula0|somasub0|Add0~18_combout\,
	datac => \bo0|regA|q\(5),
	datad => \bo0|ula0|Mux2~0_combout\,
	combout => \bo0|ula0|Mux2~6_combout\);

-- Location: LCCOMB_X14_Y11_N10
\bo0|ula0|Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux2~7_combout\ = (\bo0|ula0|Mux2~2_combout\ & ((\bo0|regB|q\(5) & ((\bo0|regA|q\(5)) # (\bo0|ula0|Mux2~6_combout\))) # (!\bo0|regB|q\(5) & (\bo0|regA|q\(5) & \bo0|ula0|Mux2~6_combout\)))) # (!\bo0|ula0|Mux2~2_combout\ & 
-- (((\bo0|ula0|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux2~2_combout\,
	datab => \bo0|regB|q\(5),
	datac => \bo0|regA|q\(5),
	datad => \bo0|ula0|Mux2~6_combout\,
	combout => \bo0|ula0|Mux2~7_combout\);

-- Location: LCCOMB_X7_Y11_N20
\bo0|ula0|booth0|p1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|p1~5_combout\ = (\bo0|regB|q\(0) & \bo0|ula0|booth0|s[15]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo0|regB|q\(0),
	datad => \bo0|ula0|booth0|s[15]~12_combout\,
	combout => \bo0|ula0|booth0|p1~5_combout\);

-- Location: LCCOMB_X13_Y9_N10
\bo0|ula0|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux1~2_combout\ = (\bo0|regOp|q\(0) & (\bo0|regB|q\(5) $ (!\bo0|regB|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo0|regB|q\(5),
	datac => \bo0|regOp|q\(0),
	datad => \bo0|regB|q\(6),
	combout => \bo0|ula0|Mux1~2_combout\);

-- Location: LCCOMB_X13_Y11_N4
\bo0|ula0|somasub0|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add0~20_combout\ = (\bc0|Equal0~0_combout\ & (\bo0|regOp|q\(0) $ (((\bo0|ula0|soma_temp~0_combout\) # (!\bo0|regB|q\(6)))))) # (!\bc0|Equal0~0_combout\ & ((\bo0|ula0|soma_temp~0_combout\) # ((!\bo0|regB|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc0|Equal0~0_combout\,
	datab => \bo0|ula0|soma_temp~0_combout\,
	datac => \bo0|regOp|q\(0),
	datad => \bo0|regB|q\(6),
	combout => \bo0|ula0|somasub0|Add0~20_combout\);

-- Location: LCCOMB_X13_Y11_N10
\bo0|ula0|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux1~4_combout\ = (\bo0|ula0|Mux2~1_combout\ & (((\bo0|ula0|Mux2~0_combout\) # (\bo0|ula0|somasub0|Add0~21_combout\)))) # (!\bo0|ula0|Mux2~1_combout\ & (!\bo0|regA|q\(6) & (!\bo0|ula0|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(6),
	datab => \bo0|ula0|Mux2~1_combout\,
	datac => \bo0|ula0|Mux2~0_combout\,
	datad => \bo0|ula0|somasub0|Add0~21_combout\,
	combout => \bo0|ula0|Mux1~4_combout\);

-- Location: LCCOMB_X19_Y9_N20
\bo0|ula0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux0~0_combout\ = (\bo0|ula0|Equal4~1_combout\ & (\bo0|regB|q\(7) $ (\bo0|regB|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(7),
	datac => \bo0|regB|q\(6),
	datad => \bo0|ula0|Equal4~1_combout\,
	combout => \bo0|ula0|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y11_N28
\bo0|ula0|flag_z_n_ovf_e[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|flag_z_n_ovf_e[3]~3_combout\ = (!\bo0|ula0|Mux6~6_combout\ & (!\bo0|ula0|Mux5~5_combout\ & !\bo0|ula0|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo0|ula0|Mux6~6_combout\,
	datac => \bo0|ula0|Mux5~5_combout\,
	datad => \bo0|ula0|Mux7~3_combout\,
	combout => \bo0|ula0|flag_z_n_ovf_e[3]~3_combout\);

-- Location: LCCOMB_X14_Y11_N6
\bo0|ula0|flag_z_n_ovf_e[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|flag_z_n_ovf_e[3]~4_combout\ = (!\bo0|ula0|Mux4~5_combout\ & (!\bo0|ula0|Mux3~5_combout\ & \bo0|ula0|flag_z_n_ovf_e[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo0|ula0|Mux4~5_combout\,
	datac => \bo0|ula0|Mux3~5_combout\,
	datad => \bo0|ula0|flag_z_n_ovf_e[3]~3_combout\,
	combout => \bo0|ula0|flag_z_n_ovf_e[3]~4_combout\);

-- Location: LCCOMB_X19_Y9_N12
\bo0|ula0|flag_z_n_ovf_e[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|flag_z_n_ovf_e[1]~11_combout\ = (\bo0|ula0|Equal4~1_combout\ & ((\bo0|ula0|s_high[1]~2_combout\) # ((\bo0|ula0|Mux0~7_combout\ & \bo0|ula0|booth0|Add14~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux0~7_combout\,
	datab => \bo0|ula0|Equal4~1_combout\,
	datac => \bo0|ula0|booth0|Add14~13_combout\,
	datad => \bo0|ula0|s_high[1]~2_combout\,
	combout => \bo0|ula0|flag_z_n_ovf_e[1]~11_combout\);

-- Location: LCCOMB_X12_Y12_N30
\bo0|mem|rom~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|mem|rom~0_combout\ = (\bo0|regPC|soma\(0) & (!\bo0|regPC|soma\(2) & ((!\bo0|regPC|soma\(4)) # (!\bo0|regPC|soma\(1))))) # (!\bo0|regPC|soma\(0) & (\bo0|regPC|soma\(4) $ (((!\bo0|regPC|soma\(1) & \bo0|regPC|soma\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regPC|soma\(0),
	datab => \bo0|regPC|soma\(1),
	datac => \bo0|regPC|soma\(4),
	datad => \bo0|regPC|soma\(2),
	combout => \bo0|mem|rom~0_combout\);

-- Location: LCCOMB_X12_Y12_N12
\bo0|mem|rom~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|mem|rom~16_combout\ = (\bo0|regPC|soma\(0) & ((\bo0|regPC|soma\(4)) # (\bo0|regPC|soma\(2)))) # (!\bo0|regPC|soma\(0) & (\bo0|regPC|soma\(4) & \bo0|regPC|soma\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regPC|soma\(0),
	datac => \bo0|regPC|soma\(4),
	datad => \bo0|regPC|soma\(2),
	combout => \bo0|mem|rom~16_combout\);

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inicio~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_inicio,
	combout => \inicio~combout\);

-- Location: LCCOMB_X10_Y12_N24
\bo0|regPC|soma[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|regPC|soma[1]~5_combout\ = (\bo0|regPC|soma\(1) & (\bo0|regPC|soma\(0) $ (VCC))) # (!\bo0|regPC|soma\(1) & (\bo0|regPC|soma\(0) & VCC))
-- \bo0|regPC|soma[1]~6\ = CARRY((\bo0|regPC|soma\(1) & \bo0|regPC|soma\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regPC|soma\(1),
	datab => \bo0|regPC|soma\(0),
	datad => VCC,
	combout => \bo0|regPC|soma[1]~5_combout\,
	cout => \bo0|regPC|soma[1]~6\);

-- Location: LCCOMB_X10_Y12_N26
\bo0|regPC|soma[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|regPC|soma[2]~7_combout\ = (\bo0|regPC|soma\(2) & (!\bo0|regPC|soma[1]~6\)) # (!\bo0|regPC|soma\(2) & ((\bo0|regPC|soma[1]~6\) # (GND)))
-- \bo0|regPC|soma[2]~8\ = CARRY((!\bo0|regPC|soma[1]~6\) # (!\bo0|regPC|soma\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo0|regPC|soma\(2),
	datad => VCC,
	cin => \bo0|regPC|soma[1]~6\,
	combout => \bo0|regPC|soma[2]~7_combout\,
	cout => \bo0|regPC|soma[2]~8\);

-- Location: LCCOMB_X10_Y12_N28
\bo0|regPC|soma[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|regPC|soma[3]~9_combout\ = (\bo0|regPC|soma\(3) & (\bo0|regPC|soma[2]~8\ $ (GND))) # (!\bo0|regPC|soma\(3) & (!\bo0|regPC|soma[2]~8\ & VCC))
-- \bo0|regPC|soma[3]~10\ = CARRY((\bo0|regPC|soma\(3) & !\bo0|regPC|soma[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo0|regPC|soma\(3),
	datad => VCC,
	cin => \bo0|regPC|soma[2]~8\,
	combout => \bo0|regPC|soma[3]~9_combout\,
	cout => \bo0|regPC|soma[3]~10\);

-- Location: LCFF_X10_Y12_N29
\bo0|regPC|soma[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|regPC|soma[3]~9_combout\,
	aclr => \bc0|ALT_INV_state.reset~regout\,
	ena => \bc0|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regPC|soma\(3));

-- Location: LCCOMB_X10_Y12_N30
\bo0|regPC|soma[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|regPC|soma[4]~11_combout\ = \bo0|regPC|soma[3]~10\ $ (\bo0|regPC|soma\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \bo0|regPC|soma\(4),
	cin => \bo0|regPC|soma[3]~10\,
	combout => \bo0|regPC|soma[4]~11_combout\);

-- Location: LCFF_X10_Y12_N31
\bo0|regPC|soma[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|regPC|soma[4]~11_combout\,
	aclr => \bc0|ALT_INV_state.reset~regout\,
	ena => \bc0|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regPC|soma\(4));

-- Location: LCCOMB_X10_Y12_N20
\bo0|mem|rom~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|mem|rom~3_combout\ = (\bo0|regPC|soma\(0)) # ((\bo0|regPC|soma\(1) & ((\bo0|regPC|soma\(2)))) # (!\bo0|regPC|soma\(1) & (\bo0|regPC|soma\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regPC|soma\(0),
	datab => \bo0|regPC|soma\(3),
	datac => \bo0|regPC|soma\(1),
	datad => \bo0|regPC|soma\(2),
	combout => \bo0|mem|rom~3_combout\);

-- Location: LCCOMB_X12_Y12_N10
\bo0|mem|rom~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|mem|rom~4_combout\ = (\bo0|regPC|soma\(1) & (\bo0|regPC|soma\(0) $ (\bo0|regPC|soma\(3) $ (!\bo0|regPC|soma\(2))))) # (!\bo0|regPC|soma\(1) & ((\bo0|regPC|soma\(2) & ((!\bo0|regPC|soma\(3)))) # (!\bo0|regPC|soma\(2) & (\bo0|regPC|soma\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regPC|soma\(0),
	datab => \bo0|regPC|soma\(1),
	datac => \bo0|regPC|soma\(3),
	datad => \bo0|regPC|soma\(2),
	combout => \bo0|mem|rom~4_combout\);

-- Location: LCCOMB_X10_Y12_N22
\bo0|mem|rom~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|mem|rom~5_combout\ = (\bo0|regPC|soma\(4) & ((!\bo0|mem|rom~4_combout\))) # (!\bo0|regPC|soma\(4) & (\bo0|mem|rom~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo0|regPC|soma\(4),
	datac => \bo0|mem|rom~3_combout\,
	datad => \bo0|mem|rom~4_combout\,
	combout => \bo0|mem|rom~5_combout\);

-- Location: LCCOMB_X10_Y12_N8
\bc0|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc0|Selector1~0_combout\ = (\bc0|state.carrega_saida~regout\) # ((!\bc0|state.reset~regout\ & \inicio~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc0|state.reset~regout\,
	datac => \bc0|state.carrega_saida~regout\,
	datad => \inicio~combout\,
	combout => \bc0|Selector1~0_combout\);

-- Location: LCCOMB_X10_Y12_N12
\bc0|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc0|Selector1~1_combout\ = (\bc0|Selector1~0_combout\) # ((\bc0|Equal0~0_combout\ & (\bc0|state.carrega_OP~regout\ & \bc0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc0|Equal0~0_combout\,
	datab => \bc0|Selector1~0_combout\,
	datac => \bc0|state.carrega_OP~regout\,
	datad => \bc0|Equal0~1_combout\,
	combout => \bc0|Selector1~1_combout\);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X10_Y12_N13
\bc0|state.carrega_OP\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc0|Selector1~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc0|state.carrega_OP~regout\);

-- Location: LCFF_X9_Y11_N5
\bo0|regOp|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo0|mem|rom~5_combout\,
	sload => VCC,
	ena => \bc0|state.carrega_OP~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regOp|q\(1));

-- Location: LCCOMB_X12_Y12_N28
\bo0|mem|rom~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|mem|rom~1_combout\ = (\bo0|regPC|soma\(1) & ((\bo0|regPC|soma\(0)) # ((!\bo0|regPC|soma\(2))))) # (!\bo0|regPC|soma\(1) & ((\bo0|regPC|soma\(4) & (!\bo0|regPC|soma\(0))) # (!\bo0|regPC|soma\(4) & ((\bo0|regPC|soma\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regPC|soma\(0),
	datab => \bo0|regPC|soma\(1),
	datac => \bo0|regPC|soma\(4),
	datad => \bo0|regPC|soma\(2),
	combout => \bo0|mem|rom~1_combout\);

-- Location: LCCOMB_X13_Y12_N16
\bo0|mem|rom~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|mem|rom~2_combout\ = (\bo0|regPC|soma\(3) & (!\bo0|mem|rom~0_combout\)) # (!\bo0|regPC|soma\(3) & ((!\bo0|mem|rom~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|mem|rom~0_combout\,
	datac => \bo0|regPC|soma\(3),
	datad => \bo0|mem|rom~1_combout\,
	combout => \bo0|mem|rom~2_combout\);

-- Location: LCFF_X12_Y11_N13
\bo0|regOp|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo0|mem|rom~2_combout\,
	sload => VCC,
	ena => \bc0|state.carrega_OP~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regOp|q\(0));

-- Location: LCCOMB_X13_Y12_N20
\bc0|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc0|Equal0~1_combout\ = (!\bo0|regOp|q\(1) & !\bo0|regOp|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bo0|regOp|q\(1),
	datad => \bo0|regOp|q\(0),
	combout => \bc0|Equal0~1_combout\);

-- Location: LCCOMB_X12_Y11_N0
\bc0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc0|Equal0~0_combout\ = (!\bo0|regOp|q\(3) & !\bo0|regOp|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bo0|regOp|q\(3),
	datad => \bo0|regOp|q\(2),
	combout => \bc0|Equal0~0_combout\);

-- Location: LCCOMB_X10_Y12_N16
\bc0|state~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc0|state~11_combout\ = (\bc0|state.carrega_OP~regout\ & (\bc0|Equal1~0_combout\ $ (((!\bc0|Equal0~0_combout\) # (!\bc0|Equal0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc0|state.carrega_OP~regout\,
	datab => \bc0|Equal0~1_combout\,
	datac => \bc0|Equal0~0_combout\,
	datad => \bc0|Equal1~0_combout\,
	combout => \bc0|state~11_combout\);

-- Location: LCFF_X10_Y12_N17
\bc0|state.carrega_A\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc0|state~11_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc0|state.carrega_A~regout\);

-- Location: LCCOMB_X13_Y12_N18
\bc0|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc0|Selector2~0_combout\ = (!\bo0|regOp|q\(3) & ((\bo0|regOp|q\(2) & (!\bo0|regOp|q\(1))) # (!\bo0|regOp|q\(2) & (\bo0|regOp|q\(1) & \bo0|regOp|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(3),
	datab => \bo0|regOp|q\(2),
	datac => \bo0|regOp|q\(1),
	datad => \bo0|regOp|q\(0),
	combout => \bc0|Selector2~0_combout\);

-- Location: LCCOMB_X10_Y12_N18
\bc0|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc0|Selector2~1_combout\ = (\bc0|state.carrega_A~regout\ & \bc0|Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc0|state.carrega_A~regout\,
	datad => \bc0|Selector2~0_combout\,
	combout => \bc0|Selector2~1_combout\);

-- Location: LCCOMB_X13_Y12_N28
\bc0|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc0|Selector2~2_combout\ = (\bo0|regOp|q\(3) & (!\bo0|regOp|q\(2) & (\bo0|regOp|q\(1) & !\bo0|regOp|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(3),
	datab => \bo0|regOp|q\(2),
	datac => \bo0|regOp|q\(1),
	datad => \bo0|regOp|q\(0),
	combout => \bc0|Selector2~2_combout\);

-- Location: LCCOMB_X10_Y12_N0
\bc0|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc0|Selector2~3_combout\ = (\bc0|state.carrega_B~regout\) # ((\bc0|Selector2~1_combout\) # ((\bc0|state.calcula~regout\ & \bc0|Selector2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc0|state.carrega_B~regout\,
	datab => \bc0|Selector2~1_combout\,
	datac => \bc0|state.calcula~regout\,
	datad => \bc0|Selector2~2_combout\,
	combout => \bc0|Selector2~3_combout\);

-- Location: LCFF_X10_Y12_N1
\bc0|state.calcula\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc0|Selector2~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc0|state.calcula~regout\);

-- Location: LCCOMB_X10_Y12_N14
\bc0|state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc0|state~10_combout\ = (\bc0|state.calcula~regout\ & !\bc0|Selector2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc0|state.calcula~regout\,
	datad => \bc0|Selector2~2_combout\,
	combout => \bc0|state~10_combout\);

-- Location: LCFF_X10_Y12_N15
\bc0|state.carrega_saida\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc0|state~10_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc0|state.carrega_saida~regout\);

-- Location: LCCOMB_X10_Y12_N10
\bc0|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc0|WideOr3~0_combout\ = (!\bc0|state.carrega_saida~regout\ & (\bc0|state.reset~regout\ & !\bc0|state.calcula~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc0|state.carrega_saida~regout\,
	datac => \bc0|state.reset~regout\,
	datad => \bc0|state.calcula~regout\,
	combout => \bc0|WideOr3~0_combout\);

-- Location: LCFF_X10_Y12_N25
\bo0|regPC|soma[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|regPC|soma[1]~5_combout\,
	aclr => \bc0|ALT_INV_state.reset~regout\,
	ena => \bc0|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regPC|soma\(1));

-- Location: LCCOMB_X12_Y12_N16
\bo0|mem|rom~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|mem|rom~6_combout\ = (\bo0|regPC|soma\(4) & (\bo0|regPC|soma\(0))) # (!\bo0|regPC|soma\(4) & (((\bo0|regPC|soma\(1)) # (\bo0|regPC|soma\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regPC|soma\(0),
	datab => \bo0|regPC|soma\(1),
	datac => \bo0|regPC|soma\(4),
	datad => \bo0|regPC|soma\(2),
	combout => \bo0|mem|rom~6_combout\);

-- Location: LCCOMB_X12_Y12_N22
\bo0|mem|rom~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|mem|rom~7_combout\ = (\bo0|regPC|soma\(0) & (\bo0|regPC|soma\(1) & ((\bo0|regPC|soma\(4)) # (\bo0|regPC|soma\(2))))) # (!\bo0|regPC|soma\(0) & (!\bo0|regPC|soma\(4) & (\bo0|regPC|soma\(1) $ (\bo0|regPC|soma\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regPC|soma\(0),
	datab => \bo0|regPC|soma\(1),
	datac => \bo0|regPC|soma\(4),
	datad => \bo0|regPC|soma\(2),
	combout => \bo0|mem|rom~7_combout\);

-- Location: LCCOMB_X13_Y12_N26
\bo0|mem|rom~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|mem|rom~8_combout\ = (\bo0|regPC|soma\(3) & (\bo0|mem|rom~6_combout\)) # (!\bo0|regPC|soma\(3) & ((\bo0|mem|rom~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regPC|soma\(3),
	datab => \bo0|mem|rom~6_combout\,
	datad => \bo0|mem|rom~7_combout\,
	combout => \bo0|mem|rom~8_combout\);

-- Location: LCCOMB_X13_Y12_N24
\bo0|regOp|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|regOp|q[2]~feeder_combout\ = \bo0|mem|rom~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bo0|mem|rom~8_combout\,
	combout => \bo0|regOp|q[2]~feeder_combout\);

-- Location: LCFF_X13_Y12_N25
\bo0|regOp|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|regOp|q[2]~feeder_combout\,
	ena => \bc0|state.carrega_OP~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regOp|q\(2));

-- Location: LCCOMB_X13_Y12_N22
\bc0|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc0|Equal1~0_combout\ = (\bo0|regOp|q\(3) & (\bo0|regOp|q\(2) & (\bo0|regOp|q\(1) & \bo0|regOp|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(3),
	datab => \bo0|regOp|q\(2),
	datac => \bo0|regOp|q\(1),
	datad => \bo0|regOp|q\(0),
	combout => \bc0|Equal1~0_combout\);

-- Location: LCCOMB_X10_Y12_N4
\bc0|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc0|Selector0~0_combout\ = (\bc0|state.carrega_OP~regout\ & (!\bc0|Equal1~0_combout\ & ((\inicio~combout\) # (\bc0|state.reset~regout\)))) # (!\bc0|state.carrega_OP~regout\ & ((\inicio~combout\) # ((\bc0|state.reset~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc0|state.carrega_OP~regout\,
	datab => \inicio~combout\,
	datac => \bc0|state.reset~regout\,
	datad => \bc0|Equal1~0_combout\,
	combout => \bc0|Selector0~0_combout\);

-- Location: LCFF_X10_Y12_N5
\bc0|state.reset\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc0|Selector0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc0|state.reset~regout\);

-- Location: LCCOMB_X10_Y12_N2
\bo0|regPC|soma[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|regPC|soma[0]~4_combout\ = \bo0|regPC|soma\(0) $ (((!\bc0|state.carrega_saida~regout\ & (\bc0|state.reset~regout\ & !\bc0|state.calcula~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc0|state.carrega_saida~regout\,
	datab => \bc0|state.reset~regout\,
	datac => \bo0|regPC|soma\(0),
	datad => \bc0|state.calcula~regout\,
	combout => \bo0|regPC|soma[0]~4_combout\);

-- Location: LCFF_X10_Y12_N3
\bo0|regPC|soma[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|regPC|soma[0]~4_combout\,
	aclr => \bc0|ALT_INV_state.reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regPC|soma\(0));

-- Location: LCFF_X10_Y12_N27
\bo0|regPC|soma[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|regPC|soma[2]~7_combout\,
	aclr => \bc0|ALT_INV_state.reset~regout\,
	ena => \bc0|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regPC|soma\(2));

-- Location: LCCOMB_X12_Y12_N6
\bo0|mem|rom~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|mem|rom~18_combout\ = (\bo0|regPC|soma\(3) & (\bo0|regPC|soma\(1) & (\bo0|regPC|soma\(0) $ (\bo0|regPC|soma\(2))))) # (!\bo0|regPC|soma\(3) & (\bo0|regPC|soma\(1) $ (((!\bo0|regPC|soma\(0) & \bo0|regPC|soma\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regPC|soma\(0),
	datab => \bo0|regPC|soma\(1),
	datac => \bo0|regPC|soma\(3),
	datad => \bo0|regPC|soma\(2),
	combout => \bo0|mem|rom~18_combout\);

-- Location: LCCOMB_X12_Y12_N8
\bo0|mem|rom~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|mem|rom~19_combout\ = (\bo0|regPC|soma\(4) & ((\bo0|regPC|soma\(0) & ((\bo0|regPC|soma\(2)) # (\bo0|mem|rom~18_combout\))) # (!\bo0|regPC|soma\(0) & (!\bo0|regPC|soma\(2))))) # (!\bo0|regPC|soma\(4) & (\bo0|mem|rom~18_combout\ & 
-- ((\bo0|regPC|soma\(2)) # (!\bo0|regPC|soma\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regPC|soma\(0),
	datab => \bo0|regPC|soma\(2),
	datac => \bo0|regPC|soma\(4),
	datad => \bo0|mem|rom~18_combout\,
	combout => \bo0|mem|rom~19_combout\);

-- Location: LCFF_X12_Y11_N27
\bo0|regOp|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo0|mem|rom~19_combout\,
	sload => VCC,
	ena => \bc0|state.carrega_OP~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regOp|q\(3));

-- Location: LCFF_X6_Y11_N29
\bo0|regA|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo0|mem|rom~2_combout\,
	sload => VCC,
	ena => \bc0|state.carrega_A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regA|q\(0));

-- Location: LCCOMB_X12_Y11_N20
\bo0|ula0|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux2~2_combout\ = (\bo0|regOp|q\(1) & \bo0|regOp|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(1),
	datad => \bo0|regOp|q\(2),
	combout => \bo0|ula0|Mux2~2_combout\);

-- Location: LCCOMB_X10_Y12_N6
\bc0|state~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc0|state~12_combout\ = (\bc0|state.carrega_A~regout\ & !\bc0|Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bc0|state.carrega_A~regout\,
	datad => \bc0|Selector2~0_combout\,
	combout => \bc0|state~12_combout\);

-- Location: LCFF_X10_Y12_N7
\bc0|state.carrega_B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc0|state~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc0|state.carrega_B~regout\);

-- Location: LCFF_X7_Y11_N17
\bo0|regB|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo0|mem|rom~2_combout\,
	sload => VCC,
	ena => \bc0|state.carrega_B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regB|q\(0));

-- Location: LCCOMB_X14_Y11_N14
\bo0|ula0|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux7~2_combout\ = (\bo0|ula0|Mux7~1_combout\ & ((\bo0|regA|q\(0)) # ((\bo0|regB|q\(0)) # (!\bo0|ula0|Mux2~2_combout\)))) # (!\bo0|ula0|Mux7~1_combout\ & (\bo0|regA|q\(0) & (\bo0|ula0|Mux2~2_combout\ & \bo0|regB|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux7~1_combout\,
	datab => \bo0|regA|q\(0),
	datac => \bo0|ula0|Mux2~2_combout\,
	datad => \bo0|regB|q\(0),
	combout => \bo0|ula0|Mux7~2_combout\);

-- Location: LCCOMB_X13_Y12_N10
\bo0|ula0|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Equal4~0_combout\ = (\bo0|regOp|q\(3) & (!\bo0|regOp|q\(1) & !\bo0|regOp|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(3),
	datac => \bo0|regOp|q\(1),
	datad => \bo0|regOp|q\(2),
	combout => \bo0|ula0|Equal4~0_combout\);

-- Location: LCCOMB_X14_Y11_N12
\bo0|ula0|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux7~3_combout\ = (\bo0|ula0|Mux7~0_combout\ & ((\bo0|ula0|Equal4~0_combout\) # ((!\bo0|regOp|q\(3) & \bo0|ula0|Mux7~2_combout\)))) # (!\bo0|ula0|Mux7~0_combout\ & (!\bo0|regOp|q\(3) & (\bo0|ula0|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux7~0_combout\,
	datab => \bo0|regOp|q\(3),
	datac => \bo0|ula0|Mux7~2_combout\,
	datad => \bo0|ula0|Equal4~0_combout\,
	combout => \bo0|ula0|Mux7~3_combout\);

-- Location: LCCOMB_X14_Y11_N8
\bo0|regS_low|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|regS_low|q[0]~feeder_combout\ = \bo0|ula0|Mux7~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bo0|ula0|Mux7~3_combout\,
	combout => \bo0|regS_low|q[0]~feeder_combout\);

-- Location: LCFF_X14_Y11_N9
\bo0|regS_low|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|regS_low|q[0]~feeder_combout\,
	ena => \bc0|state.carrega_saida~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_low|q\(0));

-- Location: LCFF_X6_Y11_N23
\bo0|regA|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo0|mem|rom~5_combout\,
	sload => VCC,
	ena => \bc0|state.carrega_A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regA|q\(1));

-- Location: LCCOMB_X6_Y11_N0
\bo0|ula0|booth0|s[9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|s[9]~1_cout\ = CARRY(!\bo0|regA|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo0|regA|q\(0),
	datad => VCC,
	cout => \bo0|ula0|booth0|s[9]~1_cout\);

-- Location: LCCOMB_X6_Y11_N2
\bo0|ula0|booth0|s[10]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|s[10]~2_combout\ = (\bo0|regA|q\(1) & ((\bo0|ula0|booth0|s[9]~1_cout\) # (GND))) # (!\bo0|regA|q\(1) & (!\bo0|ula0|booth0|s[9]~1_cout\))
-- \bo0|ula0|booth0|s[10]~3\ = CARRY((\bo0|regA|q\(1)) # (!\bo0|ula0|booth0|s[9]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo0|regA|q\(1),
	datad => VCC,
	cin => \bo0|ula0|booth0|s[9]~1_cout\,
	combout => \bo0|ula0|booth0|s[10]~2_combout\,
	cout => \bo0|ula0|booth0|s[10]~3\);

-- Location: LCFF_X9_Y11_N29
\bo0|regB|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo0|mem|rom~5_combout\,
	sload => VCC,
	ena => \bc0|state.carrega_B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regB|q\(1));

-- Location: LCCOMB_X6_Y11_N30
\bo0|ula0|Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux6~7_combout\ = (\bo0|ula0|Mux6~2_combout\) # ((\bo0|regB|q\(0) & (\bo0|ula0|booth0|s[10]~2_combout\ & \bo0|regB|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux6~2_combout\,
	datab => \bo0|regB|q\(0),
	datac => \bo0|ula0|booth0|s[10]~2_combout\,
	datad => \bo0|regB|q\(1),
	combout => \bo0|ula0|Mux6~7_combout\);

-- Location: LCCOMB_X6_Y11_N22
\bo0|ula0|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux6~3_combout\ = (\bo0|regOp|q\(0) & (((\bo0|ula0|Mux6~7_combout\)))) # (!\bo0|regOp|q\(0) & (\bo0|regB|q\(1) $ (((\bo0|regA|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(1),
	datab => \bo0|ula0|Mux6~7_combout\,
	datac => \bo0|regA|q\(1),
	datad => \bo0|regOp|q\(0),
	combout => \bo0|ula0|Mux6~3_combout\);

-- Location: LCCOMB_X14_Y11_N18
\bo0|ula0|Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux6~6_combout\ = (\bo0|ula0|Mux6~5_combout\ & (((\bo0|ula0|Mux6~3_combout\ & \bo0|ula0|Equal4~0_combout\)) # (!\bo0|regOp|q\(3)))) # (!\bo0|ula0|Mux6~5_combout\ & (((\bo0|ula0|Mux6~3_combout\ & \bo0|ula0|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux6~5_combout\,
	datab => \bo0|regOp|q\(3),
	datac => \bo0|ula0|Mux6~3_combout\,
	datad => \bo0|ula0|Equal4~0_combout\,
	combout => \bo0|ula0|Mux6~6_combout\);

-- Location: LCFF_X14_Y11_N19
\bo0|regS_low|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|Mux6~6_combout\,
	ena => \bc0|state.carrega_saida~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_low|q\(1));

-- Location: LCFF_X6_Y11_N27
\bo0|regA|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo0|mem|rom~8_combout\,
	sload => VCC,
	ena => \bc0|state.carrega_A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regA|q\(2));

-- Location: LCCOMB_X12_Y11_N26
\bo0|ula0|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux2~1_combout\ = (\bo0|regOp|q\(0) & ((\bo0|regOp|q\(1)) # (!\bo0|regOp|q\(2)))) # (!\bo0|regOp|q\(0) & (\bo0|regOp|q\(2) $ (\bo0|regOp|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(0),
	datab => \bo0|regOp|q\(2),
	datad => \bo0|regOp|q\(1),
	combout => \bo0|ula0|Mux2~1_combout\);

-- Location: LCCOMB_X12_Y11_N18
\bo0|ula0|soma_temp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|soma_temp~0_combout\ = (!\bo0|regOp|q\(3) & ((\bo0|regOp|q\(0) & (!\bo0|regOp|q\(2) & \bo0|regOp|q\(1))) # (!\bo0|regOp|q\(0) & (\bo0|regOp|q\(2) & !\bo0|regOp|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(0),
	datab => \bo0|regOp|q\(2),
	datac => \bo0|regOp|q\(3),
	datad => \bo0|regOp|q\(1),
	combout => \bo0|ula0|soma_temp~0_combout\);

-- Location: LCFF_X9_Y11_N23
\bo0|regB|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo0|mem|rom~8_combout\,
	sload => VCC,
	ena => \bc0|state.carrega_B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regB|q\(2));

-- Location: LCCOMB_X12_Y11_N4
\bo0|ula0|somasub0|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add0~8_combout\ = (\bo0|regOp|q\(0) & (\bc0|Equal0~0_combout\ $ (((\bo0|ula0|soma_temp~0_combout\) # (!\bo0|regB|q\(2)))))) # (!\bo0|regOp|q\(0) & ((\bo0|ula0|soma_temp~0_combout\) # ((!\bo0|regB|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(0),
	datab => \bo0|ula0|soma_temp~0_combout\,
	datac => \bo0|regB|q\(2),
	datad => \bc0|Equal0~0_combout\,
	combout => \bo0|ula0|somasub0|Add0~8_combout\);

-- Location: LCCOMB_X12_Y11_N24
\bo0|ula0|somasub0|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add0~0_combout\ = (\bo0|regOp|q\(0) & (\bc0|Equal0~0_combout\ $ (((!\bo0|regB|q\(0) & !\bo0|ula0|soma_temp~0_combout\))))) # (!\bo0|regOp|q\(0) & (((!\bo0|regB|q\(0) & !\bo0|ula0|soma_temp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(0),
	datab => \bc0|Equal0~0_combout\,
	datac => \bo0|regB|q\(0),
	datad => \bo0|ula0|soma_temp~0_combout\,
	combout => \bo0|ula0|somasub0|Add0~0_combout\);

-- Location: LCCOMB_X13_Y11_N12
\bo0|ula0|somasub0|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add0~2_cout\ = CARRY((!\bo0|regOp|q\(0)) # (!\bc0|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc0|Equal0~0_combout\,
	datab => \bo0|regOp|q\(0),
	datad => VCC,
	cout => \bo0|ula0|somasub0|Add0~2_cout\);

-- Location: LCCOMB_X13_Y11_N18
\bo0|ula0|somasub0|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add0~9_combout\ = (\bo0|regA|q\(2) & ((\bo0|ula0|somasub0|Add0~8_combout\ & (\bo0|ula0|somasub0|Add0~7\ & VCC)) # (!\bo0|ula0|somasub0|Add0~8_combout\ & (!\bo0|ula0|somasub0|Add0~7\)))) # (!\bo0|regA|q\(2) & 
-- ((\bo0|ula0|somasub0|Add0~8_combout\ & (!\bo0|ula0|somasub0|Add0~7\)) # (!\bo0|ula0|somasub0|Add0~8_combout\ & ((\bo0|ula0|somasub0|Add0~7\) # (GND)))))
-- \bo0|ula0|somasub0|Add0~10\ = CARRY((\bo0|regA|q\(2) & (!\bo0|ula0|somasub0|Add0~8_combout\ & !\bo0|ula0|somasub0|Add0~7\)) # (!\bo0|regA|q\(2) & ((!\bo0|ula0|somasub0|Add0~7\) # (!\bo0|ula0|somasub0|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(2),
	datab => \bo0|ula0|somasub0|Add0~8_combout\,
	datad => VCC,
	cin => \bo0|ula0|somasub0|Add0~7\,
	combout => \bo0|ula0|somasub0|Add0~9_combout\,
	cout => \bo0|ula0|somasub0|Add0~10\);

-- Location: LCCOMB_X12_Y11_N10
\bo0|ula0|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux5~3_combout\ = (\bo0|ula0|Mux2~0_combout\ & (\bo0|ula0|Mux2~1_combout\)) # (!\bo0|ula0|Mux2~0_combout\ & ((\bo0|ula0|Mux2~1_combout\ & ((\bo0|ula0|somasub0|Add0~9_combout\))) # (!\bo0|ula0|Mux2~1_combout\ & (!\bo0|regA|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux2~0_combout\,
	datab => \bo0|ula0|Mux2~1_combout\,
	datac => \bo0|regA|q\(2),
	datad => \bo0|ula0|somasub0|Add0~9_combout\,
	combout => \bo0|ula0|Mux5~3_combout\);

-- Location: LCCOMB_X12_Y11_N8
\bo0|ula0|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux5~4_combout\ = (\bo0|regB|q\(2) & ((\bo0|ula0|Mux5~3_combout\) # ((\bo0|ula0|Mux2~2_combout\ & \bo0|regA|q\(2))))) # (!\bo0|regB|q\(2) & (\bo0|ula0|Mux5~3_combout\ & ((\bo0|regA|q\(2)) # (!\bo0|ula0|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|ula0|Mux2~2_combout\,
	datac => \bo0|regA|q\(2),
	datad => \bo0|ula0|Mux5~3_combout\,
	combout => \bo0|ula0|Mux5~4_combout\);

-- Location: LCCOMB_X14_Y11_N20
\bo0|ula0|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux5~5_combout\ = (\bo0|ula0|Mux5~2_combout\ & ((\bo0|ula0|Equal4~0_combout\) # ((\bo0|ula0|Mux5~4_combout\ & !\bo0|regOp|q\(3))))) # (!\bo0|ula0|Mux5~2_combout\ & (((\bo0|ula0|Mux5~4_combout\ & !\bo0|regOp|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux5~2_combout\,
	datab => \bo0|ula0|Equal4~0_combout\,
	datac => \bo0|ula0|Mux5~4_combout\,
	datad => \bo0|regOp|q\(3),
	combout => \bo0|ula0|Mux5~5_combout\);

-- Location: LCFF_X14_Y11_N21
\bo0|regS_low|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|Mux5~5_combout\,
	ena => \bc0|state.carrega_saida~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_low|q\(2));

-- Location: LCCOMB_X6_Y11_N24
\bo0|regA|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|regA|q[3]~feeder_combout\ = \bo0|mem|rom~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bo0|mem|rom~19_combout\,
	combout => \bo0|regA|q[3]~feeder_combout\);

-- Location: LCFF_X6_Y11_N25
\bo0|regA|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|regA|q[3]~feeder_combout\,
	ena => \bc0|state.carrega_A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regA|q\(3));

-- Location: LCFF_X12_Y12_N9
\bo0|regB|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|mem|rom~19_combout\,
	ena => \bc0|state.carrega_B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regB|q\(3));

-- Location: LCCOMB_X12_Y11_N22
\bo0|ula0|somasub0|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add0~11_combout\ = (\bo0|regOp|q\(0) & (\bc0|Equal0~0_combout\ $ (((\bo0|ula0|soma_temp~0_combout\) # (!\bo0|regB|q\(3)))))) # (!\bo0|regOp|q\(0) & (((\bo0|ula0|soma_temp~0_combout\) # (!\bo0|regB|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(0),
	datab => \bc0|Equal0~0_combout\,
	datac => \bo0|regB|q\(3),
	datad => \bo0|ula0|soma_temp~0_combout\,
	combout => \bo0|ula0|somasub0|Add0~11_combout\);

-- Location: LCCOMB_X13_Y11_N20
\bo0|ula0|somasub0|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add0~12_combout\ = ((\bo0|regA|q\(3) $ (\bo0|ula0|somasub0|Add0~11_combout\ $ (!\bo0|ula0|somasub0|Add0~10\)))) # (GND)
-- \bo0|ula0|somasub0|Add0~13\ = CARRY((\bo0|regA|q\(3) & ((\bo0|ula0|somasub0|Add0~11_combout\) # (!\bo0|ula0|somasub0|Add0~10\))) # (!\bo0|regA|q\(3) & (\bo0|ula0|somasub0|Add0~11_combout\ & !\bo0|ula0|somasub0|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(3),
	datab => \bo0|ula0|somasub0|Add0~11_combout\,
	datad => VCC,
	cin => \bo0|ula0|somasub0|Add0~10\,
	combout => \bo0|ula0|somasub0|Add0~12_combout\,
	cout => \bo0|ula0|somasub0|Add0~13\);

-- Location: LCCOMB_X12_Y11_N6
\bo0|ula0|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux2~0_combout\ = (\bo0|regOp|q\(2) & ((\bo0|regOp|q\(1)))) # (!\bo0|regOp|q\(2) & (!\bo0|regOp|q\(0) & !\bo0|regOp|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(0),
	datab => \bo0|regOp|q\(2),
	datad => \bo0|regOp|q\(1),
	combout => \bo0|ula0|Mux2~0_combout\);

-- Location: LCCOMB_X14_Y11_N30
\bo0|ula0|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux4~3_combout\ = (\bo0|ula0|Mux2~1_combout\ & (((\bo0|ula0|somasub0|Add0~12_combout\) # (\bo0|ula0|Mux2~0_combout\)))) # (!\bo0|ula0|Mux2~1_combout\ & (!\bo0|regA|q\(3) & ((!\bo0|ula0|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux2~1_combout\,
	datab => \bo0|regA|q\(3),
	datac => \bo0|ula0|somasub0|Add0~12_combout\,
	datad => \bo0|ula0|Mux2~0_combout\,
	combout => \bo0|ula0|Mux4~3_combout\);

-- Location: LCCOMB_X14_Y11_N4
\bo0|ula0|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux4~4_combout\ = (\bo0|ula0|Mux2~2_combout\ & ((\bo0|ula0|Mux4~3_combout\ & ((\bo0|regA|q\(3)) # (\bo0|regB|q\(3)))) # (!\bo0|ula0|Mux4~3_combout\ & (\bo0|regA|q\(3) & \bo0|regB|q\(3))))) # (!\bo0|ula0|Mux2~2_combout\ & 
-- (\bo0|ula0|Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux2~2_combout\,
	datab => \bo0|ula0|Mux4~3_combout\,
	datac => \bo0|regA|q\(3),
	datad => \bo0|regB|q\(3),
	combout => \bo0|ula0|Mux4~4_combout\);

-- Location: LCCOMB_X14_Y11_N2
\bo0|ula0|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux4~5_combout\ = (\bo0|ula0|Mux4~2_combout\ & ((\bo0|ula0|Equal4~0_combout\) # ((\bo0|ula0|Mux4~4_combout\ & !\bo0|regOp|q\(3))))) # (!\bo0|ula0|Mux4~2_combout\ & (((\bo0|ula0|Mux4~4_combout\ & !\bo0|regOp|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux4~2_combout\,
	datab => \bo0|ula0|Equal4~0_combout\,
	datac => \bo0|ula0|Mux4~4_combout\,
	datad => \bo0|regOp|q\(3),
	combout => \bo0|ula0|Mux4~5_combout\);

-- Location: LCFF_X14_Y11_N3
\bo0|regS_low|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|Mux4~5_combout\,
	ena => \bc0|state.carrega_saida~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_low|q\(3));

-- Location: LCCOMB_X12_Y12_N2
\bo0|mem|rom~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|mem|rom~10_combout\ = (\bo0|regPC|soma\(2) & ((\bo0|regPC|soma\(3) & ((\bo0|regPC|soma\(1)) # (!\bo0|regPC|soma\(4)))) # (!\bo0|regPC|soma\(3) & ((\bo0|regPC|soma\(4)))))) # (!\bo0|regPC|soma\(2) & (\bo0|regPC|soma\(3) $ ((\bo0|regPC|soma\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regPC|soma\(3),
	datab => \bo0|regPC|soma\(1),
	datac => \bo0|regPC|soma\(4),
	datad => \bo0|regPC|soma\(2),
	combout => \bo0|mem|rom~10_combout\);

-- Location: LCCOMB_X12_Y12_N0
\bo0|mem|rom~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|mem|rom~9_combout\ = (!\bo0|regPC|soma\(0) & (\bo0|regPC|soma\(4) & (!\bo0|regPC|soma\(3) & !\bo0|regPC|soma\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regPC|soma\(0),
	datab => \bo0|regPC|soma\(4),
	datac => \bo0|regPC|soma\(3),
	datad => \bo0|regPC|soma\(1),
	combout => \bo0|mem|rom~9_combout\);

-- Location: LCCOMB_X12_Y12_N18
\bo0|mem|rom~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|mem|rom~11_combout\ = (\bo0|mem|rom~9_combout\) # ((\bo0|regPC|soma\(0) & !\bo0|mem|rom~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regPC|soma\(0),
	datab => \bo0|mem|rom~10_combout\,
	datad => \bo0|mem|rom~9_combout\,
	combout => \bo0|mem|rom~11_combout\);

-- Location: LCFF_X6_Y11_N9
\bo0|regA|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo0|mem|rom~11_combout\,
	sload => VCC,
	ena => \bc0|state.carrega_A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regA|q\(4));

-- Location: LCCOMB_X6_Y11_N4
\bo0|ula0|booth0|s[11]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|s[11]~4_combout\ = (\bo0|regA|q\(2) & (!\bo0|ula0|booth0|s[10]~3\ & VCC)) # (!\bo0|regA|q\(2) & (\bo0|ula0|booth0|s[10]~3\ $ (GND)))
-- \bo0|ula0|booth0|s[11]~5\ = CARRY((!\bo0|regA|q\(2) & !\bo0|ula0|booth0|s[10]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo0|regA|q\(2),
	datad => VCC,
	cin => \bo0|ula0|booth0|s[10]~3\,
	combout => \bo0|ula0|booth0|s[11]~4_combout\,
	cout => \bo0|ula0|booth0|s[11]~5\);

-- Location: LCCOMB_X6_Y11_N6
\bo0|ula0|booth0|s[12]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|s[12]~6_combout\ = (\bo0|regA|q\(3) & ((\bo0|ula0|booth0|s[11]~5\) # (GND))) # (!\bo0|regA|q\(3) & (!\bo0|ula0|booth0|s[11]~5\))
-- \bo0|ula0|booth0|s[12]~7\ = CARRY((\bo0|regA|q\(3)) # (!\bo0|ula0|booth0|s[11]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(3),
	datad => VCC,
	cin => \bo0|ula0|booth0|s[11]~5\,
	combout => \bo0|ula0|booth0|s[12]~6_combout\,
	cout => \bo0|ula0|booth0|s[12]~7\);

-- Location: LCCOMB_X6_Y11_N8
\bo0|ula0|booth0|s[13]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|s[13]~8_combout\ = (\bo0|regA|q\(4) & (!\bo0|ula0|booth0|s[12]~7\ & VCC)) # (!\bo0|regA|q\(4) & (\bo0|ula0|booth0|s[12]~7\ $ (GND)))
-- \bo0|ula0|booth0|s[13]~9\ = CARRY((!\bo0|regA|q\(4) & !\bo0|ula0|booth0|s[12]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo0|regA|q\(4),
	datad => VCC,
	cin => \bo0|ula0|booth0|s[12]~7\,
	combout => \bo0|ula0|booth0|s[13]~8_combout\,
	cout => \bo0|ula0|booth0|s[13]~9\);

-- Location: LCCOMB_X6_Y11_N28
\bo0|ula0|booth0|p1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|p1~3_combout\ = (\bo0|regB|q\(0) & \bo0|ula0|booth0|s[13]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(0),
	datad => \bo0|ula0|booth0|s[13]~8_combout\,
	combout => \bo0|ula0|booth0|p1~3_combout\);

-- Location: LCCOMB_X7_Y11_N30
\bo0|ula0|booth0|p1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|p1~1_combout\ = (\bo0|ula0|booth0|s[11]~4_combout\ & \bo0|regB|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bo0|ula0|booth0|s[11]~4_combout\,
	datad => \bo0|regB|q\(0),
	combout => \bo0|ula0|booth0|p1~1_combout\);

-- Location: LCCOMB_X7_Y11_N2
\bo0|ula0|booth0|Add4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~16_combout\ = (\bo0|regA|q\(1) & ((\bo0|ula0|booth0|p1~1_combout\ & (\bo0|ula0|booth0|Add4~15\ & VCC)) # (!\bo0|ula0|booth0|p1~1_combout\ & (!\bo0|ula0|booth0|Add4~15\)))) # (!\bo0|regA|q\(1) & ((\bo0|ula0|booth0|p1~1_combout\ & 
-- (!\bo0|ula0|booth0|Add4~15\)) # (!\bo0|ula0|booth0|p1~1_combout\ & ((\bo0|ula0|booth0|Add4~15\) # (GND)))))
-- \bo0|ula0|booth0|Add4~17\ = CARRY((\bo0|regA|q\(1) & (!\bo0|ula0|booth0|p1~1_combout\ & !\bo0|ula0|booth0|Add4~15\)) # (!\bo0|regA|q\(1) & ((!\bo0|ula0|booth0|Add4~15\) # (!\bo0|ula0|booth0|p1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(1),
	datab => \bo0|ula0|booth0|p1~1_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add4~15\,
	combout => \bo0|ula0|booth0|Add4~16_combout\,
	cout => \bo0|ula0|booth0|Add4~17\);

-- Location: LCCOMB_X7_Y11_N4
\bo0|ula0|booth0|Add4~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~19_combout\ = ((\bo0|ula0|booth0|p1~2_combout\ $ (\bo0|regA|q\(2) $ (!\bo0|ula0|booth0|Add4~17\)))) # (GND)
-- \bo0|ula0|booth0|Add4~20\ = CARRY((\bo0|ula0|booth0|p1~2_combout\ & ((\bo0|regA|q\(2)) # (!\bo0|ula0|booth0|Add4~17\))) # (!\bo0|ula0|booth0|p1~2_combout\ & (\bo0|regA|q\(2) & !\bo0|ula0|booth0|Add4~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|p1~2_combout\,
	datab => \bo0|regA|q\(2),
	datad => VCC,
	cin => \bo0|ula0|booth0|Add4~17\,
	combout => \bo0|ula0|booth0|Add4~19_combout\,
	cout => \bo0|ula0|booth0|Add4~20\);

-- Location: LCCOMB_X7_Y11_N6
\bo0|ula0|booth0|Add4~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~22_combout\ = (\bo0|regA|q\(3) & ((\bo0|ula0|booth0|p1~3_combout\ & (\bo0|ula0|booth0|Add4~20\ & VCC)) # (!\bo0|ula0|booth0|p1~3_combout\ & (!\bo0|ula0|booth0|Add4~20\)))) # (!\bo0|regA|q\(3) & ((\bo0|ula0|booth0|p1~3_combout\ & 
-- (!\bo0|ula0|booth0|Add4~20\)) # (!\bo0|ula0|booth0|p1~3_combout\ & ((\bo0|ula0|booth0|Add4~20\) # (GND)))))
-- \bo0|ula0|booth0|Add4~23\ = CARRY((\bo0|regA|q\(3) & (!\bo0|ula0|booth0|p1~3_combout\ & !\bo0|ula0|booth0|Add4~20\)) # (!\bo0|regA|q\(3) & ((!\bo0|ula0|booth0|Add4~20\) # (!\bo0|ula0|booth0|p1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(3),
	datab => \bo0|ula0|booth0|p1~3_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add4~20\,
	combout => \bo0|ula0|booth0|Add4~22_combout\,
	cout => \bo0|ula0|booth0|Add4~23\);

-- Location: LCCOMB_X7_Y11_N24
\bo0|ula0|booth0|p1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|p1~2_combout\ = (\bo0|ula0|booth0|s[12]~6_combout\ & \bo0|regB|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bo0|ula0|booth0|s[12]~6_combout\,
	datad => \bo0|regB|q\(0),
	combout => \bo0|ula0|booth0|p1~2_combout\);

-- Location: LCCOMB_X7_Y11_N16
\bo0|ula0|booth0|p1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|p1~0_combout\ = (\bo0|regB|q\(0) & \bo0|ula0|booth0|s[10]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bo0|regB|q\(0),
	datad => \bo0|ula0|booth0|s[10]~2_combout\,
	combout => \bo0|ula0|booth0|p1~0_combout\);

-- Location: LCCOMB_X8_Y11_N8
\bo0|ula0|booth0|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add3~2_combout\ = (\bo0|ula0|booth0|p1~1_combout\ & ((\bo0|ula0|booth0|s[10]~2_combout\ & (\bo0|ula0|booth0|Add3~1\ & VCC)) # (!\bo0|ula0|booth0|s[10]~2_combout\ & (!\bo0|ula0|booth0|Add3~1\)))) # (!\bo0|ula0|booth0|p1~1_combout\ & 
-- ((\bo0|ula0|booth0|s[10]~2_combout\ & (!\bo0|ula0|booth0|Add3~1\)) # (!\bo0|ula0|booth0|s[10]~2_combout\ & ((\bo0|ula0|booth0|Add3~1\) # (GND)))))
-- \bo0|ula0|booth0|Add3~3\ = CARRY((\bo0|ula0|booth0|p1~1_combout\ & (!\bo0|ula0|booth0|s[10]~2_combout\ & !\bo0|ula0|booth0|Add3~1\)) # (!\bo0|ula0|booth0|p1~1_combout\ & ((!\bo0|ula0|booth0|Add3~1\) # (!\bo0|ula0|booth0|s[10]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|p1~1_combout\,
	datab => \bo0|ula0|booth0|s[10]~2_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add3~1\,
	combout => \bo0|ula0|booth0|Add3~2_combout\,
	cout => \bo0|ula0|booth0|Add3~3\);

-- Location: LCCOMB_X8_Y11_N10
\bo0|ula0|booth0|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add3~4_combout\ = ((\bo0|ula0|booth0|s[11]~4_combout\ $ (\bo0|ula0|booth0|p1~2_combout\ $ (!\bo0|ula0|booth0|Add3~3\)))) # (GND)
-- \bo0|ula0|booth0|Add3~5\ = CARRY((\bo0|ula0|booth0|s[11]~4_combout\ & ((\bo0|ula0|booth0|p1~2_combout\) # (!\bo0|ula0|booth0|Add3~3\))) # (!\bo0|ula0|booth0|s[11]~4_combout\ & (\bo0|ula0|booth0|p1~2_combout\ & !\bo0|ula0|booth0|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[11]~4_combout\,
	datab => \bo0|ula0|booth0|p1~2_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add3~3\,
	combout => \bo0|ula0|booth0|Add3~4_combout\,
	cout => \bo0|ula0|booth0|Add3~5\);

-- Location: LCCOMB_X8_Y11_N12
\bo0|ula0|booth0|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add3~6_combout\ = (\bo0|ula0|booth0|s[12]~6_combout\ & ((\bo0|ula0|booth0|p1~3_combout\ & (\bo0|ula0|booth0|Add3~5\ & VCC)) # (!\bo0|ula0|booth0|p1~3_combout\ & (!\bo0|ula0|booth0|Add3~5\)))) # (!\bo0|ula0|booth0|s[12]~6_combout\ & 
-- ((\bo0|ula0|booth0|p1~3_combout\ & (!\bo0|ula0|booth0|Add3~5\)) # (!\bo0|ula0|booth0|p1~3_combout\ & ((\bo0|ula0|booth0|Add3~5\) # (GND)))))
-- \bo0|ula0|booth0|Add3~7\ = CARRY((\bo0|ula0|booth0|s[12]~6_combout\ & (!\bo0|ula0|booth0|p1~3_combout\ & !\bo0|ula0|booth0|Add3~5\)) # (!\bo0|ula0|booth0|s[12]~6_combout\ & ((!\bo0|ula0|booth0|Add3~5\) # (!\bo0|ula0|booth0|p1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[12]~6_combout\,
	datab => \bo0|ula0|booth0|p1~3_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add3~5\,
	combout => \bo0|ula0|booth0|Add3~6_combout\,
	cout => \bo0|ula0|booth0|Add3~7\);

-- Location: LCCOMB_X8_Y11_N22
\bo0|ula0|booth0|Add4~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~39_combout\ = (\bo0|regB|q\(1) & ((\bo0|regB|q\(0) & (\bo0|ula0|booth0|s[13]~8_combout\)) # (!\bo0|regB|q\(0) & ((\bo0|ula0|booth0|Add3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[13]~8_combout\,
	datab => \bo0|regB|q\(1),
	datac => \bo0|regB|q\(0),
	datad => \bo0|ula0|booth0|Add3~6_combout\,
	combout => \bo0|ula0|booth0|Add4~39_combout\);

-- Location: LCCOMB_X8_Y11_N2
\bo0|ula0|booth0|Add4~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~24_combout\ = (\bo0|ula0|booth0|Add4~39_combout\) # ((\bo0|regB|q\(0) & (!\bo0|regB|q\(1) & \bo0|ula0|booth0|Add4~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(0),
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|Add4~22_combout\,
	datad => \bo0|ula0|booth0|Add4~39_combout\,
	combout => \bo0|ula0|booth0|Add4~24_combout\);

-- Location: LCCOMB_X9_Y11_N2
\bo0|ula0|booth0|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add5~2_combout\ = (\bo0|ula0|booth0|Add4~21_combout\ & ((\bo0|ula0|booth0|s[10]~2_combout\ & (\bo0|ula0|booth0|Add5~1\ & VCC)) # (!\bo0|ula0|booth0|s[10]~2_combout\ & (!\bo0|ula0|booth0|Add5~1\)))) # (!\bo0|ula0|booth0|Add4~21_combout\ & 
-- ((\bo0|ula0|booth0|s[10]~2_combout\ & (!\bo0|ula0|booth0|Add5~1\)) # (!\bo0|ula0|booth0|s[10]~2_combout\ & ((\bo0|ula0|booth0|Add5~1\) # (GND)))))
-- \bo0|ula0|booth0|Add5~3\ = CARRY((\bo0|ula0|booth0|Add4~21_combout\ & (!\bo0|ula0|booth0|s[10]~2_combout\ & !\bo0|ula0|booth0|Add5~1\)) # (!\bo0|ula0|booth0|Add4~21_combout\ & ((!\bo0|ula0|booth0|Add5~1\) # (!\bo0|ula0|booth0|s[10]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add4~21_combout\,
	datab => \bo0|ula0|booth0|s[10]~2_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add5~1\,
	combout => \bo0|ula0|booth0|Add5~2_combout\,
	cout => \bo0|ula0|booth0|Add5~3\);

-- Location: LCCOMB_X9_Y11_N4
\bo0|ula0|booth0|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add5~4_combout\ = ((\bo0|ula0|booth0|Add4~24_combout\ $ (\bo0|ula0|booth0|s[11]~4_combout\ $ (!\bo0|ula0|booth0|Add5~3\)))) # (GND)
-- \bo0|ula0|booth0|Add5~5\ = CARRY((\bo0|ula0|booth0|Add4~24_combout\ & ((\bo0|ula0|booth0|s[11]~4_combout\) # (!\bo0|ula0|booth0|Add5~3\))) # (!\bo0|ula0|booth0|Add4~24_combout\ & (\bo0|ula0|booth0|s[11]~4_combout\ & !\bo0|ula0|booth0|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add4~24_combout\,
	datab => \bo0|ula0|booth0|s[11]~4_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add5~3\,
	combout => \bo0|ula0|booth0|Add5~4_combout\,
	cout => \bo0|ula0|booth0|Add5~5\);

-- Location: LCCOMB_X8_Y11_N28
\bo0|ula0|booth0|Add4~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~38_combout\ = (\bo0|regB|q\(1) & ((\bo0|regB|q\(0) & (\bo0|ula0|booth0|s[12]~6_combout\)) # (!\bo0|regB|q\(0) & ((\bo0|ula0|booth0|Add3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(0),
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|s[12]~6_combout\,
	datad => \bo0|ula0|booth0|Add3~4_combout\,
	combout => \bo0|ula0|booth0|Add4~38_combout\);

-- Location: LCCOMB_X9_Y11_N24
\bo0|ula0|booth0|Add4~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~21_combout\ = (\bo0|ula0|booth0|Add4~38_combout\) # ((!\bo0|regB|q\(1) & (\bo0|regB|q\(0) & \bo0|ula0|booth0|Add4~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(1),
	datab => \bo0|regB|q\(0),
	datac => \bo0|ula0|booth0|Add4~19_combout\,
	datad => \bo0|ula0|booth0|Add4~38_combout\,
	combout => \bo0|ula0|booth0|Add4~21_combout\);

-- Location: LCCOMB_X9_Y11_N28
\bo0|ula0|booth0|Add4~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~37_combout\ = (\bo0|regB|q\(1) & ((\bo0|regB|q\(0) & (\bo0|ula0|booth0|s[11]~4_combout\)) # (!\bo0|regB|q\(0) & ((\bo0|ula0|booth0|Add3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(0),
	datab => \bo0|ula0|booth0|s[11]~4_combout\,
	datac => \bo0|regB|q\(1),
	datad => \bo0|ula0|booth0|Add3~2_combout\,
	combout => \bo0|ula0|booth0|Add4~37_combout\);

-- Location: LCCOMB_X9_Y11_N16
\bo0|ula0|booth0|Add4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~18_combout\ = (\bo0|ula0|booth0|Add4~37_combout\) # ((!\bo0|regB|q\(1) & (\bo0|regB|q\(0) & \bo0|ula0|booth0|Add4~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(1),
	datab => \bo0|regB|q\(0),
	datac => \bo0|ula0|booth0|Add4~16_combout\,
	datad => \bo0|ula0|booth0|Add4~37_combout\,
	combout => \bo0|ula0|booth0|Add4~18_combout\);

-- Location: LCCOMB_X10_Y11_N6
\bo0|ula0|booth0|Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~2_combout\ = (\bo0|regA|q\(1) & ((\bo0|ula0|booth0|Add4~21_combout\ & (\bo0|ula0|booth0|Add6~1\ & VCC)) # (!\bo0|ula0|booth0|Add4~21_combout\ & (!\bo0|ula0|booth0|Add6~1\)))) # (!\bo0|regA|q\(1) & ((\bo0|ula0|booth0|Add4~21_combout\ 
-- & (!\bo0|ula0|booth0|Add6~1\)) # (!\bo0|ula0|booth0|Add4~21_combout\ & ((\bo0|ula0|booth0|Add6~1\) # (GND)))))
-- \bo0|ula0|booth0|Add6~3\ = CARRY((\bo0|regA|q\(1) & (!\bo0|ula0|booth0|Add4~21_combout\ & !\bo0|ula0|booth0|Add6~1\)) # (!\bo0|regA|q\(1) & ((!\bo0|ula0|booth0|Add6~1\) # (!\bo0|ula0|booth0|Add4~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(1),
	datab => \bo0|ula0|booth0|Add4~21_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add6~1\,
	combout => \bo0|ula0|booth0|Add6~2_combout\,
	cout => \bo0|ula0|booth0|Add6~3\);

-- Location: LCCOMB_X10_Y11_N8
\bo0|ula0|booth0|Add6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~6_combout\ = ((\bo0|regA|q\(2) $ (\bo0|ula0|booth0|Add4~24_combout\ $ (!\bo0|ula0|booth0|Add6~3\)))) # (GND)
-- \bo0|ula0|booth0|Add6~7\ = CARRY((\bo0|regA|q\(2) & ((\bo0|ula0|booth0|Add4~24_combout\) # (!\bo0|ula0|booth0|Add6~3\))) # (!\bo0|regA|q\(2) & (\bo0|ula0|booth0|Add4~24_combout\ & !\bo0|ula0|booth0|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(2),
	datab => \bo0|ula0|booth0|Add4~24_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add6~3\,
	combout => \bo0|ula0|booth0|Add6~6_combout\,
	cout => \bo0|ula0|booth0|Add6~7\);

-- Location: LCCOMB_X10_Y11_N0
\bo0|ula0|booth0|Add6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~8_combout\ = (\bo0|regB|q\(2) & (!\bo0|regB|q\(1) & (\bo0|ula0|booth0|Add5~4_combout\))) # (!\bo0|regB|q\(2) & (\bo0|regB|q\(1) & ((\bo0|ula0|booth0|Add6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|Add5~4_combout\,
	datad => \bo0|ula0|booth0|Add6~6_combout\,
	combout => \bo0|ula0|booth0|Add6~8_combout\);

-- Location: LCCOMB_X10_Y11_N22
\bo0|ula0|booth0|Add6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~9_combout\ = (\bo0|ula0|booth0|Add6~8_combout\) # ((\bo0|ula0|booth0|Add4~24_combout\ & (\bo0|regB|q\(2) $ (!\bo0|regB|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|Add4~24_combout\,
	datad => \bo0|ula0|booth0|Add6~8_combout\,
	combout => \bo0|ula0|booth0|Add6~9_combout\);

-- Location: LCCOMB_X9_Y11_N22
\bo0|ula0|booth0|Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~4_combout\ = (\bo0|regB|q\(1) & (((!\bo0|regB|q\(2) & \bo0|ula0|booth0|Add6~2_combout\)))) # (!\bo0|regB|q\(1) & (\bo0|ula0|booth0|Add5~2_combout\ & (\bo0|regB|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(1),
	datab => \bo0|ula0|booth0|Add5~2_combout\,
	datac => \bo0|regB|q\(2),
	datad => \bo0|ula0|booth0|Add6~2_combout\,
	combout => \bo0|ula0|booth0|Add6~4_combout\);

-- Location: LCCOMB_X9_Y11_N18
\bo0|ula0|booth0|Add6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~5_combout\ = (\bo0|ula0|booth0|Add6~4_combout\) # ((\bo0|ula0|booth0|Add4~21_combout\ & (\bo0|regB|q\(1) $ (!\bo0|regB|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(1),
	datab => \bo0|regB|q\(2),
	datac => \bo0|ula0|booth0|Add4~21_combout\,
	datad => \bo0|ula0|booth0|Add6~4_combout\,
	combout => \bo0|ula0|booth0|Add6~5_combout\);

-- Location: LCCOMB_X10_Y10_N16
\bo0|ula0|booth0|Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add7~2_combout\ = (\bo0|ula0|booth0|Add6~9_combout\ & ((\bo0|ula0|booth0|s[10]~2_combout\ & (\bo0|ula0|booth0|Add7~1\ & VCC)) # (!\bo0|ula0|booth0|s[10]~2_combout\ & (!\bo0|ula0|booth0|Add7~1\)))) # (!\bo0|ula0|booth0|Add6~9_combout\ & 
-- ((\bo0|ula0|booth0|s[10]~2_combout\ & (!\bo0|ula0|booth0|Add7~1\)) # (!\bo0|ula0|booth0|s[10]~2_combout\ & ((\bo0|ula0|booth0|Add7~1\) # (GND)))))
-- \bo0|ula0|booth0|Add7~3\ = CARRY((\bo0|ula0|booth0|Add6~9_combout\ & (!\bo0|ula0|booth0|s[10]~2_combout\ & !\bo0|ula0|booth0|Add7~1\)) # (!\bo0|ula0|booth0|Add6~9_combout\ & ((!\bo0|ula0|booth0|Add7~1\) # (!\bo0|ula0|booth0|s[10]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add6~9_combout\,
	datab => \bo0|ula0|booth0|s[10]~2_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add7~1\,
	combout => \bo0|ula0|booth0|Add7~2_combout\,
	cout => \bo0|ula0|booth0|Add7~3\);

-- Location: LCCOMB_X9_Y10_N6
\bo0|ula0|booth0|Add8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~2_combout\ = (\bo0|regA|q\(1) & ((\bo0|ula0|booth0|Add6~9_combout\ & (\bo0|ula0|booth0|Add8~1\ & VCC)) # (!\bo0|ula0|booth0|Add6~9_combout\ & (!\bo0|ula0|booth0|Add8~1\)))) # (!\bo0|regA|q\(1) & ((\bo0|ula0|booth0|Add6~9_combout\ & 
-- (!\bo0|ula0|booth0|Add8~1\)) # (!\bo0|ula0|booth0|Add6~9_combout\ & ((\bo0|ula0|booth0|Add8~1\) # (GND)))))
-- \bo0|ula0|booth0|Add8~3\ = CARRY((\bo0|regA|q\(1) & (!\bo0|ula0|booth0|Add6~9_combout\ & !\bo0|ula0|booth0|Add8~1\)) # (!\bo0|regA|q\(1) & ((!\bo0|ula0|booth0|Add8~1\) # (!\bo0|ula0|booth0|Add6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(1),
	datab => \bo0|ula0|booth0|Add6~9_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add8~1\,
	combout => \bo0|ula0|booth0|Add8~2_combout\,
	cout => \bo0|ula0|booth0|Add8~3\);

-- Location: LCCOMB_X12_Y10_N28
\bo0|ula0|booth0|Add8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~4_combout\ = (\bo0|regB|q\(2) & (!\bo0|regB|q\(3) & ((\bo0|ula0|booth0|Add8~2_combout\)))) # (!\bo0|regB|q\(2) & (\bo0|regB|q\(3) & (\bo0|ula0|booth0|Add7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|regB|q\(3),
	datac => \bo0|ula0|booth0|Add7~2_combout\,
	datad => \bo0|ula0|booth0|Add8~2_combout\,
	combout => \bo0|ula0|booth0|Add8~4_combout\);

-- Location: LCCOMB_X12_Y10_N30
\bo0|ula0|booth0|Add8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~5_combout\ = (\bo0|ula0|booth0|Add8~4_combout\) # ((\bo0|ula0|booth0|Add6~9_combout\ & (\bo0|regB|q\(3) $ (!\bo0|regB|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|regB|q\(2),
	datac => \bo0|ula0|booth0|Add6~9_combout\,
	datad => \bo0|ula0|booth0|Add8~4_combout\,
	combout => \bo0|ula0|booth0|Add8~5_combout\);

-- Location: LCFF_X12_Y12_N19
\bo0|regB|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|mem|rom~11_combout\,
	ena => \bc0|state.carrega_B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regB|q\(4));

-- Location: LCCOMB_X12_Y10_N0
\bo0|ula0|booth0|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~0_combout\ = (\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add8~5_combout\ $ (VCC))) # (!\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add8~5_combout\ & VCC))
-- \bo0|ula0|booth0|Add10~1\ = CARRY((\bo0|regA|q\(0) & \bo0|ula0|booth0|Add8~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(0),
	datab => \bo0|ula0|booth0|Add8~5_combout\,
	datad => VCC,
	combout => \bo0|ula0|booth0|Add10~0_combout\,
	cout => \bo0|ula0|booth0|Add10~1\);

-- Location: LCCOMB_X13_Y10_N12
\bo0|ula0|booth0|Add9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add9~0_combout\ = (\bo0|ula0|booth0|Add8~5_combout\ & (\bo0|regA|q\(0) $ (VCC))) # (!\bo0|ula0|booth0|Add8~5_combout\ & (\bo0|regA|q\(0) & VCC))
-- \bo0|ula0|booth0|Add9~1\ = CARRY((\bo0|ula0|booth0|Add8~5_combout\ & \bo0|regA|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add8~5_combout\,
	datab => \bo0|regA|q\(0),
	datad => VCC,
	combout => \bo0|ula0|booth0|Add9~0_combout\,
	cout => \bo0|ula0|booth0|Add9~1\);

-- Location: LCCOMB_X13_Y10_N4
\bo0|ula0|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux3~0_combout\ = (\bo0|regB|q\(3) & (!\bo0|regB|q\(4) & (\bo0|ula0|booth0|Add10~0_combout\))) # (!\bo0|regB|q\(3) & (\bo0|regB|q\(4) & ((\bo0|ula0|booth0|Add9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|regB|q\(4),
	datac => \bo0|ula0|booth0|Add10~0_combout\,
	datad => \bo0|ula0|booth0|Add9~0_combout\,
	combout => \bo0|ula0|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y11_N16
\bo0|ula0|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux3~1_combout\ = (\bo0|ula0|Mux3~0_combout\) # ((\bo0|ula0|booth0|Add8~5_combout\ & (\bo0|regB|q\(4) $ (!\bo0|regB|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(4),
	datab => \bo0|ula0|booth0|Add8~5_combout\,
	datac => \bo0|regB|q\(3),
	datad => \bo0|ula0|Mux3~0_combout\,
	combout => \bo0|ula0|Mux3~1_combout\);

-- Location: LCCOMB_X13_Y11_N6
\bo0|ula0|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux3~2_combout\ = (\bo0|regOp|q\(0) & (((\bo0|ula0|Mux3~1_combout\)))) # (!\bo0|regOp|q\(0) & (\bo0|regB|q\(4) $ ((\bo0|regA|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(4),
	datab => \bo0|regOp|q\(0),
	datac => \bo0|regA|q\(4),
	datad => \bo0|ula0|Mux3~1_combout\,
	combout => \bo0|ula0|Mux3~2_combout\);

-- Location: LCCOMB_X14_Y11_N24
\bo0|ula0|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux3~5_combout\ = (\bo0|ula0|Mux3~4_combout\ & (((\bo0|ula0|Equal4~0_combout\ & \bo0|ula0|Mux3~2_combout\)) # (!\bo0|regOp|q\(3)))) # (!\bo0|ula0|Mux3~4_combout\ & (\bo0|ula0|Equal4~0_combout\ & (\bo0|ula0|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux3~4_combout\,
	datab => \bo0|ula0|Equal4~0_combout\,
	datac => \bo0|ula0|Mux3~2_combout\,
	datad => \bo0|regOp|q\(3),
	combout => \bo0|ula0|Mux3~5_combout\);

-- Location: LCFF_X14_Y11_N25
\bo0|regS_low|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|Mux3~5_combout\,
	ena => \bc0|state.carrega_saida~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_low|q\(4));

-- Location: LCCOMB_X12_Y12_N4
\bo0|mem|rom~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|mem|rom~12_combout\ = (\bo0|regPC|soma\(2) & ((\bo0|regPC|soma\(1)) # ((!\bo0|regPC|soma\(3) & \bo0|regPC|soma\(4))))) # (!\bo0|regPC|soma\(2) & (\bo0|regPC|soma\(3) $ (((\bo0|regPC|soma\(1) & !\bo0|regPC|soma\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regPC|soma\(3),
	datab => \bo0|regPC|soma\(1),
	datac => \bo0|regPC|soma\(4),
	datad => \bo0|regPC|soma\(2),
	combout => \bo0|mem|rom~12_combout\);

-- Location: LCCOMB_X12_Y12_N24
\bo0|mem|rom~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|mem|rom~13_combout\ = (\bo0|regPC|soma\(0) & (((\bo0|regPC|soma\(2) & \bo0|mem|rom~9_combout\)) # (!\bo0|mem|rom~12_combout\))) # (!\bo0|regPC|soma\(0) & (\bo0|regPC|soma\(2) & ((\bo0|mem|rom~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regPC|soma\(0),
	datab => \bo0|regPC|soma\(2),
	datac => \bo0|mem|rom~12_combout\,
	datad => \bo0|mem|rom~9_combout\,
	combout => \bo0|mem|rom~13_combout\);

-- Location: LCFF_X12_Y12_N25
\bo0|regB|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|mem|rom~13_combout\,
	ena => \bc0|state.carrega_B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regB|q\(5));

-- Location: LCFF_X6_Y11_N11
\bo0|regA|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo0|mem|rom~13_combout\,
	sload => VCC,
	ena => \bc0|state.carrega_A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regA|q\(5));

-- Location: LCCOMB_X14_Y10_N4
\bo0|ula0|booth0|Add11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add11~0_combout\ = (\bo0|ula0|booth0|Add10~5_combout\ & (\bo0|regA|q\(0) $ (VCC))) # (!\bo0|ula0|booth0|Add10~5_combout\ & (\bo0|regA|q\(0) & VCC))
-- \bo0|ula0|booth0|Add11~1\ = CARRY((\bo0|ula0|booth0|Add10~5_combout\ & \bo0|regA|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add10~5_combout\,
	datab => \bo0|regA|q\(0),
	datad => VCC,
	combout => \bo0|ula0|booth0|Add11~0_combout\,
	cout => \bo0|ula0|booth0|Add11~1\);

-- Location: LCCOMB_X10_Y10_N18
\bo0|ula0|booth0|Add7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add7~4_combout\ = ((\bo0|ula0|booth0|Add6~13_combout\ $ (\bo0|ula0|booth0|s[11]~4_combout\ $ (!\bo0|ula0|booth0|Add7~3\)))) # (GND)
-- \bo0|ula0|booth0|Add7~5\ = CARRY((\bo0|ula0|booth0|Add6~13_combout\ & ((\bo0|ula0|booth0|s[11]~4_combout\) # (!\bo0|ula0|booth0|Add7~3\))) # (!\bo0|ula0|booth0|Add6~13_combout\ & (\bo0|ula0|booth0|s[11]~4_combout\ & !\bo0|ula0|booth0|Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add6~13_combout\,
	datab => \bo0|ula0|booth0|s[11]~4_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add7~3\,
	combout => \bo0|ula0|booth0|Add7~4_combout\,
	cout => \bo0|ula0|booth0|Add7~5\);

-- Location: LCCOMB_X6_Y11_N10
\bo0|ula0|booth0|s[14]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|s[14]~10_combout\ = (\bo0|regA|q\(5) & ((\bo0|ula0|booth0|s[13]~9\) # (GND))) # (!\bo0|regA|q\(5) & (!\bo0|ula0|booth0|s[13]~9\))
-- \bo0|ula0|booth0|s[14]~11\ = CARRY((\bo0|regA|q\(5)) # (!\bo0|ula0|booth0|s[13]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(5),
	datad => VCC,
	cin => \bo0|ula0|booth0|s[13]~9\,
	combout => \bo0|ula0|booth0|s[14]~10_combout\,
	cout => \bo0|ula0|booth0|s[14]~11\);

-- Location: LCCOMB_X7_Y11_N26
\bo0|ula0|booth0|p1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|p1~4_combout\ = (\bo0|regB|q\(0) & \bo0|ula0|booth0|s[14]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo0|regB|q\(0),
	datad => \bo0|ula0|booth0|s[14]~10_combout\,
	combout => \bo0|ula0|booth0|p1~4_combout\);

-- Location: LCCOMB_X8_Y11_N14
\bo0|ula0|booth0|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add3~8_combout\ = ((\bo0|ula0|booth0|s[13]~8_combout\ $ (\bo0|ula0|booth0|p1~4_combout\ $ (!\bo0|ula0|booth0|Add3~7\)))) # (GND)
-- \bo0|ula0|booth0|Add3~9\ = CARRY((\bo0|ula0|booth0|s[13]~8_combout\ & ((\bo0|ula0|booth0|p1~4_combout\) # (!\bo0|ula0|booth0|Add3~7\))) # (!\bo0|ula0|booth0|s[13]~8_combout\ & (\bo0|ula0|booth0|p1~4_combout\ & !\bo0|ula0|booth0|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[13]~8_combout\,
	datab => \bo0|ula0|booth0|p1~4_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add3~7\,
	combout => \bo0|ula0|booth0|Add3~8_combout\,
	cout => \bo0|ula0|booth0|Add3~9\);

-- Location: LCCOMB_X8_Y11_N0
\bo0|ula0|booth0|Add4~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~40_combout\ = (\bo0|regB|q\(1) & ((\bo0|regB|q\(0) & (\bo0|ula0|booth0|s[14]~10_combout\)) # (!\bo0|regB|q\(0) & ((\bo0|ula0|booth0|Add3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(0),
	datab => \bo0|ula0|booth0|s[14]~10_combout\,
	datac => \bo0|ula0|booth0|Add3~8_combout\,
	datad => \bo0|regB|q\(1),
	combout => \bo0|ula0|booth0|Add4~40_combout\);

-- Location: LCCOMB_X8_Y11_N4
\bo0|ula0|booth0|Add4~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~27_combout\ = (\bo0|ula0|booth0|Add4~40_combout\) # ((\bo0|ula0|booth0|Add4~25_combout\ & (!\bo0|regB|q\(1) & \bo0|regB|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add4~25_combout\,
	datab => \bo0|regB|q\(1),
	datac => \bo0|regB|q\(0),
	datad => \bo0|ula0|booth0|Add4~40_combout\,
	combout => \bo0|ula0|booth0|Add4~27_combout\);

-- Location: LCCOMB_X9_Y11_N6
\bo0|ula0|booth0|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add5~6_combout\ = (\bo0|ula0|booth0|s[12]~6_combout\ & ((\bo0|ula0|booth0|Add4~27_combout\ & (\bo0|ula0|booth0|Add5~5\ & VCC)) # (!\bo0|ula0|booth0|Add4~27_combout\ & (!\bo0|ula0|booth0|Add5~5\)))) # (!\bo0|ula0|booth0|s[12]~6_combout\ & 
-- ((\bo0|ula0|booth0|Add4~27_combout\ & (!\bo0|ula0|booth0|Add5~5\)) # (!\bo0|ula0|booth0|Add4~27_combout\ & ((\bo0|ula0|booth0|Add5~5\) # (GND)))))
-- \bo0|ula0|booth0|Add5~7\ = CARRY((\bo0|ula0|booth0|s[12]~6_combout\ & (!\bo0|ula0|booth0|Add4~27_combout\ & !\bo0|ula0|booth0|Add5~5\)) # (!\bo0|ula0|booth0|s[12]~6_combout\ & ((!\bo0|ula0|booth0|Add5~5\) # (!\bo0|ula0|booth0|Add4~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[12]~6_combout\,
	datab => \bo0|ula0|booth0|Add4~27_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add5~5\,
	combout => \bo0|ula0|booth0|Add5~6_combout\,
	cout => \bo0|ula0|booth0|Add5~7\);

-- Location: LCCOMB_X10_Y11_N10
\bo0|ula0|booth0|Add6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~10_combout\ = (\bo0|regA|q\(3) & ((\bo0|ula0|booth0|Add4~27_combout\ & (\bo0|ula0|booth0|Add6~7\ & VCC)) # (!\bo0|ula0|booth0|Add4~27_combout\ & (!\bo0|ula0|booth0|Add6~7\)))) # (!\bo0|regA|q\(3) & ((\bo0|ula0|booth0|Add4~27_combout\ 
-- & (!\bo0|ula0|booth0|Add6~7\)) # (!\bo0|ula0|booth0|Add4~27_combout\ & ((\bo0|ula0|booth0|Add6~7\) # (GND)))))
-- \bo0|ula0|booth0|Add6~11\ = CARRY((\bo0|regA|q\(3) & (!\bo0|ula0|booth0|Add4~27_combout\ & !\bo0|ula0|booth0|Add6~7\)) # (!\bo0|regA|q\(3) & ((!\bo0|ula0|booth0|Add6~7\) # (!\bo0|ula0|booth0|Add4~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(3),
	datab => \bo0|ula0|booth0|Add4~27_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add6~7\,
	combout => \bo0|ula0|booth0|Add6~10_combout\,
	cout => \bo0|ula0|booth0|Add6~11\);

-- Location: LCCOMB_X10_Y10_N0
\bo0|ula0|booth0|Add6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~12_combout\ = (\bo0|regB|q\(2) & (!\bo0|regB|q\(1) & (\bo0|ula0|booth0|Add5~6_combout\))) # (!\bo0|regB|q\(2) & (\bo0|regB|q\(1) & ((\bo0|ula0|booth0|Add6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|Add5~6_combout\,
	datad => \bo0|ula0|booth0|Add6~10_combout\,
	combout => \bo0|ula0|booth0|Add6~12_combout\);

-- Location: LCCOMB_X10_Y10_N10
\bo0|ula0|booth0|Add6~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~13_combout\ = (\bo0|ula0|booth0|Add6~12_combout\) # ((\bo0|ula0|booth0|Add4~27_combout\ & (\bo0|regB|q\(2) $ (!\bo0|regB|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|Add4~27_combout\,
	datad => \bo0|ula0|booth0|Add6~12_combout\,
	combout => \bo0|ula0|booth0|Add6~13_combout\);

-- Location: LCCOMB_X9_Y10_N8
\bo0|ula0|booth0|Add8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~6_combout\ = ((\bo0|regA|q\(2) $ (\bo0|ula0|booth0|Add6~13_combout\ $ (!\bo0|ula0|booth0|Add8~3\)))) # (GND)
-- \bo0|ula0|booth0|Add8~7\ = CARRY((\bo0|regA|q\(2) & ((\bo0|ula0|booth0|Add6~13_combout\) # (!\bo0|ula0|booth0|Add8~3\))) # (!\bo0|regA|q\(2) & (\bo0|ula0|booth0|Add6~13_combout\ & !\bo0|ula0|booth0|Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(2),
	datab => \bo0|ula0|booth0|Add6~13_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add8~3\,
	combout => \bo0|ula0|booth0|Add8~6_combout\,
	cout => \bo0|ula0|booth0|Add8~7\);

-- Location: LCCOMB_X10_Y10_N12
\bo0|ula0|booth0|Add8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~8_combout\ = (\bo0|regB|q\(2) & (((!\bo0|regB|q\(3) & \bo0|ula0|booth0|Add8~6_combout\)))) # (!\bo0|regB|q\(2) & (\bo0|ula0|booth0|Add7~4_combout\ & (\bo0|regB|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|ula0|booth0|Add7~4_combout\,
	datac => \bo0|regB|q\(3),
	datad => \bo0|ula0|booth0|Add8~6_combout\,
	combout => \bo0|ula0|booth0|Add8~8_combout\);

-- Location: LCCOMB_X10_Y10_N6
\bo0|ula0|booth0|Add8~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~9_combout\ = (\bo0|ula0|booth0|Add8~8_combout\) # ((\bo0|ula0|booth0|Add6~13_combout\ & (\bo0|regB|q\(3) $ (!\bo0|regB|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add6~13_combout\,
	datab => \bo0|regB|q\(3),
	datac => \bo0|regB|q\(2),
	datad => \bo0|ula0|booth0|Add8~8_combout\,
	combout => \bo0|ula0|booth0|Add8~9_combout\);

-- Location: LCCOMB_X13_Y10_N14
\bo0|ula0|booth0|Add9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add9~2_combout\ = (\bo0|ula0|booth0|s[10]~2_combout\ & ((\bo0|ula0|booth0|Add8~9_combout\ & (\bo0|ula0|booth0|Add9~1\ & VCC)) # (!\bo0|ula0|booth0|Add8~9_combout\ & (!\bo0|ula0|booth0|Add9~1\)))) # (!\bo0|ula0|booth0|s[10]~2_combout\ & 
-- ((\bo0|ula0|booth0|Add8~9_combout\ & (!\bo0|ula0|booth0|Add9~1\)) # (!\bo0|ula0|booth0|Add8~9_combout\ & ((\bo0|ula0|booth0|Add9~1\) # (GND)))))
-- \bo0|ula0|booth0|Add9~3\ = CARRY((\bo0|ula0|booth0|s[10]~2_combout\ & (!\bo0|ula0|booth0|Add8~9_combout\ & !\bo0|ula0|booth0|Add9~1\)) # (!\bo0|ula0|booth0|s[10]~2_combout\ & ((!\bo0|ula0|booth0|Add9~1\) # (!\bo0|ula0|booth0|Add8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[10]~2_combout\,
	datab => \bo0|ula0|booth0|Add8~9_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add9~1\,
	combout => \bo0|ula0|booth0|Add9~2_combout\,
	cout => \bo0|ula0|booth0|Add9~3\);

-- Location: LCCOMB_X12_Y10_N2
\bo0|ula0|booth0|Add10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~2_combout\ = (\bo0|regA|q\(1) & ((\bo0|ula0|booth0|Add8~9_combout\ & (\bo0|ula0|booth0|Add10~1\ & VCC)) # (!\bo0|ula0|booth0|Add8~9_combout\ & (!\bo0|ula0|booth0|Add10~1\)))) # (!\bo0|regA|q\(1) & ((\bo0|ula0|booth0|Add8~9_combout\ 
-- & (!\bo0|ula0|booth0|Add10~1\)) # (!\bo0|ula0|booth0|Add8~9_combout\ & ((\bo0|ula0|booth0|Add10~1\) # (GND)))))
-- \bo0|ula0|booth0|Add10~3\ = CARRY((\bo0|regA|q\(1) & (!\bo0|ula0|booth0|Add8~9_combout\ & !\bo0|ula0|booth0|Add10~1\)) # (!\bo0|regA|q\(1) & ((!\bo0|ula0|booth0|Add10~1\) # (!\bo0|ula0|booth0|Add8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(1),
	datab => \bo0|ula0|booth0|Add8~9_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add10~1\,
	combout => \bo0|ula0|booth0|Add10~2_combout\,
	cout => \bo0|ula0|booth0|Add10~3\);

-- Location: LCCOMB_X13_Y10_N10
\bo0|ula0|booth0|Add10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~4_combout\ = (\bo0|regB|q\(3) & (!\bo0|regB|q\(4) & ((\bo0|ula0|booth0|Add10~2_combout\)))) # (!\bo0|regB|q\(3) & (\bo0|regB|q\(4) & (\bo0|ula0|booth0|Add9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|regB|q\(4),
	datac => \bo0|ula0|booth0|Add9~2_combout\,
	datad => \bo0|ula0|booth0|Add10~2_combout\,
	combout => \bo0|ula0|booth0|Add10~4_combout\);

-- Location: LCCOMB_X14_Y10_N24
\bo0|ula0|booth0|Add10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~5_combout\ = (\bo0|ula0|booth0|Add10~4_combout\) # ((\bo0|ula0|booth0|Add8~9_combout\ & (\bo0|regB|q\(3) $ (!\bo0|regB|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|regB|q\(4),
	datac => \bo0|ula0|booth0|Add8~9_combout\,
	datad => \bo0|ula0|booth0|Add10~4_combout\,
	combout => \bo0|ula0|booth0|Add10~5_combout\);

-- Location: LCCOMB_X15_Y10_N0
\bo0|ula0|booth0|Add12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~0_combout\ = (\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add10~5_combout\ $ (VCC))) # (!\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add10~5_combout\ & VCC))
-- \bo0|ula0|booth0|Add12~1\ = CARRY((\bo0|regA|q\(0) & \bo0|ula0|booth0|Add10~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(0),
	datab => \bo0|ula0|booth0|Add10~5_combout\,
	datad => VCC,
	combout => \bo0|ula0|booth0|Add12~0_combout\,
	cout => \bo0|ula0|booth0|Add12~1\);

-- Location: LCCOMB_X14_Y10_N30
\bo0|ula0|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux2~3_combout\ = (\bo0|regB|q\(4) & (((\bo0|ula0|booth0|Add12~0_combout\ & !\bo0|regB|q\(5))))) # (!\bo0|regB|q\(4) & (\bo0|ula0|booth0|Add11~0_combout\ & ((\bo0|regB|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(4),
	datab => \bo0|ula0|booth0|Add11~0_combout\,
	datac => \bo0|ula0|booth0|Add12~0_combout\,
	datad => \bo0|regB|q\(5),
	combout => \bo0|ula0|Mux2~3_combout\);

-- Location: LCCOMB_X14_Y10_N0
\bo0|ula0|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux2~4_combout\ = (\bo0|ula0|Mux2~3_combout\) # ((\bo0|ula0|booth0|Add10~5_combout\ & (\bo0|regB|q\(4) $ (!\bo0|regB|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add10~5_combout\,
	datab => \bo0|regB|q\(4),
	datac => \bo0|regB|q\(5),
	datad => \bo0|ula0|Mux2~3_combout\,
	combout => \bo0|ula0|Mux2~4_combout\);

-- Location: LCCOMB_X14_Y11_N22
\bo0|ula0|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux2~5_combout\ = (\bo0|regOp|q\(0) & (((\bo0|ula0|Mux2~4_combout\)))) # (!\bo0|regOp|q\(0) & (\bo0|regB|q\(5) $ ((\bo0|regA|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(0),
	datab => \bo0|regB|q\(5),
	datac => \bo0|regA|q\(5),
	datad => \bo0|ula0|Mux2~4_combout\,
	combout => \bo0|ula0|Mux2~5_combout\);

-- Location: LCCOMB_X14_Y11_N26
\bo0|ula0|Mux2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux2~8_combout\ = (\bo0|ula0|Mux2~7_combout\ & (((\bo0|ula0|Equal4~0_combout\ & \bo0|ula0|Mux2~5_combout\)) # (!\bo0|regOp|q\(3)))) # (!\bo0|ula0|Mux2~7_combout\ & (\bo0|ula0|Equal4~0_combout\ & ((\bo0|ula0|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux2~7_combout\,
	datab => \bo0|ula0|Equal4~0_combout\,
	datac => \bo0|regOp|q\(3),
	datad => \bo0|ula0|Mux2~5_combout\,
	combout => \bo0|ula0|Mux2~8_combout\);

-- Location: LCFF_X14_Y11_N27
\bo0|regS_low|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|Mux2~8_combout\,
	ena => \bc0|state.carrega_saida~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_low|q\(5));

-- Location: LCCOMB_X12_Y12_N14
\bo0|mem|rom~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|mem|rom~14_combout\ = (\bo0|regPC|soma\(2) & ((\bo0|regPC|soma\(0) & (!\bo0|regPC|soma\(1) & \bo0|regPC|soma\(4))) # (!\bo0|regPC|soma\(0) & (\bo0|regPC|soma\(1) & !\bo0|regPC|soma\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regPC|soma\(0),
	datab => \bo0|regPC|soma\(1),
	datac => \bo0|regPC|soma\(4),
	datad => \bo0|regPC|soma\(2),
	combout => \bo0|mem|rom~14_combout\);

-- Location: LCCOMB_X12_Y12_N26
\bo0|mem|rom~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|mem|rom~15_combout\ = (\bo0|mem|rom~14_combout\ & \bo0|regPC|soma\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo0|mem|rom~14_combout\,
	datac => \bo0|regPC|soma\(3),
	combout => \bo0|mem|rom~15_combout\);

-- Location: LCFF_X6_Y11_N13
\bo0|regA|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo0|mem|rom~15_combout\,
	sload => VCC,
	ena => \bc0|state.carrega_A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regA|q\(6));

-- Location: LCFF_X12_Y12_N27
\bo0|regB|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|mem|rom~15_combout\,
	ena => \bc0|state.carrega_B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regB|q\(6));

-- Location: LCCOMB_X13_Y11_N2
\bo0|ula0|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux1~5_combout\ = (\bo0|ula0|Mux1~4_combout\ & ((\bo0|regA|q\(6)) # ((\bo0|regB|q\(6)) # (!\bo0|ula0|Mux2~2_combout\)))) # (!\bo0|ula0|Mux1~4_combout\ & (\bo0|regA|q\(6) & (\bo0|ula0|Mux2~2_combout\ & \bo0|regB|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux1~4_combout\,
	datab => \bo0|regA|q\(6),
	datac => \bo0|ula0|Mux2~2_combout\,
	datad => \bo0|regB|q\(6),
	combout => \bo0|ula0|Mux1~5_combout\);

-- Location: LCCOMB_X8_Y11_N16
\bo0|ula0|booth0|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add3~10_combout\ = (\bo0|ula0|booth0|p1~5_combout\ & ((\bo0|ula0|booth0|s[14]~10_combout\ & (\bo0|ula0|booth0|Add3~9\ & VCC)) # (!\bo0|ula0|booth0|s[14]~10_combout\ & (!\bo0|ula0|booth0|Add3~9\)))) # (!\bo0|ula0|booth0|p1~5_combout\ & 
-- ((\bo0|ula0|booth0|s[14]~10_combout\ & (!\bo0|ula0|booth0|Add3~9\)) # (!\bo0|ula0|booth0|s[14]~10_combout\ & ((\bo0|ula0|booth0|Add3~9\) # (GND)))))
-- \bo0|ula0|booth0|Add3~11\ = CARRY((\bo0|ula0|booth0|p1~5_combout\ & (!\bo0|ula0|booth0|s[14]~10_combout\ & !\bo0|ula0|booth0|Add3~9\)) # (!\bo0|ula0|booth0|p1~5_combout\ & ((!\bo0|ula0|booth0|Add3~9\) # (!\bo0|ula0|booth0|s[14]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|p1~5_combout\,
	datab => \bo0|ula0|booth0|s[14]~10_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add3~9\,
	combout => \bo0|ula0|booth0|Add3~10_combout\,
	cout => \bo0|ula0|booth0|Add3~11\);

-- Location: LCCOMB_X6_Y11_N12
\bo0|ula0|booth0|s[15]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|s[15]~12_combout\ = (\bo0|regA|q\(6) & (!\bo0|ula0|booth0|s[14]~11\ & VCC)) # (!\bo0|regA|q\(6) & (\bo0|ula0|booth0|s[14]~11\ $ (GND)))
-- \bo0|ula0|booth0|s[15]~13\ = CARRY((!\bo0|regA|q\(6) & !\bo0|ula0|booth0|s[14]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(6),
	datad => VCC,
	cin => \bo0|ula0|booth0|s[14]~11\,
	combout => \bo0|ula0|booth0|s[15]~12_combout\,
	cout => \bo0|ula0|booth0|s[15]~13\);

-- Location: LCCOMB_X8_Y11_N26
\bo0|ula0|booth0|Add4~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~41_combout\ = (\bo0|regB|q\(1) & ((\bo0|regB|q\(0) & ((\bo0|ula0|booth0|s[15]~12_combout\))) # (!\bo0|regB|q\(0) & (\bo0|ula0|booth0|Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(0),
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|Add3~10_combout\,
	datad => \bo0|ula0|booth0|s[15]~12_combout\,
	combout => \bo0|ula0|booth0|Add4~41_combout\);

-- Location: LCCOMB_X8_Y11_N30
\bo0|ula0|booth0|Add4~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~30_combout\ = (\bo0|ula0|booth0|Add4~41_combout\) # ((\bo0|ula0|booth0|Add4~28_combout\ & (!\bo0|regB|q\(1) & \bo0|regB|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add4~28_combout\,
	datab => \bo0|regB|q\(1),
	datac => \bo0|regB|q\(0),
	datad => \bo0|ula0|booth0|Add4~41_combout\,
	combout => \bo0|ula0|booth0|Add4~30_combout\);

-- Location: LCCOMB_X9_Y11_N8
\bo0|ula0|booth0|Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add5~8_combout\ = ((\bo0|ula0|booth0|Add4~30_combout\ $ (\bo0|ula0|booth0|s[13]~8_combout\ $ (!\bo0|ula0|booth0|Add5~7\)))) # (GND)
-- \bo0|ula0|booth0|Add5~9\ = CARRY((\bo0|ula0|booth0|Add4~30_combout\ & ((\bo0|ula0|booth0|s[13]~8_combout\) # (!\bo0|ula0|booth0|Add5~7\))) # (!\bo0|ula0|booth0|Add4~30_combout\ & (\bo0|ula0|booth0|s[13]~8_combout\ & !\bo0|ula0|booth0|Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add4~30_combout\,
	datab => \bo0|ula0|booth0|s[13]~8_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add5~7\,
	combout => \bo0|ula0|booth0|Add5~8_combout\,
	cout => \bo0|ula0|booth0|Add5~9\);

-- Location: LCCOMB_X10_Y11_N12
\bo0|ula0|booth0|Add6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~14_combout\ = ((\bo0|regA|q\(4) $ (\bo0|ula0|booth0|Add4~30_combout\ $ (!\bo0|ula0|booth0|Add6~11\)))) # (GND)
-- \bo0|ula0|booth0|Add6~15\ = CARRY((\bo0|regA|q\(4) & ((\bo0|ula0|booth0|Add4~30_combout\) # (!\bo0|ula0|booth0|Add6~11\))) # (!\bo0|regA|q\(4) & (\bo0|ula0|booth0|Add4~30_combout\ & !\bo0|ula0|booth0|Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(4),
	datab => \bo0|ula0|booth0|Add4~30_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add6~11\,
	combout => \bo0|ula0|booth0|Add6~14_combout\,
	cout => \bo0|ula0|booth0|Add6~15\);

-- Location: LCCOMB_X9_Y10_N2
\bo0|ula0|booth0|Add6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~16_combout\ = (\bo0|regB|q\(2) & (\bo0|ula0|booth0|Add5~8_combout\ & (!\bo0|regB|q\(1)))) # (!\bo0|regB|q\(2) & (((\bo0|regB|q\(1) & \bo0|ula0|booth0|Add6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|ula0|booth0|Add5~8_combout\,
	datac => \bo0|regB|q\(1),
	datad => \bo0|ula0|booth0|Add6~14_combout\,
	combout => \bo0|ula0|booth0|Add6~16_combout\);

-- Location: LCCOMB_X9_Y10_N24
\bo0|ula0|booth0|Add6~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~17_combout\ = (\bo0|ula0|booth0|Add6~16_combout\) # ((\bo0|ula0|booth0|Add4~30_combout\ & (\bo0|regB|q\(2) $ (!\bo0|regB|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|Add4~30_combout\,
	datad => \bo0|ula0|booth0|Add6~16_combout\,
	combout => \bo0|ula0|booth0|Add6~17_combout\);

-- Location: LCCOMB_X10_Y10_N20
\bo0|ula0|booth0|Add7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add7~6_combout\ = (\bo0|ula0|booth0|s[12]~6_combout\ & ((\bo0|ula0|booth0|Add6~17_combout\ & (\bo0|ula0|booth0|Add7~5\ & VCC)) # (!\bo0|ula0|booth0|Add6~17_combout\ & (!\bo0|ula0|booth0|Add7~5\)))) # (!\bo0|ula0|booth0|s[12]~6_combout\ & 
-- ((\bo0|ula0|booth0|Add6~17_combout\ & (!\bo0|ula0|booth0|Add7~5\)) # (!\bo0|ula0|booth0|Add6~17_combout\ & ((\bo0|ula0|booth0|Add7~5\) # (GND)))))
-- \bo0|ula0|booth0|Add7~7\ = CARRY((\bo0|ula0|booth0|s[12]~6_combout\ & (!\bo0|ula0|booth0|Add6~17_combout\ & !\bo0|ula0|booth0|Add7~5\)) # (!\bo0|ula0|booth0|s[12]~6_combout\ & ((!\bo0|ula0|booth0|Add7~5\) # (!\bo0|ula0|booth0|Add6~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[12]~6_combout\,
	datab => \bo0|ula0|booth0|Add6~17_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add7~5\,
	combout => \bo0|ula0|booth0|Add7~6_combout\,
	cout => \bo0|ula0|booth0|Add7~7\);

-- Location: LCCOMB_X9_Y10_N26
\bo0|ula0|booth0|Add8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~12_combout\ = (\bo0|regB|q\(2) & (\bo0|ula0|booth0|Add8~10_combout\ & (!\bo0|regB|q\(3)))) # (!\bo0|regB|q\(2) & (((\bo0|regB|q\(3) & \bo0|ula0|booth0|Add7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add8~10_combout\,
	datab => \bo0|regB|q\(2),
	datac => \bo0|regB|q\(3),
	datad => \bo0|ula0|booth0|Add7~6_combout\,
	combout => \bo0|ula0|booth0|Add8~12_combout\);

-- Location: LCCOMB_X9_Y10_N28
\bo0|ula0|booth0|Add8~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~13_combout\ = (\bo0|ula0|booth0|Add8~12_combout\) # ((\bo0|ula0|booth0|Add6~17_combout\ & (\bo0|regB|q\(3) $ (!\bo0|regB|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|regB|q\(2),
	datac => \bo0|ula0|booth0|Add6~17_combout\,
	datad => \bo0|ula0|booth0|Add8~12_combout\,
	combout => \bo0|ula0|booth0|Add8~13_combout\);

-- Location: LCCOMB_X12_Y10_N4
\bo0|ula0|booth0|Add10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~6_combout\ = ((\bo0|regA|q\(2) $ (\bo0|ula0|booth0|Add8~13_combout\ $ (!\bo0|ula0|booth0|Add10~3\)))) # (GND)
-- \bo0|ula0|booth0|Add10~7\ = CARRY((\bo0|regA|q\(2) & ((\bo0|ula0|booth0|Add8~13_combout\) # (!\bo0|ula0|booth0|Add10~3\))) # (!\bo0|regA|q\(2) & (\bo0|ula0|booth0|Add8~13_combout\ & !\bo0|ula0|booth0|Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(2),
	datab => \bo0|ula0|booth0|Add8~13_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add10~3\,
	combout => \bo0|ula0|booth0|Add10~6_combout\,
	cout => \bo0|ula0|booth0|Add10~7\);

-- Location: LCCOMB_X13_Y10_N16
\bo0|ula0|booth0|Add9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add9~4_combout\ = ((\bo0|ula0|booth0|Add8~13_combout\ $ (\bo0|ula0|booth0|s[11]~4_combout\ $ (!\bo0|ula0|booth0|Add9~3\)))) # (GND)
-- \bo0|ula0|booth0|Add9~5\ = CARRY((\bo0|ula0|booth0|Add8~13_combout\ & ((\bo0|ula0|booth0|s[11]~4_combout\) # (!\bo0|ula0|booth0|Add9~3\))) # (!\bo0|ula0|booth0|Add8~13_combout\ & (\bo0|ula0|booth0|s[11]~4_combout\ & !\bo0|ula0|booth0|Add9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add8~13_combout\,
	datab => \bo0|ula0|booth0|s[11]~4_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add9~3\,
	combout => \bo0|ula0|booth0|Add9~4_combout\,
	cout => \bo0|ula0|booth0|Add9~5\);

-- Location: LCCOMB_X13_Y10_N0
\bo0|ula0|booth0|Add10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~8_combout\ = (\bo0|regB|q\(3) & (!\bo0|regB|q\(4) & (\bo0|ula0|booth0|Add10~6_combout\))) # (!\bo0|regB|q\(3) & (\bo0|regB|q\(4) & ((\bo0|ula0|booth0|Add9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|regB|q\(4),
	datac => \bo0|ula0|booth0|Add10~6_combout\,
	datad => \bo0|ula0|booth0|Add9~4_combout\,
	combout => \bo0|ula0|booth0|Add10~8_combout\);

-- Location: LCCOMB_X13_Y10_N6
\bo0|ula0|booth0|Add10~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~9_combout\ = (\bo0|ula0|booth0|Add10~8_combout\) # ((\bo0|ula0|booth0|Add8~13_combout\ & (\bo0|regB|q\(3) $ (!\bo0|regB|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|regB|q\(4),
	datac => \bo0|ula0|booth0|Add8~13_combout\,
	datad => \bo0|ula0|booth0|Add10~8_combout\,
	combout => \bo0|ula0|booth0|Add10~9_combout\);

-- Location: LCCOMB_X15_Y10_N2
\bo0|ula0|booth0|Add12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~2_combout\ = (\bo0|regA|q\(1) & ((\bo0|ula0|booth0|Add10~9_combout\ & (\bo0|ula0|booth0|Add12~1\ & VCC)) # (!\bo0|ula0|booth0|Add10~9_combout\ & (!\bo0|ula0|booth0|Add12~1\)))) # (!\bo0|regA|q\(1) & 
-- ((\bo0|ula0|booth0|Add10~9_combout\ & (!\bo0|ula0|booth0|Add12~1\)) # (!\bo0|ula0|booth0|Add10~9_combout\ & ((\bo0|ula0|booth0|Add12~1\) # (GND)))))
-- \bo0|ula0|booth0|Add12~3\ = CARRY((\bo0|regA|q\(1) & (!\bo0|ula0|booth0|Add10~9_combout\ & !\bo0|ula0|booth0|Add12~1\)) # (!\bo0|regA|q\(1) & ((!\bo0|ula0|booth0|Add12~1\) # (!\bo0|ula0|booth0|Add10~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(1),
	datab => \bo0|ula0|booth0|Add10~9_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add12~1\,
	combout => \bo0|ula0|booth0|Add12~2_combout\,
	cout => \bo0|ula0|booth0|Add12~3\);

-- Location: LCCOMB_X14_Y10_N22
\bo0|ula0|booth0|Add12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~4_combout\ = (\bo0|regB|q\(4) & (((!\bo0|regB|q\(5) & \bo0|ula0|booth0|Add12~2_combout\)))) # (!\bo0|regB|q\(4) & (\bo0|ula0|booth0|Add11~2_combout\ & (\bo0|regB|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add11~2_combout\,
	datab => \bo0|regB|q\(4),
	datac => \bo0|regB|q\(5),
	datad => \bo0|ula0|booth0|Add12~2_combout\,
	combout => \bo0|ula0|booth0|Add12~4_combout\);

-- Location: LCCOMB_X13_Y9_N16
\bo0|ula0|booth0|Add12~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~5_combout\ = (\bo0|ula0|booth0|Add12~4_combout\) # ((\bo0|ula0|booth0|Add10~9_combout\ & (\bo0|regB|q\(5) $ (!\bo0|regB|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(5),
	datab => \bo0|regB|q\(4),
	datac => \bo0|ula0|booth0|Add10~9_combout\,
	datad => \bo0|ula0|booth0|Add12~4_combout\,
	combout => \bo0|ula0|booth0|Add12~5_combout\);

-- Location: LCCOMB_X14_Y9_N10
\bo0|ula0|booth0|Add14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~0_combout\ = (\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add12~5_combout\ $ (VCC))) # (!\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add12~5_combout\ & VCC))
-- \bo0|ula0|booth0|Add14~1\ = CARRY((\bo0|regA|q\(0) & \bo0|ula0|booth0|Add12~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(0),
	datab => \bo0|ula0|booth0|Add12~5_combout\,
	datad => VCC,
	combout => \bo0|ula0|booth0|Add14~0_combout\,
	cout => \bo0|ula0|booth0|Add14~1\);

-- Location: LCCOMB_X15_Y9_N6
\bo0|ula0|booth0|Add13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add13~0_combout\ = (\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add12~5_combout\ $ (VCC))) # (!\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add12~5_combout\ & VCC))
-- \bo0|ula0|booth0|Add13~1\ = CARRY((\bo0|regA|q\(0) & \bo0|ula0|booth0|Add12~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(0),
	datab => \bo0|ula0|booth0|Add12~5_combout\,
	datad => VCC,
	combout => \bo0|ula0|booth0|Add13~0_combout\,
	cout => \bo0|ula0|booth0|Add13~1\);

-- Location: LCCOMB_X13_Y9_N22
\bo0|ula0|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux1~0_combout\ = (\bo0|regB|q\(6) & (!\bo0|regB|q\(5) & ((\bo0|ula0|booth0|Add13~0_combout\)))) # (!\bo0|regB|q\(6) & (\bo0|regB|q\(5) & (\bo0|ula0|booth0|Add14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(6),
	datab => \bo0|regB|q\(5),
	datac => \bo0|ula0|booth0|Add14~0_combout\,
	datad => \bo0|ula0|booth0|Add13~0_combout\,
	combout => \bo0|ula0|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y9_N28
\bo0|ula0|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux1~1_combout\ = (\bo0|regOp|q\(0) & (((\bo0|ula0|Mux1~0_combout\)))) # (!\bo0|regOp|q\(0) & (\bo0|regA|q\(6) $ ((\bo0|regB|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(0),
	datab => \bo0|regA|q\(6),
	datac => \bo0|regB|q\(6),
	datad => \bo0|ula0|Mux1~0_combout\,
	combout => \bo0|ula0|Mux1~1_combout\);

-- Location: LCCOMB_X13_Y9_N20
\bo0|ula0|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux1~3_combout\ = (\bo0|ula0|Equal4~0_combout\ & ((\bo0|ula0|Mux1~1_combout\) # ((\bo0|ula0|Mux1~2_combout\ & \bo0|ula0|booth0|Add12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux1~2_combout\,
	datab => \bo0|ula0|Equal4~0_combout\,
	datac => \bo0|ula0|booth0|Add12~5_combout\,
	datad => \bo0|ula0|Mux1~1_combout\,
	combout => \bo0|ula0|Mux1~3_combout\);

-- Location: LCCOMB_X19_Y9_N8
\bo0|ula0|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux1~6_combout\ = (\bo0|ula0|Mux1~3_combout\) # ((\bo0|ula0|Mux1~5_combout\ & !\bo0|regOp|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo0|ula0|Mux1~5_combout\,
	datac => \bo0|regOp|q\(3),
	datad => \bo0|ula0|Mux1~3_combout\,
	combout => \bo0|ula0|Mux1~6_combout\);

-- Location: LCFF_X19_Y9_N9
\bo0|regS_low|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|Mux1~6_combout\,
	ena => \bc0|state.carrega_saida~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_low|q\(6));

-- Location: LCCOMB_X10_Y11_N14
\bo0|ula0|booth0|Add6~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~18_combout\ = (\bo0|ula0|booth0|Add4~42_combout\ & ((\bo0|regA|q\(5) & (\bo0|ula0|booth0|Add6~15\ & VCC)) # (!\bo0|regA|q\(5) & (!\bo0|ula0|booth0|Add6~15\)))) # (!\bo0|ula0|booth0|Add4~42_combout\ & ((\bo0|regA|q\(5) & 
-- (!\bo0|ula0|booth0|Add6~15\)) # (!\bo0|regA|q\(5) & ((\bo0|ula0|booth0|Add6~15\) # (GND)))))
-- \bo0|ula0|booth0|Add6~19\ = CARRY((\bo0|ula0|booth0|Add4~42_combout\ & (!\bo0|regA|q\(5) & !\bo0|ula0|booth0|Add6~15\)) # (!\bo0|ula0|booth0|Add4~42_combout\ & ((!\bo0|ula0|booth0|Add6~15\) # (!\bo0|regA|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add4~42_combout\,
	datab => \bo0|regA|q\(5),
	datad => VCC,
	cin => \bo0|ula0|booth0|Add6~15\,
	combout => \bo0|ula0|booth0|Add6~18_combout\,
	cout => \bo0|ula0|booth0|Add6~19\);

-- Location: LCCOMB_X12_Y12_N20
\bo0|mem|rom~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|mem|rom~17_combout\ = (\bo0|mem|rom~16_combout\ & (!\bo0|regPC|soma\(1) & (!\bo0|regPC|soma\(3) & !\bo0|regPC|soma\(2)))) # (!\bo0|mem|rom~16_combout\ & (\bo0|regPC|soma\(1) & (\bo0|regPC|soma\(3) & \bo0|regPC|soma\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|mem|rom~16_combout\,
	datab => \bo0|regPC|soma\(1),
	datac => \bo0|regPC|soma\(3),
	datad => \bo0|regPC|soma\(2),
	combout => \bo0|mem|rom~17_combout\);

-- Location: LCFF_X6_Y11_N15
\bo0|regA|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo0|mem|rom~17_combout\,
	sload => VCC,
	ena => \bc0|state.carrega_A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regA|q\(7));

-- Location: LCCOMB_X6_Y11_N14
\bo0|ula0|booth0|s[16]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|s[16]~14_combout\ = \bo0|ula0|booth0|s[15]~13\ $ (!\bo0|regA|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \bo0|regA|q\(7),
	cin => \bo0|ula0|booth0|s[15]~13\,
	combout => \bo0|ula0|booth0|s[16]~14_combout\);

-- Location: LCCOMB_X7_Y11_N18
\bo0|ula0|booth0|p1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|p1~6_combout\ = (\bo0|regB|q\(0) & \bo0|ula0|booth0|s[16]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo0|regB|q\(0),
	datad => \bo0|ula0|booth0|s[16]~14_combout\,
	combout => \bo0|ula0|booth0|p1~6_combout\);

-- Location: LCCOMB_X7_Y11_N12
\bo0|ula0|booth0|Add4~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~31_combout\ = ((\bo0|regA|q\(6) $ (\bo0|ula0|booth0|p1~6_combout\ $ (!\bo0|ula0|booth0|Add4~29\)))) # (GND)
-- \bo0|ula0|booth0|Add4~32\ = CARRY((\bo0|regA|q\(6) & ((\bo0|ula0|booth0|p1~6_combout\) # (!\bo0|ula0|booth0|Add4~29\))) # (!\bo0|regA|q\(6) & (\bo0|ula0|booth0|p1~6_combout\ & !\bo0|ula0|booth0|Add4~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(6),
	datab => \bo0|ula0|booth0|p1~6_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add4~29\,
	combout => \bo0|ula0|booth0|Add4~31_combout\,
	cout => \bo0|ula0|booth0|Add4~32\);

-- Location: LCCOMB_X8_Y11_N18
\bo0|ula0|booth0|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add3~12_combout\ = ((\bo0|ula0|booth0|s[15]~12_combout\ $ (\bo0|ula0|booth0|p1~6_combout\ $ (!\bo0|ula0|booth0|Add3~11\)))) # (GND)
-- \bo0|ula0|booth0|Add3~13\ = CARRY((\bo0|ula0|booth0|s[15]~12_combout\ & ((\bo0|ula0|booth0|p1~6_combout\) # (!\bo0|ula0|booth0|Add3~11\))) # (!\bo0|ula0|booth0|s[15]~12_combout\ & (\bo0|ula0|booth0|p1~6_combout\ & !\bo0|ula0|booth0|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[15]~12_combout\,
	datab => \bo0|ula0|booth0|p1~6_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add3~11\,
	combout => \bo0|ula0|booth0|Add3~12_combout\,
	cout => \bo0|ula0|booth0|Add3~13\);

-- Location: LCCOMB_X9_Y11_N20
\bo0|ula0|booth0|Add4~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~33_combout\ = (\bo0|regB|q\(1) & (!\bo0|regB|q\(0) & ((\bo0|ula0|booth0|Add3~12_combout\)))) # (!\bo0|regB|q\(1) & (\bo0|regB|q\(0) & (\bo0|ula0|booth0|Add4~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(1),
	datab => \bo0|regB|q\(0),
	datac => \bo0|ula0|booth0|Add4~31_combout\,
	datad => \bo0|ula0|booth0|Add3~12_combout\,
	combout => \bo0|ula0|booth0|Add4~33_combout\);

-- Location: LCCOMB_X9_Y11_N30
\bo0|ula0|booth0|Add4~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~42_combout\ = (\bo0|ula0|booth0|Add4~33_combout\) # ((\bo0|ula0|booth0|s[16]~14_combout\ & (\bo0|regB|q\(1) & \bo0|regB|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[16]~14_combout\,
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|Add4~33_combout\,
	datad => \bo0|regB|q\(0),
	combout => \bo0|ula0|booth0|Add4~42_combout\);

-- Location: LCCOMB_X9_Y11_N10
\bo0|ula0|booth0|Add5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add5~10_combout\ = (\bo0|ula0|booth0|s[14]~10_combout\ & ((\bo0|ula0|booth0|Add4~42_combout\ & (\bo0|ula0|booth0|Add5~9\ & VCC)) # (!\bo0|ula0|booth0|Add4~42_combout\ & (!\bo0|ula0|booth0|Add5~9\)))) # (!\bo0|ula0|booth0|s[14]~10_combout\ 
-- & ((\bo0|ula0|booth0|Add4~42_combout\ & (!\bo0|ula0|booth0|Add5~9\)) # (!\bo0|ula0|booth0|Add4~42_combout\ & ((\bo0|ula0|booth0|Add5~9\) # (GND)))))
-- \bo0|ula0|booth0|Add5~11\ = CARRY((\bo0|ula0|booth0|s[14]~10_combout\ & (!\bo0|ula0|booth0|Add4~42_combout\ & !\bo0|ula0|booth0|Add5~9\)) # (!\bo0|ula0|booth0|s[14]~10_combout\ & ((!\bo0|ula0|booth0|Add5~9\) # (!\bo0|ula0|booth0|Add4~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[14]~10_combout\,
	datab => \bo0|ula0|booth0|Add4~42_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add5~9\,
	combout => \bo0|ula0|booth0|Add5~10_combout\,
	cout => \bo0|ula0|booth0|Add5~11\);

-- Location: LCCOMB_X10_Y11_N24
\bo0|ula0|booth0|Add6~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~20_combout\ = (\bo0|regB|q\(2) & (!\bo0|regB|q\(1) & ((\bo0|ula0|booth0|Add5~10_combout\)))) # (!\bo0|regB|q\(2) & (\bo0|regB|q\(1) & (\bo0|ula0|booth0|Add6~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|Add6~18_combout\,
	datad => \bo0|ula0|booth0|Add5~10_combout\,
	combout => \bo0|ula0|booth0|Add6~20_combout\);

-- Location: LCCOMB_X10_Y11_N2
\bo0|ula0|booth0|Add6~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~21_combout\ = (\bo0|ula0|booth0|Add6~20_combout\) # ((\bo0|ula0|booth0|Add4~42_combout\ & (\bo0|regB|q\(2) $ (!\bo0|regB|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|Add6~20_combout\,
	datad => \bo0|ula0|booth0|Add4~42_combout\,
	combout => \bo0|ula0|booth0|Add6~21_combout\);

-- Location: LCCOMB_X10_Y10_N22
\bo0|ula0|booth0|Add7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add7~8_combout\ = ((\bo0|ula0|booth0|s[13]~8_combout\ $ (\bo0|ula0|booth0|Add6~21_combout\ $ (!\bo0|ula0|booth0|Add7~7\)))) # (GND)
-- \bo0|ula0|booth0|Add7~9\ = CARRY((\bo0|ula0|booth0|s[13]~8_combout\ & ((\bo0|ula0|booth0|Add6~21_combout\) # (!\bo0|ula0|booth0|Add7~7\))) # (!\bo0|ula0|booth0|s[13]~8_combout\ & (\bo0|ula0|booth0|Add6~21_combout\ & !\bo0|ula0|booth0|Add7~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[13]~8_combout\,
	datab => \bo0|ula0|booth0|Add6~21_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add7~7\,
	combout => \bo0|ula0|booth0|Add7~8_combout\,
	cout => \bo0|ula0|booth0|Add7~9\);

-- Location: LCCOMB_X10_Y10_N4
\bo0|ula0|booth0|Add8~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~16_combout\ = (\bo0|regB|q\(2) & (\bo0|ula0|booth0|Add8~14_combout\ & (!\bo0|regB|q\(3)))) # (!\bo0|regB|q\(2) & (((\bo0|regB|q\(3) & \bo0|ula0|booth0|Add7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add8~14_combout\,
	datab => \bo0|regB|q\(2),
	datac => \bo0|regB|q\(3),
	datad => \bo0|ula0|booth0|Add7~8_combout\,
	combout => \bo0|ula0|booth0|Add8~16_combout\);

-- Location: LCCOMB_X10_Y10_N2
\bo0|ula0|booth0|Add8~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~17_combout\ = (\bo0|ula0|booth0|Add8~16_combout\) # ((\bo0|ula0|booth0|Add6~21_combout\ & (\bo0|regB|q\(2) $ (!\bo0|regB|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|regB|q\(3),
	datac => \bo0|ula0|booth0|Add8~16_combout\,
	datad => \bo0|ula0|booth0|Add6~21_combout\,
	combout => \bo0|ula0|booth0|Add8~17_combout\);

-- Location: LCCOMB_X13_Y10_N18
\bo0|ula0|booth0|Add9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add9~6_combout\ = (\bo0|ula0|booth0|s[12]~6_combout\ & ((\bo0|ula0|booth0|Add8~17_combout\ & (\bo0|ula0|booth0|Add9~5\ & VCC)) # (!\bo0|ula0|booth0|Add8~17_combout\ & (!\bo0|ula0|booth0|Add9~5\)))) # (!\bo0|ula0|booth0|s[12]~6_combout\ & 
-- ((\bo0|ula0|booth0|Add8~17_combout\ & (!\bo0|ula0|booth0|Add9~5\)) # (!\bo0|ula0|booth0|Add8~17_combout\ & ((\bo0|ula0|booth0|Add9~5\) # (GND)))))
-- \bo0|ula0|booth0|Add9~7\ = CARRY((\bo0|ula0|booth0|s[12]~6_combout\ & (!\bo0|ula0|booth0|Add8~17_combout\ & !\bo0|ula0|booth0|Add9~5\)) # (!\bo0|ula0|booth0|s[12]~6_combout\ & ((!\bo0|ula0|booth0|Add9~5\) # (!\bo0|ula0|booth0|Add8~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[12]~6_combout\,
	datab => \bo0|ula0|booth0|Add8~17_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add9~5\,
	combout => \bo0|ula0|booth0|Add9~6_combout\,
	cout => \bo0|ula0|booth0|Add9~7\);

-- Location: LCCOMB_X12_Y10_N24
\bo0|ula0|booth0|Add10~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~12_combout\ = (\bo0|regB|q\(3) & (\bo0|ula0|booth0|Add10~10_combout\ & (!\bo0|regB|q\(4)))) # (!\bo0|regB|q\(3) & (((\bo0|regB|q\(4) & \bo0|ula0|booth0|Add9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add10~10_combout\,
	datab => \bo0|regB|q\(3),
	datac => \bo0|regB|q\(4),
	datad => \bo0|ula0|booth0|Add9~6_combout\,
	combout => \bo0|ula0|booth0|Add10~12_combout\);

-- Location: LCCOMB_X12_Y10_N18
\bo0|ula0|booth0|Add10~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~13_combout\ = (\bo0|ula0|booth0|Add10~12_combout\) # ((\bo0|ula0|booth0|Add8~17_combout\ & (\bo0|regB|q\(4) $ (!\bo0|regB|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(4),
	datab => \bo0|regB|q\(3),
	datac => \bo0|ula0|booth0|Add10~12_combout\,
	datad => \bo0|ula0|booth0|Add8~17_combout\,
	combout => \bo0|ula0|booth0|Add10~13_combout\);

-- Location: LCCOMB_X15_Y10_N4
\bo0|ula0|booth0|Add12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~6_combout\ = ((\bo0|regA|q\(2) $ (\bo0|ula0|booth0|Add10~13_combout\ $ (!\bo0|ula0|booth0|Add12~3\)))) # (GND)
-- \bo0|ula0|booth0|Add12~7\ = CARRY((\bo0|regA|q\(2) & ((\bo0|ula0|booth0|Add10~13_combout\) # (!\bo0|ula0|booth0|Add12~3\))) # (!\bo0|regA|q\(2) & (\bo0|ula0|booth0|Add10~13_combout\ & !\bo0|ula0|booth0|Add12~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(2),
	datab => \bo0|ula0|booth0|Add10~13_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add12~3\,
	combout => \bo0|ula0|booth0|Add12~6_combout\,
	cout => \bo0|ula0|booth0|Add12~7\);

-- Location: LCCOMB_X14_Y10_N8
\bo0|ula0|booth0|Add11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add11~4_combout\ = ((\bo0|ula0|booth0|s[11]~4_combout\ $ (\bo0|ula0|booth0|Add10~13_combout\ $ (!\bo0|ula0|booth0|Add11~3\)))) # (GND)
-- \bo0|ula0|booth0|Add11~5\ = CARRY((\bo0|ula0|booth0|s[11]~4_combout\ & ((\bo0|ula0|booth0|Add10~13_combout\) # (!\bo0|ula0|booth0|Add11~3\))) # (!\bo0|ula0|booth0|s[11]~4_combout\ & (\bo0|ula0|booth0|Add10~13_combout\ & !\bo0|ula0|booth0|Add11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[11]~4_combout\,
	datab => \bo0|ula0|booth0|Add10~13_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add11~3\,
	combout => \bo0|ula0|booth0|Add11~4_combout\,
	cout => \bo0|ula0|booth0|Add11~5\);

-- Location: LCCOMB_X15_Y10_N20
\bo0|ula0|booth0|Add12~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~8_combout\ = (\bo0|regB|q\(5) & (!\bo0|regB|q\(4) & ((\bo0|ula0|booth0|Add11~4_combout\)))) # (!\bo0|regB|q\(5) & (\bo0|regB|q\(4) & (\bo0|ula0|booth0|Add12~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(5),
	datab => \bo0|regB|q\(4),
	datac => \bo0|ula0|booth0|Add12~6_combout\,
	datad => \bo0|ula0|booth0|Add11~4_combout\,
	combout => \bo0|ula0|booth0|Add12~8_combout\);

-- Location: LCCOMB_X15_Y10_N26
\bo0|ula0|booth0|Add12~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~9_combout\ = (\bo0|ula0|booth0|Add12~8_combout\) # ((\bo0|ula0|booth0|Add10~13_combout\ & (\bo0|regB|q\(5) $ (!\bo0|regB|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(5),
	datab => \bo0|regB|q\(4),
	datac => \bo0|ula0|booth0|Add12~8_combout\,
	datad => \bo0|ula0|booth0|Add10~13_combout\,
	combout => \bo0|ula0|booth0|Add12~9_combout\);

-- Location: LCCOMB_X14_Y9_N12
\bo0|ula0|booth0|Add14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~2_combout\ = (\bo0|ula0|booth0|Add12~9_combout\ & ((\bo0|regA|q\(1) & (\bo0|ula0|booth0|Add14~1\ & VCC)) # (!\bo0|regA|q\(1) & (!\bo0|ula0|booth0|Add14~1\)))) # (!\bo0|ula0|booth0|Add12~9_combout\ & ((\bo0|regA|q\(1) & 
-- (!\bo0|ula0|booth0|Add14~1\)) # (!\bo0|regA|q\(1) & ((\bo0|ula0|booth0|Add14~1\) # (GND)))))
-- \bo0|ula0|booth0|Add14~3\ = CARRY((\bo0|ula0|booth0|Add12~9_combout\ & (!\bo0|regA|q\(1) & !\bo0|ula0|booth0|Add14~1\)) # (!\bo0|ula0|booth0|Add12~9_combout\ & ((!\bo0|ula0|booth0|Add14~1\) # (!\bo0|regA|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add12~9_combout\,
	datab => \bo0|regA|q\(1),
	datad => VCC,
	cin => \bo0|ula0|booth0|Add14~1\,
	combout => \bo0|ula0|booth0|Add14~2_combout\,
	cout => \bo0|ula0|booth0|Add14~3\);

-- Location: LCCOMB_X15_Y9_N8
\bo0|ula0|booth0|Add13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add13~2_combout\ = (\bo0|ula0|booth0|s[10]~2_combout\ & ((\bo0|ula0|booth0|Add12~9_combout\ & (\bo0|ula0|booth0|Add13~1\ & VCC)) # (!\bo0|ula0|booth0|Add12~9_combout\ & (!\bo0|ula0|booth0|Add13~1\)))) # (!\bo0|ula0|booth0|s[10]~2_combout\ 
-- & ((\bo0|ula0|booth0|Add12~9_combout\ & (!\bo0|ula0|booth0|Add13~1\)) # (!\bo0|ula0|booth0|Add12~9_combout\ & ((\bo0|ula0|booth0|Add13~1\) # (GND)))))
-- \bo0|ula0|booth0|Add13~3\ = CARRY((\bo0|ula0|booth0|s[10]~2_combout\ & (!\bo0|ula0|booth0|Add12~9_combout\ & !\bo0|ula0|booth0|Add13~1\)) # (!\bo0|ula0|booth0|s[10]~2_combout\ & ((!\bo0|ula0|booth0|Add13~1\) # (!\bo0|ula0|booth0|Add12~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[10]~2_combout\,
	datab => \bo0|ula0|booth0|Add12~9_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add13~1\,
	combout => \bo0|ula0|booth0|Add13~2_combout\,
	cout => \bo0|ula0|booth0|Add13~3\);

-- Location: LCCOMB_X13_Y9_N18
\bo0|ula0|booth0|Add14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~4_combout\ = (\bo0|regB|q\(5) & (!\bo0|regB|q\(6) & (\bo0|ula0|booth0|Add14~2_combout\))) # (!\bo0|regB|q\(5) & (\bo0|regB|q\(6) & ((\bo0|ula0|booth0|Add13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(5),
	datab => \bo0|regB|q\(6),
	datac => \bo0|ula0|booth0|Add14~2_combout\,
	datad => \bo0|ula0|booth0|Add13~2_combout\,
	combout => \bo0|ula0|booth0|Add14~4_combout\);

-- Location: LCCOMB_X13_Y9_N24
\bo0|ula0|booth0|Add14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~5_combout\ = (\bo0|ula0|booth0|Add14~4_combout\) # ((\bo0|ula0|booth0|Add12~9_combout\ & (\bo0|regB|q\(6) $ (!\bo0|regB|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(6),
	datab => \bo0|regB|q\(5),
	datac => \bo0|ula0|booth0|Add12~9_combout\,
	datad => \bo0|ula0|booth0|Add14~4_combout\,
	combout => \bo0|ula0|booth0|Add14~5_combout\);

-- Location: LCFF_X12_Y12_N21
\bo0|regB|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|mem|rom~17_combout\,
	ena => \bc0|state.carrega_B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regB|q\(7));

-- Location: LCCOMB_X12_Y11_N14
\bo0|ula0|somasub0|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add0~23_combout\ = (\bo0|regOp|q\(0) & (\bc0|Equal0~0_combout\ $ (((\bo0|regB|q\(7) & !\bo0|ula0|soma_temp~0_combout\))))) # (!\bo0|regOp|q\(0) & (((\bo0|regB|q\(7) & !\bo0|ula0|soma_temp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(0),
	datab => \bc0|Equal0~0_combout\,
	datac => \bo0|regB|q\(7),
	datad => \bo0|ula0|soma_temp~0_combout\,
	combout => \bo0|ula0|somasub0|Add0~23_combout\);

-- Location: LCCOMB_X12_Y11_N28
\bo0|ula0|somasub0|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add0~17_combout\ = (\bo0|regB|q\(5) & (\bo0|ula0|soma_temp~0_combout\ $ (((\bo0|regOp|q\(0) & \bc0|Equal0~0_combout\))))) # (!\bo0|regB|q\(5) & (((!\bc0|Equal0~0_combout\) # (!\bo0|regOp|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(5),
	datab => \bo0|ula0|soma_temp~0_combout\,
	datac => \bo0|regOp|q\(0),
	datad => \bc0|Equal0~0_combout\,
	combout => \bo0|ula0|somasub0|Add0~17_combout\);

-- Location: LCCOMB_X13_Y11_N28
\bo0|ula0|somasub0|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add0~24_combout\ = \bo0|regA|q\(7) $ (\bo0|ula0|somasub0|Add0~22\ $ (\bo0|ula0|somasub0|Add0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo0|regA|q\(7),
	datad => \bo0|ula0|somasub0|Add0~23_combout\,
	cin => \bo0|ula0|somasub0|Add0~22\,
	combout => \bo0|ula0|somasub0|Add0~24_combout\);

-- Location: LCCOMB_X13_Y12_N0
\bo0|ula0|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux0~3_combout\ = (\bo0|regOp|q\(0) & (((\bo0|regOp|q\(1))) # (!\bo0|regA|q\(7)))) # (!\bo0|regOp|q\(0) & (((!\bo0|regOp|q\(1) & \bo0|ula0|somasub0|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(0),
	datab => \bo0|regA|q\(7),
	datac => \bo0|regOp|q\(1),
	datad => \bo0|ula0|somasub0|Add0~24_combout\,
	combout => \bo0|ula0|Mux0~3_combout\);

-- Location: LCCOMB_X13_Y12_N30
\bo0|ula0|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux0~4_combout\ = (\bo0|regB|q\(7) & ((\bo0|ula0|Mux0~3_combout\) # ((\bo0|regOp|q\(1) & \bo0|regA|q\(7))))) # (!\bo0|regB|q\(7) & (\bo0|ula0|Mux0~3_combout\ & ((\bo0|regA|q\(7)) # (!\bo0|regOp|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(7),
	datab => \bo0|ula0|Mux0~3_combout\,
	datac => \bo0|regOp|q\(1),
	datad => \bo0|regA|q\(7),
	combout => \bo0|ula0|Mux0~4_combout\);

-- Location: LCCOMB_X13_Y12_N14
\bo0|ula0|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux0~5_combout\ = (\bo0|regOp|q\(2) & (((\bo0|ula0|Mux0~4_combout\)))) # (!\bo0|regOp|q\(2) & (\bo0|ula0|somasub0|Add0~24_combout\ & ((!\bc0|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|somasub0|Add0~24_combout\,
	datab => \bo0|ula0|Mux0~4_combout\,
	datac => \bc0|Equal0~1_combout\,
	datad => \bo0|regOp|q\(2),
	combout => \bo0|ula0|Mux0~5_combout\);

-- Location: LCCOMB_X13_Y12_N6
\bo0|ula0|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux0~2_combout\ = (!\bo0|regOp|q\(0) & (\bo0|ula0|Equal4~0_combout\ & (\bo0|regA|q\(7) $ (\bo0|regB|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(0),
	datab => \bo0|regA|q\(7),
	datac => \bo0|regB|q\(7),
	datad => \bo0|ula0|Equal4~0_combout\,
	combout => \bo0|ula0|Mux0~2_combout\);

-- Location: LCCOMB_X13_Y12_N8
\bo0|ula0|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux0~6_combout\ = (\bo0|ula0|Mux0~2_combout\) # ((!\bo0|regOp|q\(3) & \bo0|ula0|Mux0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(3),
	datac => \bo0|ula0|Mux0~5_combout\,
	datad => \bo0|ula0|Mux0~2_combout\,
	combout => \bo0|ula0|Mux0~6_combout\);

-- Location: LCCOMB_X19_Y9_N30
\bo0|ula0|booth0|Equal14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Equal14~0_combout\ = (!\bo0|regB|q\(6) & \bo0|regB|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo0|regB|q\(6),
	datad => \bo0|regB|q\(7),
	combout => \bo0|ula0|booth0|Equal14~0_combout\);

-- Location: LCCOMB_X17_Y9_N4
\bo0|ula0|booth0|Add16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add16~0_combout\ = (\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add14~5_combout\ $ (VCC))) # (!\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add14~5_combout\ & VCC))
-- \bo0|ula0|booth0|Add16~1\ = CARRY((\bo0|regA|q\(0) & \bo0|ula0|booth0|Add14~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(0),
	datab => \bo0|ula0|booth0|Add14~5_combout\,
	datad => VCC,
	combout => \bo0|ula0|booth0|Add16~0_combout\,
	cout => \bo0|ula0|booth0|Add16~1\);

-- Location: LCCOMB_X18_Y9_N4
\bo0|ula0|booth0|Add15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add15~0_combout\ = (\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add14~5_combout\ $ (VCC))) # (!\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add14~5_combout\ & VCC))
-- \bo0|ula0|booth0|Add15~1\ = CARRY((\bo0|regA|q\(0) & \bo0|ula0|booth0|Add14~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(0),
	datab => \bo0|ula0|booth0|Add14~5_combout\,
	datad => VCC,
	combout => \bo0|ula0|booth0|Add15~0_combout\,
	cout => \bo0|ula0|booth0|Add15~1\);

-- Location: LCCOMB_X17_Y9_N0
\bo0|ula0|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux0~1_combout\ = (\bo0|ula0|Mux0~0_combout\ & ((\bo0|ula0|booth0|Equal14~0_combout\ & ((\bo0|ula0|booth0|Add15~0_combout\))) # (!\bo0|ula0|booth0|Equal14~0_combout\ & (\bo0|ula0|booth0|Add16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux0~0_combout\,
	datab => \bo0|ula0|booth0|Equal14~0_combout\,
	datac => \bo0|ula0|booth0|Add16~0_combout\,
	datad => \bo0|ula0|booth0|Add15~0_combout\,
	combout => \bo0|ula0|Mux0~1_combout\);

-- Location: LCCOMB_X17_Y9_N20
\bo0|ula0|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux0~8_combout\ = (\bo0|ula0|Mux0~6_combout\) # ((\bo0|ula0|Mux0~1_combout\) # ((\bo0|ula0|Mux0~7_combout\ & \bo0|ula0|booth0|Add14~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux0~7_combout\,
	datab => \bo0|ula0|booth0|Add14~5_combout\,
	datac => \bo0|ula0|Mux0~6_combout\,
	datad => \bo0|ula0|Mux0~1_combout\,
	combout => \bo0|ula0|Mux0~8_combout\);

-- Location: LCFF_X17_Y9_N21
\bo0|regS_low|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|Mux0~8_combout\,
	ena => \bc0|state.carrega_saida~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_low|q\(7));

-- Location: LCCOMB_X13_Y12_N12
\bo0|ula0|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Equal4~1_combout\ = (\bo0|regOp|q\(3) & (!\bo0|regOp|q\(2) & (!\bo0|regOp|q\(1) & \bo0|regOp|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(3),
	datab => \bo0|regOp|q\(2),
	datac => \bo0|regOp|q\(1),
	datad => \bo0|regOp|q\(0),
	combout => \bo0|ula0|Equal4~1_combout\);

-- Location: LCCOMB_X19_Y9_N24
\bo0|ula0|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux0~7_combout\ = (\bo0|ula0|Equal4~1_combout\ & (\bo0|regB|q\(7) $ (!\bo0|regB|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(7),
	datac => \bo0|regB|q\(6),
	datad => \bo0|ula0|Equal4~1_combout\,
	combout => \bo0|ula0|Mux0~7_combout\);

-- Location: LCCOMB_X10_Y11_N16
\bo0|ula0|booth0|Add6~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~22_combout\ = ((\bo0|ula0|booth0|Add4~43_combout\ $ (\bo0|regA|q\(6) $ (!\bo0|ula0|booth0|Add6~19\)))) # (GND)
-- \bo0|ula0|booth0|Add6~23\ = CARRY((\bo0|ula0|booth0|Add4~43_combout\ & ((\bo0|regA|q\(6)) # (!\bo0|ula0|booth0|Add6~19\))) # (!\bo0|ula0|booth0|Add4~43_combout\ & (\bo0|regA|q\(6) & !\bo0|ula0|booth0|Add6~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add4~43_combout\,
	datab => \bo0|regA|q\(6),
	datad => VCC,
	cin => \bo0|ula0|booth0|Add6~19\,
	combout => \bo0|ula0|booth0|Add6~22_combout\,
	cout => \bo0|ula0|booth0|Add6~23\);

-- Location: LCCOMB_X7_Y11_N14
\bo0|ula0|booth0|Add4~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~34_combout\ = \bo0|regA|q\(7) $ (\bo0|ula0|booth0|Add4~32\ $ (\bo0|ula0|booth0|p1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(7),
	datad => \bo0|ula0|booth0|p1~6_combout\,
	cin => \bo0|ula0|booth0|Add4~32\,
	combout => \bo0|ula0|booth0|Add4~34_combout\);

-- Location: LCCOMB_X8_Y11_N20
\bo0|ula0|booth0|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add3~14_combout\ = \bo0|ula0|booth0|s[16]~14_combout\ $ (\bo0|ula0|booth0|Add3~13\ $ (\bo0|ula0|booth0|p1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo0|ula0|booth0|s[16]~14_combout\,
	datad => \bo0|ula0|booth0|p1~6_combout\,
	cin => \bo0|ula0|booth0|Add3~13\,
	combout => \bo0|ula0|booth0|Add3~14_combout\);

-- Location: LCCOMB_X7_Y11_N28
\bo0|ula0|booth0|Add4~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~36_combout\ = (\bo0|regB|q\(0) & (!\bo0|regB|q\(1) & (\bo0|ula0|booth0|Add4~34_combout\))) # (!\bo0|regB|q\(0) & (\bo0|regB|q\(1) & ((\bo0|ula0|booth0|Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(0),
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|Add4~34_combout\,
	datad => \bo0|ula0|booth0|Add3~14_combout\,
	combout => \bo0|ula0|booth0|Add4~36_combout\);

-- Location: LCCOMB_X7_Y11_N22
\bo0|ula0|booth0|Add4~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~43_combout\ = (\bo0|ula0|booth0|Add4~36_combout\) # ((\bo0|ula0|booth0|s[16]~14_combout\ & (\bo0|regB|q\(1) & \bo0|regB|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[16]~14_combout\,
	datab => \bo0|regB|q\(1),
	datac => \bo0|regB|q\(0),
	datad => \bo0|ula0|booth0|Add4~36_combout\,
	combout => \bo0|ula0|booth0|Add4~43_combout\);

-- Location: LCCOMB_X9_Y11_N12
\bo0|ula0|booth0|Add5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add5~12_combout\ = ((\bo0|ula0|booth0|s[15]~12_combout\ $ (\bo0|ula0|booth0|Add4~43_combout\ $ (!\bo0|ula0|booth0|Add5~11\)))) # (GND)
-- \bo0|ula0|booth0|Add5~13\ = CARRY((\bo0|ula0|booth0|s[15]~12_combout\ & ((\bo0|ula0|booth0|Add4~43_combout\) # (!\bo0|ula0|booth0|Add5~11\))) # (!\bo0|ula0|booth0|s[15]~12_combout\ & (\bo0|ula0|booth0|Add4~43_combout\ & !\bo0|ula0|booth0|Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[15]~12_combout\,
	datab => \bo0|ula0|booth0|Add4~43_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add5~11\,
	combout => \bo0|ula0|booth0|Add5~12_combout\,
	cout => \bo0|ula0|booth0|Add5~13\);

-- Location: LCCOMB_X10_Y11_N28
\bo0|ula0|booth0|Add6~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~24_combout\ = (\bo0|regB|q\(2) & (!\bo0|regB|q\(1) & ((\bo0|ula0|booth0|Add5~12_combout\)))) # (!\bo0|regB|q\(2) & (\bo0|regB|q\(1) & (\bo0|ula0|booth0|Add6~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|Add6~22_combout\,
	datad => \bo0|ula0|booth0|Add5~12_combout\,
	combout => \bo0|ula0|booth0|Add6~24_combout\);

-- Location: LCCOMB_X10_Y11_N26
\bo0|ula0|booth0|Add6~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~25_combout\ = (\bo0|ula0|booth0|Add6~24_combout\) # ((\bo0|ula0|booth0|Add4~43_combout\ & (\bo0|regB|q\(2) $ (!\bo0|regB|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add4~43_combout\,
	datab => \bo0|regB|q\(2),
	datac => \bo0|regB|q\(1),
	datad => \bo0|ula0|booth0|Add6~24_combout\,
	combout => \bo0|ula0|booth0|Add6~25_combout\);

-- Location: LCCOMB_X10_Y10_N24
\bo0|ula0|booth0|Add7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add7~10_combout\ = (\bo0|ula0|booth0|s[14]~10_combout\ & ((\bo0|ula0|booth0|Add6~25_combout\ & (\bo0|ula0|booth0|Add7~9\ & VCC)) # (!\bo0|ula0|booth0|Add6~25_combout\ & (!\bo0|ula0|booth0|Add7~9\)))) # (!\bo0|ula0|booth0|s[14]~10_combout\ 
-- & ((\bo0|ula0|booth0|Add6~25_combout\ & (!\bo0|ula0|booth0|Add7~9\)) # (!\bo0|ula0|booth0|Add6~25_combout\ & ((\bo0|ula0|booth0|Add7~9\) # (GND)))))
-- \bo0|ula0|booth0|Add7~11\ = CARRY((\bo0|ula0|booth0|s[14]~10_combout\ & (!\bo0|ula0|booth0|Add6~25_combout\ & !\bo0|ula0|booth0|Add7~9\)) # (!\bo0|ula0|booth0|s[14]~10_combout\ & ((!\bo0|ula0|booth0|Add7~9\) # (!\bo0|ula0|booth0|Add6~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[14]~10_combout\,
	datab => \bo0|ula0|booth0|Add6~25_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add7~9\,
	combout => \bo0|ula0|booth0|Add7~10_combout\,
	cout => \bo0|ula0|booth0|Add7~11\);

-- Location: LCCOMB_X9_Y10_N14
\bo0|ula0|booth0|Add8~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~18_combout\ = (\bo0|ula0|booth0|Add6~25_combout\ & ((\bo0|regA|q\(5) & (\bo0|ula0|booth0|Add8~15\ & VCC)) # (!\bo0|regA|q\(5) & (!\bo0|ula0|booth0|Add8~15\)))) # (!\bo0|ula0|booth0|Add6~25_combout\ & ((\bo0|regA|q\(5) & 
-- (!\bo0|ula0|booth0|Add8~15\)) # (!\bo0|regA|q\(5) & ((\bo0|ula0|booth0|Add8~15\) # (GND)))))
-- \bo0|ula0|booth0|Add8~19\ = CARRY((\bo0|ula0|booth0|Add6~25_combout\ & (!\bo0|regA|q\(5) & !\bo0|ula0|booth0|Add8~15\)) # (!\bo0|ula0|booth0|Add6~25_combout\ & ((!\bo0|ula0|booth0|Add8~15\) # (!\bo0|regA|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add6~25_combout\,
	datab => \bo0|regA|q\(5),
	datad => VCC,
	cin => \bo0|ula0|booth0|Add8~15\,
	combout => \bo0|ula0|booth0|Add8~18_combout\,
	cout => \bo0|ula0|booth0|Add8~19\);

-- Location: LCCOMB_X10_Y10_N8
\bo0|ula0|booth0|Add8~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~20_combout\ = (\bo0|regB|q\(2) & (!\bo0|regB|q\(3) & ((\bo0|ula0|booth0|Add8~18_combout\)))) # (!\bo0|regB|q\(2) & (\bo0|regB|q\(3) & (\bo0|ula0|booth0|Add7~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|regB|q\(3),
	datac => \bo0|ula0|booth0|Add7~10_combout\,
	datad => \bo0|ula0|booth0|Add8~18_combout\,
	combout => \bo0|ula0|booth0|Add8~20_combout\);

-- Location: LCCOMB_X10_Y10_N30
\bo0|ula0|booth0|Add8~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~21_combout\ = (\bo0|ula0|booth0|Add8~20_combout\) # ((\bo0|ula0|booth0|Add6~25_combout\ & (\bo0|regB|q\(2) $ (!\bo0|regB|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|regB|q\(3),
	datac => \bo0|ula0|booth0|Add8~20_combout\,
	datad => \bo0|ula0|booth0|Add6~25_combout\,
	combout => \bo0|ula0|booth0|Add8~21_combout\);

-- Location: LCCOMB_X13_Y10_N20
\bo0|ula0|booth0|Add9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add9~8_combout\ = ((\bo0|ula0|booth0|s[13]~8_combout\ $ (\bo0|ula0|booth0|Add8~21_combout\ $ (!\bo0|ula0|booth0|Add9~7\)))) # (GND)
-- \bo0|ula0|booth0|Add9~9\ = CARRY((\bo0|ula0|booth0|s[13]~8_combout\ & ((\bo0|ula0|booth0|Add8~21_combout\) # (!\bo0|ula0|booth0|Add9~7\))) # (!\bo0|ula0|booth0|s[13]~8_combout\ & (\bo0|ula0|booth0|Add8~21_combout\ & !\bo0|ula0|booth0|Add9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[13]~8_combout\,
	datab => \bo0|ula0|booth0|Add8~21_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add9~7\,
	combout => \bo0|ula0|booth0|Add9~8_combout\,
	cout => \bo0|ula0|booth0|Add9~9\);

-- Location: LCCOMB_X12_Y10_N8
\bo0|ula0|booth0|Add10~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~14_combout\ = ((\bo0|regA|q\(4) $ (\bo0|ula0|booth0|Add8~21_combout\ $ (!\bo0|ula0|booth0|Add10~11\)))) # (GND)
-- \bo0|ula0|booth0|Add10~15\ = CARRY((\bo0|regA|q\(4) & ((\bo0|ula0|booth0|Add8~21_combout\) # (!\bo0|ula0|booth0|Add10~11\))) # (!\bo0|regA|q\(4) & (\bo0|ula0|booth0|Add8~21_combout\ & !\bo0|ula0|booth0|Add10~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(4),
	datab => \bo0|ula0|booth0|Add8~21_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add10~11\,
	combout => \bo0|ula0|booth0|Add10~14_combout\,
	cout => \bo0|ula0|booth0|Add10~15\);

-- Location: LCCOMB_X13_Y10_N8
\bo0|ula0|booth0|Add10~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~16_combout\ = (\bo0|regB|q\(3) & (!\bo0|regB|q\(4) & ((\bo0|ula0|booth0|Add10~14_combout\)))) # (!\bo0|regB|q\(3) & (\bo0|regB|q\(4) & (\bo0|ula0|booth0|Add9~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|regB|q\(4),
	datac => \bo0|ula0|booth0|Add9~8_combout\,
	datad => \bo0|ula0|booth0|Add10~14_combout\,
	combout => \bo0|ula0|booth0|Add10~16_combout\);

-- Location: LCCOMB_X14_Y10_N28
\bo0|ula0|booth0|Add10~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~17_combout\ = (\bo0|ula0|booth0|Add10~16_combout\) # ((\bo0|ula0|booth0|Add8~21_combout\ & (\bo0|regB|q\(3) $ (!\bo0|regB|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|ula0|booth0|Add8~21_combout\,
	datac => \bo0|regB|q\(4),
	datad => \bo0|ula0|booth0|Add10~16_combout\,
	combout => \bo0|ula0|booth0|Add10~17_combout\);

-- Location: LCCOMB_X14_Y10_N10
\bo0|ula0|booth0|Add11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add11~6_combout\ = (\bo0|ula0|booth0|s[12]~6_combout\ & ((\bo0|ula0|booth0|Add10~17_combout\ & (\bo0|ula0|booth0|Add11~5\ & VCC)) # (!\bo0|ula0|booth0|Add10~17_combout\ & (!\bo0|ula0|booth0|Add11~5\)))) # 
-- (!\bo0|ula0|booth0|s[12]~6_combout\ & ((\bo0|ula0|booth0|Add10~17_combout\ & (!\bo0|ula0|booth0|Add11~5\)) # (!\bo0|ula0|booth0|Add10~17_combout\ & ((\bo0|ula0|booth0|Add11~5\) # (GND)))))
-- \bo0|ula0|booth0|Add11~7\ = CARRY((\bo0|ula0|booth0|s[12]~6_combout\ & (!\bo0|ula0|booth0|Add10~17_combout\ & !\bo0|ula0|booth0|Add11~5\)) # (!\bo0|ula0|booth0|s[12]~6_combout\ & ((!\bo0|ula0|booth0|Add11~5\) # (!\bo0|ula0|booth0|Add10~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[12]~6_combout\,
	datab => \bo0|ula0|booth0|Add10~17_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add11~5\,
	combout => \bo0|ula0|booth0|Add11~6_combout\,
	cout => \bo0|ula0|booth0|Add11~7\);

-- Location: LCCOMB_X15_Y10_N24
\bo0|ula0|booth0|Add12~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~12_combout\ = (\bo0|regB|q\(5) & (((!\bo0|regB|q\(4) & \bo0|ula0|booth0|Add11~6_combout\)))) # (!\bo0|regB|q\(5) & (\bo0|ula0|booth0|Add12~10_combout\ & (\bo0|regB|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add12~10_combout\,
	datab => \bo0|regB|q\(5),
	datac => \bo0|regB|q\(4),
	datad => \bo0|ula0|booth0|Add11~6_combout\,
	combout => \bo0|ula0|booth0|Add12~12_combout\);

-- Location: LCCOMB_X15_Y10_N18
\bo0|ula0|booth0|Add12~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~13_combout\ = (\bo0|ula0|booth0|Add12~12_combout\) # ((\bo0|ula0|booth0|Add10~17_combout\ & (\bo0|regB|q\(5) $ (!\bo0|regB|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(5),
	datab => \bo0|regB|q\(4),
	datac => \bo0|ula0|booth0|Add12~12_combout\,
	datad => \bo0|ula0|booth0|Add10~17_combout\,
	combout => \bo0|ula0|booth0|Add12~13_combout\);

-- Location: LCCOMB_X14_Y9_N14
\bo0|ula0|booth0|Add14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~6_combout\ = ((\bo0|ula0|booth0|Add12~13_combout\ $ (\bo0|regA|q\(2) $ (!\bo0|ula0|booth0|Add14~3\)))) # (GND)
-- \bo0|ula0|booth0|Add14~7\ = CARRY((\bo0|ula0|booth0|Add12~13_combout\ & ((\bo0|regA|q\(2)) # (!\bo0|ula0|booth0|Add14~3\))) # (!\bo0|ula0|booth0|Add12~13_combout\ & (\bo0|regA|q\(2) & !\bo0|ula0|booth0|Add14~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add12~13_combout\,
	datab => \bo0|regA|q\(2),
	datad => VCC,
	cin => \bo0|ula0|booth0|Add14~3\,
	combout => \bo0|ula0|booth0|Add14~6_combout\,
	cout => \bo0|ula0|booth0|Add14~7\);

-- Location: LCCOMB_X15_Y9_N0
\bo0|ula0|booth0|Add14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~8_combout\ = (\bo0|regB|q\(5) & (((!\bo0|regB|q\(6) & \bo0|ula0|booth0|Add14~6_combout\)))) # (!\bo0|regB|q\(5) & (\bo0|ula0|booth0|Add13~4_combout\ & (\bo0|regB|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add13~4_combout\,
	datab => \bo0|regB|q\(5),
	datac => \bo0|regB|q\(6),
	datad => \bo0|ula0|booth0|Add14~6_combout\,
	combout => \bo0|ula0|booth0|Add14~8_combout\);

-- Location: LCCOMB_X15_Y9_N30
\bo0|ula0|booth0|Add14~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~9_combout\ = (\bo0|ula0|booth0|Add14~8_combout\) # ((\bo0|ula0|booth0|Add12~13_combout\ & (\bo0|regB|q\(5) $ (!\bo0|regB|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(5),
	datab => \bo0|ula0|booth0|Add12~13_combout\,
	datac => \bo0|regB|q\(6),
	datad => \bo0|ula0|booth0|Add14~8_combout\,
	combout => \bo0|ula0|booth0|Add14~9_combout\);

-- Location: LCCOMB_X17_Y9_N6
\bo0|ula0|booth0|Add16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add16~2_combout\ = (\bo0|ula0|booth0|Add14~9_combout\ & ((\bo0|regA|q\(1) & (\bo0|ula0|booth0|Add16~1\ & VCC)) # (!\bo0|regA|q\(1) & (!\bo0|ula0|booth0|Add16~1\)))) # (!\bo0|ula0|booth0|Add14~9_combout\ & ((\bo0|regA|q\(1) & 
-- (!\bo0|ula0|booth0|Add16~1\)) # (!\bo0|regA|q\(1) & ((\bo0|ula0|booth0|Add16~1\) # (GND)))))
-- \bo0|ula0|booth0|Add16~3\ = CARRY((\bo0|ula0|booth0|Add14~9_combout\ & (!\bo0|regA|q\(1) & !\bo0|ula0|booth0|Add16~1\)) # (!\bo0|ula0|booth0|Add14~9_combout\ & ((!\bo0|ula0|booth0|Add16~1\) # (!\bo0|regA|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add14~9_combout\,
	datab => \bo0|regA|q\(1),
	datad => VCC,
	cin => \bo0|ula0|booth0|Add16~1\,
	combout => \bo0|ula0|booth0|Add16~2_combout\,
	cout => \bo0|ula0|booth0|Add16~3\);

-- Location: LCCOMB_X18_Y9_N6
\bo0|ula0|booth0|Add15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add15~2_combout\ = (\bo0|ula0|booth0|s[10]~2_combout\ & ((\bo0|ula0|booth0|Add14~9_combout\ & (\bo0|ula0|booth0|Add15~1\ & VCC)) # (!\bo0|ula0|booth0|Add14~9_combout\ & (!\bo0|ula0|booth0|Add15~1\)))) # (!\bo0|ula0|booth0|s[10]~2_combout\ 
-- & ((\bo0|ula0|booth0|Add14~9_combout\ & (!\bo0|ula0|booth0|Add15~1\)) # (!\bo0|ula0|booth0|Add14~9_combout\ & ((\bo0|ula0|booth0|Add15~1\) # (GND)))))
-- \bo0|ula0|booth0|Add15~3\ = CARRY((\bo0|ula0|booth0|s[10]~2_combout\ & (!\bo0|ula0|booth0|Add14~9_combout\ & !\bo0|ula0|booth0|Add15~1\)) # (!\bo0|ula0|booth0|s[10]~2_combout\ & ((!\bo0|ula0|booth0|Add15~1\) # (!\bo0|ula0|booth0|Add14~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[10]~2_combout\,
	datab => \bo0|ula0|booth0|Add14~9_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add15~1\,
	combout => \bo0|ula0|booth0|Add15~2_combout\,
	cout => \bo0|ula0|booth0|Add15~3\);

-- Location: LCCOMB_X18_Y9_N26
\bo0|ula0|s_high[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|s_high[0]~0_combout\ = (\bo0|ula0|Mux0~0_combout\ & ((\bo0|ula0|booth0|Equal14~0_combout\ & ((\bo0|ula0|booth0|Add15~2_combout\))) # (!\bo0|ula0|booth0|Equal14~0_combout\ & (\bo0|ula0|booth0|Add16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux0~0_combout\,
	datab => \bo0|ula0|booth0|Equal14~0_combout\,
	datac => \bo0|ula0|booth0|Add16~2_combout\,
	datad => \bo0|ula0|booth0|Add15~2_combout\,
	combout => \bo0|ula0|s_high[0]~0_combout\);

-- Location: LCCOMB_X18_Y9_N20
\bo0|ula0|s_high[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|s_high[0]~1_combout\ = (\bo0|ula0|s_high[0]~0_combout\) # ((\bo0|ula0|Mux0~7_combout\ & \bo0|ula0|booth0|Add14~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo0|ula0|Mux0~7_combout\,
	datac => \bo0|ula0|booth0|Add14~9_combout\,
	datad => \bo0|ula0|s_high[0]~0_combout\,
	combout => \bo0|ula0|s_high[0]~1_combout\);

-- Location: LCFF_X18_Y9_N21
\bo0|regS_high|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|s_high[0]~1_combout\,
	ena => \bc0|state.carrega_saida~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_high|q\(0));

-- Location: LCCOMB_X10_Y10_N26
\bo0|ula0|booth0|Add7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add7~12_combout\ = ((\bo0|ula0|booth0|Add6~29_combout\ $ (\bo0|ula0|booth0|s[15]~12_combout\ $ (!\bo0|ula0|booth0|Add7~11\)))) # (GND)
-- \bo0|ula0|booth0|Add7~13\ = CARRY((\bo0|ula0|booth0|Add6~29_combout\ & ((\bo0|ula0|booth0|s[15]~12_combout\) # (!\bo0|ula0|booth0|Add7~11\))) # (!\bo0|ula0|booth0|Add6~29_combout\ & (\bo0|ula0|booth0|s[15]~12_combout\ & !\bo0|ula0|booth0|Add7~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add6~29_combout\,
	datab => \bo0|ula0|booth0|s[15]~12_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add7~11\,
	combout => \bo0|ula0|booth0|Add7~12_combout\,
	cout => \bo0|ula0|booth0|Add7~13\);

-- Location: LCCOMB_X9_Y10_N16
\bo0|ula0|booth0|Add8~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~22_combout\ = ((\bo0|ula0|booth0|Add6~29_combout\ $ (\bo0|regA|q\(6) $ (!\bo0|ula0|booth0|Add8~19\)))) # (GND)
-- \bo0|ula0|booth0|Add8~23\ = CARRY((\bo0|ula0|booth0|Add6~29_combout\ & ((\bo0|regA|q\(6)) # (!\bo0|ula0|booth0|Add8~19\))) # (!\bo0|ula0|booth0|Add6~29_combout\ & (\bo0|regA|q\(6) & !\bo0|ula0|booth0|Add8~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add6~29_combout\,
	datab => \bo0|regA|q\(6),
	datad => VCC,
	cin => \bo0|ula0|booth0|Add8~19\,
	combout => \bo0|ula0|booth0|Add8~22_combout\,
	cout => \bo0|ula0|booth0|Add8~23\);

-- Location: LCCOMB_X12_Y10_N16
\bo0|ula0|booth0|Add8~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~24_combout\ = (\bo0|regB|q\(3) & (!\bo0|regB|q\(2) & (\bo0|ula0|booth0|Add7~12_combout\))) # (!\bo0|regB|q\(3) & (\bo0|regB|q\(2) & ((\bo0|ula0|booth0|Add8~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|regB|q\(2),
	datac => \bo0|ula0|booth0|Add7~12_combout\,
	datad => \bo0|ula0|booth0|Add8~22_combout\,
	combout => \bo0|ula0|booth0|Add8~24_combout\);

-- Location: LCCOMB_X10_Y11_N18
\bo0|ula0|booth0|Add6~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~26_combout\ = \bo0|regA|q\(7) $ (\bo0|ula0|booth0|Add6~23\ $ (\bo0|ula0|booth0|Add4~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(7),
	datad => \bo0|ula0|booth0|Add4~43_combout\,
	cin => \bo0|ula0|booth0|Add6~23\,
	combout => \bo0|ula0|booth0|Add6~26_combout\);

-- Location: LCCOMB_X9_Y11_N14
\bo0|ula0|booth0|Add5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add5~14_combout\ = \bo0|ula0|booth0|s[16]~14_combout\ $ (\bo0|ula0|booth0|Add5~13\ $ (\bo0|ula0|booth0|Add4~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[16]~14_combout\,
	datad => \bo0|ula0|booth0|Add4~43_combout\,
	cin => \bo0|ula0|booth0|Add5~13\,
	combout => \bo0|ula0|booth0|Add5~14_combout\);

-- Location: LCCOMB_X10_Y11_N20
\bo0|ula0|booth0|Add6~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~28_combout\ = (\bo0|regB|q\(2) & (((!\bo0|regB|q\(1) & \bo0|ula0|booth0|Add5~14_combout\)))) # (!\bo0|regB|q\(2) & (\bo0|ula0|booth0|Add6~26_combout\ & (\bo0|regB|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|ula0|booth0|Add6~26_combout\,
	datac => \bo0|regB|q\(1),
	datad => \bo0|ula0|booth0|Add5~14_combout\,
	combout => \bo0|ula0|booth0|Add6~28_combout\);

-- Location: LCCOMB_X10_Y11_N30
\bo0|ula0|booth0|Add6~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~29_combout\ = (\bo0|ula0|booth0|Add6~28_combout\) # ((\bo0|ula0|booth0|Add4~43_combout\ & (\bo0|regB|q\(2) $ (!\bo0|regB|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|Add6~28_combout\,
	datad => \bo0|ula0|booth0|Add4~43_combout\,
	combout => \bo0|ula0|booth0|Add6~29_combout\);

-- Location: LCCOMB_X12_Y10_N26
\bo0|ula0|booth0|Add8~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~25_combout\ = (\bo0|ula0|booth0|Add8~24_combout\) # ((\bo0|ula0|booth0|Add6~29_combout\ & (\bo0|regB|q\(3) $ (!\bo0|regB|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|regB|q\(2),
	datac => \bo0|ula0|booth0|Add8~24_combout\,
	datad => \bo0|ula0|booth0|Add6~29_combout\,
	combout => \bo0|ula0|booth0|Add8~25_combout\);

-- Location: LCCOMB_X13_Y10_N22
\bo0|ula0|booth0|Add9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add9~10_combout\ = (\bo0|ula0|booth0|s[14]~10_combout\ & ((\bo0|ula0|booth0|Add8~25_combout\ & (\bo0|ula0|booth0|Add9~9\ & VCC)) # (!\bo0|ula0|booth0|Add8~25_combout\ & (!\bo0|ula0|booth0|Add9~9\)))) # (!\bo0|ula0|booth0|s[14]~10_combout\ 
-- & ((\bo0|ula0|booth0|Add8~25_combout\ & (!\bo0|ula0|booth0|Add9~9\)) # (!\bo0|ula0|booth0|Add8~25_combout\ & ((\bo0|ula0|booth0|Add9~9\) # (GND)))))
-- \bo0|ula0|booth0|Add9~11\ = CARRY((\bo0|ula0|booth0|s[14]~10_combout\ & (!\bo0|ula0|booth0|Add8~25_combout\ & !\bo0|ula0|booth0|Add9~9\)) # (!\bo0|ula0|booth0|s[14]~10_combout\ & ((!\bo0|ula0|booth0|Add9~9\) # (!\bo0|ula0|booth0|Add8~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[14]~10_combout\,
	datab => \bo0|ula0|booth0|Add8~25_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add9~9\,
	combout => \bo0|ula0|booth0|Add9~10_combout\,
	cout => \bo0|ula0|booth0|Add9~11\);

-- Location: LCCOMB_X12_Y10_N10
\bo0|ula0|booth0|Add10~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~18_combout\ = (\bo0|regA|q\(5) & ((\bo0|ula0|booth0|Add8~25_combout\ & (\bo0|ula0|booth0|Add10~15\ & VCC)) # (!\bo0|ula0|booth0|Add8~25_combout\ & (!\bo0|ula0|booth0|Add10~15\)))) # (!\bo0|regA|q\(5) & 
-- ((\bo0|ula0|booth0|Add8~25_combout\ & (!\bo0|ula0|booth0|Add10~15\)) # (!\bo0|ula0|booth0|Add8~25_combout\ & ((\bo0|ula0|booth0|Add10~15\) # (GND)))))
-- \bo0|ula0|booth0|Add10~19\ = CARRY((\bo0|regA|q\(5) & (!\bo0|ula0|booth0|Add8~25_combout\ & !\bo0|ula0|booth0|Add10~15\)) # (!\bo0|regA|q\(5) & ((!\bo0|ula0|booth0|Add10~15\) # (!\bo0|ula0|booth0|Add8~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(5),
	datab => \bo0|ula0|booth0|Add8~25_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add10~15\,
	combout => \bo0|ula0|booth0|Add10~18_combout\,
	cout => \bo0|ula0|booth0|Add10~19\);

-- Location: LCCOMB_X13_Y10_N2
\bo0|ula0|booth0|Add10~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~20_combout\ = (\bo0|regB|q\(3) & (((!\bo0|regB|q\(4) & \bo0|ula0|booth0|Add10~18_combout\)))) # (!\bo0|regB|q\(3) & (\bo0|ula0|booth0|Add9~10_combout\ & (\bo0|regB|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|ula0|booth0|Add9~10_combout\,
	datac => \bo0|regB|q\(4),
	datad => \bo0|ula0|booth0|Add10~18_combout\,
	combout => \bo0|ula0|booth0|Add10~20_combout\);

-- Location: LCCOMB_X14_Y10_N26
\bo0|ula0|booth0|Add10~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~21_combout\ = (\bo0|ula0|booth0|Add10~20_combout\) # ((\bo0|ula0|booth0|Add8~25_combout\ & (\bo0|regB|q\(3) $ (!\bo0|regB|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|ula0|booth0|Add8~25_combout\,
	datac => \bo0|regB|q\(4),
	datad => \bo0|ula0|booth0|Add10~20_combout\,
	combout => \bo0|ula0|booth0|Add10~21_combout\);

-- Location: LCCOMB_X15_Y10_N8
\bo0|ula0|booth0|Add12~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~14_combout\ = ((\bo0|regA|q\(4) $ (\bo0|ula0|booth0|Add10~21_combout\ $ (!\bo0|ula0|booth0|Add12~11\)))) # (GND)
-- \bo0|ula0|booth0|Add12~15\ = CARRY((\bo0|regA|q\(4) & ((\bo0|ula0|booth0|Add10~21_combout\) # (!\bo0|ula0|booth0|Add12~11\))) # (!\bo0|regA|q\(4) & (\bo0|ula0|booth0|Add10~21_combout\ & !\bo0|ula0|booth0|Add12~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(4),
	datab => \bo0|ula0|booth0|Add10~21_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add12~11\,
	combout => \bo0|ula0|booth0|Add12~14_combout\,
	cout => \bo0|ula0|booth0|Add12~15\);

-- Location: LCCOMB_X14_Y10_N12
\bo0|ula0|booth0|Add11~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add11~8_combout\ = ((\bo0|ula0|booth0|s[13]~8_combout\ $ (\bo0|ula0|booth0|Add10~21_combout\ $ (!\bo0|ula0|booth0|Add11~7\)))) # (GND)
-- \bo0|ula0|booth0|Add11~9\ = CARRY((\bo0|ula0|booth0|s[13]~8_combout\ & ((\bo0|ula0|booth0|Add10~21_combout\) # (!\bo0|ula0|booth0|Add11~7\))) # (!\bo0|ula0|booth0|s[13]~8_combout\ & (\bo0|ula0|booth0|Add10~21_combout\ & !\bo0|ula0|booth0|Add11~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[13]~8_combout\,
	datab => \bo0|ula0|booth0|Add10~21_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add11~7\,
	combout => \bo0|ula0|booth0|Add11~8_combout\,
	cout => \bo0|ula0|booth0|Add11~9\);

-- Location: LCCOMB_X15_Y10_N16
\bo0|ula0|booth0|Add12~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~16_combout\ = (\bo0|regB|q\(5) & (!\bo0|regB|q\(4) & ((\bo0|ula0|booth0|Add11~8_combout\)))) # (!\bo0|regB|q\(5) & (\bo0|regB|q\(4) & (\bo0|ula0|booth0|Add12~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(5),
	datab => \bo0|regB|q\(4),
	datac => \bo0|ula0|booth0|Add12~14_combout\,
	datad => \bo0|ula0|booth0|Add11~8_combout\,
	combout => \bo0|ula0|booth0|Add12~16_combout\);

-- Location: LCCOMB_X15_Y10_N30
\bo0|ula0|booth0|Add12~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~17_combout\ = (\bo0|ula0|booth0|Add12~16_combout\) # ((\bo0|ula0|booth0|Add10~21_combout\ & (\bo0|regB|q\(5) $ (!\bo0|regB|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(5),
	datab => \bo0|regB|q\(4),
	datac => \bo0|ula0|booth0|Add12~16_combout\,
	datad => \bo0|ula0|booth0|Add10~21_combout\,
	combout => \bo0|ula0|booth0|Add12~17_combout\);

-- Location: LCCOMB_X14_Y9_N16
\bo0|ula0|booth0|Add14~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~10_combout\ = (\bo0|regA|q\(3) & ((\bo0|ula0|booth0|Add12~17_combout\ & (\bo0|ula0|booth0|Add14~7\ & VCC)) # (!\bo0|ula0|booth0|Add12~17_combout\ & (!\bo0|ula0|booth0|Add14~7\)))) # (!\bo0|regA|q\(3) & 
-- ((\bo0|ula0|booth0|Add12~17_combout\ & (!\bo0|ula0|booth0|Add14~7\)) # (!\bo0|ula0|booth0|Add12~17_combout\ & ((\bo0|ula0|booth0|Add14~7\) # (GND)))))
-- \bo0|ula0|booth0|Add14~11\ = CARRY((\bo0|regA|q\(3) & (!\bo0|ula0|booth0|Add12~17_combout\ & !\bo0|ula0|booth0|Add14~7\)) # (!\bo0|regA|q\(3) & ((!\bo0|ula0|booth0|Add14~7\) # (!\bo0|ula0|booth0|Add12~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(3),
	datab => \bo0|ula0|booth0|Add12~17_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add14~7\,
	combout => \bo0|ula0|booth0|Add14~10_combout\,
	cout => \bo0|ula0|booth0|Add14~11\);

-- Location: LCCOMB_X15_Y9_N4
\bo0|ula0|booth0|Add14~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~12_combout\ = (\bo0|regB|q\(5) & (((!\bo0|regB|q\(6) & \bo0|ula0|booth0|Add14~10_combout\)))) # (!\bo0|regB|q\(5) & (\bo0|ula0|booth0|Add13~6_combout\ & (\bo0|regB|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add13~6_combout\,
	datab => \bo0|regB|q\(5),
	datac => \bo0|regB|q\(6),
	datad => \bo0|ula0|booth0|Add14~10_combout\,
	combout => \bo0|ula0|booth0|Add14~12_combout\);

-- Location: LCCOMB_X15_Y9_N2
\bo0|ula0|booth0|Add14~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~13_combout\ = (\bo0|ula0|booth0|Add14~12_combout\) # ((\bo0|ula0|booth0|Add12~17_combout\ & (\bo0|regB|q\(6) $ (!\bo0|regB|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(6),
	datab => \bo0|regB|q\(5),
	datac => \bo0|ula0|booth0|Add14~12_combout\,
	datad => \bo0|ula0|booth0|Add12~17_combout\,
	combout => \bo0|ula0|booth0|Add14~13_combout\);

-- Location: LCCOMB_X18_Y9_N8
\bo0|ula0|booth0|Add15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add15~4_combout\ = ((\bo0|ula0|booth0|Add14~13_combout\ $ (\bo0|ula0|booth0|s[11]~4_combout\ $ (!\bo0|ula0|booth0|Add15~3\)))) # (GND)
-- \bo0|ula0|booth0|Add15~5\ = CARRY((\bo0|ula0|booth0|Add14~13_combout\ & ((\bo0|ula0|booth0|s[11]~4_combout\) # (!\bo0|ula0|booth0|Add15~3\))) # (!\bo0|ula0|booth0|Add14~13_combout\ & (\bo0|ula0|booth0|s[11]~4_combout\ & !\bo0|ula0|booth0|Add15~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add14~13_combout\,
	datab => \bo0|ula0|booth0|s[11]~4_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add15~3\,
	combout => \bo0|ula0|booth0|Add15~4_combout\,
	cout => \bo0|ula0|booth0|Add15~5\);

-- Location: LCCOMB_X17_Y9_N8
\bo0|ula0|booth0|Add16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add16~4_combout\ = ((\bo0|regA|q\(2) $ (\bo0|ula0|booth0|Add14~13_combout\ $ (!\bo0|ula0|booth0|Add16~3\)))) # (GND)
-- \bo0|ula0|booth0|Add16~5\ = CARRY((\bo0|regA|q\(2) & ((\bo0|ula0|booth0|Add14~13_combout\) # (!\bo0|ula0|booth0|Add16~3\))) # (!\bo0|regA|q\(2) & (\bo0|ula0|booth0|Add14~13_combout\ & !\bo0|ula0|booth0|Add16~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(2),
	datab => \bo0|ula0|booth0|Add14~13_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add16~3\,
	combout => \bo0|ula0|booth0|Add16~4_combout\,
	cout => \bo0|ula0|booth0|Add16~5\);

-- Location: LCCOMB_X18_Y9_N28
\bo0|ula0|s_high[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|s_high[1]~2_combout\ = (\bo0|ula0|Mux0~0_combout\ & ((\bo0|ula0|booth0|Equal14~0_combout\ & (\bo0|ula0|booth0|Add15~4_combout\)) # (!\bo0|ula0|booth0|Equal14~0_combout\ & ((\bo0|ula0|booth0|Add16~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux0~0_combout\,
	datab => \bo0|ula0|booth0|Equal14~0_combout\,
	datac => \bo0|ula0|booth0|Add15~4_combout\,
	datad => \bo0|ula0|booth0|Add16~4_combout\,
	combout => \bo0|ula0|s_high[1]~2_combout\);

-- Location: LCCOMB_X19_Y9_N22
\bo0|ula0|s_high[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|s_high[1]~3_combout\ = (\bo0|ula0|s_high[1]~2_combout\) # ((\bo0|ula0|Mux0~7_combout\ & \bo0|ula0|booth0|Add14~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux0~7_combout\,
	datac => \bo0|ula0|booth0|Add14~13_combout\,
	datad => \bo0|ula0|s_high[1]~2_combout\,
	combout => \bo0|ula0|s_high[1]~3_combout\);

-- Location: LCFF_X19_Y9_N23
\bo0|regS_high|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|s_high[1]~3_combout\,
	ena => \bc0|state.carrega_saida~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_high|q\(1));

-- Location: LCCOMB_X10_Y10_N28
\bo0|ula0|booth0|Add7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add7~14_combout\ = \bo0|ula0|booth0|s[16]~14_combout\ $ (\bo0|ula0|booth0|Add7~13\ $ (\bo0|ula0|booth0|Add6~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo0|ula0|booth0|s[16]~14_combout\,
	datad => \bo0|ula0|booth0|Add6~29_combout\,
	cin => \bo0|ula0|booth0|Add7~13\,
	combout => \bo0|ula0|booth0|Add7~14_combout\);

-- Location: LCCOMB_X9_Y10_N18
\bo0|ula0|booth0|Add8~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~26_combout\ = \bo0|regA|q\(7) $ (\bo0|ula0|booth0|Add8~23\ $ (\bo0|ula0|booth0|Add6~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo0|regA|q\(7),
	datad => \bo0|ula0|booth0|Add6~29_combout\,
	cin => \bo0|ula0|booth0|Add8~23\,
	combout => \bo0|ula0|booth0|Add8~26_combout\);

-- Location: LCCOMB_X12_Y10_N20
\bo0|ula0|booth0|Add8~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~28_combout\ = (\bo0|regB|q\(3) & (!\bo0|regB|q\(2) & (\bo0|ula0|booth0|Add7~14_combout\))) # (!\bo0|regB|q\(3) & (\bo0|regB|q\(2) & ((\bo0|ula0|booth0|Add8~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|regB|q\(2),
	datac => \bo0|ula0|booth0|Add7~14_combout\,
	datad => \bo0|ula0|booth0|Add8~26_combout\,
	combout => \bo0|ula0|booth0|Add8~28_combout\);

-- Location: LCCOMB_X12_Y10_N22
\bo0|ula0|booth0|Add8~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~29_combout\ = (\bo0|ula0|booth0|Add8~28_combout\) # ((\bo0|ula0|booth0|Add6~29_combout\ & (\bo0|regB|q\(3) $ (!\bo0|regB|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|regB|q\(2),
	datac => \bo0|ula0|booth0|Add8~28_combout\,
	datad => \bo0|ula0|booth0|Add6~29_combout\,
	combout => \bo0|ula0|booth0|Add8~29_combout\);

-- Location: LCCOMB_X13_Y10_N24
\bo0|ula0|booth0|Add9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add9~12_combout\ = ((\bo0|ula0|booth0|s[15]~12_combout\ $ (\bo0|ula0|booth0|Add8~29_combout\ $ (!\bo0|ula0|booth0|Add9~11\)))) # (GND)
-- \bo0|ula0|booth0|Add9~13\ = CARRY((\bo0|ula0|booth0|s[15]~12_combout\ & ((\bo0|ula0|booth0|Add8~29_combout\) # (!\bo0|ula0|booth0|Add9~11\))) # (!\bo0|ula0|booth0|s[15]~12_combout\ & (\bo0|ula0|booth0|Add8~29_combout\ & !\bo0|ula0|booth0|Add9~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[15]~12_combout\,
	datab => \bo0|ula0|booth0|Add8~29_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add9~11\,
	combout => \bo0|ula0|booth0|Add9~12_combout\,
	cout => \bo0|ula0|booth0|Add9~13\);

-- Location: LCCOMB_X13_Y10_N28
\bo0|ula0|booth0|Add10~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~24_combout\ = (\bo0|regB|q\(3) & (!\bo0|regB|q\(4) & ((\bo0|ula0|booth0|Add10~22_combout\)))) # (!\bo0|regB|q\(3) & (\bo0|regB|q\(4) & (\bo0|ula0|booth0|Add9~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|regB|q\(4),
	datac => \bo0|ula0|booth0|Add9~12_combout\,
	datad => \bo0|ula0|booth0|Add10~22_combout\,
	combout => \bo0|ula0|booth0|Add10~24_combout\);

-- Location: LCCOMB_X14_Y10_N20
\bo0|ula0|booth0|Add10~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~25_combout\ = (\bo0|ula0|booth0|Add10~24_combout\) # ((\bo0|ula0|booth0|Add8~29_combout\ & (\bo0|regB|q\(3) $ (!\bo0|regB|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|regB|q\(4),
	datac => \bo0|ula0|booth0|Add8~29_combout\,
	datad => \bo0|ula0|booth0|Add10~24_combout\,
	combout => \bo0|ula0|booth0|Add10~25_combout\);

-- Location: LCCOMB_X15_Y10_N10
\bo0|ula0|booth0|Add12~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~18_combout\ = (\bo0|ula0|booth0|Add10~25_combout\ & ((\bo0|regA|q\(5) & (\bo0|ula0|booth0|Add12~15\ & VCC)) # (!\bo0|regA|q\(5) & (!\bo0|ula0|booth0|Add12~15\)))) # (!\bo0|ula0|booth0|Add10~25_combout\ & ((\bo0|regA|q\(5) & 
-- (!\bo0|ula0|booth0|Add12~15\)) # (!\bo0|regA|q\(5) & ((\bo0|ula0|booth0|Add12~15\) # (GND)))))
-- \bo0|ula0|booth0|Add12~19\ = CARRY((\bo0|ula0|booth0|Add10~25_combout\ & (!\bo0|regA|q\(5) & !\bo0|ula0|booth0|Add12~15\)) # (!\bo0|ula0|booth0|Add10~25_combout\ & ((!\bo0|ula0|booth0|Add12~15\) # (!\bo0|regA|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add10~25_combout\,
	datab => \bo0|regA|q\(5),
	datad => VCC,
	cin => \bo0|ula0|booth0|Add12~15\,
	combout => \bo0|ula0|booth0|Add12~18_combout\,
	cout => \bo0|ula0|booth0|Add12~19\);

-- Location: LCCOMB_X15_Y10_N28
\bo0|ula0|booth0|Add12~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~20_combout\ = (\bo0|regB|q\(5) & (\bo0|ula0|booth0|Add11~10_combout\ & (!\bo0|regB|q\(4)))) # (!\bo0|regB|q\(5) & (((\bo0|regB|q\(4) & \bo0|ula0|booth0|Add12~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add11~10_combout\,
	datab => \bo0|regB|q\(5),
	datac => \bo0|regB|q\(4),
	datad => \bo0|ula0|booth0|Add12~18_combout\,
	combout => \bo0|ula0|booth0|Add12~20_combout\);

-- Location: LCCOMB_X15_Y10_N22
\bo0|ula0|booth0|Add12~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~21_combout\ = (\bo0|ula0|booth0|Add12~20_combout\) # ((\bo0|ula0|booth0|Add10~25_combout\ & (\bo0|regB|q\(5) $ (!\bo0|regB|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(5),
	datab => \bo0|regB|q\(4),
	datac => \bo0|ula0|booth0|Add10~25_combout\,
	datad => \bo0|ula0|booth0|Add12~20_combout\,
	combout => \bo0|ula0|booth0|Add12~21_combout\);

-- Location: LCCOMB_X15_Y9_N14
\bo0|ula0|booth0|Add13~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add13~8_combout\ = ((\bo0|ula0|booth0|s[13]~8_combout\ $ (\bo0|ula0|booth0|Add12~21_combout\ $ (!\bo0|ula0|booth0|Add13~7\)))) # (GND)
-- \bo0|ula0|booth0|Add13~9\ = CARRY((\bo0|ula0|booth0|s[13]~8_combout\ & ((\bo0|ula0|booth0|Add12~21_combout\) # (!\bo0|ula0|booth0|Add13~7\))) # (!\bo0|ula0|booth0|s[13]~8_combout\ & (\bo0|ula0|booth0|Add12~21_combout\ & !\bo0|ula0|booth0|Add13~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[13]~8_combout\,
	datab => \bo0|ula0|booth0|Add12~21_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add13~7\,
	combout => \bo0|ula0|booth0|Add13~8_combout\,
	cout => \bo0|ula0|booth0|Add13~9\);

-- Location: LCCOMB_X14_Y9_N18
\bo0|ula0|booth0|Add14~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~14_combout\ = ((\bo0|regA|q\(4) $ (\bo0|ula0|booth0|Add12~21_combout\ $ (!\bo0|ula0|booth0|Add14~11\)))) # (GND)
-- \bo0|ula0|booth0|Add14~15\ = CARRY((\bo0|regA|q\(4) & ((\bo0|ula0|booth0|Add12~21_combout\) # (!\bo0|ula0|booth0|Add14~11\))) # (!\bo0|regA|q\(4) & (\bo0|ula0|booth0|Add12~21_combout\ & !\bo0|ula0|booth0|Add14~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(4),
	datab => \bo0|ula0|booth0|Add12~21_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add14~11\,
	combout => \bo0|ula0|booth0|Add14~14_combout\,
	cout => \bo0|ula0|booth0|Add14~15\);

-- Location: LCCOMB_X15_Y9_N28
\bo0|ula0|booth0|Add14~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~16_combout\ = (\bo0|regB|q\(6) & (!\bo0|regB|q\(5) & (\bo0|ula0|booth0|Add13~8_combout\))) # (!\bo0|regB|q\(6) & (\bo0|regB|q\(5) & ((\bo0|ula0|booth0|Add14~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(6),
	datab => \bo0|regB|q\(5),
	datac => \bo0|ula0|booth0|Add13~8_combout\,
	datad => \bo0|ula0|booth0|Add14~14_combout\,
	combout => \bo0|ula0|booth0|Add14~16_combout\);

-- Location: LCCOMB_X15_Y9_N22
\bo0|ula0|booth0|Add14~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~17_combout\ = (\bo0|ula0|booth0|Add14~16_combout\) # ((\bo0|ula0|booth0|Add12~21_combout\ & (\bo0|regB|q\(5) $ (!\bo0|regB|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(5),
	datab => \bo0|ula0|booth0|Add12~21_combout\,
	datac => \bo0|regB|q\(6),
	datad => \bo0|ula0|booth0|Add14~16_combout\,
	combout => \bo0|ula0|booth0|Add14~17_combout\);

-- Location: LCCOMB_X18_Y9_N10
\bo0|ula0|booth0|Add15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add15~6_combout\ = (\bo0|ula0|booth0|Add14~17_combout\ & ((\bo0|ula0|booth0|s[12]~6_combout\ & (\bo0|ula0|booth0|Add15~5\ & VCC)) # (!\bo0|ula0|booth0|s[12]~6_combout\ & (!\bo0|ula0|booth0|Add15~5\)))) # 
-- (!\bo0|ula0|booth0|Add14~17_combout\ & ((\bo0|ula0|booth0|s[12]~6_combout\ & (!\bo0|ula0|booth0|Add15~5\)) # (!\bo0|ula0|booth0|s[12]~6_combout\ & ((\bo0|ula0|booth0|Add15~5\) # (GND)))))
-- \bo0|ula0|booth0|Add15~7\ = CARRY((\bo0|ula0|booth0|Add14~17_combout\ & (!\bo0|ula0|booth0|s[12]~6_combout\ & !\bo0|ula0|booth0|Add15~5\)) # (!\bo0|ula0|booth0|Add14~17_combout\ & ((!\bo0|ula0|booth0|Add15~5\) # (!\bo0|ula0|booth0|s[12]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add14~17_combout\,
	datab => \bo0|ula0|booth0|s[12]~6_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add15~5\,
	combout => \bo0|ula0|booth0|Add15~6_combout\,
	cout => \bo0|ula0|booth0|Add15~7\);

-- Location: LCCOMB_X17_Y9_N10
\bo0|ula0|booth0|Add16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add16~6_combout\ = (\bo0|regA|q\(3) & ((\bo0|ula0|booth0|Add14~17_combout\ & (\bo0|ula0|booth0|Add16~5\ & VCC)) # (!\bo0|ula0|booth0|Add14~17_combout\ & (!\bo0|ula0|booth0|Add16~5\)))) # (!\bo0|regA|q\(3) & 
-- ((\bo0|ula0|booth0|Add14~17_combout\ & (!\bo0|ula0|booth0|Add16~5\)) # (!\bo0|ula0|booth0|Add14~17_combout\ & ((\bo0|ula0|booth0|Add16~5\) # (GND)))))
-- \bo0|ula0|booth0|Add16~7\ = CARRY((\bo0|regA|q\(3) & (!\bo0|ula0|booth0|Add14~17_combout\ & !\bo0|ula0|booth0|Add16~5\)) # (!\bo0|regA|q\(3) & ((!\bo0|ula0|booth0|Add16~5\) # (!\bo0|ula0|booth0|Add14~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(3),
	datab => \bo0|ula0|booth0|Add14~17_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add16~5\,
	combout => \bo0|ula0|booth0|Add16~6_combout\,
	cout => \bo0|ula0|booth0|Add16~7\);

-- Location: LCCOMB_X17_Y9_N30
\bo0|ula0|s_high[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|s_high[2]~4_combout\ = (\bo0|ula0|Mux0~0_combout\ & ((\bo0|ula0|booth0|Equal14~0_combout\ & (\bo0|ula0|booth0|Add15~6_combout\)) # (!\bo0|ula0|booth0|Equal14~0_combout\ & ((\bo0|ula0|booth0|Add16~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux0~0_combout\,
	datab => \bo0|ula0|booth0|Equal14~0_combout\,
	datac => \bo0|ula0|booth0|Add15~6_combout\,
	datad => \bo0|ula0|booth0|Add16~6_combout\,
	combout => \bo0|ula0|s_high[2]~4_combout\);

-- Location: LCCOMB_X17_Y9_N2
\bo0|ula0|s_high[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|s_high[2]~5_combout\ = (\bo0|ula0|s_high[2]~4_combout\) # ((\bo0|ula0|Mux0~7_combout\ & \bo0|ula0|booth0|Add14~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux0~7_combout\,
	datac => \bo0|ula0|booth0|Add14~17_combout\,
	datad => \bo0|ula0|s_high[2]~4_combout\,
	combout => \bo0|ula0|s_high[2]~5_combout\);

-- Location: LCFF_X17_Y9_N3
\bo0|regS_high|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|s_high[2]~5_combout\,
	ena => \bc0|state.carrega_saida~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_high|q\(2));

-- Location: LCCOMB_X13_Y10_N26
\bo0|ula0|booth0|Add9~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add9~14_combout\ = \bo0|ula0|booth0|s[16]~14_combout\ $ (\bo0|ula0|booth0|Add9~13\ $ (\bo0|ula0|booth0|Add8~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo0|ula0|booth0|s[16]~14_combout\,
	datad => \bo0|ula0|booth0|Add8~29_combout\,
	cin => \bo0|ula0|booth0|Add9~13\,
	combout => \bo0|ula0|booth0|Add9~14_combout\);

-- Location: LCCOMB_X13_Y10_N30
\bo0|ula0|booth0|Add10~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~28_combout\ = (\bo0|regB|q\(3) & (\bo0|ula0|booth0|Add10~26_combout\ & (!\bo0|regB|q\(4)))) # (!\bo0|regB|q\(3) & (((\bo0|regB|q\(4) & \bo0|ula0|booth0|Add9~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add10~26_combout\,
	datab => \bo0|regB|q\(3),
	datac => \bo0|regB|q\(4),
	datad => \bo0|ula0|booth0|Add9~14_combout\,
	combout => \bo0|ula0|booth0|Add10~28_combout\);

-- Location: LCCOMB_X14_Y10_N2
\bo0|ula0|booth0|Add10~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add10~29_combout\ = (\bo0|ula0|booth0|Add10~28_combout\) # ((\bo0|ula0|booth0|Add8~29_combout\ & (\bo0|regB|q\(3) $ (!\bo0|regB|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|regB|q\(4),
	datac => \bo0|ula0|booth0|Add10~28_combout\,
	datad => \bo0|ula0|booth0|Add8~29_combout\,
	combout => \bo0|ula0|booth0|Add10~29_combout\);

-- Location: LCCOMB_X14_Y10_N16
\bo0|ula0|booth0|Add11~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add11~12_combout\ = ((\bo0|ula0|booth0|s[15]~12_combout\ $ (\bo0|ula0|booth0|Add10~29_combout\ $ (!\bo0|ula0|booth0|Add11~11\)))) # (GND)
-- \bo0|ula0|booth0|Add11~13\ = CARRY((\bo0|ula0|booth0|s[15]~12_combout\ & ((\bo0|ula0|booth0|Add10~29_combout\) # (!\bo0|ula0|booth0|Add11~11\))) # (!\bo0|ula0|booth0|s[15]~12_combout\ & (\bo0|ula0|booth0|Add10~29_combout\ & !\bo0|ula0|booth0|Add11~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[15]~12_combout\,
	datab => \bo0|ula0|booth0|Add10~29_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add11~11\,
	combout => \bo0|ula0|booth0|Add11~12_combout\,
	cout => \bo0|ula0|booth0|Add11~13\);

-- Location: LCCOMB_X15_Y10_N12
\bo0|ula0|booth0|Add12~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~22_combout\ = ((\bo0|ula0|booth0|Add10~29_combout\ $ (\bo0|regA|q\(6) $ (!\bo0|ula0|booth0|Add12~19\)))) # (GND)
-- \bo0|ula0|booth0|Add12~23\ = CARRY((\bo0|ula0|booth0|Add10~29_combout\ & ((\bo0|regA|q\(6)) # (!\bo0|ula0|booth0|Add12~19\))) # (!\bo0|ula0|booth0|Add10~29_combout\ & (\bo0|regA|q\(6) & !\bo0|ula0|booth0|Add12~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add10~29_combout\,
	datab => \bo0|regA|q\(6),
	datad => VCC,
	cin => \bo0|ula0|booth0|Add12~19\,
	combout => \bo0|ula0|booth0|Add12~22_combout\,
	cout => \bo0|ula0|booth0|Add12~23\);

-- Location: LCCOMB_X14_Y9_N0
\bo0|ula0|booth0|Add12~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~24_combout\ = (\bo0|regB|q\(4) & (!\bo0|regB|q\(5) & ((\bo0|ula0|booth0|Add12~22_combout\)))) # (!\bo0|regB|q\(4) & (\bo0|regB|q\(5) & (\bo0|ula0|booth0|Add11~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(4),
	datab => \bo0|regB|q\(5),
	datac => \bo0|ula0|booth0|Add11~12_combout\,
	datad => \bo0|ula0|booth0|Add12~22_combout\,
	combout => \bo0|ula0|booth0|Add12~24_combout\);

-- Location: LCCOMB_X14_Y9_N26
\bo0|ula0|booth0|Add12~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~25_combout\ = (\bo0|ula0|booth0|Add12~24_combout\) # ((\bo0|ula0|booth0|Add10~29_combout\ & (\bo0|regB|q\(4) $ (!\bo0|regB|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(4),
	datab => \bo0|ula0|booth0|Add10~29_combout\,
	datac => \bo0|regB|q\(5),
	datad => \bo0|ula0|booth0|Add12~24_combout\,
	combout => \bo0|ula0|booth0|Add12~25_combout\);

-- Location: LCCOMB_X15_Y9_N16
\bo0|ula0|booth0|Add13~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add13~10_combout\ = (\bo0|ula0|booth0|s[14]~10_combout\ & ((\bo0|ula0|booth0|Add12~25_combout\ & (\bo0|ula0|booth0|Add13~9\ & VCC)) # (!\bo0|ula0|booth0|Add12~25_combout\ & (!\bo0|ula0|booth0|Add13~9\)))) # 
-- (!\bo0|ula0|booth0|s[14]~10_combout\ & ((\bo0|ula0|booth0|Add12~25_combout\ & (!\bo0|ula0|booth0|Add13~9\)) # (!\bo0|ula0|booth0|Add12~25_combout\ & ((\bo0|ula0|booth0|Add13~9\) # (GND)))))
-- \bo0|ula0|booth0|Add13~11\ = CARRY((\bo0|ula0|booth0|s[14]~10_combout\ & (!\bo0|ula0|booth0|Add12~25_combout\ & !\bo0|ula0|booth0|Add13~9\)) # (!\bo0|ula0|booth0|s[14]~10_combout\ & ((!\bo0|ula0|booth0|Add13~9\) # (!\bo0|ula0|booth0|Add12~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[14]~10_combout\,
	datab => \bo0|ula0|booth0|Add12~25_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add13~9\,
	combout => \bo0|ula0|booth0|Add13~10_combout\,
	cout => \bo0|ula0|booth0|Add13~11\);

-- Location: LCCOMB_X14_Y9_N20
\bo0|ula0|booth0|Add14~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~18_combout\ = (\bo0|regA|q\(5) & ((\bo0|ula0|booth0|Add12~25_combout\ & (\bo0|ula0|booth0|Add14~15\ & VCC)) # (!\bo0|ula0|booth0|Add12~25_combout\ & (!\bo0|ula0|booth0|Add14~15\)))) # (!\bo0|regA|q\(5) & 
-- ((\bo0|ula0|booth0|Add12~25_combout\ & (!\bo0|ula0|booth0|Add14~15\)) # (!\bo0|ula0|booth0|Add12~25_combout\ & ((\bo0|ula0|booth0|Add14~15\) # (GND)))))
-- \bo0|ula0|booth0|Add14~19\ = CARRY((\bo0|regA|q\(5) & (!\bo0|ula0|booth0|Add12~25_combout\ & !\bo0|ula0|booth0|Add14~15\)) # (!\bo0|regA|q\(5) & ((!\bo0|ula0|booth0|Add14~15\) # (!\bo0|ula0|booth0|Add12~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(5),
	datab => \bo0|ula0|booth0|Add12~25_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add14~15\,
	combout => \bo0|ula0|booth0|Add14~18_combout\,
	cout => \bo0|ula0|booth0|Add14~19\);

-- Location: LCCOMB_X15_Y9_N24
\bo0|ula0|booth0|Add14~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~20_combout\ = (\bo0|regB|q\(6) & (!\bo0|regB|q\(5) & (\bo0|ula0|booth0|Add13~10_combout\))) # (!\bo0|regB|q\(6) & (\bo0|regB|q\(5) & ((\bo0|ula0|booth0|Add14~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(6),
	datab => \bo0|regB|q\(5),
	datac => \bo0|ula0|booth0|Add13~10_combout\,
	datad => \bo0|ula0|booth0|Add14~18_combout\,
	combout => \bo0|ula0|booth0|Add14~20_combout\);

-- Location: LCCOMB_X15_Y9_N26
\bo0|ula0|booth0|Add14~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~21_combout\ = (\bo0|ula0|booth0|Add14~20_combout\) # ((\bo0|ula0|booth0|Add12~25_combout\ & (\bo0|regB|q\(6) $ (!\bo0|regB|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(6),
	datab => \bo0|regB|q\(5),
	datac => \bo0|ula0|booth0|Add14~20_combout\,
	datad => \bo0|ula0|booth0|Add12~25_combout\,
	combout => \bo0|ula0|booth0|Add14~21_combout\);

-- Location: LCCOMB_X18_Y9_N12
\bo0|ula0|booth0|Add15~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add15~8_combout\ = ((\bo0|ula0|booth0|s[13]~8_combout\ $ (\bo0|ula0|booth0|Add14~21_combout\ $ (!\bo0|ula0|booth0|Add15~7\)))) # (GND)
-- \bo0|ula0|booth0|Add15~9\ = CARRY((\bo0|ula0|booth0|s[13]~8_combout\ & ((\bo0|ula0|booth0|Add14~21_combout\) # (!\bo0|ula0|booth0|Add15~7\))) # (!\bo0|ula0|booth0|s[13]~8_combout\ & (\bo0|ula0|booth0|Add14~21_combout\ & !\bo0|ula0|booth0|Add15~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[13]~8_combout\,
	datab => \bo0|ula0|booth0|Add14~21_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add15~7\,
	combout => \bo0|ula0|booth0|Add15~8_combout\,
	cout => \bo0|ula0|booth0|Add15~9\);

-- Location: LCCOMB_X17_Y9_N12
\bo0|ula0|booth0|Add16~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add16~8_combout\ = ((\bo0|ula0|booth0|Add14~21_combout\ $ (\bo0|regA|q\(4) $ (!\bo0|ula0|booth0|Add16~7\)))) # (GND)
-- \bo0|ula0|booth0|Add16~9\ = CARRY((\bo0|ula0|booth0|Add14~21_combout\ & ((\bo0|regA|q\(4)) # (!\bo0|ula0|booth0|Add16~7\))) # (!\bo0|ula0|booth0|Add14~21_combout\ & (\bo0|regA|q\(4) & !\bo0|ula0|booth0|Add16~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add14~21_combout\,
	datab => \bo0|regA|q\(4),
	datad => VCC,
	cin => \bo0|ula0|booth0|Add16~7\,
	combout => \bo0|ula0|booth0|Add16~8_combout\,
	cout => \bo0|ula0|booth0|Add16~9\);

-- Location: LCCOMB_X17_Y9_N28
\bo0|ula0|s_high[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|s_high[3]~6_combout\ = (\bo0|ula0|Mux0~0_combout\ & ((\bo0|ula0|booth0|Equal14~0_combout\ & (\bo0|ula0|booth0|Add15~8_combout\)) # (!\bo0|ula0|booth0|Equal14~0_combout\ & ((\bo0|ula0|booth0|Add16~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux0~0_combout\,
	datab => \bo0|ula0|booth0|Equal14~0_combout\,
	datac => \bo0|ula0|booth0|Add15~8_combout\,
	datad => \bo0|ula0|booth0|Add16~8_combout\,
	combout => \bo0|ula0|s_high[3]~6_combout\);

-- Location: LCCOMB_X17_Y9_N24
\bo0|ula0|s_high[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|s_high[3]~7_combout\ = (\bo0|ula0|s_high[3]~6_combout\) # ((\bo0|ula0|Mux0~7_combout\ & \bo0|ula0|booth0|Add14~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux0~7_combout\,
	datac => \bo0|ula0|booth0|Add14~21_combout\,
	datad => \bo0|ula0|s_high[3]~6_combout\,
	combout => \bo0|ula0|s_high[3]~7_combout\);

-- Location: LCFF_X17_Y9_N25
\bo0|regS_high|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|s_high[3]~7_combout\,
	ena => \bc0|state.carrega_saida~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_high|q\(3));

-- Location: LCCOMB_X15_Y10_N14
\bo0|ula0|booth0|Add12~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~26_combout\ = \bo0|regA|q\(7) $ (\bo0|ula0|booth0|Add12~23\ $ (\bo0|ula0|booth0|Add10~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(7),
	datad => \bo0|ula0|booth0|Add10~29_combout\,
	cin => \bo0|ula0|booth0|Add12~23\,
	combout => \bo0|ula0|booth0|Add12~26_combout\);

-- Location: LCCOMB_X14_Y10_N18
\bo0|ula0|booth0|Add11~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add11~14_combout\ = \bo0|ula0|booth0|s[16]~14_combout\ $ (\bo0|ula0|booth0|Add11~13\ $ (\bo0|ula0|booth0|Add10~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[16]~14_combout\,
	datad => \bo0|ula0|booth0|Add10~29_combout\,
	cin => \bo0|ula0|booth0|Add11~13\,
	combout => \bo0|ula0|booth0|Add11~14_combout\);

-- Location: LCCOMB_X14_Y9_N8
\bo0|ula0|booth0|Add12~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~28_combout\ = (\bo0|regB|q\(4) & (!\bo0|regB|q\(5) & (\bo0|ula0|booth0|Add12~26_combout\))) # (!\bo0|regB|q\(4) & (\bo0|regB|q\(5) & ((\bo0|ula0|booth0|Add11~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(4),
	datab => \bo0|regB|q\(5),
	datac => \bo0|ula0|booth0|Add12~26_combout\,
	datad => \bo0|ula0|booth0|Add11~14_combout\,
	combout => \bo0|ula0|booth0|Add12~28_combout\);

-- Location: LCCOMB_X14_Y9_N2
\bo0|ula0|booth0|Add12~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add12~29_combout\ = (\bo0|ula0|booth0|Add12~28_combout\) # ((\bo0|ula0|booth0|Add10~29_combout\ & (\bo0|regB|q\(4) $ (!\bo0|regB|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(4),
	datab => \bo0|regB|q\(5),
	datac => \bo0|ula0|booth0|Add12~28_combout\,
	datad => \bo0|ula0|booth0|Add10~29_combout\,
	combout => \bo0|ula0|booth0|Add12~29_combout\);

-- Location: LCCOMB_X14_Y9_N22
\bo0|ula0|booth0|Add14~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~22_combout\ = ((\bo0|regA|q\(6) $ (\bo0|ula0|booth0|Add12~29_combout\ $ (!\bo0|ula0|booth0|Add14~19\)))) # (GND)
-- \bo0|ula0|booth0|Add14~23\ = CARRY((\bo0|regA|q\(6) & ((\bo0|ula0|booth0|Add12~29_combout\) # (!\bo0|ula0|booth0|Add14~19\))) # (!\bo0|regA|q\(6) & (\bo0|ula0|booth0|Add12~29_combout\ & !\bo0|ula0|booth0|Add14~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(6),
	datab => \bo0|ula0|booth0|Add12~29_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add14~19\,
	combout => \bo0|ula0|booth0|Add14~22_combout\,
	cout => \bo0|ula0|booth0|Add14~23\);

-- Location: LCCOMB_X15_Y9_N18
\bo0|ula0|booth0|Add13~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add13~12_combout\ = ((\bo0|ula0|booth0|Add12~29_combout\ $ (\bo0|ula0|booth0|s[15]~12_combout\ $ (!\bo0|ula0|booth0|Add13~11\)))) # (GND)
-- \bo0|ula0|booth0|Add13~13\ = CARRY((\bo0|ula0|booth0|Add12~29_combout\ & ((\bo0|ula0|booth0|s[15]~12_combout\) # (!\bo0|ula0|booth0|Add13~11\))) # (!\bo0|ula0|booth0|Add12~29_combout\ & (\bo0|ula0|booth0|s[15]~12_combout\ & !\bo0|ula0|booth0|Add13~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add12~29_combout\,
	datab => \bo0|ula0|booth0|s[15]~12_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add13~11\,
	combout => \bo0|ula0|booth0|Add13~12_combout\,
	cout => \bo0|ula0|booth0|Add13~13\);

-- Location: LCCOMB_X14_Y9_N28
\bo0|ula0|booth0|Add14~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~24_combout\ = (\bo0|regB|q\(6) & (((!\bo0|regB|q\(5) & \bo0|ula0|booth0|Add13~12_combout\)))) # (!\bo0|regB|q\(6) & (\bo0|ula0|booth0|Add14~22_combout\ & (\bo0|regB|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(6),
	datab => \bo0|ula0|booth0|Add14~22_combout\,
	datac => \bo0|regB|q\(5),
	datad => \bo0|ula0|booth0|Add13~12_combout\,
	combout => \bo0|ula0|booth0|Add14~24_combout\);

-- Location: LCCOMB_X14_Y9_N6
\bo0|ula0|booth0|Add14~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~25_combout\ = (\bo0|ula0|booth0|Add14~24_combout\) # ((\bo0|ula0|booth0|Add12~29_combout\ & (\bo0|regB|q\(6) $ (!\bo0|regB|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(6),
	datab => \bo0|ula0|booth0|Add12~29_combout\,
	datac => \bo0|regB|q\(5),
	datad => \bo0|ula0|booth0|Add14~24_combout\,
	combout => \bo0|ula0|booth0|Add14~25_combout\);

-- Location: LCCOMB_X18_Y9_N14
\bo0|ula0|booth0|Add15~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add15~10_combout\ = (\bo0|ula0|booth0|s[14]~10_combout\ & ((\bo0|ula0|booth0|Add14~25_combout\ & (\bo0|ula0|booth0|Add15~9\ & VCC)) # (!\bo0|ula0|booth0|Add14~25_combout\ & (!\bo0|ula0|booth0|Add15~9\)))) # 
-- (!\bo0|ula0|booth0|s[14]~10_combout\ & ((\bo0|ula0|booth0|Add14~25_combout\ & (!\bo0|ula0|booth0|Add15~9\)) # (!\bo0|ula0|booth0|Add14~25_combout\ & ((\bo0|ula0|booth0|Add15~9\) # (GND)))))
-- \bo0|ula0|booth0|Add15~11\ = CARRY((\bo0|ula0|booth0|s[14]~10_combout\ & (!\bo0|ula0|booth0|Add14~25_combout\ & !\bo0|ula0|booth0|Add15~9\)) # (!\bo0|ula0|booth0|s[14]~10_combout\ & ((!\bo0|ula0|booth0|Add15~9\) # (!\bo0|ula0|booth0|Add14~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[14]~10_combout\,
	datab => \bo0|ula0|booth0|Add14~25_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add15~9\,
	combout => \bo0|ula0|booth0|Add15~10_combout\,
	cout => \bo0|ula0|booth0|Add15~11\);

-- Location: LCCOMB_X17_Y9_N14
\bo0|ula0|booth0|Add16~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add16~10_combout\ = (\bo0|regA|q\(5) & ((\bo0|ula0|booth0|Add14~25_combout\ & (\bo0|ula0|booth0|Add16~9\ & VCC)) # (!\bo0|ula0|booth0|Add14~25_combout\ & (!\bo0|ula0|booth0|Add16~9\)))) # (!\bo0|regA|q\(5) & 
-- ((\bo0|ula0|booth0|Add14~25_combout\ & (!\bo0|ula0|booth0|Add16~9\)) # (!\bo0|ula0|booth0|Add14~25_combout\ & ((\bo0|ula0|booth0|Add16~9\) # (GND)))))
-- \bo0|ula0|booth0|Add16~11\ = CARRY((\bo0|regA|q\(5) & (!\bo0|ula0|booth0|Add14~25_combout\ & !\bo0|ula0|booth0|Add16~9\)) # (!\bo0|regA|q\(5) & ((!\bo0|ula0|booth0|Add16~9\) # (!\bo0|ula0|booth0|Add14~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(5),
	datab => \bo0|ula0|booth0|Add14~25_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add16~9\,
	combout => \bo0|ula0|booth0|Add16~10_combout\,
	cout => \bo0|ula0|booth0|Add16~11\);

-- Location: LCCOMB_X17_Y9_N22
\bo0|ula0|s_high[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|s_high[4]~8_combout\ = (\bo0|ula0|Mux0~0_combout\ & ((\bo0|ula0|booth0|Equal14~0_combout\ & (\bo0|ula0|booth0|Add15~10_combout\)) # (!\bo0|ula0|booth0|Equal14~0_combout\ & ((\bo0|ula0|booth0|Add16~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux0~0_combout\,
	datab => \bo0|ula0|booth0|Equal14~0_combout\,
	datac => \bo0|ula0|booth0|Add15~10_combout\,
	datad => \bo0|ula0|booth0|Add16~10_combout\,
	combout => \bo0|ula0|s_high[4]~8_combout\);

-- Location: LCCOMB_X17_Y9_N26
\bo0|ula0|s_high[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|s_high[4]~9_combout\ = (\bo0|ula0|s_high[4]~8_combout\) # ((\bo0|ula0|Mux0~7_combout\ & \bo0|ula0|booth0|Add14~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux0~7_combout\,
	datac => \bo0|ula0|booth0|Add14~25_combout\,
	datad => \bo0|ula0|s_high[4]~8_combout\,
	combout => \bo0|ula0|s_high[4]~9_combout\);

-- Location: LCFF_X17_Y9_N27
\bo0|regS_high|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|s_high[4]~9_combout\,
	ena => \bc0|state.carrega_saida~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_high|q\(4));

-- Location: LCCOMB_X14_Y9_N24
\bo0|ula0|booth0|Add14~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~26_combout\ = \bo0|regA|q\(7) $ (\bo0|ula0|booth0|Add14~23\ $ (\bo0|ula0|booth0|Add12~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo0|regA|q\(7),
	datad => \bo0|ula0|booth0|Add12~29_combout\,
	cin => \bo0|ula0|booth0|Add14~23\,
	combout => \bo0|ula0|booth0|Add14~26_combout\);

-- Location: LCCOMB_X15_Y9_N20
\bo0|ula0|booth0|Add13~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add13~14_combout\ = \bo0|ula0|booth0|s[16]~14_combout\ $ (\bo0|ula0|booth0|Add13~13\ $ (\bo0|ula0|booth0|Add12~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[16]~14_combout\,
	datad => \bo0|ula0|booth0|Add12~29_combout\,
	cin => \bo0|ula0|booth0|Add13~13\,
	combout => \bo0|ula0|booth0|Add13~14_combout\);

-- Location: LCCOMB_X14_Y9_N4
\bo0|ula0|booth0|Add14~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~28_combout\ = (\bo0|regB|q\(6) & (!\bo0|regB|q\(5) & ((\bo0|ula0|booth0|Add13~14_combout\)))) # (!\bo0|regB|q\(6) & (\bo0|regB|q\(5) & (\bo0|ula0|booth0|Add14~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(6),
	datab => \bo0|regB|q\(5),
	datac => \bo0|ula0|booth0|Add14~26_combout\,
	datad => \bo0|ula0|booth0|Add13~14_combout\,
	combout => \bo0|ula0|booth0|Add14~28_combout\);

-- Location: LCCOMB_X14_Y9_N30
\bo0|ula0|booth0|Add14~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add14~29_combout\ = (\bo0|ula0|booth0|Add14~28_combout\) # ((\bo0|ula0|booth0|Add12~29_combout\ & (\bo0|regB|q\(6) $ (!\bo0|regB|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(6),
	datab => \bo0|regB|q\(5),
	datac => \bo0|ula0|booth0|Add14~28_combout\,
	datad => \bo0|ula0|booth0|Add12~29_combout\,
	combout => \bo0|ula0|booth0|Add14~29_combout\);

-- Location: LCCOMB_X18_Y9_N16
\bo0|ula0|booth0|Add15~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add15~12_combout\ = ((\bo0|ula0|booth0|s[15]~12_combout\ $ (\bo0|ula0|booth0|Add14~29_combout\ $ (!\bo0|ula0|booth0|Add15~11\)))) # (GND)
-- \bo0|ula0|booth0|Add15~13\ = CARRY((\bo0|ula0|booth0|s[15]~12_combout\ & ((\bo0|ula0|booth0|Add14~29_combout\) # (!\bo0|ula0|booth0|Add15~11\))) # (!\bo0|ula0|booth0|s[15]~12_combout\ & (\bo0|ula0|booth0|Add14~29_combout\ & !\bo0|ula0|booth0|Add15~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[15]~12_combout\,
	datab => \bo0|ula0|booth0|Add14~29_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add15~11\,
	combout => \bo0|ula0|booth0|Add15~12_combout\,
	cout => \bo0|ula0|booth0|Add15~13\);

-- Location: LCCOMB_X17_Y9_N16
\bo0|ula0|booth0|Add16~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add16~12_combout\ = ((\bo0|regA|q\(6) $ (\bo0|ula0|booth0|Add14~29_combout\ $ (!\bo0|ula0|booth0|Add16~11\)))) # (GND)
-- \bo0|ula0|booth0|Add16~13\ = CARRY((\bo0|regA|q\(6) & ((\bo0|ula0|booth0|Add14~29_combout\) # (!\bo0|ula0|booth0|Add16~11\))) # (!\bo0|regA|q\(6) & (\bo0|ula0|booth0|Add14~29_combout\ & !\bo0|ula0|booth0|Add16~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(6),
	datab => \bo0|ula0|booth0|Add14~29_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add16~11\,
	combout => \bo0|ula0|booth0|Add16~12_combout\,
	cout => \bo0|ula0|booth0|Add16~13\);

-- Location: LCCOMB_X18_Y9_N2
\bo0|ula0|s_high[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|s_high[5]~10_combout\ = (\bo0|ula0|Mux0~0_combout\ & ((\bo0|ula0|booth0|Equal14~0_combout\ & (\bo0|ula0|booth0|Add15~12_combout\)) # (!\bo0|ula0|booth0|Equal14~0_combout\ & ((\bo0|ula0|booth0|Add16~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux0~0_combout\,
	datab => \bo0|ula0|booth0|Equal14~0_combout\,
	datac => \bo0|ula0|booth0|Add15~12_combout\,
	datad => \bo0|ula0|booth0|Add16~12_combout\,
	combout => \bo0|ula0|s_high[5]~10_combout\);

-- Location: LCCOMB_X18_Y9_N30
\bo0|ula0|s_high[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|s_high[5]~11_combout\ = (\bo0|ula0|s_high[5]~10_combout\) # ((\bo0|ula0|Mux0~7_combout\ & \bo0|ula0|booth0|Add14~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo0|ula0|Mux0~7_combout\,
	datac => \bo0|ula0|booth0|Add14~29_combout\,
	datad => \bo0|ula0|s_high[5]~10_combout\,
	combout => \bo0|ula0|s_high[5]~11_combout\);

-- Location: LCFF_X18_Y9_N31
\bo0|regS_high|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|s_high[5]~11_combout\,
	ena => \bc0|state.carrega_saida~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_high|q\(5));

-- Location: LCCOMB_X18_Y9_N18
\bo0|ula0|booth0|Add15~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add15~14_combout\ = \bo0|ula0|booth0|s[16]~14_combout\ $ (\bo0|ula0|booth0|Add15~13\ $ (\bo0|ula0|booth0|Add14~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|s[16]~14_combout\,
	datad => \bo0|ula0|booth0|Add14~29_combout\,
	cin => \bo0|ula0|booth0|Add15~13\,
	combout => \bo0|ula0|booth0|Add15~14_combout\);

-- Location: LCCOMB_X17_Y9_N18
\bo0|ula0|booth0|Add16~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add16~14_combout\ = \bo0|regA|q\(7) $ (\bo0|ula0|booth0|Add16~13\ $ (\bo0|ula0|booth0|Add14~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(7),
	datad => \bo0|ula0|booth0|Add14~29_combout\,
	cin => \bo0|ula0|booth0|Add16~13\,
	combout => \bo0|ula0|booth0|Add16~14_combout\);

-- Location: LCCOMB_X18_Y9_N0
\bo0|ula0|s_high[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|s_high[6]~12_combout\ = (\bo0|ula0|Mux0~0_combout\ & ((\bo0|ula0|booth0|Equal14~0_combout\ & (\bo0|ula0|booth0|Add15~14_combout\)) # (!\bo0|ula0|booth0|Equal14~0_combout\ & ((\bo0|ula0|booth0|Add16~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux0~0_combout\,
	datab => \bo0|ula0|booth0|Add15~14_combout\,
	datac => \bo0|ula0|booth0|Equal14~0_combout\,
	datad => \bo0|ula0|booth0|Add16~14_combout\,
	combout => \bo0|ula0|s_high[6]~12_combout\);

-- Location: LCCOMB_X18_Y9_N24
\bo0|ula0|s_high[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|s_high[6]~13_combout\ = (\bo0|ula0|s_high[6]~12_combout\) # ((\bo0|ula0|Mux0~7_combout\ & \bo0|ula0|booth0|Add14~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo0|ula0|Mux0~7_combout\,
	datac => \bo0|ula0|booth0|Add14~29_combout\,
	datad => \bo0|ula0|s_high[6]~12_combout\,
	combout => \bo0|ula0|s_high[6]~13_combout\);

-- Location: LCFF_X18_Y9_N17
\bo0|regS_high|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo0|ula0|s_high[6]~13_combout\,
	sload => VCC,
	ena => \bc0|state.carrega_saida~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_high|q\(6));

-- Location: LCFF_X18_Y9_N25
\bo0|regS_high|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|s_high[6]~13_combout\,
	ena => \bc0|state.carrega_saida~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_high|q\(7));

-- Location: LCCOMB_X19_Y9_N26
\bo0|ula0|flag_z_n_ovf_e[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|flag_z_n_ovf_e[3]~0_combout\ = (!\bo0|ula0|s_high[3]~7_combout\ & (!\bo0|ula0|s_high[2]~5_combout\ & (!\bo0|ula0|s_high[5]~11_combout\ & !\bo0|ula0|s_high[4]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|s_high[3]~7_combout\,
	datab => \bo0|ula0|s_high[2]~5_combout\,
	datac => \bo0|ula0|s_high[5]~11_combout\,
	datad => \bo0|ula0|s_high[4]~9_combout\,
	combout => \bo0|ula0|flag_z_n_ovf_e[3]~0_combout\);

-- Location: LCCOMB_X19_Y9_N16
\bo0|ula0|flag_z_n_ovf_e[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|flag_z_n_ovf_e[3]~1_combout\ = (!\bo0|ula0|Mux2~8_combout\ & (!\bo0|ula0|Mux1~6_combout\ & (!\bo0|ula0|s_high[0]~1_combout\ & !\bo0|ula0|s_high[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux2~8_combout\,
	datab => \bo0|ula0|Mux1~6_combout\,
	datac => \bo0|ula0|s_high[0]~1_combout\,
	datad => \bo0|ula0|s_high[1]~3_combout\,
	combout => \bo0|ula0|flag_z_n_ovf_e[3]~1_combout\);

-- Location: LCCOMB_X18_Y9_N22
\bo0|ula0|flag_z_n_ovf_e[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|flag_z_n_ovf_e[3]~2_combout\ = (!\bo0|ula0|Mux0~8_combout\ & (!\bo0|ula0|s_high[6]~12_combout\ & ((!\bo0|ula0|Mux0~7_combout\) # (!\bo0|ula0|booth0|Add14~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add14~29_combout\,
	datab => \bo0|ula0|Mux0~7_combout\,
	datac => \bo0|ula0|Mux0~8_combout\,
	datad => \bo0|ula0|s_high[6]~12_combout\,
	combout => \bo0|ula0|flag_z_n_ovf_e[3]~2_combout\);

-- Location: LCCOMB_X19_Y9_N0
\bo0|ula0|flag_z_n_ovf_e[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|flag_z_n_ovf_e[3]~5_combout\ = (\bo0|ula0|flag_z_n_ovf_e[3]~4_combout\ & (\bo0|ula0|flag_z_n_ovf_e[3]~0_combout\ & (\bo0|ula0|flag_z_n_ovf_e[3]~1_combout\ & \bo0|ula0|flag_z_n_ovf_e[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|flag_z_n_ovf_e[3]~4_combout\,
	datab => \bo0|ula0|flag_z_n_ovf_e[3]~0_combout\,
	datac => \bo0|ula0|flag_z_n_ovf_e[3]~1_combout\,
	datad => \bo0|ula0|flag_z_n_ovf_e[3]~2_combout\,
	combout => \bo0|ula0|flag_z_n_ovf_e[3]~5_combout\);

-- Location: LCFF_X19_Y9_N1
\bo0|regflag_z_n_ovf|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|flag_z_n_ovf_e[3]~5_combout\,
	ena => \bc0|state.carrega_saida~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regflag_z_n_ovf|q\(3));

-- Location: LCCOMB_X19_Y9_N18
\bo0|ula0|flag_z_n_ovf_e[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|flag_z_n_ovf_e[1]~10_combout\ = (((!\bo0|ula0|s_high[3]~7_combout\) # (!\bo0|ula0|s_high[5]~11_combout\)) # (!\bo0|ula0|s_high[4]~9_combout\)) # (!\bo0|ula0|s_high[2]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|s_high[2]~5_combout\,
	datab => \bo0|ula0|s_high[4]~9_combout\,
	datac => \bo0|ula0|s_high[5]~11_combout\,
	datad => \bo0|ula0|s_high[3]~7_combout\,
	combout => \bo0|ula0|flag_z_n_ovf_e[1]~10_combout\);

-- Location: LCCOMB_X19_Y9_N14
\bo0|ula0|flag_z_n_ovf_e[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|flag_z_n_ovf_e[1]~6_combout\ = (\bo0|ula0|Equal4~1_combout\ & ((\bo0|ula0|s_high[0]~1_combout\ & ((!\bo0|ula0|s_high[6]~13_combout\) # (!\bo0|ula0|s_high[2]~5_combout\))) # (!\bo0|ula0|s_high[0]~1_combout\ & ((\bo0|ula0|s_high[2]~5_combout\) # 
-- (\bo0|ula0|s_high[6]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|s_high[0]~1_combout\,
	datab => \bo0|ula0|Equal4~1_combout\,
	datac => \bo0|ula0|s_high[2]~5_combout\,
	datad => \bo0|ula0|s_high[6]~13_combout\,
	combout => \bo0|ula0|flag_z_n_ovf_e[1]~6_combout\);

-- Location: LCCOMB_X13_Y12_N2
\bo0|ula0|flag_z_n_ovf_e[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|flag_z_n_ovf_e[1]~7_combout\ = (\bo0|ula0|somasub0|Add0~24_combout\ & (\bo0|ula0|somasub0|Add0~23_combout\ & !\bo0|regA|q\(7))) # (!\bo0|ula0|somasub0|Add0~24_combout\ & (!\bo0|ula0|somasub0|Add0~23_combout\ & \bo0|regA|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|somasub0|Add0~24_combout\,
	datac => \bo0|ula0|somasub0|Add0~23_combout\,
	datad => \bo0|regA|q\(7),
	combout => \bo0|ula0|flag_z_n_ovf_e[1]~7_combout\);

-- Location: LCCOMB_X13_Y12_N4
\bo0|ula0|flag_z_n_ovf_e[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|flag_z_n_ovf_e[1]~8_combout\ = (!\bo0|regOp|q\(3) & (\bo0|ula0|flag_z_n_ovf_e[1]~7_combout\ & (\bc0|Equal0~1_combout\ $ (!\bo0|regOp|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(3),
	datab => \bo0|ula0|flag_z_n_ovf_e[1]~7_combout\,
	datac => \bc0|Equal0~1_combout\,
	datad => \bo0|regOp|q\(2),
	combout => \bo0|ula0|flag_z_n_ovf_e[1]~8_combout\);

-- Location: LCCOMB_X19_Y9_N28
\bo0|ula0|flag_z_n_ovf_e[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|flag_z_n_ovf_e[1]~9_combout\ = (\bo0|ula0|flag_z_n_ovf_e[1]~8_combout\) # ((\bo0|ula0|Equal4~1_combout\ & (!\bo0|ula0|s_high[1]~3_combout\ & !\bo0|ula0|flag_z_n_ovf_e[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Equal4~1_combout\,
	datab => \bo0|ula0|s_high[1]~3_combout\,
	datac => \bo0|ula0|flag_z_n_ovf_e[1]~8_combout\,
	datad => \bo0|ula0|flag_z_n_ovf_e[3]~0_combout\,
	combout => \bo0|ula0|flag_z_n_ovf_e[1]~9_combout\);

-- Location: LCCOMB_X19_Y9_N6
\bo0|ula0|flag_z_n_ovf_e[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|flag_z_n_ovf_e[1]~12_combout\ = (\bo0|ula0|flag_z_n_ovf_e[1]~6_combout\) # ((\bo0|ula0|flag_z_n_ovf_e[1]~9_combout\) # ((\bo0|ula0|flag_z_n_ovf_e[1]~11_combout\ & \bo0|ula0|flag_z_n_ovf_e[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|flag_z_n_ovf_e[1]~11_combout\,
	datab => \bo0|ula0|flag_z_n_ovf_e[1]~10_combout\,
	datac => \bo0|ula0|flag_z_n_ovf_e[1]~6_combout\,
	datad => \bo0|ula0|flag_z_n_ovf_e[1]~9_combout\,
	combout => \bo0|ula0|flag_z_n_ovf_e[1]~12_combout\);

-- Location: LCFF_X19_Y9_N7
\bo0|regflag_z_n_ovf|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|flag_z_n_ovf_e[1]~12_combout\,
	ena => \bc0|state.carrega_saida~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regflag_z_n_ovf|q\(1));

-- Location: LCFF_X18_Y9_N13
\bo0|regflag_z_n_ovf|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo0|ula0|s_high[6]~13_combout\,
	sload => VCC,
	ena => \bc0|state.carrega_saida~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regflag_z_n_ovf|q\(2));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_low[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regS_low|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_low(0));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_low[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regS_low|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_low(1));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_low[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regS_low|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_low(2));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_low[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regS_low|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_low(3));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_low[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regS_low|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_low(4));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_low[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regS_low|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_low(5));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_low[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regS_low|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_low(6));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_low[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regS_low|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_low(7));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_high[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regS_high|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_high(0));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_high[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regS_high|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_high(1));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_high[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regS_high|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_high(2));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_high[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regS_high|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_high(3));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_high[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regS_high|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_high(4));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_high[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regS_high|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_high(5));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_high[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regS_high|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_high(6));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s_high[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regS_high|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s_high(7));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\flagZ~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regflag_z_n_ovf|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_flagZ);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\flagOvf~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regflag_z_n_ovf|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_flagOvf);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\flagN~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regflag_z_n_ovf|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_flagN);

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\flagError~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_flagError);

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\enable_PC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bc0|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_enable_PC);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ENABLE_A~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bc0|state.carrega_A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ENABLE_A);

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\enable_b~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bc0|state.carrega_B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_enable_b);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\enable_op~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bc0|state.carrega_OP~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_enable_op);

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\calcular_sinal~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bc0|state.calcula~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_calcular_sinal);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\opcode_teste[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regOp|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_opcode_teste(0));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\opcode_teste[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regOp|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_opcode_teste(1));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\opcode_teste[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regOp|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_opcode_teste(2));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\opcode_teste[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \bo0|regOp|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_opcode_teste(3));
END structure;


