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

-- DATE "06/30/2022 13:47:10"

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

ENTITY 	semaforo IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	y : OUT std_logic;
	r : OUT std_logic;
	g : OUT std_logic
	);
END semaforo;

-- Design Ports Information
-- y	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF semaforo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_r : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bo|regy|soma[1]~31_combout\ : std_logic;
SIGNAL \bo|regy|soma[3]~35_combout\ : std_logic;
SIGNAL \bo|regy|soma[5]~39_combout\ : std_logic;
SIGNAL \bo|regy|soma[6]~41_combout\ : std_logic;
SIGNAL \bo|regy|soma[8]~45_combout\ : std_logic;
SIGNAL \bo|regy|soma[12]~53_combout\ : std_logic;
SIGNAL \bo|regy|soma[19]~67_combout\ : std_logic;
SIGNAL \bo|regy|soma[21]~71_combout\ : std_logic;
SIGNAL \bo|regy|soma[22]~73_combout\ : std_logic;
SIGNAL \bo|regy|soma[24]~77_combout\ : std_logic;
SIGNAL \bo|regy|soma[26]~81_combout\ : std_logic;
SIGNAL \bo|regy|soma[28]~85_combout\ : std_logic;
SIGNAL \bo|regg|soma[1]~31_combout\ : std_logic;
SIGNAL \bo|regg|soma[3]~35_combout\ : std_logic;
SIGNAL \bo|regg|soma[5]~39_combout\ : std_logic;
SIGNAL \bo|regg|soma[6]~41_combout\ : std_logic;
SIGNAL \bo|regg|soma[8]~45_combout\ : std_logic;
SIGNAL \bo|regg|soma[19]~67_combout\ : std_logic;
SIGNAL \bo|regg|soma[24]~77_combout\ : std_logic;
SIGNAL \bo|regg|soma[30]~90\ : std_logic;
SIGNAL \bo|regg|soma[31]~91_combout\ : std_logic;
SIGNAL \bo|regr|soma[1]~31_combout\ : std_logic;
SIGNAL \bo|regr|soma[3]~35_combout\ : std_logic;
SIGNAL \bo|regr|soma[5]~39_combout\ : std_logic;
SIGNAL \bo|regr|soma[6]~41_combout\ : std_logic;
SIGNAL \bo|regr|soma[8]~45_combout\ : std_logic;
SIGNAL \bo|regr|soma[10]~49_combout\ : std_logic;
SIGNAL \bo|regr|soma[21]~71_combout\ : std_logic;
SIGNAL \bo|regr|soma[22]~73_combout\ : std_logic;
SIGNAL \bo|regr|soma[26]~81_combout\ : std_logic;
SIGNAL \bo|regr|soma[30]~90\ : std_logic;
SIGNAL \bo|regr|soma[31]~91_combout\ : std_logic;
SIGNAL \bc|LessThan2~0_combout\ : std_logic;
SIGNAL \bc|LessThan2~5_combout\ : std_logic;
SIGNAL \bc|LessThan2~6_combout\ : std_logic;
SIGNAL \bc|LessThan2~7_combout\ : std_logic;
SIGNAL \bc|LessThan2~8_combout\ : std_logic;
SIGNAL \bc|LessThan1~0_combout\ : std_logic;
SIGNAL \bc|LessThan0~0_combout\ : std_logic;
SIGNAL \bc|state.Init~regout\ : std_logic;
SIGNAL \bc|state.Init~feeder_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \bo|regg|soma[0]~93_combout\ : std_logic;
SIGNAL \bo|regy|soma[0]~93_combout\ : std_logic;
SIGNAL \bo|regy|soma[1]~32\ : std_logic;
SIGNAL \bo|regy|soma[2]~33_combout\ : std_logic;
SIGNAL \bo|regy|soma[2]~34\ : std_logic;
SIGNAL \bo|regy|soma[3]~36\ : std_logic;
SIGNAL \bo|regy|soma[4]~37_combout\ : std_logic;
SIGNAL \bo|regy|soma[4]~38\ : std_logic;
SIGNAL \bo|regy|soma[5]~40\ : std_logic;
SIGNAL \bo|regy|soma[6]~42\ : std_logic;
SIGNAL \bo|regy|soma[7]~43_combout\ : std_logic;
SIGNAL \bo|regy|soma[7]~44\ : std_logic;
SIGNAL \bo|regy|soma[8]~46\ : std_logic;
SIGNAL \bo|regy|soma[9]~47_combout\ : std_logic;
SIGNAL \bo|regy|soma[9]~48\ : std_logic;
SIGNAL \bo|regy|soma[10]~50\ : std_logic;
SIGNAL \bo|regy|soma[11]~51_combout\ : std_logic;
SIGNAL \bo|regy|soma[11]~52\ : std_logic;
SIGNAL \bo|regy|soma[12]~54\ : std_logic;
SIGNAL \bo|regy|soma[13]~55_combout\ : std_logic;
SIGNAL \bo|regy|soma[13]~56\ : std_logic;
SIGNAL \bo|regy|soma[14]~57_combout\ : std_logic;
SIGNAL \bo|regy|soma[14]~58\ : std_logic;
SIGNAL \bo|regy|soma[15]~60\ : std_logic;
SIGNAL \bo|regy|soma[16]~61_combout\ : std_logic;
SIGNAL \bo|regy|soma[16]~62\ : std_logic;
SIGNAL \bo|regy|soma[17]~63_combout\ : std_logic;
SIGNAL \bo|regy|soma[17]~64\ : std_logic;
SIGNAL \bo|regy|soma[18]~65_combout\ : std_logic;
SIGNAL \bo|regy|soma[18]~66\ : std_logic;
SIGNAL \bo|regy|soma[19]~68\ : std_logic;
SIGNAL \bo|regy|soma[20]~69_combout\ : std_logic;
SIGNAL \bo|regy|soma[20]~70\ : std_logic;
SIGNAL \bo|regy|soma[21]~72\ : std_logic;
SIGNAL \bo|regy|soma[22]~74\ : std_logic;
SIGNAL \bo|regy|soma[23]~75_combout\ : std_logic;
SIGNAL \bo|regy|soma[23]~76\ : std_logic;
SIGNAL \bo|regy|soma[24]~78\ : std_logic;
SIGNAL \bo|regy|soma[25]~79_combout\ : std_logic;
SIGNAL \bo|regy|soma[25]~80\ : std_logic;
SIGNAL \bo|regy|soma[26]~82\ : std_logic;
SIGNAL \bo|regy|soma[27]~83_combout\ : std_logic;
SIGNAL \bo|regy|soma[27]~84\ : std_logic;
SIGNAL \bo|regy|soma[28]~86\ : std_logic;
SIGNAL \bo|regy|soma[29]~87_combout\ : std_logic;
SIGNAL \bo|regy|soma[29]~88\ : std_logic;
SIGNAL \bo|regy|soma[30]~89_combout\ : std_logic;
SIGNAL \bo|regy|soma[30]~90\ : std_logic;
SIGNAL \bo|regy|soma[31]~91_combout\ : std_logic;
SIGNAL \bo|regy|soma[15]~59_combout\ : std_logic;
SIGNAL \bo|regy|soma[15]~feeder_combout\ : std_logic;
SIGNAL \bc|LessThan2~3_combout\ : std_logic;
SIGNAL \bo|regy|soma[10]~49_combout\ : std_logic;
SIGNAL \bc|LessThan2~1_combout\ : std_logic;
SIGNAL \bc|LessThan2~2_combout\ : std_logic;
SIGNAL \bc|LessThan2~4_combout\ : std_logic;
SIGNAL \bc|Selector0~0_combout\ : std_logic;
SIGNAL \bo|regr|soma[0]~93_combout\ : std_logic;
SIGNAL \bo|regr|soma[1]~32\ : std_logic;
SIGNAL \bo|regr|soma[2]~33_combout\ : std_logic;
SIGNAL \bo|regr|soma[2]~34\ : std_logic;
SIGNAL \bo|regr|soma[3]~36\ : std_logic;
SIGNAL \bo|regr|soma[4]~37_combout\ : std_logic;
SIGNAL \bo|regr|soma[4]~38\ : std_logic;
SIGNAL \bo|regr|soma[5]~40\ : std_logic;
SIGNAL \bo|regr|soma[6]~42\ : std_logic;
SIGNAL \bo|regr|soma[7]~43_combout\ : std_logic;
SIGNAL \bo|regr|soma[7]~44\ : std_logic;
SIGNAL \bo|regr|soma[8]~46\ : std_logic;
SIGNAL \bo|regr|soma[9]~47_combout\ : std_logic;
SIGNAL \bo|regr|soma[9]~48\ : std_logic;
SIGNAL \bo|regr|soma[10]~50\ : std_logic;
SIGNAL \bo|regr|soma[11]~51_combout\ : std_logic;
SIGNAL \bo|regr|soma[11]~52\ : std_logic;
SIGNAL \bo|regr|soma[12]~54\ : std_logic;
SIGNAL \bo|regr|soma[13]~55_combout\ : std_logic;
SIGNAL \bo|regr|soma[13]~56\ : std_logic;
SIGNAL \bo|regr|soma[14]~57_combout\ : std_logic;
SIGNAL \bo|regr|soma[14]~58\ : std_logic;
SIGNAL \bo|regr|soma[15]~59_combout\ : std_logic;
SIGNAL \bo|regr|soma[15]~60\ : std_logic;
SIGNAL \bo|regr|soma[16]~61_combout\ : std_logic;
SIGNAL \bo|regr|soma[16]~62\ : std_logic;
SIGNAL \bo|regr|soma[17]~63_combout\ : std_logic;
SIGNAL \bo|regr|soma[17]~64\ : std_logic;
SIGNAL \bo|regr|soma[18]~65_combout\ : std_logic;
SIGNAL \bo|regr|soma[18]~66\ : std_logic;
SIGNAL \bo|regr|soma[19]~68\ : std_logic;
SIGNAL \bo|regr|soma[20]~69_combout\ : std_logic;
SIGNAL \bo|regr|soma[20]~70\ : std_logic;
SIGNAL \bo|regr|soma[21]~72\ : std_logic;
SIGNAL \bo|regr|soma[22]~74\ : std_logic;
SIGNAL \bo|regr|soma[23]~75_combout\ : std_logic;
SIGNAL \bo|regr|soma[23]~76\ : std_logic;
SIGNAL \bo|regr|soma[24]~78\ : std_logic;
SIGNAL \bo|regr|soma[25]~79_combout\ : std_logic;
SIGNAL \bo|regr|soma[24]~77_combout\ : std_logic;
SIGNAL \bc|LessThan0~5_combout\ : std_logic;
SIGNAL \bc|LessThan0~2_combout\ : std_logic;
SIGNAL \bo|regr|soma[19]~67_combout\ : std_logic;
SIGNAL \bc|LessThan0~3_combout\ : std_logic;
SIGNAL \bo|regr|soma[12]~53_combout\ : std_logic;
SIGNAL \bc|LessThan0~1_combout\ : std_logic;
SIGNAL \bc|LessThan0~4_combout\ : std_logic;
SIGNAL \bo|regr|soma[25]~80\ : std_logic;
SIGNAL \bo|regr|soma[26]~82\ : std_logic;
SIGNAL \bo|regr|soma[27]~83_combout\ : std_logic;
SIGNAL \bo|regr|soma[27]~84\ : std_logic;
SIGNAL \bo|regr|soma[28]~86\ : std_logic;
SIGNAL \bo|regr|soma[29]~87_combout\ : std_logic;
SIGNAL \bo|regr|soma[29]~88\ : std_logic;
SIGNAL \bo|regr|soma[30]~89_combout\ : std_logic;
SIGNAL \bo|regr|soma[28]~85_combout\ : std_logic;
SIGNAL \bc|LessThan0~6_combout\ : std_logic;
SIGNAL \bc|LessThan0~7_combout\ : std_logic;
SIGNAL \bc|LessThan0~8_combout\ : std_logic;
SIGNAL \bc|Selector0~1_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \bc|state.R~regout\ : std_logic;
SIGNAL \bc|Selector1~0_combout\ : std_logic;
SIGNAL \bc|state.G~regout\ : std_logic;
SIGNAL \bo|regg|soma[1]~32\ : std_logic;
SIGNAL \bo|regg|soma[2]~33_combout\ : std_logic;
SIGNAL \bo|regg|soma[2]~34\ : std_logic;
SIGNAL \bo|regg|soma[3]~36\ : std_logic;
SIGNAL \bo|regg|soma[4]~37_combout\ : std_logic;
SIGNAL \bo|regg|soma[4]~38\ : std_logic;
SIGNAL \bo|regg|soma[5]~40\ : std_logic;
SIGNAL \bo|regg|soma[6]~42\ : std_logic;
SIGNAL \bo|regg|soma[7]~43_combout\ : std_logic;
SIGNAL \bo|regg|soma[7]~44\ : std_logic;
SIGNAL \bo|regg|soma[8]~46\ : std_logic;
SIGNAL \bo|regg|soma[9]~47_combout\ : std_logic;
SIGNAL \bo|regg|soma[9]~48\ : std_logic;
SIGNAL \bo|regg|soma[10]~50\ : std_logic;
SIGNAL \bo|regg|soma[11]~51_combout\ : std_logic;
SIGNAL \bo|regg|soma[11]~52\ : std_logic;
SIGNAL \bo|regg|soma[12]~53_combout\ : std_logic;
SIGNAL \bo|regg|soma[12]~54\ : std_logic;
SIGNAL \bo|regg|soma[13]~55_combout\ : std_logic;
SIGNAL \bo|regg|soma[13]~56\ : std_logic;
SIGNAL \bo|regg|soma[14]~57_combout\ : std_logic;
SIGNAL \bo|regg|soma[14]~58\ : std_logic;
SIGNAL \bo|regg|soma[15]~59_combout\ : std_logic;
SIGNAL \bo|regg|soma[15]~60\ : std_logic;
SIGNAL \bo|regg|soma[16]~61_combout\ : std_logic;
SIGNAL \bo|regg|soma[16]~62\ : std_logic;
SIGNAL \bo|regg|soma[17]~63_combout\ : std_logic;
SIGNAL \bo|regg|soma[17]~64\ : std_logic;
SIGNAL \bo|regg|soma[18]~65_combout\ : std_logic;
SIGNAL \bo|regg|soma[18]~66\ : std_logic;
SIGNAL \bo|regg|soma[19]~68\ : std_logic;
SIGNAL \bo|regg|soma[20]~69_combout\ : std_logic;
SIGNAL \bo|regg|soma[20]~70\ : std_logic;
SIGNAL \bo|regg|soma[21]~72\ : std_logic;
SIGNAL \bo|regg|soma[22]~73_combout\ : std_logic;
SIGNAL \bo|regg|soma[22]~74\ : std_logic;
SIGNAL \bo|regg|soma[23]~75_combout\ : std_logic;
SIGNAL \bo|regg|soma[23]~76\ : std_logic;
SIGNAL \bo|regg|soma[24]~78\ : std_logic;
SIGNAL \bo|regg|soma[25]~79_combout\ : std_logic;
SIGNAL \bc|LessThan1~5_combout\ : std_logic;
SIGNAL \bo|regg|soma[10]~49_combout\ : std_logic;
SIGNAL \bc|LessThan1~1_combout\ : std_logic;
SIGNAL \bc|LessThan1~2_combout\ : std_logic;
SIGNAL \bo|regg|soma[21]~71_combout\ : std_logic;
SIGNAL \bc|LessThan1~3_combout\ : std_logic;
SIGNAL \bc|LessThan1~4_combout\ : std_logic;
SIGNAL \bo|regg|soma[25]~80\ : std_logic;
SIGNAL \bo|regg|soma[26]~82\ : std_logic;
SIGNAL \bo|regg|soma[27]~83_combout\ : std_logic;
SIGNAL \bo|regg|soma[27]~84\ : std_logic;
SIGNAL \bo|regg|soma[28]~85_combout\ : std_logic;
SIGNAL \bo|regg|soma[28]~86\ : std_logic;
SIGNAL \bo|regg|soma[29]~87_combout\ : std_logic;
SIGNAL \bo|regg|soma[29]~88\ : std_logic;
SIGNAL \bo|regg|soma[30]~89_combout\ : std_logic;
SIGNAL \bo|regg|soma[26]~81_combout\ : std_logic;
SIGNAL \bc|LessThan1~6_combout\ : std_logic;
SIGNAL \bc|LessThan1~7_combout\ : std_logic;
SIGNAL \bc|LessThan1~8_combout\ : std_logic;
SIGNAL \bc|Selector2~0_combout\ : std_logic;
SIGNAL \bc|Selector2~1_combout\ : std_logic;
SIGNAL \bc|state.Y~regout\ : std_logic;
SIGNAL \bo|regy|soma\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \bo|regg|soma\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \bo|regr|soma\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \bc|ALT_INV_state.G~regout\ : std_logic;
SIGNAL \bc|ALT_INV_state.R~regout\ : std_logic;
SIGNAL \bc|ALT_INV_state.Y~regout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
y <= ww_y;
r <= ww_r;
g <= ww_g;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
\bc|ALT_INV_state.G~regout\ <= NOT \bc|state.G~regout\;
\bc|ALT_INV_state.R~regout\ <= NOT \bc|state.R~regout\;
\bc|ALT_INV_state.Y~regout\ <= NOT \bc|state.Y~regout\;

-- Location: LCFF_X35_Y32_N7
\bo|regy|soma[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[3]~35_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(3));

-- Location: LCFF_X35_Y32_N11
\bo|regy|soma[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[5]~39_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(5));

-- Location: LCFF_X35_Y32_N13
\bo|regy|soma[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[6]~41_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(6));

-- Location: LCFF_X35_Y32_N17
\bo|regy|soma[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[8]~45_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(8));

-- Location: LCFF_X35_Y32_N25
\bo|regy|soma[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[12]~53_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(12));

-- Location: LCFF_X35_Y31_N7
\bo|regy|soma[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[19]~67_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(19));

-- Location: LCFF_X35_Y31_N11
\bo|regy|soma[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[21]~71_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(21));

-- Location: LCFF_X35_Y31_N13
\bo|regy|soma[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[22]~73_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(22));

-- Location: LCFF_X35_Y31_N17
\bo|regy|soma[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[24]~77_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(24));

-- Location: LCFF_X35_Y31_N21
\bo|regy|soma[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[26]~81_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(26));

-- Location: LCFF_X35_Y31_N25
\bo|regy|soma[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[28]~85_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(28));

-- Location: LCFF_X33_Y30_N31
\bo|regg|soma[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[31]~91_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(31));

-- Location: LCFF_X33_Y31_N13
\bo|regg|soma[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[6]~41_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(6));

-- Location: LCFF_X33_Y31_N17
\bo|regg|soma[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[8]~45_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(8));

-- Location: LCFF_X33_Y30_N7
\bo|regg|soma[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[19]~67_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(19));

-- Location: LCFF_X33_Y30_N17
\bo|regg|soma[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[24]~77_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(24));

-- Location: LCFF_X36_Y32_N31
\bo|regr|soma[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[31]~91_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(31));

-- Location: LCFF_X36_Y33_N13
\bo|regr|soma[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[6]~41_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(6));

-- Location: LCFF_X36_Y33_N17
\bo|regr|soma[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[8]~45_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(8));

-- Location: LCFF_X36_Y33_N21
\bo|regr|soma[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[10]~49_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(10));

-- Location: LCFF_X36_Y32_N11
\bo|regr|soma[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[21]~71_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(21));

-- Location: LCFF_X36_Y32_N13
\bo|regr|soma[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[22]~73_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(22));

-- Location: LCFF_X36_Y32_N21
\bo|regr|soma[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[26]~81_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(26));

-- Location: LCFF_X35_Y32_N3
\bo|regy|soma[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[1]~31_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(1));

-- Location: LCCOMB_X35_Y32_N2
\bo|regy|soma[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[1]~31_combout\ = (\bo|regy|soma\(1) & (\bo|regy|soma\(0) $ (VCC))) # (!\bo|regy|soma\(1) & (\bo|regy|soma\(0) & VCC))
-- \bo|regy|soma[1]~32\ = CARRY((\bo|regy|soma\(1) & \bo|regy|soma\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regy|soma\(1),
	datab => \bo|regy|soma\(0),
	datad => VCC,
	combout => \bo|regy|soma[1]~31_combout\,
	cout => \bo|regy|soma[1]~32\);

-- Location: LCCOMB_X35_Y32_N6
\bo|regy|soma[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[3]~35_combout\ = (\bo|regy|soma\(3) & (\bo|regy|soma[2]~34\ $ (GND))) # (!\bo|regy|soma\(3) & (!\bo|regy|soma[2]~34\ & VCC))
-- \bo|regy|soma[3]~36\ = CARRY((\bo|regy|soma\(3) & !\bo|regy|soma[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regy|soma\(3),
	datad => VCC,
	cin => \bo|regy|soma[2]~34\,
	combout => \bo|regy|soma[3]~35_combout\,
	cout => \bo|regy|soma[3]~36\);

-- Location: LCCOMB_X35_Y32_N10
\bo|regy|soma[5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[5]~39_combout\ = (\bo|regy|soma\(5) & (\bo|regy|soma[4]~38\ $ (GND))) # (!\bo|regy|soma\(5) & (!\bo|regy|soma[4]~38\ & VCC))
-- \bo|regy|soma[5]~40\ = CARRY((\bo|regy|soma\(5) & !\bo|regy|soma[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regy|soma\(5),
	datad => VCC,
	cin => \bo|regy|soma[4]~38\,
	combout => \bo|regy|soma[5]~39_combout\,
	cout => \bo|regy|soma[5]~40\);

-- Location: LCCOMB_X35_Y32_N12
\bo|regy|soma[6]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[6]~41_combout\ = (\bo|regy|soma\(6) & (!\bo|regy|soma[5]~40\)) # (!\bo|regy|soma\(6) & ((\bo|regy|soma[5]~40\) # (GND)))
-- \bo|regy|soma[6]~42\ = CARRY((!\bo|regy|soma[5]~40\) # (!\bo|regy|soma\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regy|soma\(6),
	datad => VCC,
	cin => \bo|regy|soma[5]~40\,
	combout => \bo|regy|soma[6]~41_combout\,
	cout => \bo|regy|soma[6]~42\);

-- Location: LCCOMB_X35_Y32_N16
\bo|regy|soma[8]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[8]~45_combout\ = (\bo|regy|soma\(8) & (!\bo|regy|soma[7]~44\)) # (!\bo|regy|soma\(8) & ((\bo|regy|soma[7]~44\) # (GND)))
-- \bo|regy|soma[8]~46\ = CARRY((!\bo|regy|soma[7]~44\) # (!\bo|regy|soma\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regy|soma\(8),
	datad => VCC,
	cin => \bo|regy|soma[7]~44\,
	combout => \bo|regy|soma[8]~45_combout\,
	cout => \bo|regy|soma[8]~46\);

-- Location: LCCOMB_X35_Y32_N24
\bo|regy|soma[12]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[12]~53_combout\ = (\bo|regy|soma\(12) & (!\bo|regy|soma[11]~52\)) # (!\bo|regy|soma\(12) & ((\bo|regy|soma[11]~52\) # (GND)))
-- \bo|regy|soma[12]~54\ = CARRY((!\bo|regy|soma[11]~52\) # (!\bo|regy|soma\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regy|soma\(12),
	datad => VCC,
	cin => \bo|regy|soma[11]~52\,
	combout => \bo|regy|soma[12]~53_combout\,
	cout => \bo|regy|soma[12]~54\);

-- Location: LCCOMB_X35_Y31_N6
\bo|regy|soma[19]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[19]~67_combout\ = (\bo|regy|soma\(19) & (\bo|regy|soma[18]~66\ $ (GND))) # (!\bo|regy|soma\(19) & (!\bo|regy|soma[18]~66\ & VCC))
-- \bo|regy|soma[19]~68\ = CARRY((\bo|regy|soma\(19) & !\bo|regy|soma[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regy|soma\(19),
	datad => VCC,
	cin => \bo|regy|soma[18]~66\,
	combout => \bo|regy|soma[19]~67_combout\,
	cout => \bo|regy|soma[19]~68\);

-- Location: LCCOMB_X35_Y31_N10
\bo|regy|soma[21]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[21]~71_combout\ = (\bo|regy|soma\(21) & (\bo|regy|soma[20]~70\ $ (GND))) # (!\bo|regy|soma\(21) & (!\bo|regy|soma[20]~70\ & VCC))
-- \bo|regy|soma[21]~72\ = CARRY((\bo|regy|soma\(21) & !\bo|regy|soma[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regy|soma\(21),
	datad => VCC,
	cin => \bo|regy|soma[20]~70\,
	combout => \bo|regy|soma[21]~71_combout\,
	cout => \bo|regy|soma[21]~72\);

-- Location: LCCOMB_X35_Y31_N12
\bo|regy|soma[22]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[22]~73_combout\ = (\bo|regy|soma\(22) & (!\bo|regy|soma[21]~72\)) # (!\bo|regy|soma\(22) & ((\bo|regy|soma[21]~72\) # (GND)))
-- \bo|regy|soma[22]~74\ = CARRY((!\bo|regy|soma[21]~72\) # (!\bo|regy|soma\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regy|soma\(22),
	datad => VCC,
	cin => \bo|regy|soma[21]~72\,
	combout => \bo|regy|soma[22]~73_combout\,
	cout => \bo|regy|soma[22]~74\);

-- Location: LCCOMB_X35_Y31_N16
\bo|regy|soma[24]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[24]~77_combout\ = (\bo|regy|soma\(24) & (!\bo|regy|soma[23]~76\)) # (!\bo|regy|soma\(24) & ((\bo|regy|soma[23]~76\) # (GND)))
-- \bo|regy|soma[24]~78\ = CARRY((!\bo|regy|soma[23]~76\) # (!\bo|regy|soma\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regy|soma\(24),
	datad => VCC,
	cin => \bo|regy|soma[23]~76\,
	combout => \bo|regy|soma[24]~77_combout\,
	cout => \bo|regy|soma[24]~78\);

-- Location: LCCOMB_X35_Y31_N20
\bo|regy|soma[26]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[26]~81_combout\ = (\bo|regy|soma\(26) & (!\bo|regy|soma[25]~80\)) # (!\bo|regy|soma\(26) & ((\bo|regy|soma[25]~80\) # (GND)))
-- \bo|regy|soma[26]~82\ = CARRY((!\bo|regy|soma[25]~80\) # (!\bo|regy|soma\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regy|soma\(26),
	datad => VCC,
	cin => \bo|regy|soma[25]~80\,
	combout => \bo|regy|soma[26]~81_combout\,
	cout => \bo|regy|soma[26]~82\);

-- Location: LCCOMB_X35_Y31_N24
\bo|regy|soma[28]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[28]~85_combout\ = (\bo|regy|soma\(28) & (!\bo|regy|soma[27]~84\)) # (!\bo|regy|soma\(28) & ((\bo|regy|soma[27]~84\) # (GND)))
-- \bo|regy|soma[28]~86\ = CARRY((!\bo|regy|soma[27]~84\) # (!\bo|regy|soma\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regy|soma\(28),
	datad => VCC,
	cin => \bo|regy|soma[27]~84\,
	combout => \bo|regy|soma[28]~85_combout\,
	cout => \bo|regy|soma[28]~86\);

-- Location: LCFF_X33_Y31_N11
\bo|regg|soma[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[5]~39_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(5));

-- Location: LCFF_X33_Y31_N7
\bo|regg|soma[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[3]~35_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(3));

-- Location: LCFF_X33_Y31_N3
\bo|regg|soma[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[1]~31_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(1));

-- Location: LCCOMB_X33_Y31_N2
\bo|regg|soma[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[1]~31_combout\ = (\bo|regg|soma\(1) & (\bo|regg|soma\(0) $ (VCC))) # (!\bo|regg|soma\(1) & (\bo|regg|soma\(0) & VCC))
-- \bo|regg|soma[1]~32\ = CARRY((\bo|regg|soma\(1) & \bo|regg|soma\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regg|soma\(1),
	datab => \bo|regg|soma\(0),
	datad => VCC,
	combout => \bo|regg|soma[1]~31_combout\,
	cout => \bo|regg|soma[1]~32\);

-- Location: LCCOMB_X33_Y31_N6
\bo|regg|soma[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[3]~35_combout\ = (\bo|regg|soma\(3) & (\bo|regg|soma[2]~34\ $ (GND))) # (!\bo|regg|soma\(3) & (!\bo|regg|soma[2]~34\ & VCC))
-- \bo|regg|soma[3]~36\ = CARRY((\bo|regg|soma\(3) & !\bo|regg|soma[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regg|soma\(3),
	datad => VCC,
	cin => \bo|regg|soma[2]~34\,
	combout => \bo|regg|soma[3]~35_combout\,
	cout => \bo|regg|soma[3]~36\);

-- Location: LCCOMB_X33_Y31_N10
\bo|regg|soma[5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[5]~39_combout\ = (\bo|regg|soma\(5) & (\bo|regg|soma[4]~38\ $ (GND))) # (!\bo|regg|soma\(5) & (!\bo|regg|soma[4]~38\ & VCC))
-- \bo|regg|soma[5]~40\ = CARRY((\bo|regg|soma\(5) & !\bo|regg|soma[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regg|soma\(5),
	datad => VCC,
	cin => \bo|regg|soma[4]~38\,
	combout => \bo|regg|soma[5]~39_combout\,
	cout => \bo|regg|soma[5]~40\);

-- Location: LCCOMB_X33_Y31_N12
\bo|regg|soma[6]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[6]~41_combout\ = (\bo|regg|soma\(6) & (!\bo|regg|soma[5]~40\)) # (!\bo|regg|soma\(6) & ((\bo|regg|soma[5]~40\) # (GND)))
-- \bo|regg|soma[6]~42\ = CARRY((!\bo|regg|soma[5]~40\) # (!\bo|regg|soma\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regg|soma\(6),
	datad => VCC,
	cin => \bo|regg|soma[5]~40\,
	combout => \bo|regg|soma[6]~41_combout\,
	cout => \bo|regg|soma[6]~42\);

-- Location: LCCOMB_X33_Y31_N16
\bo|regg|soma[8]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[8]~45_combout\ = (\bo|regg|soma\(8) & (!\bo|regg|soma[7]~44\)) # (!\bo|regg|soma\(8) & ((\bo|regg|soma[7]~44\) # (GND)))
-- \bo|regg|soma[8]~46\ = CARRY((!\bo|regg|soma[7]~44\) # (!\bo|regg|soma\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regg|soma\(8),
	datad => VCC,
	cin => \bo|regg|soma[7]~44\,
	combout => \bo|regg|soma[8]~45_combout\,
	cout => \bo|regg|soma[8]~46\);

-- Location: LCCOMB_X33_Y30_N6
\bo|regg|soma[19]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[19]~67_combout\ = (\bo|regg|soma\(19) & (\bo|regg|soma[18]~66\ $ (GND))) # (!\bo|regg|soma\(19) & (!\bo|regg|soma[18]~66\ & VCC))
-- \bo|regg|soma[19]~68\ = CARRY((\bo|regg|soma\(19) & !\bo|regg|soma[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regg|soma\(19),
	datad => VCC,
	cin => \bo|regg|soma[18]~66\,
	combout => \bo|regg|soma[19]~67_combout\,
	cout => \bo|regg|soma[19]~68\);

-- Location: LCCOMB_X33_Y30_N16
\bo|regg|soma[24]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[24]~77_combout\ = (\bo|regg|soma\(24) & (!\bo|regg|soma[23]~76\)) # (!\bo|regg|soma\(24) & ((\bo|regg|soma[23]~76\) # (GND)))
-- \bo|regg|soma[24]~78\ = CARRY((!\bo|regg|soma[23]~76\) # (!\bo|regg|soma\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regg|soma\(24),
	datad => VCC,
	cin => \bo|regg|soma[23]~76\,
	combout => \bo|regg|soma[24]~77_combout\,
	cout => \bo|regg|soma[24]~78\);

-- Location: LCCOMB_X33_Y30_N28
\bo|regg|soma[30]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[30]~89_combout\ = (\bo|regg|soma\(30) & (!\bo|regg|soma[29]~88\)) # (!\bo|regg|soma\(30) & ((\bo|regg|soma[29]~88\) # (GND)))
-- \bo|regg|soma[30]~90\ = CARRY((!\bo|regg|soma[29]~88\) # (!\bo|regg|soma\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regg|soma\(30),
	datad => VCC,
	cin => \bo|regg|soma[29]~88\,
	combout => \bo|regg|soma[30]~89_combout\,
	cout => \bo|regg|soma[30]~90\);

-- Location: LCCOMB_X33_Y30_N30
\bo|regg|soma[31]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[31]~91_combout\ = \bo|regg|soma[30]~90\ $ (!\bo|regg|soma\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \bo|regg|soma\(31),
	cin => \bo|regg|soma[30]~90\,
	combout => \bo|regg|soma[31]~91_combout\);

-- Location: LCFF_X36_Y33_N11
\bo|regr|soma[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[5]~39_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(5));

-- Location: LCFF_X36_Y33_N7
\bo|regr|soma[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[3]~35_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(3));

-- Location: LCFF_X36_Y33_N3
\bo|regr|soma[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[1]~31_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(1));

-- Location: LCCOMB_X36_Y33_N2
\bo|regr|soma[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[1]~31_combout\ = (\bo|regr|soma\(1) & (\bo|regr|soma\(0) $ (VCC))) # (!\bo|regr|soma\(1) & (\bo|regr|soma\(0) & VCC))
-- \bo|regr|soma[1]~32\ = CARRY((\bo|regr|soma\(1) & \bo|regr|soma\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regr|soma\(1),
	datab => \bo|regr|soma\(0),
	datad => VCC,
	combout => \bo|regr|soma[1]~31_combout\,
	cout => \bo|regr|soma[1]~32\);

-- Location: LCCOMB_X36_Y33_N6
\bo|regr|soma[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[3]~35_combout\ = (\bo|regr|soma\(3) & (\bo|regr|soma[2]~34\ $ (GND))) # (!\bo|regr|soma\(3) & (!\bo|regr|soma[2]~34\ & VCC))
-- \bo|regr|soma[3]~36\ = CARRY((\bo|regr|soma\(3) & !\bo|regr|soma[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regr|soma\(3),
	datad => VCC,
	cin => \bo|regr|soma[2]~34\,
	combout => \bo|regr|soma[3]~35_combout\,
	cout => \bo|regr|soma[3]~36\);

-- Location: LCCOMB_X36_Y33_N10
\bo|regr|soma[5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[5]~39_combout\ = (\bo|regr|soma\(5) & (\bo|regr|soma[4]~38\ $ (GND))) # (!\bo|regr|soma\(5) & (!\bo|regr|soma[4]~38\ & VCC))
-- \bo|regr|soma[5]~40\ = CARRY((\bo|regr|soma\(5) & !\bo|regr|soma[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regr|soma\(5),
	datad => VCC,
	cin => \bo|regr|soma[4]~38\,
	combout => \bo|regr|soma[5]~39_combout\,
	cout => \bo|regr|soma[5]~40\);

-- Location: LCCOMB_X36_Y33_N12
\bo|regr|soma[6]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[6]~41_combout\ = (\bo|regr|soma\(6) & (!\bo|regr|soma[5]~40\)) # (!\bo|regr|soma\(6) & ((\bo|regr|soma[5]~40\) # (GND)))
-- \bo|regr|soma[6]~42\ = CARRY((!\bo|regr|soma[5]~40\) # (!\bo|regr|soma\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regr|soma\(6),
	datad => VCC,
	cin => \bo|regr|soma[5]~40\,
	combout => \bo|regr|soma[6]~41_combout\,
	cout => \bo|regr|soma[6]~42\);

-- Location: LCCOMB_X36_Y33_N16
\bo|regr|soma[8]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[8]~45_combout\ = (\bo|regr|soma\(8) & (!\bo|regr|soma[7]~44\)) # (!\bo|regr|soma\(8) & ((\bo|regr|soma[7]~44\) # (GND)))
-- \bo|regr|soma[8]~46\ = CARRY((!\bo|regr|soma[7]~44\) # (!\bo|regr|soma\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regr|soma\(8),
	datad => VCC,
	cin => \bo|regr|soma[7]~44\,
	combout => \bo|regr|soma[8]~45_combout\,
	cout => \bo|regr|soma[8]~46\);

-- Location: LCCOMB_X36_Y33_N20
\bo|regr|soma[10]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[10]~49_combout\ = (\bo|regr|soma\(10) & (!\bo|regr|soma[9]~48\)) # (!\bo|regr|soma\(10) & ((\bo|regr|soma[9]~48\) # (GND)))
-- \bo|regr|soma[10]~50\ = CARRY((!\bo|regr|soma[9]~48\) # (!\bo|regr|soma\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regr|soma\(10),
	datad => VCC,
	cin => \bo|regr|soma[9]~48\,
	combout => \bo|regr|soma[10]~49_combout\,
	cout => \bo|regr|soma[10]~50\);

-- Location: LCCOMB_X36_Y32_N10
\bo|regr|soma[21]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[21]~71_combout\ = (\bo|regr|soma\(21) & (\bo|regr|soma[20]~70\ $ (GND))) # (!\bo|regr|soma\(21) & (!\bo|regr|soma[20]~70\ & VCC))
-- \bo|regr|soma[21]~72\ = CARRY((\bo|regr|soma\(21) & !\bo|regr|soma[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regr|soma\(21),
	datad => VCC,
	cin => \bo|regr|soma[20]~70\,
	combout => \bo|regr|soma[21]~71_combout\,
	cout => \bo|regr|soma[21]~72\);

-- Location: LCCOMB_X36_Y32_N12
\bo|regr|soma[22]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[22]~73_combout\ = (\bo|regr|soma\(22) & (!\bo|regr|soma[21]~72\)) # (!\bo|regr|soma\(22) & ((\bo|regr|soma[21]~72\) # (GND)))
-- \bo|regr|soma[22]~74\ = CARRY((!\bo|regr|soma[21]~72\) # (!\bo|regr|soma\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regr|soma\(22),
	datad => VCC,
	cin => \bo|regr|soma[21]~72\,
	combout => \bo|regr|soma[22]~73_combout\,
	cout => \bo|regr|soma[22]~74\);

-- Location: LCCOMB_X36_Y32_N20
\bo|regr|soma[26]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[26]~81_combout\ = (\bo|regr|soma\(26) & (!\bo|regr|soma[25]~80\)) # (!\bo|regr|soma\(26) & ((\bo|regr|soma[25]~80\) # (GND)))
-- \bo|regr|soma[26]~82\ = CARRY((!\bo|regr|soma[25]~80\) # (!\bo|regr|soma\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regr|soma\(26),
	datad => VCC,
	cin => \bo|regr|soma[25]~80\,
	combout => \bo|regr|soma[26]~81_combout\,
	cout => \bo|regr|soma[26]~82\);

-- Location: LCCOMB_X36_Y32_N28
\bo|regr|soma[30]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[30]~89_combout\ = (\bo|regr|soma\(30) & (!\bo|regr|soma[29]~88\)) # (!\bo|regr|soma\(30) & ((\bo|regr|soma[29]~88\) # (GND)))
-- \bo|regr|soma[30]~90\ = CARRY((!\bo|regr|soma[29]~88\) # (!\bo|regr|soma\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regr|soma\(30),
	datad => VCC,
	cin => \bo|regr|soma[29]~88\,
	combout => \bo|regr|soma[30]~89_combout\,
	cout => \bo|regr|soma[30]~90\);

-- Location: LCCOMB_X36_Y32_N30
\bo|regr|soma[31]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[31]~91_combout\ = \bo|regr|soma[30]~90\ $ (!\bo|regr|soma\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \bo|regr|soma\(31),
	cin => \bo|regr|soma[30]~90\,
	combout => \bo|regr|soma[31]~91_combout\);

-- Location: LCCOMB_X34_Y32_N16
\bc|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan2~0_combout\ = (!\bo|regy|soma\(3) & (!\bo|regy|soma\(5) & (!\bo|regy|soma\(6) & !\bo|regy|soma\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regy|soma\(3),
	datab => \bo|regy|soma\(5),
	datac => \bo|regy|soma\(6),
	datad => \bo|regy|soma\(4),
	combout => \bc|LessThan2~0_combout\);

-- Location: LCCOMB_X34_Y31_N30
\bc|LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan2~5_combout\ = (!\bo|regy|soma\(19) & (!\bo|regy|soma\(21) & (!\bo|regy|soma\(20) & !\bo|regy|soma\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regy|soma\(19),
	datab => \bo|regy|soma\(21),
	datac => \bo|regy|soma\(20),
	datad => \bo|regy|soma\(22),
	combout => \bc|LessThan2~5_combout\);

-- Location: LCCOMB_X34_Y31_N20
\bc|LessThan2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan2~6_combout\ = (!\bo|regy|soma\(24) & (!\bo|regy|soma\(26) & (!\bo|regy|soma\(23) & !\bo|regy|soma\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regy|soma\(24),
	datab => \bo|regy|soma\(26),
	datac => \bo|regy|soma\(23),
	datad => \bo|regy|soma\(25),
	combout => \bc|LessThan2~6_combout\);

-- Location: LCCOMB_X34_Y31_N18
\bc|LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan2~7_combout\ = (!\bo|regy|soma\(29) & (!\bo|regy|soma\(28) & (!\bo|regy|soma\(27) & !\bo|regy|soma\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regy|soma\(29),
	datab => \bo|regy|soma\(28),
	datac => \bo|regy|soma\(27),
	datad => \bo|regy|soma\(30),
	combout => \bc|LessThan2~7_combout\);

-- Location: LCCOMB_X34_Y31_N24
\bc|LessThan2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan2~8_combout\ = (\bc|LessThan2~7_combout\ & (\bc|LessThan2~6_combout\ & \bc|LessThan2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bc|LessThan2~7_combout\,
	datac => \bc|LessThan2~6_combout\,
	datad => \bc|LessThan2~5_combout\,
	combout => \bc|LessThan2~8_combout\);

-- Location: LCCOMB_X32_Y31_N24
\bc|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan1~0_combout\ = (!\bo|regg|soma\(8) & (!\bo|regg|soma\(6) & (!\bo|regg|soma\(7) & !\bo|regg|soma\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regg|soma\(8),
	datab => \bo|regg|soma\(6),
	datac => \bo|regg|soma\(7),
	datad => \bo|regg|soma\(9),
	combout => \bc|LessThan1~0_combout\);

-- Location: LCCOMB_X36_Y33_N0
\bc|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan0~0_combout\ = (!\bo|regr|soma\(6) & (!\bo|regr|soma\(7) & (!\bo|regr|soma\(8) & !\bo|regr|soma\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regr|soma\(6),
	datab => \bo|regr|soma\(7),
	datac => \bo|regr|soma\(8),
	datad => \bo|regr|soma\(9),
	combout => \bc|LessThan0~0_combout\);

-- Location: LCFF_X35_Y33_N7
\bc|state.Init\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bc|state.Init~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc|state.Init~regout\);

-- Location: LCCOMB_X35_Y33_N6
\bc|state.Init~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|state.Init~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \bc|state.Init~feeder_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
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
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y31_N0
\bo|regg|soma[0]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[0]~93_combout\ = !\bo|regg|soma\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bo|regg|soma\(0),
	combout => \bo|regg|soma[0]~93_combout\);

-- Location: LCCOMB_X34_Y32_N0
\bo|regy|soma[0]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[0]~93_combout\ = !\bo|regy|soma\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bo|regy|soma\(0),
	combout => \bo|regy|soma[0]~93_combout\);

-- Location: LCFF_X35_Y32_N31
\bo|regy|soma[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \bo|regy|soma[0]~93_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(0));

-- Location: LCCOMB_X35_Y32_N4
\bo|regy|soma[2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[2]~33_combout\ = (\bo|regy|soma\(2) & (!\bo|regy|soma[1]~32\)) # (!\bo|regy|soma\(2) & ((\bo|regy|soma[1]~32\) # (GND)))
-- \bo|regy|soma[2]~34\ = CARRY((!\bo|regy|soma[1]~32\) # (!\bo|regy|soma\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regy|soma\(2),
	datad => VCC,
	cin => \bo|regy|soma[1]~32\,
	combout => \bo|regy|soma[2]~33_combout\,
	cout => \bo|regy|soma[2]~34\);

-- Location: LCFF_X35_Y32_N5
\bo|regy|soma[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[2]~33_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(2));

-- Location: LCCOMB_X35_Y32_N8
\bo|regy|soma[4]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[4]~37_combout\ = (\bo|regy|soma\(4) & (!\bo|regy|soma[3]~36\)) # (!\bo|regy|soma\(4) & ((\bo|regy|soma[3]~36\) # (GND)))
-- \bo|regy|soma[4]~38\ = CARRY((!\bo|regy|soma[3]~36\) # (!\bo|regy|soma\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regy|soma\(4),
	datad => VCC,
	cin => \bo|regy|soma[3]~36\,
	combout => \bo|regy|soma[4]~37_combout\,
	cout => \bo|regy|soma[4]~38\);

-- Location: LCFF_X35_Y32_N9
\bo|regy|soma[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[4]~37_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(4));

-- Location: LCCOMB_X35_Y32_N14
\bo|regy|soma[7]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[7]~43_combout\ = (\bo|regy|soma\(7) & (\bo|regy|soma[6]~42\ $ (GND))) # (!\bo|regy|soma\(7) & (!\bo|regy|soma[6]~42\ & VCC))
-- \bo|regy|soma[7]~44\ = CARRY((\bo|regy|soma\(7) & !\bo|regy|soma[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regy|soma\(7),
	datad => VCC,
	cin => \bo|regy|soma[6]~42\,
	combout => \bo|regy|soma[7]~43_combout\,
	cout => \bo|regy|soma[7]~44\);

-- Location: LCFF_X35_Y32_N15
\bo|regy|soma[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[7]~43_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(7));

-- Location: LCCOMB_X35_Y32_N18
\bo|regy|soma[9]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[9]~47_combout\ = (\bo|regy|soma\(9) & (\bo|regy|soma[8]~46\ $ (GND))) # (!\bo|regy|soma\(9) & (!\bo|regy|soma[8]~46\ & VCC))
-- \bo|regy|soma[9]~48\ = CARRY((\bo|regy|soma\(9) & !\bo|regy|soma[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regy|soma\(9),
	datad => VCC,
	cin => \bo|regy|soma[8]~46\,
	combout => \bo|regy|soma[9]~47_combout\,
	cout => \bo|regy|soma[9]~48\);

-- Location: LCFF_X35_Y32_N19
\bo|regy|soma[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[9]~47_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(9));

-- Location: LCCOMB_X35_Y32_N20
\bo|regy|soma[10]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[10]~49_combout\ = (\bo|regy|soma\(10) & (!\bo|regy|soma[9]~48\)) # (!\bo|regy|soma\(10) & ((\bo|regy|soma[9]~48\) # (GND)))
-- \bo|regy|soma[10]~50\ = CARRY((!\bo|regy|soma[9]~48\) # (!\bo|regy|soma\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regy|soma\(10),
	datad => VCC,
	cin => \bo|regy|soma[9]~48\,
	combout => \bo|regy|soma[10]~49_combout\,
	cout => \bo|regy|soma[10]~50\);

-- Location: LCCOMB_X35_Y32_N22
\bo|regy|soma[11]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[11]~51_combout\ = (\bo|regy|soma\(11) & (\bo|regy|soma[10]~50\ $ (GND))) # (!\bo|regy|soma\(11) & (!\bo|regy|soma[10]~50\ & VCC))
-- \bo|regy|soma[11]~52\ = CARRY((\bo|regy|soma\(11) & !\bo|regy|soma[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regy|soma\(11),
	datad => VCC,
	cin => \bo|regy|soma[10]~50\,
	combout => \bo|regy|soma[11]~51_combout\,
	cout => \bo|regy|soma[11]~52\);

-- Location: LCFF_X35_Y32_N23
\bo|regy|soma[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[11]~51_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(11));

-- Location: LCCOMB_X35_Y32_N26
\bo|regy|soma[13]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[13]~55_combout\ = (\bo|regy|soma\(13) & (\bo|regy|soma[12]~54\ $ (GND))) # (!\bo|regy|soma\(13) & (!\bo|regy|soma[12]~54\ & VCC))
-- \bo|regy|soma[13]~56\ = CARRY((\bo|regy|soma\(13) & !\bo|regy|soma[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regy|soma\(13),
	datad => VCC,
	cin => \bo|regy|soma[12]~54\,
	combout => \bo|regy|soma[13]~55_combout\,
	cout => \bo|regy|soma[13]~56\);

-- Location: LCFF_X35_Y32_N27
\bo|regy|soma[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[13]~55_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(13));

-- Location: LCCOMB_X35_Y32_N28
\bo|regy|soma[14]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[14]~57_combout\ = (\bo|regy|soma\(14) & (!\bo|regy|soma[13]~56\)) # (!\bo|regy|soma\(14) & ((\bo|regy|soma[13]~56\) # (GND)))
-- \bo|regy|soma[14]~58\ = CARRY((!\bo|regy|soma[13]~56\) # (!\bo|regy|soma\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regy|soma\(14),
	datad => VCC,
	cin => \bo|regy|soma[13]~56\,
	combout => \bo|regy|soma[14]~57_combout\,
	cout => \bo|regy|soma[14]~58\);

-- Location: LCFF_X35_Y32_N29
\bo|regy|soma[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[14]~57_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(14));

-- Location: LCCOMB_X35_Y32_N30
\bo|regy|soma[15]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[15]~59_combout\ = (\bo|regy|soma\(15) & (\bo|regy|soma[14]~58\ $ (GND))) # (!\bo|regy|soma\(15) & (!\bo|regy|soma[14]~58\ & VCC))
-- \bo|regy|soma[15]~60\ = CARRY((\bo|regy|soma\(15) & !\bo|regy|soma[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regy|soma\(15),
	datad => VCC,
	cin => \bo|regy|soma[14]~58\,
	combout => \bo|regy|soma[15]~59_combout\,
	cout => \bo|regy|soma[15]~60\);

-- Location: LCCOMB_X35_Y31_N0
\bo|regy|soma[16]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[16]~61_combout\ = (\bo|regy|soma\(16) & (!\bo|regy|soma[15]~60\)) # (!\bo|regy|soma\(16) & ((\bo|regy|soma[15]~60\) # (GND)))
-- \bo|regy|soma[16]~62\ = CARRY((!\bo|regy|soma[15]~60\) # (!\bo|regy|soma\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regy|soma\(16),
	datad => VCC,
	cin => \bo|regy|soma[15]~60\,
	combout => \bo|regy|soma[16]~61_combout\,
	cout => \bo|regy|soma[16]~62\);

-- Location: LCFF_X35_Y31_N1
\bo|regy|soma[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[16]~61_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(16));

-- Location: LCCOMB_X35_Y31_N2
\bo|regy|soma[17]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[17]~63_combout\ = (\bo|regy|soma\(17) & (\bo|regy|soma[16]~62\ $ (GND))) # (!\bo|regy|soma\(17) & (!\bo|regy|soma[16]~62\ & VCC))
-- \bo|regy|soma[17]~64\ = CARRY((\bo|regy|soma\(17) & !\bo|regy|soma[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regy|soma\(17),
	datad => VCC,
	cin => \bo|regy|soma[16]~62\,
	combout => \bo|regy|soma[17]~63_combout\,
	cout => \bo|regy|soma[17]~64\);

-- Location: LCFF_X35_Y31_N3
\bo|regy|soma[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[17]~63_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(17));

-- Location: LCCOMB_X35_Y31_N4
\bo|regy|soma[18]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[18]~65_combout\ = (\bo|regy|soma\(18) & (!\bo|regy|soma[17]~64\)) # (!\bo|regy|soma\(18) & ((\bo|regy|soma[17]~64\) # (GND)))
-- \bo|regy|soma[18]~66\ = CARRY((!\bo|regy|soma[17]~64\) # (!\bo|regy|soma\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regy|soma\(18),
	datad => VCC,
	cin => \bo|regy|soma[17]~64\,
	combout => \bo|regy|soma[18]~65_combout\,
	cout => \bo|regy|soma[18]~66\);

-- Location: LCFF_X35_Y31_N5
\bo|regy|soma[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[18]~65_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(18));

-- Location: LCCOMB_X35_Y31_N8
\bo|regy|soma[20]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[20]~69_combout\ = (\bo|regy|soma\(20) & (!\bo|regy|soma[19]~68\)) # (!\bo|regy|soma\(20) & ((\bo|regy|soma[19]~68\) # (GND)))
-- \bo|regy|soma[20]~70\ = CARRY((!\bo|regy|soma[19]~68\) # (!\bo|regy|soma\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regy|soma\(20),
	datad => VCC,
	cin => \bo|regy|soma[19]~68\,
	combout => \bo|regy|soma[20]~69_combout\,
	cout => \bo|regy|soma[20]~70\);

-- Location: LCFF_X35_Y31_N9
\bo|regy|soma[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[20]~69_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(20));

-- Location: LCCOMB_X35_Y31_N14
\bo|regy|soma[23]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[23]~75_combout\ = (\bo|regy|soma\(23) & (\bo|regy|soma[22]~74\ $ (GND))) # (!\bo|regy|soma\(23) & (!\bo|regy|soma[22]~74\ & VCC))
-- \bo|regy|soma[23]~76\ = CARRY((\bo|regy|soma\(23) & !\bo|regy|soma[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regy|soma\(23),
	datad => VCC,
	cin => \bo|regy|soma[22]~74\,
	combout => \bo|regy|soma[23]~75_combout\,
	cout => \bo|regy|soma[23]~76\);

-- Location: LCFF_X35_Y31_N15
\bo|regy|soma[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[23]~75_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(23));

-- Location: LCCOMB_X35_Y31_N18
\bo|regy|soma[25]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[25]~79_combout\ = (\bo|regy|soma\(25) & (\bo|regy|soma[24]~78\ $ (GND))) # (!\bo|regy|soma\(25) & (!\bo|regy|soma[24]~78\ & VCC))
-- \bo|regy|soma[25]~80\ = CARRY((\bo|regy|soma\(25) & !\bo|regy|soma[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regy|soma\(25),
	datad => VCC,
	cin => \bo|regy|soma[24]~78\,
	combout => \bo|regy|soma[25]~79_combout\,
	cout => \bo|regy|soma[25]~80\);

-- Location: LCFF_X35_Y31_N19
\bo|regy|soma[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[25]~79_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(25));

-- Location: LCCOMB_X35_Y31_N22
\bo|regy|soma[27]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[27]~83_combout\ = (\bo|regy|soma\(27) & (\bo|regy|soma[26]~82\ $ (GND))) # (!\bo|regy|soma\(27) & (!\bo|regy|soma[26]~82\ & VCC))
-- \bo|regy|soma[27]~84\ = CARRY((\bo|regy|soma\(27) & !\bo|regy|soma[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regy|soma\(27),
	datad => VCC,
	cin => \bo|regy|soma[26]~82\,
	combout => \bo|regy|soma[27]~83_combout\,
	cout => \bo|regy|soma[27]~84\);

-- Location: LCFF_X35_Y31_N23
\bo|regy|soma[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[27]~83_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(27));

-- Location: LCCOMB_X35_Y31_N26
\bo|regy|soma[29]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[29]~87_combout\ = (\bo|regy|soma\(29) & (\bo|regy|soma[28]~86\ $ (GND))) # (!\bo|regy|soma\(29) & (!\bo|regy|soma[28]~86\ & VCC))
-- \bo|regy|soma[29]~88\ = CARRY((\bo|regy|soma\(29) & !\bo|regy|soma[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regy|soma\(29),
	datad => VCC,
	cin => \bo|regy|soma[28]~86\,
	combout => \bo|regy|soma[29]~87_combout\,
	cout => \bo|regy|soma[29]~88\);

-- Location: LCFF_X35_Y31_N27
\bo|regy|soma[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[29]~87_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(29));

-- Location: LCCOMB_X35_Y31_N28
\bo|regy|soma[30]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[30]~89_combout\ = (\bo|regy|soma\(30) & (!\bo|regy|soma[29]~88\)) # (!\bo|regy|soma\(30) & ((\bo|regy|soma[29]~88\) # (GND)))
-- \bo|regy|soma[30]~90\ = CARRY((!\bo|regy|soma[29]~88\) # (!\bo|regy|soma\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regy|soma\(30),
	datad => VCC,
	cin => \bo|regy|soma[29]~88\,
	combout => \bo|regy|soma[30]~89_combout\,
	cout => \bo|regy|soma[30]~90\);

-- Location: LCFF_X35_Y31_N29
\bo|regy|soma[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[30]~89_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(30));

-- Location: LCCOMB_X35_Y31_N30
\bo|regy|soma[31]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[31]~91_combout\ = \bo|regy|soma[30]~90\ $ (!\bo|regy|soma\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \bo|regy|soma\(31),
	cin => \bo|regy|soma[30]~90\,
	combout => \bo|regy|soma[31]~91_combout\);

-- Location: LCFF_X35_Y31_N31
\bo|regy|soma[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[31]~91_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(31));

-- Location: LCCOMB_X34_Y31_N0
\bo|regy|soma[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regy|soma[15]~feeder_combout\ = \bo|regy|soma[15]~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bo|regy|soma[15]~59_combout\,
	combout => \bo|regy|soma[15]~feeder_combout\);

-- Location: LCFF_X34_Y31_N1
\bo|regy|soma[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[15]~feeder_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(15));

-- Location: LCCOMB_X34_Y31_N26
\bc|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan2~3_combout\ = (!\bo|regy|soma\(18) & (!\bo|regy|soma\(15) & (!\bo|regy|soma\(16) & !\bo|regy|soma\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regy|soma\(18),
	datab => \bo|regy|soma\(15),
	datac => \bo|regy|soma\(16),
	datad => \bo|regy|soma\(17),
	combout => \bc|LessThan2~3_combout\);

-- Location: LCFF_X35_Y32_N21
\bo|regy|soma[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regy|soma[10]~49_combout\,
	aclr => \bc|ALT_INV_state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regy|soma\(10));

-- Location: LCCOMB_X34_Y32_N6
\bc|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan2~1_combout\ = (!\bo|regy|soma\(8) & (!\bo|regy|soma\(10) & (!\bo|regy|soma\(7) & !\bo|regy|soma\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regy|soma\(8),
	datab => \bo|regy|soma\(10),
	datac => \bo|regy|soma\(7),
	datad => \bo|regy|soma\(9),
	combout => \bc|LessThan2~1_combout\);

-- Location: LCCOMB_X35_Y32_N0
\bc|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan2~2_combout\ = (!\bo|regy|soma\(12) & (!\bo|regy|soma\(14) & (!\bo|regy|soma\(11) & !\bo|regy|soma\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regy|soma\(12),
	datab => \bo|regy|soma\(14),
	datac => \bo|regy|soma\(11),
	datad => \bo|regy|soma\(13),
	combout => \bc|LessThan2~2_combout\);

-- Location: LCCOMB_X34_Y31_N12
\bc|LessThan2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan2~4_combout\ = (\bc|LessThan2~0_combout\ & (\bc|LessThan2~3_combout\ & (\bc|LessThan2~1_combout\ & \bc|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|LessThan2~0_combout\,
	datab => \bc|LessThan2~3_combout\,
	datac => \bc|LessThan2~1_combout\,
	datad => \bc|LessThan2~2_combout\,
	combout => \bc|LessThan2~4_combout\);

-- Location: LCCOMB_X34_Y31_N28
\bc|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|Selector0~0_combout\ = (!\bo|regy|soma\(31) & (\bc|state.Y~regout\ & ((!\bc|LessThan2~4_combout\) # (!\bc|LessThan2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|LessThan2~8_combout\,
	datab => \bo|regy|soma\(31),
	datac => \bc|state.Y~regout\,
	datad => \bc|LessThan2~4_combout\,
	combout => \bc|Selector0~0_combout\);

-- Location: LCCOMB_X35_Y33_N28
\bo|regr|soma[0]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[0]~93_combout\ = !\bo|regr|soma\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bo|regr|soma\(0),
	combout => \bo|regr|soma[0]~93_combout\);

-- Location: LCFF_X35_Y33_N29
\bo|regr|soma[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[0]~93_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(0));

-- Location: LCCOMB_X36_Y33_N4
\bo|regr|soma[2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[2]~33_combout\ = (\bo|regr|soma\(2) & (!\bo|regr|soma[1]~32\)) # (!\bo|regr|soma\(2) & ((\bo|regr|soma[1]~32\) # (GND)))
-- \bo|regr|soma[2]~34\ = CARRY((!\bo|regr|soma[1]~32\) # (!\bo|regr|soma\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regr|soma\(2),
	datad => VCC,
	cin => \bo|regr|soma[1]~32\,
	combout => \bo|regr|soma[2]~33_combout\,
	cout => \bo|regr|soma[2]~34\);

-- Location: LCFF_X36_Y33_N5
\bo|regr|soma[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[2]~33_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(2));

-- Location: LCCOMB_X36_Y33_N8
\bo|regr|soma[4]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[4]~37_combout\ = (\bo|regr|soma\(4) & (!\bo|regr|soma[3]~36\)) # (!\bo|regr|soma\(4) & ((\bo|regr|soma[3]~36\) # (GND)))
-- \bo|regr|soma[4]~38\ = CARRY((!\bo|regr|soma[3]~36\) # (!\bo|regr|soma\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regr|soma\(4),
	datad => VCC,
	cin => \bo|regr|soma[3]~36\,
	combout => \bo|regr|soma[4]~37_combout\,
	cout => \bo|regr|soma[4]~38\);

-- Location: LCFF_X36_Y33_N9
\bo|regr|soma[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[4]~37_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(4));

-- Location: LCCOMB_X36_Y33_N14
\bo|regr|soma[7]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[7]~43_combout\ = (\bo|regr|soma\(7) & (\bo|regr|soma[6]~42\ $ (GND))) # (!\bo|regr|soma\(7) & (!\bo|regr|soma[6]~42\ & VCC))
-- \bo|regr|soma[7]~44\ = CARRY((\bo|regr|soma\(7) & !\bo|regr|soma[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regr|soma\(7),
	datad => VCC,
	cin => \bo|regr|soma[6]~42\,
	combout => \bo|regr|soma[7]~43_combout\,
	cout => \bo|regr|soma[7]~44\);

-- Location: LCFF_X36_Y33_N15
\bo|regr|soma[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[7]~43_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(7));

-- Location: LCCOMB_X36_Y33_N18
\bo|regr|soma[9]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[9]~47_combout\ = (\bo|regr|soma\(9) & (\bo|regr|soma[8]~46\ $ (GND))) # (!\bo|regr|soma\(9) & (!\bo|regr|soma[8]~46\ & VCC))
-- \bo|regr|soma[9]~48\ = CARRY((\bo|regr|soma\(9) & !\bo|regr|soma[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regr|soma\(9),
	datad => VCC,
	cin => \bo|regr|soma[8]~46\,
	combout => \bo|regr|soma[9]~47_combout\,
	cout => \bo|regr|soma[9]~48\);

-- Location: LCFF_X36_Y33_N19
\bo|regr|soma[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[9]~47_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(9));

-- Location: LCCOMB_X36_Y33_N22
\bo|regr|soma[11]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[11]~51_combout\ = (\bo|regr|soma\(11) & (\bo|regr|soma[10]~50\ $ (GND))) # (!\bo|regr|soma\(11) & (!\bo|regr|soma[10]~50\ & VCC))
-- \bo|regr|soma[11]~52\ = CARRY((\bo|regr|soma\(11) & !\bo|regr|soma[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regr|soma\(11),
	datad => VCC,
	cin => \bo|regr|soma[10]~50\,
	combout => \bo|regr|soma[11]~51_combout\,
	cout => \bo|regr|soma[11]~52\);

-- Location: LCFF_X36_Y33_N23
\bo|regr|soma[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[11]~51_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(11));

-- Location: LCCOMB_X36_Y33_N24
\bo|regr|soma[12]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[12]~53_combout\ = (\bo|regr|soma\(12) & (!\bo|regr|soma[11]~52\)) # (!\bo|regr|soma\(12) & ((\bo|regr|soma[11]~52\) # (GND)))
-- \bo|regr|soma[12]~54\ = CARRY((!\bo|regr|soma[11]~52\) # (!\bo|regr|soma\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regr|soma\(12),
	datad => VCC,
	cin => \bo|regr|soma[11]~52\,
	combout => \bo|regr|soma[12]~53_combout\,
	cout => \bo|regr|soma[12]~54\);

-- Location: LCCOMB_X36_Y33_N26
\bo|regr|soma[13]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[13]~55_combout\ = (\bo|regr|soma\(13) & (\bo|regr|soma[12]~54\ $ (GND))) # (!\bo|regr|soma\(13) & (!\bo|regr|soma[12]~54\ & VCC))
-- \bo|regr|soma[13]~56\ = CARRY((\bo|regr|soma\(13) & !\bo|regr|soma[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regr|soma\(13),
	datad => VCC,
	cin => \bo|regr|soma[12]~54\,
	combout => \bo|regr|soma[13]~55_combout\,
	cout => \bo|regr|soma[13]~56\);

-- Location: LCFF_X36_Y33_N27
\bo|regr|soma[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[13]~55_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(13));

-- Location: LCCOMB_X36_Y33_N28
\bo|regr|soma[14]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[14]~57_combout\ = (\bo|regr|soma\(14) & (!\bo|regr|soma[13]~56\)) # (!\bo|regr|soma\(14) & ((\bo|regr|soma[13]~56\) # (GND)))
-- \bo|regr|soma[14]~58\ = CARRY((!\bo|regr|soma[13]~56\) # (!\bo|regr|soma\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regr|soma\(14),
	datad => VCC,
	cin => \bo|regr|soma[13]~56\,
	combout => \bo|regr|soma[14]~57_combout\,
	cout => \bo|regr|soma[14]~58\);

-- Location: LCFF_X36_Y33_N29
\bo|regr|soma[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[14]~57_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(14));

-- Location: LCCOMB_X36_Y33_N30
\bo|regr|soma[15]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[15]~59_combout\ = (\bo|regr|soma\(15) & (\bo|regr|soma[14]~58\ $ (GND))) # (!\bo|regr|soma\(15) & (!\bo|regr|soma[14]~58\ & VCC))
-- \bo|regr|soma[15]~60\ = CARRY((\bo|regr|soma\(15) & !\bo|regr|soma[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regr|soma\(15),
	datad => VCC,
	cin => \bo|regr|soma[14]~58\,
	combout => \bo|regr|soma[15]~59_combout\,
	cout => \bo|regr|soma[15]~60\);

-- Location: LCFF_X36_Y33_N31
\bo|regr|soma[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[15]~59_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(15));

-- Location: LCCOMB_X36_Y32_N0
\bo|regr|soma[16]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[16]~61_combout\ = (\bo|regr|soma\(16) & (!\bo|regr|soma[15]~60\)) # (!\bo|regr|soma\(16) & ((\bo|regr|soma[15]~60\) # (GND)))
-- \bo|regr|soma[16]~62\ = CARRY((!\bo|regr|soma[15]~60\) # (!\bo|regr|soma\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regr|soma\(16),
	datad => VCC,
	cin => \bo|regr|soma[15]~60\,
	combout => \bo|regr|soma[16]~61_combout\,
	cout => \bo|regr|soma[16]~62\);

-- Location: LCFF_X36_Y32_N1
\bo|regr|soma[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[16]~61_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(16));

-- Location: LCCOMB_X36_Y32_N2
\bo|regr|soma[17]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[17]~63_combout\ = (\bo|regr|soma\(17) & (\bo|regr|soma[16]~62\ $ (GND))) # (!\bo|regr|soma\(17) & (!\bo|regr|soma[16]~62\ & VCC))
-- \bo|regr|soma[17]~64\ = CARRY((\bo|regr|soma\(17) & !\bo|regr|soma[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regr|soma\(17),
	datad => VCC,
	cin => \bo|regr|soma[16]~62\,
	combout => \bo|regr|soma[17]~63_combout\,
	cout => \bo|regr|soma[17]~64\);

-- Location: LCFF_X36_Y32_N3
\bo|regr|soma[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[17]~63_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(17));

-- Location: LCCOMB_X36_Y32_N4
\bo|regr|soma[18]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[18]~65_combout\ = (\bo|regr|soma\(18) & (!\bo|regr|soma[17]~64\)) # (!\bo|regr|soma\(18) & ((\bo|regr|soma[17]~64\) # (GND)))
-- \bo|regr|soma[18]~66\ = CARRY((!\bo|regr|soma[17]~64\) # (!\bo|regr|soma\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regr|soma\(18),
	datad => VCC,
	cin => \bo|regr|soma[17]~64\,
	combout => \bo|regr|soma[18]~65_combout\,
	cout => \bo|regr|soma[18]~66\);

-- Location: LCFF_X36_Y32_N5
\bo|regr|soma[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[18]~65_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(18));

-- Location: LCCOMB_X36_Y32_N6
\bo|regr|soma[19]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[19]~67_combout\ = (\bo|regr|soma\(19) & (\bo|regr|soma[18]~66\ $ (GND))) # (!\bo|regr|soma\(19) & (!\bo|regr|soma[18]~66\ & VCC))
-- \bo|regr|soma[19]~68\ = CARRY((\bo|regr|soma\(19) & !\bo|regr|soma[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regr|soma\(19),
	datad => VCC,
	cin => \bo|regr|soma[18]~66\,
	combout => \bo|regr|soma[19]~67_combout\,
	cout => \bo|regr|soma[19]~68\);

-- Location: LCCOMB_X36_Y32_N8
\bo|regr|soma[20]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[20]~69_combout\ = (\bo|regr|soma\(20) & (!\bo|regr|soma[19]~68\)) # (!\bo|regr|soma\(20) & ((\bo|regr|soma[19]~68\) # (GND)))
-- \bo|regr|soma[20]~70\ = CARRY((!\bo|regr|soma[19]~68\) # (!\bo|regr|soma\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regr|soma\(20),
	datad => VCC,
	cin => \bo|regr|soma[19]~68\,
	combout => \bo|regr|soma[20]~69_combout\,
	cout => \bo|regr|soma[20]~70\);

-- Location: LCFF_X36_Y32_N9
\bo|regr|soma[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[20]~69_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(20));

-- Location: LCCOMB_X36_Y32_N14
\bo|regr|soma[23]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[23]~75_combout\ = (\bo|regr|soma\(23) & (\bo|regr|soma[22]~74\ $ (GND))) # (!\bo|regr|soma\(23) & (!\bo|regr|soma[22]~74\ & VCC))
-- \bo|regr|soma[23]~76\ = CARRY((\bo|regr|soma\(23) & !\bo|regr|soma[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regr|soma\(23),
	datad => VCC,
	cin => \bo|regr|soma[22]~74\,
	combout => \bo|regr|soma[23]~75_combout\,
	cout => \bo|regr|soma[23]~76\);

-- Location: LCFF_X36_Y32_N15
\bo|regr|soma[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[23]~75_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(23));

-- Location: LCCOMB_X36_Y32_N16
\bo|regr|soma[24]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[24]~77_combout\ = (\bo|regr|soma\(24) & (!\bo|regr|soma[23]~76\)) # (!\bo|regr|soma\(24) & ((\bo|regr|soma[23]~76\) # (GND)))
-- \bo|regr|soma[24]~78\ = CARRY((!\bo|regr|soma[23]~76\) # (!\bo|regr|soma\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regr|soma\(24),
	datad => VCC,
	cin => \bo|regr|soma[23]~76\,
	combout => \bo|regr|soma[24]~77_combout\,
	cout => \bo|regr|soma[24]~78\);

-- Location: LCCOMB_X36_Y32_N18
\bo|regr|soma[25]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[25]~79_combout\ = (\bo|regr|soma\(25) & (\bo|regr|soma[24]~78\ $ (GND))) # (!\bo|regr|soma\(25) & (!\bo|regr|soma[24]~78\ & VCC))
-- \bo|regr|soma[25]~80\ = CARRY((\bo|regr|soma\(25) & !\bo|regr|soma[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regr|soma\(25),
	datad => VCC,
	cin => \bo|regr|soma[24]~78\,
	combout => \bo|regr|soma[25]~79_combout\,
	cout => \bo|regr|soma[25]~80\);

-- Location: LCFF_X36_Y32_N19
\bo|regr|soma[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[25]~79_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(25));

-- Location: LCFF_X36_Y32_N17
\bo|regr|soma[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[24]~77_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(24));

-- Location: LCCOMB_X37_Y32_N6
\bc|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan0~5_combout\ = (!\bo|regr|soma\(22) & (!\bo|regr|soma\(25) & (!\bo|regr|soma\(24) & !\bo|regr|soma\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regr|soma\(22),
	datab => \bo|regr|soma\(25),
	datac => \bo|regr|soma\(24),
	datad => \bo|regr|soma\(23),
	combout => \bc|LessThan0~5_combout\);

-- Location: LCCOMB_X36_Y31_N0
\bc|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan0~2_combout\ = (!\bo|regr|soma\(15) & (!\bo|regr|soma\(17) & (!\bo|regr|soma\(14) & !\bo|regr|soma\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regr|soma\(15),
	datab => \bo|regr|soma\(17),
	datac => \bo|regr|soma\(14),
	datad => \bo|regr|soma\(16),
	combout => \bc|LessThan0~2_combout\);

-- Location: LCFF_X36_Y32_N7
\bo|regr|soma[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[19]~67_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(19));

-- Location: LCCOMB_X37_Y32_N16
\bc|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan0~3_combout\ = (!\bo|regr|soma\(21) & (!\bo|regr|soma\(18) & (!\bo|regr|soma\(19) & !\bo|regr|soma\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regr|soma\(21),
	datab => \bo|regr|soma\(18),
	datac => \bo|regr|soma\(19),
	datad => \bo|regr|soma\(20),
	combout => \bc|LessThan0~3_combout\);

-- Location: LCFF_X36_Y33_N25
\bo|regr|soma[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[12]~53_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(12));

-- Location: LCCOMB_X37_Y33_N28
\bc|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan0~1_combout\ = (!\bo|regr|soma\(10) & (!\bo|regr|soma\(13) & (!\bo|regr|soma\(11) & !\bo|regr|soma\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regr|soma\(10),
	datab => \bo|regr|soma\(13),
	datac => \bo|regr|soma\(11),
	datad => \bo|regr|soma\(12),
	combout => \bc|LessThan0~1_combout\);

-- Location: LCCOMB_X36_Y31_N14
\bc|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan0~4_combout\ = (\bc|LessThan0~0_combout\ & (\bc|LessThan0~2_combout\ & (\bc|LessThan0~3_combout\ & \bc|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|LessThan0~0_combout\,
	datab => \bc|LessThan0~2_combout\,
	datac => \bc|LessThan0~3_combout\,
	datad => \bc|LessThan0~1_combout\,
	combout => \bc|LessThan0~4_combout\);

-- Location: LCCOMB_X36_Y32_N22
\bo|regr|soma[27]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[27]~83_combout\ = (\bo|regr|soma\(27) & (\bo|regr|soma[26]~82\ $ (GND))) # (!\bo|regr|soma\(27) & (!\bo|regr|soma[26]~82\ & VCC))
-- \bo|regr|soma[27]~84\ = CARRY((\bo|regr|soma\(27) & !\bo|regr|soma[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regr|soma\(27),
	datad => VCC,
	cin => \bo|regr|soma[26]~82\,
	combout => \bo|regr|soma[27]~83_combout\,
	cout => \bo|regr|soma[27]~84\);

-- Location: LCFF_X36_Y32_N23
\bo|regr|soma[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[27]~83_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(27));

-- Location: LCCOMB_X36_Y32_N24
\bo|regr|soma[28]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[28]~85_combout\ = (\bo|regr|soma\(28) & (!\bo|regr|soma[27]~84\)) # (!\bo|regr|soma\(28) & ((\bo|regr|soma[27]~84\) # (GND)))
-- \bo|regr|soma[28]~86\ = CARRY((!\bo|regr|soma[27]~84\) # (!\bo|regr|soma\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regr|soma\(28),
	datad => VCC,
	cin => \bo|regr|soma[27]~84\,
	combout => \bo|regr|soma[28]~85_combout\,
	cout => \bo|regr|soma[28]~86\);

-- Location: LCCOMB_X36_Y32_N26
\bo|regr|soma[29]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regr|soma[29]~87_combout\ = (\bo|regr|soma\(29) & (\bo|regr|soma[28]~86\ $ (GND))) # (!\bo|regr|soma\(29) & (!\bo|regr|soma[28]~86\ & VCC))
-- \bo|regr|soma[29]~88\ = CARRY((\bo|regr|soma\(29) & !\bo|regr|soma[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regr|soma\(29),
	datad => VCC,
	cin => \bo|regr|soma[28]~86\,
	combout => \bo|regr|soma[29]~87_combout\,
	cout => \bo|regr|soma[29]~88\);

-- Location: LCFF_X36_Y32_N27
\bo|regr|soma[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[29]~87_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(29));

-- Location: LCFF_X36_Y32_N29
\bo|regr|soma[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[30]~89_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(30));

-- Location: LCFF_X36_Y32_N25
\bo|regr|soma[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regr|soma[28]~85_combout\,
	aclr => \bc|ALT_INV_state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regr|soma\(28));

-- Location: LCCOMB_X37_Y32_N12
\bc|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan0~6_combout\ = (!\bo|regr|soma\(26) & (!\bo|regr|soma\(29) & (!\bo|regr|soma\(27) & !\bo|regr|soma\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regr|soma\(26),
	datab => \bo|regr|soma\(29),
	datac => \bo|regr|soma\(27),
	datad => \bo|regr|soma\(28),
	combout => \bc|LessThan0~6_combout\);

-- Location: LCCOMB_X36_Y31_N12
\bc|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan0~7_combout\ = (!\bo|regr|soma\(30) & \bc|LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bo|regr|soma\(30),
	datad => \bc|LessThan0~6_combout\,
	combout => \bc|LessThan0~7_combout\);

-- Location: LCCOMB_X36_Y31_N26
\bc|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan0~8_combout\ = (\bo|regr|soma\(31)) # ((\bc|LessThan0~5_combout\ & (\bc|LessThan0~4_combout\ & \bc|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regr|soma\(31),
	datab => \bc|LessThan0~5_combout\,
	datac => \bc|LessThan0~4_combout\,
	datad => \bc|LessThan0~7_combout\,
	combout => \bc|LessThan0~8_combout\);

-- Location: LCCOMB_X35_Y33_N16
\bc|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|Selector0~1_combout\ = ((\bc|Selector0~0_combout\) # ((\bc|state.R~regout\ & \bc|LessThan0~8_combout\))) # (!\bc|state.Init~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|state.Init~regout\,
	datab => \bc|Selector0~0_combout\,
	datac => \bc|state.R~regout\,
	datad => \bc|LessThan0~8_combout\,
	combout => \bc|Selector0~1_combout\);

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

-- Location: LCFF_X35_Y33_N17
\bc|state.R\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bc|Selector0~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc|state.R~regout\);

-- Location: LCCOMB_X34_Y31_N16
\bc|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|Selector1~0_combout\ = (\bc|LessThan1~8_combout\ & ((\bc|state.G~regout\) # ((\bc|state.R~regout\ & !\bc|LessThan0~8_combout\)))) # (!\bc|LessThan1~8_combout\ & (\bc|state.R~regout\ & ((!\bc|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|LessThan1~8_combout\,
	datab => \bc|state.R~regout\,
	datac => \bc|state.G~regout\,
	datad => \bc|LessThan0~8_combout\,
	combout => \bc|Selector1~0_combout\);

-- Location: LCFF_X34_Y31_N17
\bc|state.G\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bc|Selector1~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc|state.G~regout\);

-- Location: LCFF_X33_Y31_N1
\bo|regg|soma[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[0]~93_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(0));

-- Location: LCCOMB_X33_Y31_N4
\bo|regg|soma[2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[2]~33_combout\ = (\bo|regg|soma\(2) & (!\bo|regg|soma[1]~32\)) # (!\bo|regg|soma\(2) & ((\bo|regg|soma[1]~32\) # (GND)))
-- \bo|regg|soma[2]~34\ = CARRY((!\bo|regg|soma[1]~32\) # (!\bo|regg|soma\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regg|soma\(2),
	datad => VCC,
	cin => \bo|regg|soma[1]~32\,
	combout => \bo|regg|soma[2]~33_combout\,
	cout => \bo|regg|soma[2]~34\);

-- Location: LCFF_X33_Y31_N5
\bo|regg|soma[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[2]~33_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(2));

-- Location: LCCOMB_X33_Y31_N8
\bo|regg|soma[4]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[4]~37_combout\ = (\bo|regg|soma\(4) & (!\bo|regg|soma[3]~36\)) # (!\bo|regg|soma\(4) & ((\bo|regg|soma[3]~36\) # (GND)))
-- \bo|regg|soma[4]~38\ = CARRY((!\bo|regg|soma[3]~36\) # (!\bo|regg|soma\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regg|soma\(4),
	datad => VCC,
	cin => \bo|regg|soma[3]~36\,
	combout => \bo|regg|soma[4]~37_combout\,
	cout => \bo|regg|soma[4]~38\);

-- Location: LCFF_X33_Y31_N9
\bo|regg|soma[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[4]~37_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(4));

-- Location: LCCOMB_X33_Y31_N14
\bo|regg|soma[7]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[7]~43_combout\ = (\bo|regg|soma\(7) & (\bo|regg|soma[6]~42\ $ (GND))) # (!\bo|regg|soma\(7) & (!\bo|regg|soma[6]~42\ & VCC))
-- \bo|regg|soma[7]~44\ = CARRY((\bo|regg|soma\(7) & !\bo|regg|soma[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regg|soma\(7),
	datad => VCC,
	cin => \bo|regg|soma[6]~42\,
	combout => \bo|regg|soma[7]~43_combout\,
	cout => \bo|regg|soma[7]~44\);

-- Location: LCFF_X33_Y31_N15
\bo|regg|soma[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[7]~43_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(7));

-- Location: LCCOMB_X33_Y31_N18
\bo|regg|soma[9]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[9]~47_combout\ = (\bo|regg|soma\(9) & (\bo|regg|soma[8]~46\ $ (GND))) # (!\bo|regg|soma\(9) & (!\bo|regg|soma[8]~46\ & VCC))
-- \bo|regg|soma[9]~48\ = CARRY((\bo|regg|soma\(9) & !\bo|regg|soma[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regg|soma\(9),
	datad => VCC,
	cin => \bo|regg|soma[8]~46\,
	combout => \bo|regg|soma[9]~47_combout\,
	cout => \bo|regg|soma[9]~48\);

-- Location: LCFF_X33_Y31_N19
\bo|regg|soma[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[9]~47_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(9));

-- Location: LCCOMB_X33_Y31_N20
\bo|regg|soma[10]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[10]~49_combout\ = (\bo|regg|soma\(10) & (!\bo|regg|soma[9]~48\)) # (!\bo|regg|soma\(10) & ((\bo|regg|soma[9]~48\) # (GND)))
-- \bo|regg|soma[10]~50\ = CARRY((!\bo|regg|soma[9]~48\) # (!\bo|regg|soma\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regg|soma\(10),
	datad => VCC,
	cin => \bo|regg|soma[9]~48\,
	combout => \bo|regg|soma[10]~49_combout\,
	cout => \bo|regg|soma[10]~50\);

-- Location: LCCOMB_X33_Y31_N22
\bo|regg|soma[11]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[11]~51_combout\ = (\bo|regg|soma\(11) & (\bo|regg|soma[10]~50\ $ (GND))) # (!\bo|regg|soma\(11) & (!\bo|regg|soma[10]~50\ & VCC))
-- \bo|regg|soma[11]~52\ = CARRY((\bo|regg|soma\(11) & !\bo|regg|soma[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regg|soma\(11),
	datad => VCC,
	cin => \bo|regg|soma[10]~50\,
	combout => \bo|regg|soma[11]~51_combout\,
	cout => \bo|regg|soma[11]~52\);

-- Location: LCFF_X33_Y31_N23
\bo|regg|soma[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[11]~51_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(11));

-- Location: LCCOMB_X33_Y31_N24
\bo|regg|soma[12]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[12]~53_combout\ = (\bo|regg|soma\(12) & (!\bo|regg|soma[11]~52\)) # (!\bo|regg|soma\(12) & ((\bo|regg|soma[11]~52\) # (GND)))
-- \bo|regg|soma[12]~54\ = CARRY((!\bo|regg|soma[11]~52\) # (!\bo|regg|soma\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regg|soma\(12),
	datad => VCC,
	cin => \bo|regg|soma[11]~52\,
	combout => \bo|regg|soma[12]~53_combout\,
	cout => \bo|regg|soma[12]~54\);

-- Location: LCFF_X33_Y31_N25
\bo|regg|soma[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[12]~53_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(12));

-- Location: LCCOMB_X33_Y31_N26
\bo|regg|soma[13]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[13]~55_combout\ = (\bo|regg|soma\(13) & (\bo|regg|soma[12]~54\ $ (GND))) # (!\bo|regg|soma\(13) & (!\bo|regg|soma[12]~54\ & VCC))
-- \bo|regg|soma[13]~56\ = CARRY((\bo|regg|soma\(13) & !\bo|regg|soma[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regg|soma\(13),
	datad => VCC,
	cin => \bo|regg|soma[12]~54\,
	combout => \bo|regg|soma[13]~55_combout\,
	cout => \bo|regg|soma[13]~56\);

-- Location: LCFF_X33_Y31_N27
\bo|regg|soma[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[13]~55_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(13));

-- Location: LCCOMB_X33_Y31_N28
\bo|regg|soma[14]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[14]~57_combout\ = (\bo|regg|soma\(14) & (!\bo|regg|soma[13]~56\)) # (!\bo|regg|soma\(14) & ((\bo|regg|soma[13]~56\) # (GND)))
-- \bo|regg|soma[14]~58\ = CARRY((!\bo|regg|soma[13]~56\) # (!\bo|regg|soma\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regg|soma\(14),
	datad => VCC,
	cin => \bo|regg|soma[13]~56\,
	combout => \bo|regg|soma[14]~57_combout\,
	cout => \bo|regg|soma[14]~58\);

-- Location: LCFF_X33_Y31_N29
\bo|regg|soma[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[14]~57_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(14));

-- Location: LCCOMB_X33_Y31_N30
\bo|regg|soma[15]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[15]~59_combout\ = (\bo|regg|soma\(15) & (\bo|regg|soma[14]~58\ $ (GND))) # (!\bo|regg|soma\(15) & (!\bo|regg|soma[14]~58\ & VCC))
-- \bo|regg|soma[15]~60\ = CARRY((\bo|regg|soma\(15) & !\bo|regg|soma[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regg|soma\(15),
	datad => VCC,
	cin => \bo|regg|soma[14]~58\,
	combout => \bo|regg|soma[15]~59_combout\,
	cout => \bo|regg|soma[15]~60\);

-- Location: LCFF_X33_Y31_N31
\bo|regg|soma[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[15]~59_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(15));

-- Location: LCCOMB_X33_Y30_N0
\bo|regg|soma[16]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[16]~61_combout\ = (\bo|regg|soma\(16) & (!\bo|regg|soma[15]~60\)) # (!\bo|regg|soma\(16) & ((\bo|regg|soma[15]~60\) # (GND)))
-- \bo|regg|soma[16]~62\ = CARRY((!\bo|regg|soma[15]~60\) # (!\bo|regg|soma\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regg|soma\(16),
	datad => VCC,
	cin => \bo|regg|soma[15]~60\,
	combout => \bo|regg|soma[16]~61_combout\,
	cout => \bo|regg|soma[16]~62\);

-- Location: LCFF_X33_Y30_N1
\bo|regg|soma[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[16]~61_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(16));

-- Location: LCCOMB_X33_Y30_N2
\bo|regg|soma[17]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[17]~63_combout\ = (\bo|regg|soma\(17) & (\bo|regg|soma[16]~62\ $ (GND))) # (!\bo|regg|soma\(17) & (!\bo|regg|soma[16]~62\ & VCC))
-- \bo|regg|soma[17]~64\ = CARRY((\bo|regg|soma\(17) & !\bo|regg|soma[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regg|soma\(17),
	datad => VCC,
	cin => \bo|regg|soma[16]~62\,
	combout => \bo|regg|soma[17]~63_combout\,
	cout => \bo|regg|soma[17]~64\);

-- Location: LCFF_X33_Y30_N3
\bo|regg|soma[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[17]~63_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(17));

-- Location: LCCOMB_X33_Y30_N4
\bo|regg|soma[18]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[18]~65_combout\ = (\bo|regg|soma\(18) & (!\bo|regg|soma[17]~64\)) # (!\bo|regg|soma\(18) & ((\bo|regg|soma[17]~64\) # (GND)))
-- \bo|regg|soma[18]~66\ = CARRY((!\bo|regg|soma[17]~64\) # (!\bo|regg|soma\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regg|soma\(18),
	datad => VCC,
	cin => \bo|regg|soma[17]~64\,
	combout => \bo|regg|soma[18]~65_combout\,
	cout => \bo|regg|soma[18]~66\);

-- Location: LCFF_X33_Y30_N5
\bo|regg|soma[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[18]~65_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(18));

-- Location: LCCOMB_X33_Y30_N8
\bo|regg|soma[20]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[20]~69_combout\ = (\bo|regg|soma\(20) & (!\bo|regg|soma[19]~68\)) # (!\bo|regg|soma\(20) & ((\bo|regg|soma[19]~68\) # (GND)))
-- \bo|regg|soma[20]~70\ = CARRY((!\bo|regg|soma[19]~68\) # (!\bo|regg|soma\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regg|soma\(20),
	datad => VCC,
	cin => \bo|regg|soma[19]~68\,
	combout => \bo|regg|soma[20]~69_combout\,
	cout => \bo|regg|soma[20]~70\);

-- Location: LCFF_X33_Y30_N9
\bo|regg|soma[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[20]~69_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(20));

-- Location: LCCOMB_X33_Y30_N10
\bo|regg|soma[21]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[21]~71_combout\ = (\bo|regg|soma\(21) & (\bo|regg|soma[20]~70\ $ (GND))) # (!\bo|regg|soma\(21) & (!\bo|regg|soma[20]~70\ & VCC))
-- \bo|regg|soma[21]~72\ = CARRY((\bo|regg|soma\(21) & !\bo|regg|soma[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regg|soma\(21),
	datad => VCC,
	cin => \bo|regg|soma[20]~70\,
	combout => \bo|regg|soma[21]~71_combout\,
	cout => \bo|regg|soma[21]~72\);

-- Location: LCCOMB_X33_Y30_N12
\bo|regg|soma[22]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[22]~73_combout\ = (\bo|regg|soma\(22) & (!\bo|regg|soma[21]~72\)) # (!\bo|regg|soma\(22) & ((\bo|regg|soma[21]~72\) # (GND)))
-- \bo|regg|soma[22]~74\ = CARRY((!\bo|regg|soma[21]~72\) # (!\bo|regg|soma\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regg|soma\(22),
	datad => VCC,
	cin => \bo|regg|soma[21]~72\,
	combout => \bo|regg|soma[22]~73_combout\,
	cout => \bo|regg|soma[22]~74\);

-- Location: LCFF_X33_Y30_N13
\bo|regg|soma[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[22]~73_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(22));

-- Location: LCCOMB_X33_Y30_N14
\bo|regg|soma[23]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[23]~75_combout\ = (\bo|regg|soma\(23) & (\bo|regg|soma[22]~74\ $ (GND))) # (!\bo|regg|soma\(23) & (!\bo|regg|soma[22]~74\ & VCC))
-- \bo|regg|soma[23]~76\ = CARRY((\bo|regg|soma\(23) & !\bo|regg|soma[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regg|soma\(23),
	datad => VCC,
	cin => \bo|regg|soma[22]~74\,
	combout => \bo|regg|soma[23]~75_combout\,
	cout => \bo|regg|soma[23]~76\);

-- Location: LCFF_X33_Y30_N15
\bo|regg|soma[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[23]~75_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(23));

-- Location: LCCOMB_X33_Y30_N18
\bo|regg|soma[25]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[25]~79_combout\ = (\bo|regg|soma\(25) & (\bo|regg|soma[24]~78\ $ (GND))) # (!\bo|regg|soma\(25) & (!\bo|regg|soma[24]~78\ & VCC))
-- \bo|regg|soma[25]~80\ = CARRY((\bo|regg|soma\(25) & !\bo|regg|soma[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regg|soma\(25),
	datad => VCC,
	cin => \bo|regg|soma[24]~78\,
	combout => \bo|regg|soma[25]~79_combout\,
	cout => \bo|regg|soma[25]~80\);

-- Location: LCFF_X33_Y30_N19
\bo|regg|soma[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[25]~79_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(25));

-- Location: LCCOMB_X32_Y30_N10
\bc|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan1~5_combout\ = (!\bo|regg|soma\(24) & (!\bo|regg|soma\(22) & (!\bo|regg|soma\(23) & !\bo|regg|soma\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regg|soma\(24),
	datab => \bo|regg|soma\(22),
	datac => \bo|regg|soma\(23),
	datad => \bo|regg|soma\(25),
	combout => \bc|LessThan1~5_combout\);

-- Location: LCFF_X33_Y31_N21
\bo|regg|soma[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[10]~49_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(10));

-- Location: LCCOMB_X32_Y31_N2
\bc|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan1~1_combout\ = (!\bo|regg|soma\(13) & (!\bo|regg|soma\(12) & (!\bo|regg|soma\(11) & !\bo|regg|soma\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regg|soma\(13),
	datab => \bo|regg|soma\(12),
	datac => \bo|regg|soma\(11),
	datad => \bo|regg|soma\(10),
	combout => \bc|LessThan1~1_combout\);

-- Location: LCCOMB_X32_Y31_N20
\bc|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan1~2_combout\ = (!\bo|regg|soma\(16) & (!\bo|regg|soma\(15) & (!\bo|regg|soma\(14) & !\bo|regg|soma\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regg|soma\(16),
	datab => \bo|regg|soma\(15),
	datac => \bo|regg|soma\(14),
	datad => \bo|regg|soma\(17),
	combout => \bc|LessThan1~2_combout\);

-- Location: LCFF_X33_Y30_N11
\bo|regg|soma[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[21]~71_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(21));

-- Location: LCCOMB_X32_Y30_N0
\bc|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan1~3_combout\ = (!\bo|regg|soma\(19) & (!\bo|regg|soma\(21) & (!\bo|regg|soma\(20) & !\bo|regg|soma\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regg|soma\(19),
	datab => \bo|regg|soma\(21),
	datac => \bo|regg|soma\(20),
	datad => \bo|regg|soma\(18),
	combout => \bc|LessThan1~3_combout\);

-- Location: LCCOMB_X32_Y31_N14
\bc|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan1~4_combout\ = (\bc|LessThan1~0_combout\ & (\bc|LessThan1~1_combout\ & (\bc|LessThan1~2_combout\ & \bc|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|LessThan1~0_combout\,
	datab => \bc|LessThan1~1_combout\,
	datac => \bc|LessThan1~2_combout\,
	datad => \bc|LessThan1~3_combout\,
	combout => \bc|LessThan1~4_combout\);

-- Location: LCCOMB_X33_Y30_N20
\bo|regg|soma[26]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[26]~81_combout\ = (\bo|regg|soma\(26) & (!\bo|regg|soma[25]~80\)) # (!\bo|regg|soma\(26) & ((\bo|regg|soma[25]~80\) # (GND)))
-- \bo|regg|soma[26]~82\ = CARRY((!\bo|regg|soma[25]~80\) # (!\bo|regg|soma\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regg|soma\(26),
	datad => VCC,
	cin => \bo|regg|soma[25]~80\,
	combout => \bo|regg|soma[26]~81_combout\,
	cout => \bo|regg|soma[26]~82\);

-- Location: LCCOMB_X33_Y30_N22
\bo|regg|soma[27]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[27]~83_combout\ = (\bo|regg|soma\(27) & (\bo|regg|soma[26]~82\ $ (GND))) # (!\bo|regg|soma\(27) & (!\bo|regg|soma[26]~82\ & VCC))
-- \bo|regg|soma[27]~84\ = CARRY((\bo|regg|soma\(27) & !\bo|regg|soma[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regg|soma\(27),
	datad => VCC,
	cin => \bo|regg|soma[26]~82\,
	combout => \bo|regg|soma[27]~83_combout\,
	cout => \bo|regg|soma[27]~84\);

-- Location: LCFF_X33_Y30_N23
\bo|regg|soma[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[27]~83_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(27));

-- Location: LCCOMB_X33_Y30_N24
\bo|regg|soma[28]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[28]~85_combout\ = (\bo|regg|soma\(28) & (!\bo|regg|soma[27]~84\)) # (!\bo|regg|soma\(28) & ((\bo|regg|soma[27]~84\) # (GND)))
-- \bo|regg|soma[28]~86\ = CARRY((!\bo|regg|soma[27]~84\) # (!\bo|regg|soma\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regg|soma\(28),
	datad => VCC,
	cin => \bo|regg|soma[27]~84\,
	combout => \bo|regg|soma[28]~85_combout\,
	cout => \bo|regg|soma[28]~86\);

-- Location: LCFF_X33_Y30_N25
\bo|regg|soma[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[28]~85_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(28));

-- Location: LCCOMB_X33_Y30_N26
\bo|regg|soma[29]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \bo|regg|soma[29]~87_combout\ = (\bo|regg|soma\(29) & (\bo|regg|soma[28]~86\ $ (GND))) # (!\bo|regg|soma\(29) & (!\bo|regg|soma[28]~86\ & VCC))
-- \bo|regg|soma[29]~88\ = CARRY((\bo|regg|soma\(29) & !\bo|regg|soma[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bo|regg|soma\(29),
	datad => VCC,
	cin => \bo|regg|soma[28]~86\,
	combout => \bo|regg|soma[29]~87_combout\,
	cout => \bo|regg|soma[29]~88\);

-- Location: LCFF_X33_Y30_N27
\bo|regg|soma[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[29]~87_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(29));

-- Location: LCFF_X33_Y30_N29
\bo|regg|soma[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[30]~89_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(30));

-- Location: LCFF_X33_Y30_N21
\bo|regg|soma[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bo|regg|soma[26]~81_combout\,
	aclr => \bc|ALT_INV_state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bo|regg|soma\(26));

-- Location: LCCOMB_X32_Y30_N4
\bc|LessThan1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan1~6_combout\ = (!\bo|regg|soma\(27) & !\bo|regg|soma\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bo|regg|soma\(27),
	datad => \bo|regg|soma\(26),
	combout => \bc|LessThan1~6_combout\);

-- Location: LCCOMB_X32_Y31_N12
\bc|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan1~7_combout\ = (!\bo|regg|soma\(29) & (!\bo|regg|soma\(28) & (!\bo|regg|soma\(30) & \bc|LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regg|soma\(29),
	datab => \bo|regg|soma\(28),
	datac => \bo|regg|soma\(30),
	datad => \bc|LessThan1~6_combout\,
	combout => \bc|LessThan1~7_combout\);

-- Location: LCCOMB_X32_Y31_N26
\bc|LessThan1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|LessThan1~8_combout\ = (\bo|regg|soma\(31)) # ((\bc|LessThan1~5_combout\ & (\bc|LessThan1~4_combout\ & \bc|LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bo|regg|soma\(31),
	datab => \bc|LessThan1~5_combout\,
	datac => \bc|LessThan1~4_combout\,
	datad => \bc|LessThan1~7_combout\,
	combout => \bc|LessThan1~8_combout\);

-- Location: LCCOMB_X34_Y31_N22
\bc|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|Selector2~0_combout\ = (\bc|state.Y~regout\ & ((\bo|regy|soma\(31)) # ((\bc|LessThan2~8_combout\ & \bc|LessThan2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|LessThan2~8_combout\,
	datab => \bo|regy|soma\(31),
	datac => \bc|state.Y~regout\,
	datad => \bc|LessThan2~4_combout\,
	combout => \bc|Selector2~0_combout\);

-- Location: LCCOMB_X34_Y31_N2
\bc|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bc|Selector2~1_combout\ = (\bc|Selector2~0_combout\) # ((\bc|state.G~regout\ & !\bc|LessThan1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bc|state.G~regout\,
	datac => \bc|LessThan1~8_combout\,
	datad => \bc|Selector2~0_combout\,
	combout => \bc|Selector2~1_combout\);

-- Location: LCFF_X34_Y31_N3
\bc|state.Y\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \bc|Selector2~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bc|state.Y~regout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y~I\ : cycloneii_io
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
	datain => \bc|state.Y~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r~I\ : cycloneii_io
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
	datain => \bc|state.R~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\g~I\ : cycloneii_io
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
	datain => \bc|state.G~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g);
END structure;


