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

-- DATE "06/18/2022 10:53:19"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
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
	dado : IN std_logic_vector(3 DOWNTO 0);
	s_low : OUT std_logic_vector(3 DOWNTO 0);
	s_high : OUT std_logic_vector(3 DOWNTO 0);
	flagZ : OUT std_logic;
	flagOvf : OUT std_logic;
	flagN : OUT std_logic
	);
END TP1;

-- Design Ports Information
-- s_low[0]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_low[1]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_low[2]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_low[3]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_high[0]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_high[1]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_high[2]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s_high[3]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- flagZ	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- flagOvf	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- flagN	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dado[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dado[2]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dado[1]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dado[3]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inicio	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_dado : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s_low : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_s_high : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_flagZ : std_logic;
SIGNAL ww_flagOvf : std_logic;
SIGNAL ww_flagN : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo0|ula0|booth0|Add3~0_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~2_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add1~2_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~4_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux3~3_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux2~2_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add0~2_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux0~3_combout\ : std_logic;
SIGNAL \bo0|ula0|flag_z_n_ovf[2]~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \bc0|state.S3~feeder_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \bc0|state.S3~regout\ : std_logic;
SIGNAL \bc0|state.S4~feeder_combout\ : std_logic;
SIGNAL \bc0|state.S4~regout\ : std_logic;
SIGNAL \inicio~combout\ : std_logic;
SIGNAL \bc0|Selector0~0_combout\ : std_logic;
SIGNAL \bc0|state.S0~regout\ : std_logic;
SIGNAL \bc0|state~9_combout\ : std_logic;
SIGNAL \bc0|state.S1~regout\ : std_logic;
SIGNAL \bc0|state.S2~regout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add1~0_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~0_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux3~0_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux3~1_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux3~2_combout\ : std_logic;
SIGNAL \bo0|ula0|Equal1~0_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux3~4_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|p1~0_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~4_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux2~0_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux2~1_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux2~3_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux2~4_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add1~1\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add1~3\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add1~4_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux1~2_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux1~3_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|p1~1_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add0~0_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add3~1\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add3~2_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~5\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~8_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~9_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~0_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~0_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux1~0_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux1~1_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux1~4_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux0~0_combout\ : std_logic;
SIGNAL \bo0|ula0|Equal0~0_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~1\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~3\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~5\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add0~6_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add1~5\ : std_logic;
SIGNAL \bo0|ula0|somasub0|Add1~6_combout\ : std_logic;
SIGNAL \bo0|ula0|somasub0|s[3]~0_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux0~1_combout\ : std_logic;
SIGNAL \bo0|ula0|s_high[0]~0_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux0~2_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~0_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add0~1_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|p1~2_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~7\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~10_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add3~3\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add3~4_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~12_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~16_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~1\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~2_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~1\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~2_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~4_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~5_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~0_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux0~4_combout\ : std_logic;
SIGNAL \bo0|ula0|Mux0~5_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~11\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~13_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add3~5\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add3~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~15_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add4~17_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~3\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~4_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~3\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~8_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~9_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~1\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~2_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~1\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~2_combout\ : std_logic;
SIGNAL \bo0|ula0|s_high[0]~1_combout\ : std_logic;
SIGNAL \bo0|ula0|s_high[0]~2_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~7\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~10_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~5\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add5~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~12_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add6~13_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~3\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~4_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~3\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~4_combout\ : std_logic;
SIGNAL \bo0|ula0|s_high[1]~3_combout\ : std_logic;
SIGNAL \bo0|ula0|s_high[1]~4_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~5\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add7~6_combout\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~5\ : std_logic;
SIGNAL \bo0|ula0|booth0|Add8~6_combout\ : std_logic;
SIGNAL \bo0|ula0|s_high[2]~5_combout\ : std_logic;
SIGNAL \bo0|ula0|s_high[2]~6_combout\ : std_logic;
SIGNAL \bo0|ula0|flag_z_n_ovf[2]~1_combout\ : std_logic;
SIGNAL \bo0|ula0|flag_z_n_ovf[0]~3_combout\ : std_logic;
SIGNAL \bo0|ula0|flag_z_n_ovf[0]~2_combout\ : std_logic;
SIGNAL \bo0|ula0|flag_z_n_ovf[0]~4_combout\ : std_logic;
SIGNAL \dado~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo0|regflag_z_n_ovf|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \bo0|regB|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo0|regOp|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \bo0|regS_high|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo0|regA|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo0|regS_low|q\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_inicio <= inicio;
ww_reset <= reset;
ww_dado <= dado;
s_low <= ww_s_low;
s_high <= ww_s_high;
flagZ <= ww_flagZ;
flagOvf <= ww_flagOvf;
flagN <= ww_flagN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

-- Location: LCCOMB_X25_Y35_N0
\bo0|ula0|booth0|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add3~0_combout\ = (\bo0|ula0|booth0|p1~0_combout\ & (\bo0|regA|q\(0) $ (VCC))) # (!\bo0|ula0|booth0|p1~0_combout\ & (\bo0|regA|q\(0) & VCC))
-- \bo0|ula0|booth0|Add3~1\ = CARRY((\bo0|ula0|booth0|p1~0_combout\ & \bo0|regA|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|p1~0_combout\,
	datab => \bo0|regA|q\(0),
	datad => VCC,
	combout => \bo0|ula0|booth0|Add3~0_combout\,
	cout => \bo0|ula0|booth0|Add3~1\);

-- Location: LCCOMB_X21_Y35_N10
\bo0|ula0|somasub0|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add0~2_combout\ = (\bo0|regB|q\(1) & ((\bo0|regA|q\(1) & (!\bo0|ula0|somasub0|Add0~1\)) # (!\bo0|regA|q\(1) & ((\bo0|ula0|somasub0|Add0~1\) # (GND))))) # (!\bo0|regB|q\(1) & ((\bo0|regA|q\(1) & (\bo0|ula0|somasub0|Add0~1\ & VCC)) # 
-- (!\bo0|regA|q\(1) & (!\bo0|ula0|somasub0|Add0~1\))))
-- \bo0|ula0|somasub0|Add0~3\ = CARRY((\bo0|regB|q\(1) & ((!\bo0|ula0|somasub0|Add0~1\) # (!\bo0|regA|q\(1)))) # (!\bo0|regB|q\(1) & (!\bo0|regA|q\(1) & !\bo0|ula0|somasub0|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(1),
	datab => \bo0|regA|q\(1),
	datad => VCC,
	cin => \bo0|ula0|somasub0|Add0~1\,
	combout => \bo0|ula0|somasub0|Add0~2_combout\,
	cout => \bo0|ula0|somasub0|Add0~3\);

-- Location: LCCOMB_X21_Y35_N2
\bo0|ula0|somasub0|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add1~2_combout\ = (\bo0|regB|q\(1) & ((\bo0|regA|q\(1) & (\bo0|ula0|somasub0|Add1~1\ & VCC)) # (!\bo0|regA|q\(1) & (!\bo0|ula0|somasub0|Add1~1\)))) # (!\bo0|regB|q\(1) & ((\bo0|regA|q\(1) & (!\bo0|ula0|somasub0|Add1~1\)) # 
-- (!\bo0|regA|q\(1) & ((\bo0|ula0|somasub0|Add1~1\) # (GND)))))
-- \bo0|ula0|somasub0|Add1~3\ = CARRY((\bo0|regB|q\(1) & (!\bo0|regA|q\(1) & !\bo0|ula0|somasub0|Add1~1\)) # (!\bo0|regB|q\(1) & ((!\bo0|ula0|somasub0|Add1~1\) # (!\bo0|regA|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(1),
	datab => \bo0|regA|q\(1),
	datad => VCC,
	cin => \bo0|ula0|somasub0|Add1~1\,
	combout => \bo0|ula0|somasub0|Add1~2_combout\,
	cout => \bo0|ula0|somasub0|Add1~3\);

-- Location: LCCOMB_X21_Y35_N12
\bo0|ula0|somasub0|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add0~4_combout\ = ((\bo0|regA|q\(2) $ (\bo0|regB|q\(2) $ (\bo0|ula0|somasub0|Add0~3\)))) # (GND)
-- \bo0|ula0|somasub0|Add0~5\ = CARRY((\bo0|regA|q\(2) & ((!\bo0|ula0|somasub0|Add0~3\) # (!\bo0|regB|q\(2)))) # (!\bo0|regA|q\(2) & (!\bo0|regB|q\(2) & !\bo0|ula0|somasub0|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(2),
	datab => \bo0|regB|q\(2),
	datad => VCC,
	cin => \bo0|ula0|somasub0|Add0~3\,
	combout => \bo0|ula0|somasub0|Add0~4_combout\,
	cout => \bo0|ula0|somasub0|Add0~5\);

-- Location: LCCOMB_X24_Y35_N10
\bo0|ula0|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux3~3_combout\ = (!\bo0|regOp|q\(2) & ((\bo0|regOp|q\(1) & ((\bo0|regB|q\(0)) # (!\bo0|ula0|Mux3~1_combout\))) # (!\bo0|regOp|q\(1) & ((\bo0|ula0|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(2),
	datab => \bo0|regOp|q\(1),
	datac => \bo0|regB|q\(0),
	datad => \bo0|ula0|Mux3~1_combout\,
	combout => \bo0|ula0|Mux3~3_combout\);

-- Location: LCCOMB_X21_Y35_N30
\bo0|ula0|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux2~2_combout\ = (\bo0|regOp|q\(1) & (((\bo0|ula0|Mux3~0_combout\)))) # (!\bo0|regOp|q\(1) & ((\bo0|ula0|Mux3~0_combout\ & ((\bo0|ula0|somasub0|Add1~2_combout\))) # (!\bo0|ula0|Mux3~0_combout\ & (\bo0|ula0|somasub0|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|somasub0|Add0~2_combout\,
	datab => \bo0|ula0|somasub0|Add1~2_combout\,
	datac => \bo0|regOp|q\(1),
	datad => \bo0|ula0|Mux3~0_combout\,
	combout => \bo0|ula0|Mux2~2_combout\);

-- Location: LCCOMB_X25_Y35_N30
\bo0|ula0|booth0|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add0~2_combout\ = \bo0|regA|q\(2) $ (((\bo0|regA|q\(0)) # (\bo0|regA|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo0|regA|q\(0),
	datac => \bo0|regA|q\(1),
	datad => \bo0|regA|q\(2),
	combout => \bo0|ula0|booth0|Add0~2_combout\);

-- Location: LCCOMB_X24_Y35_N2
\bo0|ula0|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux0~3_combout\ = (!\bo0|regB|q\(2) & (\bo0|regB|q\(3) & \bo0|ula0|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|regB|q\(3),
	datad => \bo0|ula0|Equal1~0_combout\,
	combout => \bo0|ula0|Mux0~3_combout\);

-- Location: LCCOMB_X23_Y35_N10
\bo0|ula0|flag_z_n_ovf[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|flag_z_n_ovf[2]~0_combout\ = (!\bo0|ula0|Mux3~4_combout\ & (!\bo0|ula0|Mux2~4_combout\ & (!\bo0|ula0|Mux1~4_combout\ & !\bo0|ula0|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux3~4_combout\,
	datab => \bo0|ula0|Mux2~4_combout\,
	datac => \bo0|ula0|Mux1~4_combout\,
	datad => \bo0|ula0|Mux0~5_combout\,
	combout => \bo0|ula0|flag_z_n_ovf[2]~0_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado[0]~I\ : cycloneii_io
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
	padio => ww_dado(0),
	combout => \dado~combout\(0));

-- Location: LCCOMB_X20_Y35_N26
\bc0|state.S3~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc0|state.S3~feeder_combout\ = \bc0|state.S2~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bc0|state.S2~regout\,
	combout => \bc0|state.S3~feeder_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X20_Y35_N27
\bc0|state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc0|state.S3~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc0|state.S3~regout\);

-- Location: LCCOMB_X20_Y35_N2
\bc0|state.S4~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc0|state.S4~feeder_combout\ = \bc0|state.S3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bc0|state.S3~regout\,
	combout => \bc0|state.S4~feeder_combout\);

-- Location: LCFF_X20_Y35_N3
\bc0|state.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc0|state.S4~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc0|state.S4~regout\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X20_Y35_N0
\bc0|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc0|Selector0~0_combout\ = (!\bc0|state.S4~regout\ & ((\bc0|state.S0~regout\) # (\inicio~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc0|state.S4~regout\,
	datac => \bc0|state.S0~regout\,
	datad => \inicio~combout\,
	combout => \bc0|Selector0~0_combout\);

-- Location: LCFF_X20_Y35_N1
\bc0|state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc0|Selector0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc0|state.S0~regout\);

-- Location: LCCOMB_X20_Y35_N24
\bc0|state~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc0|state~9_combout\ = (!\bc0|state.S0~regout\ & \inicio~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc0|state.S0~regout\,
	datad => \inicio~combout\,
	combout => \bc0|state~9_combout\);

-- Location: LCFF_X20_Y35_N25
\bc0|state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bc0|state~9_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc0|state.S1~regout\);

-- Location: LCFF_X20_Y35_N11
\bc0|state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bc0|state.S1~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc0|state.S2~regout\);

-- Location: LCFF_X25_Y35_N21
\bo0|regA|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \dado~combout\(0),
	sload => VCC,
	ena => \bc0|state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regA|q\(0));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado[1]~I\ : cycloneii_io
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
	padio => ww_dado(1),
	combout => \dado~combout\(1));

-- Location: LCFF_X24_Y35_N5
\bo0|regOp|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \dado~combout\(1),
	sload => VCC,
	ena => \bc0|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regOp|q\(1));

-- Location: LCFF_X25_Y35_N23
\bo0|regB|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \dado~combout\(0),
	sload => VCC,
	ena => \bc0|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regB|q\(0));

-- Location: LCCOMB_X21_Y35_N0
\bo0|ula0|somasub0|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add1~0_combout\ = (\bo0|regA|q\(0) & (\bo0|regB|q\(0) $ (VCC))) # (!\bo0|regA|q\(0) & (\bo0|regB|q\(0) & VCC))
-- \bo0|ula0|somasub0|Add1~1\ = CARRY((\bo0|regA|q\(0) & \bo0|regB|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(0),
	datab => \bo0|regB|q\(0),
	datad => VCC,
	combout => \bo0|ula0|somasub0|Add1~0_combout\,
	cout => \bo0|ula0|somasub0|Add1~1\);

-- Location: LCCOMB_X21_Y35_N8
\bo0|ula0|somasub0|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add0~0_combout\ = (\bo0|regA|q\(0) & ((GND) # (!\bo0|regB|q\(0)))) # (!\bo0|regA|q\(0) & (\bo0|regB|q\(0) $ (GND)))
-- \bo0|ula0|somasub0|Add0~1\ = CARRY((\bo0|regA|q\(0)) # (!\bo0|regB|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(0),
	datab => \bo0|regB|q\(0),
	datad => VCC,
	combout => \bo0|ula0|somasub0|Add0~0_combout\,
	cout => \bo0|ula0|somasub0|Add0~1\);

-- Location: LCFF_X24_Y35_N3
\bo0|regOp|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \dado~combout\(0),
	sload => VCC,
	ena => \bc0|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regOp|q\(0));

-- Location: LCCOMB_X20_Y35_N16
\bo0|ula0|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux3~0_combout\ = (\bo0|regOp|q\(0) & ((\bo0|regOp|q\(1)))) # (!\bo0|regOp|q\(0) & (!\bo0|regOp|q\(2) & !\bo0|regOp|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(2),
	datac => \bo0|regOp|q\(0),
	datad => \bo0|regOp|q\(1),
	combout => \bo0|ula0|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y35_N16
\bo0|ula0|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux3~1_combout\ = (\bo0|regOp|q\(1) & (((\bo0|ula0|Mux3~0_combout\)))) # (!\bo0|regOp|q\(1) & ((\bo0|ula0|Mux3~0_combout\ & (\bo0|ula0|somasub0|Add1~0_combout\)) # (!\bo0|ula0|Mux3~0_combout\ & ((\bo0|ula0|somasub0|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(1),
	datab => \bo0|ula0|somasub0|Add1~0_combout\,
	datac => \bo0|ula0|somasub0|Add0~0_combout\,
	datad => \bo0|ula0|Mux3~0_combout\,
	combout => \bo0|ula0|Mux3~1_combout\);

-- Location: LCCOMB_X24_Y35_N20
\bo0|ula0|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux3~2_combout\ = (\bo0|regOp|q\(2) & (((\bo0|regB|q\(0))))) # (!\bo0|regOp|q\(2) & ((\bo0|ula0|Mux3~1_combout\ & (!\bo0|regOp|q\(1))) # (!\bo0|ula0|Mux3~1_combout\ & ((\bo0|regB|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(2),
	datab => \bo0|regOp|q\(1),
	datac => \bo0|regB|q\(0),
	datad => \bo0|ula0|Mux3~1_combout\,
	combout => \bo0|ula0|Mux3~2_combout\);

-- Location: LCCOMB_X24_Y35_N26
\bo0|ula0|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Equal1~0_combout\ = (\bo0|regOp|q\(2) & (!\bo0|regOp|q\(1) & !\bo0|regOp|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(2),
	datac => \bo0|regOp|q\(1),
	datad => \bo0|regOp|q\(0),
	combout => \bo0|ula0|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y35_N16
\bo0|ula0|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux3~4_combout\ = (\bo0|ula0|Mux3~3_combout\ & ((\bo0|regA|q\(0)) # ((\bo0|ula0|Mux3~2_combout\)))) # (!\bo0|ula0|Mux3~3_combout\ & (\bo0|regA|q\(0) & (\bo0|ula0|Mux3~2_combout\ & \bo0|ula0|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux3~3_combout\,
	datab => \bo0|regA|q\(0),
	datac => \bo0|ula0|Mux3~2_combout\,
	datad => \bo0|ula0|Equal1~0_combout\,
	combout => \bo0|ula0|Mux3~4_combout\);

-- Location: LCFF_X23_Y35_N13
\bo0|regS_low|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo0|ula0|Mux3~4_combout\,
	sload => VCC,
	ena => \bc0|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_low|q\(0));

-- Location: LCFF_X25_Y35_N19
\bo0|regB|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \dado~combout\(1),
	sload => VCC,
	ena => \bc0|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regB|q\(1));

-- Location: LCCOMB_X25_Y35_N20
\bo0|ula0|booth0|p1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|p1~0_combout\ = (\bo0|regB|q\(0) & (\bo0|regA|q\(1) $ (\bo0|regA|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(1),
	datac => \bo0|regA|q\(0),
	datad => \bo0|regB|q\(0),
	combout => \bo0|ula0|booth0|p1~0_combout\);

-- Location: LCCOMB_X25_Y35_N8
\bo0|ula0|booth0|Add4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~4_combout\ = (\bo0|ula0|booth0|p1~0_combout\ & (\bo0|regA|q\(0) $ (VCC))) # (!\bo0|ula0|booth0|p1~0_combout\ & (\bo0|regA|q\(0) & VCC))
-- \bo0|ula0|booth0|Add4~5\ = CARRY((\bo0|ula0|booth0|p1~0_combout\ & \bo0|regA|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|p1~0_combout\,
	datab => \bo0|regA|q\(0),
	datad => VCC,
	combout => \bo0|ula0|booth0|Add4~4_combout\,
	cout => \bo0|ula0|booth0|Add4~5\);

-- Location: LCCOMB_X25_Y35_N22
\bo0|ula0|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux2~0_combout\ = (\bo0|regB|q\(1) & (\bo0|ula0|booth0|Add3~0_combout\ & (!\bo0|regB|q\(0)))) # (!\bo0|regB|q\(1) & (((\bo0|regB|q\(0) & \bo0|ula0|booth0|Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add3~0_combout\,
	datab => \bo0|regB|q\(1),
	datac => \bo0|regB|q\(0),
	datad => \bo0|ula0|booth0|Add4~4_combout\,
	combout => \bo0|ula0|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y35_N18
\bo0|ula0|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux2~1_combout\ = (\bo0|ula0|Mux2~0_combout\) # ((\bo0|ula0|booth0|p1~0_combout\ & (\bo0|regB|q\(0) $ (!\bo0|regB|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(0),
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|p1~0_combout\,
	datad => \bo0|ula0|Mux2~0_combout\,
	combout => \bo0|ula0|Mux2~1_combout\);

-- Location: LCFF_X25_Y35_N17
\bo0|regA|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \dado~combout\(1),
	sload => VCC,
	ena => \bc0|state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regA|q\(1));

-- Location: LCCOMB_X24_Y35_N4
\bo0|ula0|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux2~3_combout\ = (\bo0|ula0|Mux2~2_combout\ & (((\bo0|regB|q\(1) & \bo0|regA|q\(1))) # (!\bo0|regOp|q\(1)))) # (!\bo0|ula0|Mux2~2_combout\ & (\bo0|regOp|q\(1) & ((\bo0|regB|q\(1)) # (\bo0|regA|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux2~2_combout\,
	datab => \bo0|regB|q\(1),
	datac => \bo0|regOp|q\(1),
	datad => \bo0|regA|q\(1),
	combout => \bo0|ula0|Mux2~3_combout\);

-- Location: LCCOMB_X24_Y35_N24
\bo0|ula0|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux2~4_combout\ = (\bo0|regOp|q\(2) & (\bo0|ula0|Mux2~1_combout\ & ((\bo0|ula0|Equal1~0_combout\)))) # (!\bo0|regOp|q\(2) & ((\bo0|ula0|Mux2~3_combout\) # ((\bo0|ula0|Mux2~1_combout\ & \bo0|ula0|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(2),
	datab => \bo0|ula0|Mux2~1_combout\,
	datac => \bo0|ula0|Mux2~3_combout\,
	datad => \bo0|ula0|Equal1~0_combout\,
	combout => \bo0|ula0|Mux2~4_combout\);

-- Location: LCFF_X24_Y35_N25
\bo0|regS_low|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|Mux2~4_combout\,
	ena => \bc0|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_low|q\(1));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado[2]~I\ : cycloneii_io
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
	padio => ww_dado(2),
	combout => \dado~combout\(2));

-- Location: LCFF_X23_Y35_N21
\bo0|regB|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \dado~combout\(2),
	sload => VCC,
	ena => \bc0|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regB|q\(2));

-- Location: LCCOMB_X21_Y35_N4
\bo0|ula0|somasub0|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add1~4_combout\ = ((\bo0|regA|q\(2) $ (\bo0|regB|q\(2) $ (!\bo0|ula0|somasub0|Add1~3\)))) # (GND)
-- \bo0|ula0|somasub0|Add1~5\ = CARRY((\bo0|regA|q\(2) & ((\bo0|regB|q\(2)) # (!\bo0|ula0|somasub0|Add1~3\))) # (!\bo0|regA|q\(2) & (\bo0|regB|q\(2) & !\bo0|ula0|somasub0|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(2),
	datab => \bo0|regB|q\(2),
	datad => VCC,
	cin => \bo0|ula0|somasub0|Add1~3\,
	combout => \bo0|ula0|somasub0|Add1~4_combout\,
	cout => \bo0|ula0|somasub0|Add1~5\);

-- Location: LCCOMB_X21_Y35_N28
\bo0|ula0|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux1~2_combout\ = (\bo0|regOp|q\(1) & (((\bo0|ula0|Mux3~0_combout\)))) # (!\bo0|regOp|q\(1) & ((\bo0|ula0|Mux3~0_combout\ & ((\bo0|ula0|somasub0|Add1~4_combout\))) # (!\bo0|ula0|Mux3~0_combout\ & (\bo0|ula0|somasub0|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|somasub0|Add0~4_combout\,
	datab => \bo0|ula0|somasub0|Add1~4_combout\,
	datac => \bo0|regOp|q\(1),
	datad => \bo0|ula0|Mux3~0_combout\,
	combout => \bo0|ula0|Mux1~2_combout\);

-- Location: LCCOMB_X21_Y35_N26
\bo0|ula0|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux1~3_combout\ = (\bo0|regOp|q\(1) & ((\bo0|regA|q\(2) & ((\bo0|regB|q\(2)) # (!\bo0|ula0|Mux1~2_combout\))) # (!\bo0|regA|q\(2) & (\bo0|regB|q\(2) & !\bo0|ula0|Mux1~2_combout\)))) # (!\bo0|regOp|q\(1) & (((\bo0|ula0|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(2),
	datab => \bo0|regB|q\(2),
	datac => \bo0|regOp|q\(1),
	datad => \bo0|ula0|Mux1~2_combout\,
	combout => \bo0|ula0|Mux1~3_combout\);

-- Location: LCFF_X25_Y35_N29
\bo0|regA|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \dado~combout\(2),
	sload => VCC,
	ena => \bc0|state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regA|q\(2));

-- Location: LCCOMB_X25_Y35_N28
\bo0|ula0|booth0|p1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|p1~1_combout\ = (\bo0|regB|q\(0) & (\bo0|regA|q\(2) $ (((\bo0|regA|q\(1)) # (\bo0|regA|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(1),
	datab => \bo0|regB|q\(0),
	datac => \bo0|regA|q\(2),
	datad => \bo0|regA|q\(0),
	combout => \bo0|ula0|booth0|p1~1_combout\);

-- Location: LCCOMB_X25_Y35_N16
\bo0|ula0|booth0|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add0~0_combout\ = \bo0|regA|q\(1) $ (\bo0|regA|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bo0|regA|q\(1),
	datad => \bo0|regA|q\(0),
	combout => \bo0|ula0|booth0|Add0~0_combout\);

-- Location: LCCOMB_X25_Y35_N2
\bo0|ula0|booth0|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add3~2_combout\ = (\bo0|ula0|booth0|p1~1_combout\ & ((\bo0|ula0|booth0|Add0~0_combout\ & (\bo0|ula0|booth0|Add3~1\ & VCC)) # (!\bo0|ula0|booth0|Add0~0_combout\ & (!\bo0|ula0|booth0|Add3~1\)))) # (!\bo0|ula0|booth0|p1~1_combout\ & 
-- ((\bo0|ula0|booth0|Add0~0_combout\ & (!\bo0|ula0|booth0|Add3~1\)) # (!\bo0|ula0|booth0|Add0~0_combout\ & ((\bo0|ula0|booth0|Add3~1\) # (GND)))))
-- \bo0|ula0|booth0|Add3~3\ = CARRY((\bo0|ula0|booth0|p1~1_combout\ & (!\bo0|ula0|booth0|Add0~0_combout\ & !\bo0|ula0|booth0|Add3~1\)) # (!\bo0|ula0|booth0|p1~1_combout\ & ((!\bo0|ula0|booth0|Add3~1\) # (!\bo0|ula0|booth0|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|p1~1_combout\,
	datab => \bo0|ula0|booth0|Add0~0_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add3~1\,
	combout => \bo0|ula0|booth0|Add3~2_combout\,
	cout => \bo0|ula0|booth0|Add3~3\);

-- Location: LCCOMB_X25_Y35_N10
\bo0|ula0|booth0|Add4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~6_combout\ = (\bo0|ula0|booth0|p1~1_combout\ & ((\bo0|regA|q\(1) & (\bo0|ula0|booth0|Add4~5\ & VCC)) # (!\bo0|regA|q\(1) & (!\bo0|ula0|booth0|Add4~5\)))) # (!\bo0|ula0|booth0|p1~1_combout\ & ((\bo0|regA|q\(1) & 
-- (!\bo0|ula0|booth0|Add4~5\)) # (!\bo0|regA|q\(1) & ((\bo0|ula0|booth0|Add4~5\) # (GND)))))
-- \bo0|ula0|booth0|Add4~7\ = CARRY((\bo0|ula0|booth0|p1~1_combout\ & (!\bo0|regA|q\(1) & !\bo0|ula0|booth0|Add4~5\)) # (!\bo0|ula0|booth0|p1~1_combout\ & ((!\bo0|ula0|booth0|Add4~5\) # (!\bo0|regA|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|p1~1_combout\,
	datab => \bo0|regA|q\(1),
	datad => VCC,
	cin => \bo0|ula0|booth0|Add4~5\,
	combout => \bo0|ula0|booth0|Add4~6_combout\,
	cout => \bo0|ula0|booth0|Add4~7\);

-- Location: LCCOMB_X25_Y35_N18
\bo0|ula0|booth0|Add4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~8_combout\ = (\bo0|regB|q\(0) & (((!\bo0|regB|q\(1) & \bo0|ula0|booth0|Add4~6_combout\)))) # (!\bo0|regB|q\(0) & (\bo0|ula0|booth0|Add3~2_combout\ & (\bo0|regB|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(0),
	datab => \bo0|ula0|booth0|Add3~2_combout\,
	datac => \bo0|regB|q\(1),
	datad => \bo0|ula0|booth0|Add4~6_combout\,
	combout => \bo0|ula0|booth0|Add4~8_combout\);

-- Location: LCCOMB_X24_Y35_N8
\bo0|ula0|booth0|Add4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~9_combout\ = (\bo0|ula0|booth0|Add4~8_combout\) # ((\bo0|ula0|booth0|p1~1_combout\ & (\bo0|regB|q\(0) $ (!\bo0|regB|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(0),
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|p1~1_combout\,
	datad => \bo0|ula0|booth0|Add4~8_combout\,
	combout => \bo0|ula0|booth0|Add4~9_combout\);

-- Location: LCCOMB_X23_Y35_N0
\bo0|ula0|booth0|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add5~0_combout\ = (\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add4~9_combout\ $ (VCC))) # (!\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add4~9_combout\ & VCC))
-- \bo0|ula0|booth0|Add5~1\ = CARRY((\bo0|regA|q\(0) & \bo0|ula0|booth0|Add4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(0),
	datab => \bo0|ula0|booth0|Add4~9_combout\,
	datad => VCC,
	combout => \bo0|ula0|booth0|Add5~0_combout\,
	cout => \bo0|ula0|booth0|Add5~1\);

-- Location: LCCOMB_X23_Y35_N12
\bo0|ula0|booth0|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~0_combout\ = (\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add4~9_combout\ $ (VCC))) # (!\bo0|regA|q\(0) & (\bo0|ula0|booth0|Add4~9_combout\ & VCC))
-- \bo0|ula0|booth0|Add6~1\ = CARRY((\bo0|regA|q\(0) & \bo0|ula0|booth0|Add4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(0),
	datab => \bo0|ula0|booth0|Add4~9_combout\,
	datad => VCC,
	combout => \bo0|ula0|booth0|Add6~0_combout\,
	cout => \bo0|ula0|booth0|Add6~1\);

-- Location: LCCOMB_X24_Y35_N22
\bo0|ula0|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux1~0_combout\ = (\bo0|regB|q\(2) & (!\bo0|regB|q\(1) & (\bo0|ula0|booth0|Add5~0_combout\))) # (!\bo0|regB|q\(2) & (\bo0|regB|q\(1) & ((\bo0|ula0|booth0|Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|Add5~0_combout\,
	datad => \bo0|ula0|booth0|Add6~0_combout\,
	combout => \bo0|ula0|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y35_N0
\bo0|ula0|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux1~1_combout\ = (\bo0|ula0|Mux1~0_combout\) # ((\bo0|ula0|booth0|Add4~9_combout\ & (\bo0|regB|q\(2) $ (!\bo0|regB|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|Add4~9_combout\,
	datad => \bo0|ula0|Mux1~0_combout\,
	combout => \bo0|ula0|Mux1~1_combout\);

-- Location: LCCOMB_X24_Y35_N14
\bo0|ula0|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux1~4_combout\ = (\bo0|regOp|q\(2) & (\bo0|ula0|Equal1~0_combout\ & ((\bo0|ula0|Mux1~1_combout\)))) # (!\bo0|regOp|q\(2) & ((\bo0|ula0|Mux1~3_combout\) # ((\bo0|ula0|Equal1~0_combout\ & \bo0|ula0|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(2),
	datab => \bo0|ula0|Equal1~0_combout\,
	datac => \bo0|ula0|Mux1~3_combout\,
	datad => \bo0|ula0|Mux1~1_combout\,
	combout => \bo0|ula0|Mux1~4_combout\);

-- Location: LCFF_X24_Y35_N15
\bo0|regS_low|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|Mux1~4_combout\,
	ena => \bc0|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_low|q\(2));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dado[3]~I\ : cycloneii_io
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
	padio => ww_dado(3),
	combout => \dado~combout\(3));

-- Location: LCFF_X25_Y35_N25
\bo0|regA|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \dado~combout\(3),
	sload => VCC,
	ena => \bc0|state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regA|q\(3));

-- Location: LCCOMB_X20_Y35_N28
\bo0|ula0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux0~0_combout\ = (\bo0|regOp|q\(1) & ((\bo0|regB|q\(3) & ((\bo0|regA|q\(3)) # (!\bo0|regOp|q\(0)))) # (!\bo0|regB|q\(3) & (\bo0|regA|q\(3) & !\bo0|regOp|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(3),
	datab => \bo0|regA|q\(3),
	datac => \bo0|regOp|q\(0),
	datad => \bo0|regOp|q\(1),
	combout => \bo0|ula0|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y35_N18
\bo0|ula0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Equal0~0_combout\ = (!\bo0|regOp|q\(2) & (!\bo0|regOp|q\(0) & !\bo0|regOp|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(2),
	datac => \bo0|regOp|q\(0),
	datad => \bo0|regOp|q\(1),
	combout => \bo0|ula0|Equal0~0_combout\);

-- Location: LCFF_X25_Y35_N27
\bo0|regB|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \dado~combout\(3),
	sload => VCC,
	ena => \bc0|state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regB|q\(3));

-- Location: LCCOMB_X21_Y35_N14
\bo0|ula0|somasub0|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add0~6_combout\ = \bo0|regA|q\(3) $ (\bo0|ula0|somasub0|Add0~5\ $ (!\bo0|regB|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(3),
	datad => \bo0|regB|q\(3),
	cin => \bo0|ula0|somasub0|Add0~5\,
	combout => \bo0|ula0|somasub0|Add0~6_combout\);

-- Location: LCCOMB_X21_Y35_N6
\bo0|ula0|somasub0|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|Add1~6_combout\ = \bo0|regA|q\(3) $ (\bo0|ula0|somasub0|Add1~5\ $ (\bo0|regB|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(3),
	datad => \bo0|regB|q\(3),
	cin => \bo0|ula0|somasub0|Add1~5\,
	combout => \bo0|ula0|somasub0|Add1~6_combout\);

-- Location: LCCOMB_X20_Y35_N20
\bo0|ula0|somasub0|s[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|somasub0|s[3]~0_combout\ = (\bo0|ula0|Equal0~0_combout\ & ((\bo0|ula0|somasub0|Add1~6_combout\))) # (!\bo0|ula0|Equal0~0_combout\ & (\bo0|ula0|somasub0|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo0|ula0|Equal0~0_combout\,
	datac => \bo0|ula0|somasub0|Add0~6_combout\,
	datad => \bo0|ula0|somasub0|Add1~6_combout\,
	combout => \bo0|ula0|somasub0|s[3]~0_combout\);

-- Location: LCFF_X24_Y35_N13
\bo0|regOp|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \dado~combout\(2),
	sload => VCC,
	ena => \bc0|state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regOp|q\(2));

-- Location: LCCOMB_X20_Y35_N22
\bo0|ula0|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux0~1_combout\ = (!\bo0|regOp|q\(2) & ((\bo0|ula0|Mux0~0_combout\) # ((!\bo0|regOp|q\(1) & \bo0|ula0|somasub0|s[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(1),
	datab => \bo0|ula0|Mux0~0_combout\,
	datac => \bo0|ula0|somasub0|s[3]~0_combout\,
	datad => \bo0|regOp|q\(2),
	combout => \bo0|ula0|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y35_N12
\bo0|ula0|s_high[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|s_high[0]~0_combout\ = (\bo0|ula0|Equal1~0_combout\ & (\bo0|regB|q\(2) $ (!\bo0|regB|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|regB|q\(3),
	datad => \bo0|ula0|Equal1~0_combout\,
	combout => \bo0|ula0|s_high[0]~0_combout\);

-- Location: LCCOMB_X24_Y35_N28
\bo0|ula0|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux0~2_combout\ = (\bo0|regB|q\(2) & (\bo0|ula0|Equal1~0_combout\ & !\bo0|regB|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(2),
	datab => \bo0|ula0|Equal1~0_combout\,
	datad => \bo0|regB|q\(3),
	combout => \bo0|ula0|Mux0~2_combout\);

-- Location: LCCOMB_X22_Y35_N12
\bo0|ula0|booth0|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add7~0_combout\ = (\bo0|ula0|booth0|Add6~5_combout\ & (\bo0|regA|q\(0) $ (VCC))) # (!\bo0|ula0|booth0|Add6~5_combout\ & (\bo0|regA|q\(0) & VCC))
-- \bo0|ula0|booth0|Add7~1\ = CARRY((\bo0|ula0|booth0|Add6~5_combout\ & \bo0|regA|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add6~5_combout\,
	datab => \bo0|regA|q\(0),
	datad => VCC,
	combout => \bo0|ula0|booth0|Add7~0_combout\,
	cout => \bo0|ula0|booth0|Add7~1\);

-- Location: LCCOMB_X25_Y35_N24
\bo0|ula0|booth0|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add0~1_combout\ = \bo0|regA|q\(3) $ (((\bo0|regA|q\(1)) # ((\bo0|regA|q\(2)) # (\bo0|regA|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(1),
	datab => \bo0|regA|q\(2),
	datac => \bo0|regA|q\(3),
	datad => \bo0|regA|q\(0),
	combout => \bo0|ula0|booth0|Add0~1_combout\);

-- Location: LCCOMB_X25_Y35_N26
\bo0|ula0|booth0|p1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|p1~2_combout\ = (\bo0|regB|q\(0) & \bo0|ula0|booth0|Add0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo0|regB|q\(0),
	datad => \bo0|ula0|booth0|Add0~1_combout\,
	combout => \bo0|ula0|booth0|p1~2_combout\);

-- Location: LCCOMB_X25_Y35_N12
\bo0|ula0|booth0|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~10_combout\ = ((\bo0|regA|q\(2) $ (\bo0|ula0|booth0|p1~2_combout\ $ (!\bo0|ula0|booth0|Add4~7\)))) # (GND)
-- \bo0|ula0|booth0|Add4~11\ = CARRY((\bo0|regA|q\(2) & ((\bo0|ula0|booth0|p1~2_combout\) # (!\bo0|ula0|booth0|Add4~7\))) # (!\bo0|regA|q\(2) & (\bo0|ula0|booth0|p1~2_combout\ & !\bo0|ula0|booth0|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(2),
	datab => \bo0|ula0|booth0|p1~2_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add4~7\,
	combout => \bo0|ula0|booth0|Add4~10_combout\,
	cout => \bo0|ula0|booth0|Add4~11\);

-- Location: LCCOMB_X25_Y35_N4
\bo0|ula0|booth0|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add3~4_combout\ = ((\bo0|ula0|booth0|Add0~2_combout\ $ (\bo0|ula0|booth0|p1~2_combout\ $ (!\bo0|ula0|booth0|Add3~3\)))) # (GND)
-- \bo0|ula0|booth0|Add3~5\ = CARRY((\bo0|ula0|booth0|Add0~2_combout\ & ((\bo0|ula0|booth0|p1~2_combout\) # (!\bo0|ula0|booth0|Add3~3\))) # (!\bo0|ula0|booth0|Add0~2_combout\ & (\bo0|ula0|booth0|p1~2_combout\ & !\bo0|ula0|booth0|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add0~2_combout\,
	datab => \bo0|ula0|booth0|p1~2_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add3~3\,
	combout => \bo0|ula0|booth0|Add3~4_combout\,
	cout => \bo0|ula0|booth0|Add3~5\);

-- Location: LCCOMB_X24_Y35_N6
\bo0|ula0|booth0|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~12_combout\ = (\bo0|regB|q\(0) & (!\bo0|regB|q\(1) & (\bo0|ula0|booth0|Add4~10_combout\))) # (!\bo0|regB|q\(0) & (\bo0|regB|q\(1) & ((\bo0|ula0|booth0|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(0),
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|Add4~10_combout\,
	datad => \bo0|ula0|booth0|Add3~4_combout\,
	combout => \bo0|ula0|booth0|Add4~12_combout\);

-- Location: LCCOMB_X23_Y35_N8
\bo0|ula0|booth0|Add4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~16_combout\ = (\bo0|ula0|booth0|Add4~12_combout\) # ((\bo0|regB|q\(0) & (\bo0|regB|q\(1) & \bo0|ula0|booth0|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(0),
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|Add0~1_combout\,
	datad => \bo0|ula0|booth0|Add4~12_combout\,
	combout => \bo0|ula0|booth0|Add4~16_combout\);

-- Location: LCCOMB_X23_Y35_N14
\bo0|ula0|booth0|Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~2_combout\ = (\bo0|regA|q\(1) & ((\bo0|ula0|booth0|Add4~16_combout\ & (\bo0|ula0|booth0|Add6~1\ & VCC)) # (!\bo0|ula0|booth0|Add4~16_combout\ & (!\bo0|ula0|booth0|Add6~1\)))) # (!\bo0|regA|q\(1) & ((\bo0|ula0|booth0|Add4~16_combout\ 
-- & (!\bo0|ula0|booth0|Add6~1\)) # (!\bo0|ula0|booth0|Add4~16_combout\ & ((\bo0|ula0|booth0|Add6~1\) # (GND)))))
-- \bo0|ula0|booth0|Add6~3\ = CARRY((\bo0|regA|q\(1) & (!\bo0|ula0|booth0|Add4~16_combout\ & !\bo0|ula0|booth0|Add6~1\)) # (!\bo0|regA|q\(1) & ((!\bo0|ula0|booth0|Add6~1\) # (!\bo0|ula0|booth0|Add4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(1),
	datab => \bo0|ula0|booth0|Add4~16_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add6~1\,
	combout => \bo0|ula0|booth0|Add6~2_combout\,
	cout => \bo0|ula0|booth0|Add6~3\);

-- Location: LCCOMB_X23_Y35_N2
\bo0|ula0|booth0|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add5~2_combout\ = (\bo0|ula0|booth0|Add0~0_combout\ & ((\bo0|ula0|booth0|Add4~16_combout\ & (\bo0|ula0|booth0|Add5~1\ & VCC)) # (!\bo0|ula0|booth0|Add4~16_combout\ & (!\bo0|ula0|booth0|Add5~1\)))) # (!\bo0|ula0|booth0|Add0~0_combout\ & 
-- ((\bo0|ula0|booth0|Add4~16_combout\ & (!\bo0|ula0|booth0|Add5~1\)) # (!\bo0|ula0|booth0|Add4~16_combout\ & ((\bo0|ula0|booth0|Add5~1\) # (GND)))))
-- \bo0|ula0|booth0|Add5~3\ = CARRY((\bo0|ula0|booth0|Add0~0_combout\ & (!\bo0|ula0|booth0|Add4~16_combout\ & !\bo0|ula0|booth0|Add5~1\)) # (!\bo0|ula0|booth0|Add0~0_combout\ & ((!\bo0|ula0|booth0|Add5~1\) # (!\bo0|ula0|booth0|Add4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add0~0_combout\,
	datab => \bo0|ula0|booth0|Add4~16_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add5~1\,
	combout => \bo0|ula0|booth0|Add5~2_combout\,
	cout => \bo0|ula0|booth0|Add5~3\);

-- Location: LCCOMB_X23_Y35_N20
\bo0|ula0|booth0|Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~4_combout\ = (\bo0|regB|q\(1) & (\bo0|ula0|booth0|Add6~2_combout\ & (!\bo0|regB|q\(2)))) # (!\bo0|regB|q\(1) & (((\bo0|regB|q\(2) & \bo0|ula0|booth0|Add5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(1),
	datab => \bo0|ula0|booth0|Add6~2_combout\,
	datac => \bo0|regB|q\(2),
	datad => \bo0|ula0|booth0|Add5~2_combout\,
	combout => \bo0|ula0|booth0|Add6~4_combout\);

-- Location: LCCOMB_X22_Y35_N10
\bo0|ula0|booth0|Add6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~5_combout\ = (\bo0|ula0|booth0|Add6~4_combout\) # ((\bo0|ula0|booth0|Add4~16_combout\ & (\bo0|regB|q\(1) $ (!\bo0|regB|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(1),
	datab => \bo0|regB|q\(2),
	datac => \bo0|ula0|booth0|Add4~16_combout\,
	datad => \bo0|ula0|booth0|Add6~4_combout\,
	combout => \bo0|ula0|booth0|Add6~5_combout\);

-- Location: LCCOMB_X21_Y35_N18
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

-- Location: LCCOMB_X22_Y35_N24
\bo0|ula0|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux0~4_combout\ = (\bo0|ula0|Mux0~3_combout\ & ((\bo0|ula0|booth0|Add7~0_combout\) # ((\bo0|ula0|Mux0~2_combout\ & \bo0|ula0|booth0|Add8~0_combout\)))) # (!\bo0|ula0|Mux0~3_combout\ & (\bo0|ula0|Mux0~2_combout\ & 
-- ((\bo0|ula0|booth0|Add8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux0~3_combout\,
	datab => \bo0|ula0|Mux0~2_combout\,
	datac => \bo0|ula0|booth0|Add7~0_combout\,
	datad => \bo0|ula0|booth0|Add8~0_combout\,
	combout => \bo0|ula0|Mux0~4_combout\);

-- Location: LCCOMB_X23_Y35_N28
\bo0|ula0|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|Mux0~5_combout\ = (\bo0|ula0|Mux0~1_combout\) # ((\bo0|ula0|Mux0~4_combout\) # ((\bo0|ula0|booth0|Add6~5_combout\ & \bo0|ula0|s_high[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add6~5_combout\,
	datab => \bo0|ula0|Mux0~1_combout\,
	datac => \bo0|ula0|s_high[0]~0_combout\,
	datad => \bo0|ula0|Mux0~4_combout\,
	combout => \bo0|ula0|Mux0~5_combout\);

-- Location: LCFF_X23_Y35_N29
\bo0|regS_low|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|Mux0~5_combout\,
	ena => \bc0|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_low|q\(3));

-- Location: LCCOMB_X25_Y35_N14
\bo0|ula0|booth0|Add4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~13_combout\ = \bo0|regA|q\(3) $ (\bo0|ula0|booth0|Add4~11\ $ (\bo0|ula0|booth0|p1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo0|regA|q\(3),
	datad => \bo0|ula0|booth0|p1~2_combout\,
	cin => \bo0|ula0|booth0|Add4~11\,
	combout => \bo0|ula0|booth0|Add4~13_combout\);

-- Location: LCCOMB_X25_Y35_N6
\bo0|ula0|booth0|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add3~6_combout\ = \bo0|ula0|booth0|Add0~1_combout\ $ (\bo0|ula0|booth0|Add3~5\ $ (\bo0|ula0|booth0|p1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add0~1_combout\,
	datad => \bo0|ula0|booth0|p1~2_combout\,
	cin => \bo0|ula0|booth0|Add3~5\,
	combout => \bo0|ula0|booth0|Add3~6_combout\);

-- Location: LCCOMB_X24_Y35_N30
\bo0|ula0|booth0|Add4~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~15_combout\ = (\bo0|regB|q\(0) & (!\bo0|regB|q\(1) & (\bo0|ula0|booth0|Add4~13_combout\))) # (!\bo0|regB|q\(0) & (\bo0|regB|q\(1) & ((\bo0|ula0|booth0|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(0),
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|Add4~13_combout\,
	datad => \bo0|ula0|booth0|Add3~6_combout\,
	combout => \bo0|ula0|booth0|Add4~15_combout\);

-- Location: LCCOMB_X23_Y35_N26
\bo0|ula0|booth0|Add4~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add4~17_combout\ = (\bo0|ula0|booth0|Add4~15_combout\) # ((\bo0|regB|q\(0) & (\bo0|regB|q\(1) & \bo0|ula0|booth0|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(0),
	datab => \bo0|regB|q\(1),
	datac => \bo0|ula0|booth0|Add0~1_combout\,
	datad => \bo0|ula0|booth0|Add4~15_combout\,
	combout => \bo0|ula0|booth0|Add4~17_combout\);

-- Location: LCCOMB_X23_Y35_N4
\bo0|ula0|booth0|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add5~4_combout\ = ((\bo0|ula0|booth0|Add0~2_combout\ $ (\bo0|ula0|booth0|Add4~17_combout\ $ (!\bo0|ula0|booth0|Add5~3\)))) # (GND)
-- \bo0|ula0|booth0|Add5~5\ = CARRY((\bo0|ula0|booth0|Add0~2_combout\ & ((\bo0|ula0|booth0|Add4~17_combout\) # (!\bo0|ula0|booth0|Add5~3\))) # (!\bo0|ula0|booth0|Add0~2_combout\ & (\bo0|ula0|booth0|Add4~17_combout\ & !\bo0|ula0|booth0|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add0~2_combout\,
	datab => \bo0|ula0|booth0|Add4~17_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add5~3\,
	combout => \bo0|ula0|booth0|Add5~4_combout\,
	cout => \bo0|ula0|booth0|Add5~5\);

-- Location: LCCOMB_X23_Y35_N16
\bo0|ula0|booth0|Add6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~6_combout\ = ((\bo0|regA|q\(2) $ (\bo0|ula0|booth0|Add4~17_combout\ $ (!\bo0|ula0|booth0|Add6~3\)))) # (GND)
-- \bo0|ula0|booth0|Add6~7\ = CARRY((\bo0|regA|q\(2) & ((\bo0|ula0|booth0|Add4~17_combout\) # (!\bo0|ula0|booth0|Add6~3\))) # (!\bo0|regA|q\(2) & (\bo0|ula0|booth0|Add4~17_combout\ & !\bo0|ula0|booth0|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(2),
	datab => \bo0|ula0|booth0|Add4~17_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add6~3\,
	combout => \bo0|ula0|booth0|Add6~6_combout\,
	cout => \bo0|ula0|booth0|Add6~7\);

-- Location: LCCOMB_X23_Y35_N30
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

-- Location: LCCOMB_X22_Y35_N22
\bo0|ula0|booth0|Add6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~9_combout\ = (\bo0|ula0|booth0|Add6~8_combout\) # ((\bo0|ula0|booth0|Add4~17_combout\ & (\bo0|regB|q\(1) $ (!\bo0|regB|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(1),
	datab => \bo0|regB|q\(2),
	datac => \bo0|ula0|booth0|Add4~17_combout\,
	datad => \bo0|ula0|booth0|Add6~8_combout\,
	combout => \bo0|ula0|booth0|Add6~9_combout\);

-- Location: LCCOMB_X21_Y35_N20
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

-- Location: LCCOMB_X22_Y35_N14
\bo0|ula0|booth0|Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add7~2_combout\ = (\bo0|ula0|booth0|Add0~0_combout\ & ((\bo0|ula0|booth0|Add6~9_combout\ & (\bo0|ula0|booth0|Add7~1\ & VCC)) # (!\bo0|ula0|booth0|Add6~9_combout\ & (!\bo0|ula0|booth0|Add7~1\)))) # (!\bo0|ula0|booth0|Add0~0_combout\ & 
-- ((\bo0|ula0|booth0|Add6~9_combout\ & (!\bo0|ula0|booth0|Add7~1\)) # (!\bo0|ula0|booth0|Add6~9_combout\ & ((\bo0|ula0|booth0|Add7~1\) # (GND)))))
-- \bo0|ula0|booth0|Add7~3\ = CARRY((\bo0|ula0|booth0|Add0~0_combout\ & (!\bo0|ula0|booth0|Add6~9_combout\ & !\bo0|ula0|booth0|Add7~1\)) # (!\bo0|ula0|booth0|Add0~0_combout\ & ((!\bo0|ula0|booth0|Add7~1\) # (!\bo0|ula0|booth0|Add6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add0~0_combout\,
	datab => \bo0|ula0|booth0|Add6~9_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add7~1\,
	combout => \bo0|ula0|booth0|Add7~2_combout\,
	cout => \bo0|ula0|booth0|Add7~3\);

-- Location: LCCOMB_X22_Y35_N8
\bo0|ula0|s_high[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|s_high[0]~1_combout\ = (\bo0|ula0|Mux0~3_combout\ & ((\bo0|ula0|booth0|Add7~2_combout\) # ((\bo0|ula0|Mux0~2_combout\ & \bo0|ula0|booth0|Add8~2_combout\)))) # (!\bo0|ula0|Mux0~3_combout\ & (\bo0|ula0|Mux0~2_combout\ & 
-- (\bo0|ula0|booth0|Add8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux0~3_combout\,
	datab => \bo0|ula0|Mux0~2_combout\,
	datac => \bo0|ula0|booth0|Add8~2_combout\,
	datad => \bo0|ula0|booth0|Add7~2_combout\,
	combout => \bo0|ula0|s_high[0]~1_combout\);

-- Location: LCCOMB_X22_Y35_N4
\bo0|ula0|s_high[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|s_high[0]~2_combout\ = (\bo0|ula0|s_high[0]~1_combout\) # ((\bo0|ula0|s_high[0]~0_combout\ & \bo0|ula0|booth0|Add6~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|s_high[0]~0_combout\,
	datac => \bo0|ula0|s_high[0]~1_combout\,
	datad => \bo0|ula0|booth0|Add6~9_combout\,
	combout => \bo0|ula0|s_high[0]~2_combout\);

-- Location: LCFF_X22_Y35_N5
\bo0|regS_high|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|s_high[0]~2_combout\,
	ena => \bc0|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_high|q\(0));

-- Location: LCCOMB_X23_Y35_N18
\bo0|ula0|booth0|Add6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~10_combout\ = \bo0|regA|q\(3) $ (\bo0|ula0|booth0|Add6~7\ $ (\bo0|ula0|booth0|Add4~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo0|regA|q\(3),
	datad => \bo0|ula0|booth0|Add4~17_combout\,
	cin => \bo0|ula0|booth0|Add6~7\,
	combout => \bo0|ula0|booth0|Add6~10_combout\);

-- Location: LCCOMB_X23_Y35_N6
\bo0|ula0|booth0|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add5~6_combout\ = \bo0|ula0|booth0|Add0~1_combout\ $ (\bo0|ula0|booth0|Add5~5\ $ (\bo0|ula0|booth0|Add4~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo0|ula0|booth0|Add0~1_combout\,
	datad => \bo0|ula0|booth0|Add4~17_combout\,
	cin => \bo0|ula0|booth0|Add5~5\,
	combout => \bo0|ula0|booth0|Add5~6_combout\);

-- Location: LCCOMB_X23_Y35_N24
\bo0|ula0|booth0|Add6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~12_combout\ = (\bo0|regB|q\(1) & (\bo0|ula0|booth0|Add6~10_combout\ & (!\bo0|regB|q\(2)))) # (!\bo0|regB|q\(1) & (((\bo0|regB|q\(2) & \bo0|ula0|booth0|Add5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(1),
	datab => \bo0|ula0|booth0|Add6~10_combout\,
	datac => \bo0|regB|q\(2),
	datad => \bo0|ula0|booth0|Add5~6_combout\,
	combout => \bo0|ula0|booth0|Add6~12_combout\);

-- Location: LCCOMB_X22_Y35_N30
\bo0|ula0|booth0|Add6~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add6~13_combout\ = (\bo0|ula0|booth0|Add6~12_combout\) # ((\bo0|ula0|booth0|Add4~17_combout\ & (\bo0|regB|q\(1) $ (!\bo0|regB|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regB|q\(1),
	datab => \bo0|regB|q\(2),
	datac => \bo0|ula0|booth0|Add4~17_combout\,
	datad => \bo0|ula0|booth0|Add6~12_combout\,
	combout => \bo0|ula0|booth0|Add6~13_combout\);

-- Location: LCCOMB_X22_Y35_N16
\bo0|ula0|booth0|Add7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add7~4_combout\ = ((\bo0|ula0|booth0|Add0~2_combout\ $ (\bo0|ula0|booth0|Add6~13_combout\ $ (!\bo0|ula0|booth0|Add7~3\)))) # (GND)
-- \bo0|ula0|booth0|Add7~5\ = CARRY((\bo0|ula0|booth0|Add0~2_combout\ & ((\bo0|ula0|booth0|Add6~13_combout\) # (!\bo0|ula0|booth0|Add7~3\))) # (!\bo0|ula0|booth0|Add0~2_combout\ & (\bo0|ula0|booth0|Add6~13_combout\ & !\bo0|ula0|booth0|Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add0~2_combout\,
	datab => \bo0|ula0|booth0|Add6~13_combout\,
	datad => VCC,
	cin => \bo0|ula0|booth0|Add7~3\,
	combout => \bo0|ula0|booth0|Add7~4_combout\,
	cout => \bo0|ula0|booth0|Add7~5\);

-- Location: LCCOMB_X21_Y35_N22
\bo0|ula0|booth0|Add8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~4_combout\ = ((\bo0|regA|q\(2) $ (\bo0|ula0|booth0|Add6~13_combout\ $ (!\bo0|ula0|booth0|Add8~3\)))) # (GND)
-- \bo0|ula0|booth0|Add8~5\ = CARRY((\bo0|regA|q\(2) & ((\bo0|ula0|booth0|Add6~13_combout\) # (!\bo0|ula0|booth0|Add8~3\))) # (!\bo0|regA|q\(2) & (\bo0|ula0|booth0|Add6~13_combout\ & !\bo0|ula0|booth0|Add8~3\)))

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
	combout => \bo0|ula0|booth0|Add8~4_combout\,
	cout => \bo0|ula0|booth0|Add8~5\);

-- Location: LCCOMB_X22_Y35_N20
\bo0|ula0|s_high[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|s_high[1]~3_combout\ = (\bo0|ula0|Mux0~3_combout\ & ((\bo0|ula0|booth0|Add7~4_combout\) # ((\bo0|ula0|Mux0~2_combout\ & \bo0|ula0|booth0|Add8~4_combout\)))) # (!\bo0|ula0|Mux0~3_combout\ & (\bo0|ula0|Mux0~2_combout\ & 
-- ((\bo0|ula0|booth0|Add8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux0~3_combout\,
	datab => \bo0|ula0|Mux0~2_combout\,
	datac => \bo0|ula0|booth0|Add7~4_combout\,
	datad => \bo0|ula0|booth0|Add8~4_combout\,
	combout => \bo0|ula0|s_high[1]~3_combout\);

-- Location: LCCOMB_X22_Y35_N6
\bo0|ula0|s_high[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|s_high[1]~4_combout\ = (\bo0|ula0|s_high[1]~3_combout\) # ((\bo0|ula0|s_high[0]~0_combout\ & \bo0|ula0|booth0|Add6~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|s_high[0]~0_combout\,
	datac => \bo0|ula0|s_high[1]~3_combout\,
	datad => \bo0|ula0|booth0|Add6~13_combout\,
	combout => \bo0|ula0|s_high[1]~4_combout\);

-- Location: LCFF_X22_Y35_N7
\bo0|regS_high|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|s_high[1]~4_combout\,
	ena => \bc0|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_high|q\(1));

-- Location: LCCOMB_X22_Y35_N18
\bo0|ula0|booth0|Add7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add7~6_combout\ = \bo0|ula0|booth0|Add0~1_combout\ $ (\bo0|ula0|booth0|Add7~5\ $ (\bo0|ula0|booth0|Add6~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|booth0|Add0~1_combout\,
	datad => \bo0|ula0|booth0|Add6~13_combout\,
	cin => \bo0|ula0|booth0|Add7~5\,
	combout => \bo0|ula0|booth0|Add7~6_combout\);

-- Location: LCCOMB_X21_Y35_N24
\bo0|ula0|booth0|Add8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|booth0|Add8~6_combout\ = \bo0|regA|q\(3) $ (\bo0|ula0|booth0|Add8~5\ $ (\bo0|ula0|booth0|Add6~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regA|q\(3),
	datad => \bo0|ula0|booth0|Add6~13_combout\,
	cin => \bo0|ula0|booth0|Add8~5\,
	combout => \bo0|ula0|booth0|Add8~6_combout\);

-- Location: LCCOMB_X22_Y35_N2
\bo0|ula0|s_high[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|s_high[2]~5_combout\ = (\bo0|ula0|Mux0~3_combout\ & ((\bo0|ula0|booth0|Add7~6_combout\) # ((\bo0|ula0|Mux0~2_combout\ & \bo0|ula0|booth0|Add8~6_combout\)))) # (!\bo0|ula0|Mux0~3_combout\ & (((\bo0|ula0|Mux0~2_combout\ & 
-- \bo0|ula0|booth0|Add8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|Mux0~3_combout\,
	datab => \bo0|ula0|booth0|Add7~6_combout\,
	datac => \bo0|ula0|Mux0~2_combout\,
	datad => \bo0|ula0|booth0|Add8~6_combout\,
	combout => \bo0|ula0|s_high[2]~5_combout\);

-- Location: LCCOMB_X22_Y35_N0
\bo0|ula0|s_high[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|s_high[2]~6_combout\ = (\bo0|ula0|s_high[2]~5_combout\) # ((\bo0|ula0|booth0|Add6~13_combout\ & \bo0|ula0|s_high[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo0|ula0|booth0|Add6~13_combout\,
	datac => \bo0|ula0|s_high[0]~0_combout\,
	datad => \bo0|ula0|s_high[2]~5_combout\,
	combout => \bo0|ula0|s_high[2]~6_combout\);

-- Location: LCFF_X22_Y35_N29
\bo0|regS_high|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo0|ula0|s_high[2]~6_combout\,
	sload => VCC,
	ena => \bc0|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_high|q\(2));

-- Location: LCFF_X22_Y35_N13
\bo0|regS_high|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bo0|ula0|s_high[2]~6_combout\,
	sload => VCC,
	ena => \bc0|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regS_high|q\(3));

-- Location: LCCOMB_X23_Y35_N22
\bo0|ula0|flag_z_n_ovf[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|flag_z_n_ovf[2]~1_combout\ = (\bo0|ula0|flag_z_n_ovf[2]~0_combout\ & (!\bo0|ula0|s_high[0]~2_combout\ & (!\bo0|ula0|s_high[1]~4_combout\ & !\bo0|ula0|s_high[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|flag_z_n_ovf[2]~0_combout\,
	datab => \bo0|ula0|s_high[0]~2_combout\,
	datac => \bo0|ula0|s_high[1]~4_combout\,
	datad => \bo0|ula0|s_high[2]~6_combout\,
	combout => \bo0|ula0|flag_z_n_ovf[2]~1_combout\);

-- Location: LCFF_X23_Y35_N23
\bo0|regflag_z_n_ovf|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|flag_z_n_ovf[2]~1_combout\,
	ena => \bc0|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regflag_z_n_ovf|q\(2));

-- Location: LCCOMB_X20_Y35_N8
\bo0|ula0|flag_z_n_ovf[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|flag_z_n_ovf[0]~3_combout\ = (\bo0|ula0|somasub0|s[3]~0_combout\ & ((\bo0|regA|q\(3)) # (\bo0|regB|q\(3) $ (!\bo0|ula0|Equal0~0_combout\)))) # (!\bo0|ula0|somasub0|s[3]~0_combout\ & ((\bo0|regB|q\(3) $ (\bo0|ula0|Equal0~0_combout\)) # 
-- (!\bo0|regA|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|somasub0|s[3]~0_combout\,
	datab => \bo0|regA|q\(3),
	datac => \bo0|regB|q\(3),
	datad => \bo0|ula0|Equal0~0_combout\,
	combout => \bo0|ula0|flag_z_n_ovf[0]~3_combout\);

-- Location: LCCOMB_X22_Y35_N28
\bo0|ula0|flag_z_n_ovf[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|flag_z_n_ovf[0]~2_combout\ = (\bo0|ula0|s_high[1]~4_combout\ & (\bo0|ula0|s_high[0]~2_combout\ & \bo0|ula0|s_high[2]~6_combout\)) # (!\bo0|ula0|s_high[1]~4_combout\ & (!\bo0|ula0|s_high[0]~2_combout\ & !\bo0|ula0|s_high[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|ula0|s_high[1]~4_combout\,
	datab => \bo0|ula0|s_high[0]~2_combout\,
	datad => \bo0|ula0|s_high[2]~6_combout\,
	combout => \bo0|ula0|flag_z_n_ovf[0]~2_combout\);

-- Location: LCCOMB_X22_Y35_N26
\bo0|ula0|flag_z_n_ovf[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo0|ula0|flag_z_n_ovf[0]~4_combout\ = (\bo0|regOp|q\(1) & (((!\bo0|ula0|flag_z_n_ovf[0]~2_combout\)))) # (!\bo0|regOp|q\(1) & ((\bo0|regOp|q\(2) & ((!\bo0|ula0|flag_z_n_ovf[0]~2_combout\))) # (!\bo0|regOp|q\(2) & 
-- (!\bo0|ula0|flag_z_n_ovf[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo0|regOp|q\(1),
	datab => \bo0|regOp|q\(2),
	datac => \bo0|ula0|flag_z_n_ovf[0]~3_combout\,
	datad => \bo0|ula0|flag_z_n_ovf[0]~2_combout\,
	combout => \bo0|ula0|flag_z_n_ovf[0]~4_combout\);

-- Location: LCFF_X22_Y35_N27
\bo0|regflag_z_n_ovf|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|flag_z_n_ovf[0]~4_combout\,
	ena => \bc0|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regflag_z_n_ovf|q\(0));

-- Location: LCFF_X22_Y35_N1
\bo0|regflag_z_n_ovf|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bo0|ula0|s_high[2]~6_combout\,
	ena => \bc0|state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo0|regflag_z_n_ovf|q\(1));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bo0|regflag_z_n_ovf|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_flagZ);

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bo0|regflag_z_n_ovf|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_flagOvf);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \bo0|regflag_z_n_ovf|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_flagN);
END structure;


