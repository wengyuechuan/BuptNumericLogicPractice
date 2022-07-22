-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Apr 28 13:46:19 2022
-- Host        : DESKTOP-7R1N8C1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/VivadoProject/project_1/project_1.sim/sim_1/impl/func/xsim/medicine_func_impl.vhd
-- Design      : medicine
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010iclg225-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity medicine is
  port (
    clk_m : in STD_LOGIC;
    enable_m : in STD_LOGIC;
    reset_m : in STD_LOGIC;
    pnpb_m : in STD_LOGIC_VECTOR ( 7 downto 0 );
    max_bottle_m : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cur_bot_m : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cur_pill_m : out STD_LOGIC_VECTOR ( 11 downto 0 );
    work_light_m : out STD_LOGIC;
    stop_light_m : out STD_LOGIC;
    warn_light_m : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of medicine : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of medicine : entity is "33188668";
end medicine;

architecture STRUCTURE of medicine is
  signal cb0 : STD_LOGIC;
  signal \cb[4]_i_1_n_0\ : STD_LOGIC;
  signal \cb[6]_i_2_n_0\ : STD_LOGIC;
  signal \cb[7]_i_3_n_0\ : STD_LOGIC;
  signal \cb[7]_i_4_n_0\ : STD_LOGIC;
  signal \cb[7]_i_5_n_0\ : STD_LOGIC;
  signal \cb_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clk_m_IBUF : STD_LOGIC;
  signal clk_m_IBUF_BUFG : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count[5]_i_2_n_0\ : STD_LOGIC;
  signal \count[7]_i_1_n_0\ : STD_LOGIC;
  signal \count[7]_i_3_n_0\ : STD_LOGIC;
  signal \count[7]_i_4_n_0\ : STD_LOGIC;
  signal \count[7]_i_5_n_0\ : STD_LOGIC;
  signal \count[7]_i_6_n_0\ : STD_LOGIC;
  signal \count[7]_i_7_n_0\ : STD_LOGIC;
  signal \count[7]_i_8_n_0\ : STD_LOGIC;
  signal cp0 : STD_LOGIC;
  signal \cp[0]_i_11_n_0\ : STD_LOGIC;
  signal \cp[0]_i_12_n_0\ : STD_LOGIC;
  signal \cp[0]_i_3_n_0\ : STD_LOGIC;
  signal \cp[0]_i_4_n_0\ : STD_LOGIC;
  signal \cp[0]_i_5_n_0\ : STD_LOGIC;
  signal \cp[0]_i_6_n_0\ : STD_LOGIC;
  signal \cp[0]_i_7_n_0\ : STD_LOGIC;
  signal \cp[0]_i_8_n_0\ : STD_LOGIC;
  signal \cp[4]_i_2_n_0\ : STD_LOGIC;
  signal \cp[4]_i_3_n_0\ : STD_LOGIC;
  signal \cp[4]_i_4_n_0\ : STD_LOGIC;
  signal \cp[4]_i_5_n_0\ : STD_LOGIC;
  signal \cp[8]_i_2_n_0\ : STD_LOGIC;
  signal \cp[8]_i_3_n_0\ : STD_LOGIC;
  signal \cp[8]_i_4_n_0\ : STD_LOGIC;
  signal \cp[8]_i_5_n_0\ : STD_LOGIC;
  signal \cp_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \cp_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cp_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \cp_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \cp_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \cp_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \cp_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \cp_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cp_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cp_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cp_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cp_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cp_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \cp_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \cp_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cp_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cp_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cp_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal cur_bot_m_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal cur_pill_m_OBUF : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal enable_m_IBUF : STD_LOGIC;
  signal max_bottle_m_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_2_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal plusOp0_in : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pnpb_m_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reset_m_IBUF : STD_LOGIC;
  signal stop : STD_LOGIC;
  signal stop_light_m_OBUF : STD_LOGIC;
  signal stop_reg_i_10_n_0 : STD_LOGIC;
  signal stop_reg_i_11_n_0 : STD_LOGIC;
  signal stop_reg_i_1_n_0 : STD_LOGIC;
  signal stop_reg_i_2_n_0 : STD_LOGIC;
  signal stop_reg_i_3_n_0 : STD_LOGIC;
  signal stop_reg_i_4_n_0 : STD_LOGIC;
  signal stop_reg_i_5_n_0 : STD_LOGIC;
  signal stop_reg_i_6_n_0 : STD_LOGIC;
  signal stop_reg_i_7_n_0 : STD_LOGIC;
  signal stop_reg_i_8_n_0 : STD_LOGIC;
  signal stop_reg_i_9_n_0 : STD_LOGIC;
  signal warn_light_m_OBUF : STD_LOGIC;
  signal warn_light_m_reg_i_1_n_0 : STD_LOGIC;
  signal warn_light_m_reg_i_2_n_0 : STD_LOGIC;
  signal warn_light_m_reg_i_3_n_0 : STD_LOGIC;
  signal work_light_m_OBUF : STD_LOGIC;
  signal work_light_m_reg_i_1_n_0 : STD_LOGIC;
  signal work_light_m_reg_i_2_n_0 : STD_LOGIC;
  signal \NLW_cp_reg[0]_i_10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cp_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cp_reg[0]_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cp_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cp_reg[4]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cp_reg[4]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cp_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cp_reg[8]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cp_reg[8]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cp_reg[8]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cp_reg[8]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cb[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cb[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cb[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cb[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cb[7]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[7]_i_5\ : label is "soft_lutpair3";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \cp_reg[0]_i_10\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \cp_reg[0]_i_2\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \cp_reg[0]_i_9\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \cp_reg[4]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \cp_reg[4]_i_6\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \cp_reg[4]_i_7\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \cp_reg[8]_i_1\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \cp_reg[8]_i_6\ : label is "SWEEP ";
  attribute OPT_MODIFIED of \cp_reg[8]_i_7\ : label is "SWEEP ";
  attribute SOFT_HLUTNM of \cur_bot_m_OBUF[0]_inst_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cur_bot_m_OBUF[1]_inst_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cur_bot_m_OBUF[2]_inst_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cur_bot_m_OBUF[3]_inst_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cur_bot_m_OBUF[4]_inst_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cur_bot_m_OBUF[5]_inst_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cur_bot_m_OBUF[6]_inst_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cur_bot_m_OBUF[7]_inst_i_1\ : label is "soft_lutpair8";
  attribute OPT_MODIFIED of stop_light_m_reg : label is "RETARGET ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of stop_reg : label is "LDC";
  attribute SOFT_HLUTNM of stop_reg_i_4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of stop_reg_i_7 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of stop_reg_i_9 : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of warn_light_m_reg : label is "LDC";
  attribute SOFT_HLUTNM of warn_light_m_reg_i_2 : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of work_light_m_reg : label is "LD";
begin
\cb[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cb_reg__0\(0),
      O => \plusOp__0\(0)
    );
\cb[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0DF0"
    )
        port map (
      I0 => \cb_reg__0\(3),
      I1 => \cb_reg__0\(2),
      I2 => \cb_reg__0\(1),
      I3 => \cb_reg__0\(0),
      O => \p_0_in__0\(1)
    );
\cb[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \cb_reg__0\(2),
      I1 => \cb_reg__0\(0),
      I2 => \cb_reg__0\(1),
      O => \p_0_in__0\(2)
    );
\cb[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7B80"
    )
        port map (
      I0 => \cb_reg__0\(1),
      I1 => \cb_reg__0\(0),
      I2 => \cb_reg__0\(2),
      I3 => \cb_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\cb[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAA6AA"
    )
        port map (
      I0 => \cb_reg__0\(4),
      I1 => \cb_reg__0\(3),
      I2 => \cb_reg__0\(2),
      I3 => \cb_reg__0\(0),
      I4 => \cb_reg__0\(1),
      O => \cb[4]_i_1_n_0\
    );
\cb[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A9AAAAAAAAAAAAA"
    )
        port map (
      I0 => \cb_reg__0\(5),
      I1 => \cb_reg__0\(1),
      I2 => \cb_reg__0\(0),
      I3 => \cb_reg__0\(2),
      I4 => \cb_reg__0\(3),
      I5 => \cb_reg__0\(4),
      O => \p_0_in__0\(5)
    );
\cb[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00006FFF9000"
    )
        port map (
      I0 => \cb_reg__0\(2),
      I1 => \cb_reg__0\(1),
      I2 => \cb_reg__0\(3),
      I3 => \cb_reg__0\(0),
      I4 => \cb_reg__0\(6),
      I5 => \cb[6]_i_2_n_0\,
      O => \p_0_in__0\(6)
    );
\cb[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \cb_reg__0\(4),
      I1 => \cb_reg__0\(5),
      O => \cb[6]_i_2_n_0\
    );
\cb[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => enable_m_IBUF,
      I1 => stop,
      I2 => stop_reg_i_3_n_0,
      I3 => stop_reg_i_7_n_0,
      I4 => stop_reg_i_5_n_0,
      I5 => \count[7]_i_3_n_0\,
      O => cb0
    );
\cb[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A6AAA6A"
    )
        port map (
      I0 => \cb_reg__0\(7),
      I1 => \cb[7]_i_3_n_0\,
      I2 => \cb_reg__0\(6),
      I3 => \cb[7]_i_4_n_0\,
      I4 => \cb[7]_i_5_n_0\,
      O => \p_0_in__0\(7)
    );
\cb[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080808000"
    )
        port map (
      I0 => \cb_reg__0\(4),
      I1 => \cb_reg__0\(5),
      I2 => \cb_reg__0\(3),
      I3 => \cb_reg__0\(1),
      I4 => \cb_reg__0\(2),
      I5 => \cb_reg__0\(0),
      O => \cb[7]_i_3_n_0\
    );
\cb[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \cb_reg__0\(2),
      I1 => \cb_reg__0\(1),
      I2 => \cb_reg__0\(3),
      I3 => \cb_reg__0\(0),
      O => \cb[7]_i_4_n_0\
    );
\cb[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \cb_reg__0\(1),
      I1 => \cb_reg__0\(0),
      I2 => \cb_reg__0\(2),
      I3 => \cb_reg__0\(3),
      I4 => \cb_reg__0\(5),
      I5 => \cb_reg__0\(4),
      O => \cb[7]_i_5_n_0\
    );
\cb_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => cb0,
      CLR => reset_m_IBUF,
      D => \plusOp__0\(0),
      Q => \cb_reg__0\(0)
    );
\cb_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => cb0,
      CLR => reset_m_IBUF,
      D => \p_0_in__0\(1),
      Q => \cb_reg__0\(1)
    );
\cb_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => cb0,
      CLR => reset_m_IBUF,
      D => \p_0_in__0\(2),
      Q => \cb_reg__0\(2)
    );
\cb_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => cb0,
      CLR => reset_m_IBUF,
      D => \p_0_in__0\(3),
      Q => \cb_reg__0\(3)
    );
\cb_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => cb0,
      CLR => reset_m_IBUF,
      D => \cb[4]_i_1_n_0\,
      Q => \cb_reg__0\(4)
    );
\cb_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => cb0,
      CLR => reset_m_IBUF,
      D => \p_0_in__0\(5),
      Q => \cb_reg__0\(5)
    );
\cb_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => cb0,
      CLR => reset_m_IBUF,
      D => \p_0_in__0\(6),
      Q => \cb_reg__0\(6)
    );
\cb_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => cb0,
      CLR => reset_m_IBUF,
      D => \p_0_in__0\(7),
      Q => \cb_reg__0\(7)
    );
clk_m_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_m_IBUF,
      O => clk_m_IBUF_BUFG
    );
clk_m_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk_m,
      O => clk_m_IBUF
    );
\count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \count[7]_i_3_n_0\,
      I1 => count(0),
      O => p_0_in(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28082828"
    )
        port map (
      I0 => \count[7]_i_3_n_0\,
      I1 => count(1),
      I2 => count(0),
      I3 => count(2),
      I4 => count(3),
      O => p_0_in(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \count[7]_i_3_n_0\,
      I1 => count(1),
      I2 => count(0),
      I3 => count(2),
      O => p_0_in(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28808888"
    )
        port map (
      I0 => \count[7]_i_3_n_0\,
      I1 => count(3),
      I2 => count(2),
      I3 => count(1),
      I4 => count(0),
      O => p_0_in(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2882888888888888"
    )
        port map (
      I0 => \count[7]_i_3_n_0\,
      I1 => count(4),
      I2 => count(1),
      I3 => count(2),
      I4 => count(3),
      I5 => count(0),
      O => p_0_in(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \count[7]_i_3_n_0\,
      I1 => \count[5]_i_2_n_0\,
      I2 => count(5),
      O => p_0_in(5)
    );
\count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80080000"
    )
        port map (
      I0 => count(0),
      I1 => count(3),
      I2 => count(2),
      I3 => count(1),
      I4 => count(4),
      O => \count[5]_i_2_n_0\
    );
\count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A28A028"
    )
        port map (
      I0 => \count[7]_i_3_n_0\,
      I1 => \count[7]_i_4_n_0\,
      I2 => count(6),
      I3 => \count[7]_i_5_n_0\,
      I4 => \count[7]_i_6_n_0\,
      O => p_0_in(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => stop_reg_i_5_n_0,
      I1 => stop_reg_i_7_n_0,
      I2 => stop_reg_i_3_n_0,
      I3 => stop,
      I4 => enable_m_IBUF,
      O => \count[7]_i_1_n_0\
    );
\count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AA02A80AA002A80"
    )
        port map (
      I0 => \count[7]_i_3_n_0\,
      I1 => \count[7]_i_4_n_0\,
      I2 => count(6),
      I3 => count(7),
      I4 => \count[7]_i_5_n_0\,
      I5 => \count[7]_i_6_n_0\,
      O => p_0_in(7)
    );
\count[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF6FF6"
    )
        port map (
      I0 => pnpb_m_IBUF(7),
      I1 => count(7),
      I2 => pnpb_m_IBUF(6),
      I3 => count(6),
      I4 => \count[7]_i_7_n_0\,
      I5 => \count[7]_i_8_n_0\,
      O => \count[7]_i_3_n_0\
    );
\count[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => count(0),
      I1 => count(1),
      I2 => count(2),
      I3 => count(3),
      I4 => count(5),
      I5 => count(4),
      O => \count[7]_i_4_n_0\
    );
\count[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => count(2),
      I1 => count(1),
      I2 => count(3),
      I3 => count(0),
      O => \count[7]_i_5_n_0\
    );
\count[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00000000000000"
    )
        port map (
      I0 => count(1),
      I1 => count(2),
      I2 => count(0),
      I3 => count(3),
      I4 => count(4),
      I5 => count(5),
      O => \count[7]_i_6_n_0\
    );
\count[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => pnpb_m_IBUF(0),
      I1 => count(0),
      I2 => pnpb_m_IBUF(1),
      I3 => count(1),
      I4 => pnpb_m_IBUF(2),
      I5 => count(2),
      O => \count[7]_i_7_n_0\
    );
\count[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => count(3),
      I1 => pnpb_m_IBUF(3),
      I2 => pnpb_m_IBUF(5),
      I3 => count(5),
      I4 => pnpb_m_IBUF(4),
      I5 => count(4),
      O => \count[7]_i_8_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => \count[7]_i_1_n_0\,
      CLR => reset_m_IBUF,
      D => p_0_in(0),
      Q => count(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => \count[7]_i_1_n_0\,
      CLR => reset_m_IBUF,
      D => p_0_in(1),
      Q => count(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => \count[7]_i_1_n_0\,
      CLR => reset_m_IBUF,
      D => p_0_in(2),
      Q => count(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => \count[7]_i_1_n_0\,
      CLR => reset_m_IBUF,
      D => p_0_in(3),
      Q => count(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => \count[7]_i_1_n_0\,
      CLR => reset_m_IBUF,
      D => p_0_in(4),
      Q => count(4)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => \count[7]_i_1_n_0\,
      CLR => reset_m_IBUF,
      D => p_0_in(5),
      Q => count(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => \count[7]_i_1_n_0\,
      CLR => reset_m_IBUF,
      D => p_0_in(6),
      Q => count(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => \count[7]_i_1_n_0\,
      CLR => reset_m_IBUF,
      D => p_0_in(7),
      Q => count(7)
    );
\cp[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => enable_m_IBUF,
      I1 => stop,
      I2 => stop_reg_i_3_n_0,
      I3 => stop_reg_i_7_n_0,
      I4 => stop_reg_i_5_n_0,
      I5 => \count[7]_i_3_n_0\,
      O => cp0
    );
\cp[0]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cur_pill_m_OBUF(2),
      O => \cp[0]_i_11_n_0\
    );
\cp[0]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cur_pill_m_OBUF(1),
      O => \cp[0]_i_12_n_0\
    );
\cp[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \cp[0]_i_8_n_0\,
      I1 => cur_pill_m_OBUF(6),
      I2 => cur_pill_m_OBUF(7),
      I3 => cur_pill_m_OBUF(5),
      I4 => cur_pill_m_OBUF(4),
      O => \cp[0]_i_3_n_0\
    );
\cp[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \cp[0]_i_3_n_0\,
      I1 => plusOp0_in(3),
      I2 => \cp[0]_i_8_n_0\,
      I3 => plusOp(3),
      O => \cp[0]_i_4_n_0\
    );
\cp[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB8"
    )
        port map (
      I0 => plusOp(2),
      I1 => \cp[0]_i_8_n_0\,
      I2 => plusOp0_in(2),
      I3 => \cp[0]_i_3_n_0\,
      O => \cp[0]_i_5_n_0\
    );
\cp[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB8"
    )
        port map (
      I0 => plusOp(1),
      I1 => \cp[0]_i_8_n_0\,
      I2 => plusOp0_in(1),
      I3 => \cp[0]_i_3_n_0\,
      O => \cp[0]_i_6_n_0\
    );
\cp[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cur_pill_m_OBUF(0),
      I1 => \cp[0]_i_3_n_0\,
      O => \cp[0]_i_7_n_0\
    );
\cp[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => cur_pill_m_OBUF(0),
      I1 => cur_pill_m_OBUF(1),
      I2 => cur_pill_m_OBUF(3),
      I3 => cur_pill_m_OBUF(2),
      O => \cp[0]_i_8_n_0\
    );
\cp[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \cp[0]_i_3_n_0\,
      I1 => plusOp0_in(7),
      I2 => \cp[0]_i_8_n_0\,
      I3 => plusOp(7),
      O => \cp[4]_i_2_n_0\
    );
\cp[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB8"
    )
        port map (
      I0 => plusOp(6),
      I1 => \cp[0]_i_8_n_0\,
      I2 => plusOp0_in(6),
      I3 => \cp[0]_i_3_n_0\,
      O => \cp[4]_i_3_n_0\
    );
\cp[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB8"
    )
        port map (
      I0 => plusOp(5),
      I1 => \cp[0]_i_8_n_0\,
      I2 => plusOp0_in(5),
      I3 => \cp[0]_i_3_n_0\,
      O => \cp[4]_i_4_n_0\
    );
\cp[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \cp[0]_i_3_n_0\,
      I1 => plusOp0_in(4),
      I2 => \cp[0]_i_8_n_0\,
      I3 => plusOp(4),
      O => \cp[4]_i_5_n_0\
    );
\cp[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => cur_pill_m_OBUF(11),
      I1 => \cp[0]_i_3_n_0\,
      I2 => plusOp(11),
      I3 => \cp[0]_i_8_n_0\,
      I4 => plusOp0_in(11),
      O => \cp[8]_i_2_n_0\
    );
\cp[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => cur_pill_m_OBUF(10),
      I1 => \cp[0]_i_3_n_0\,
      I2 => plusOp(10),
      I3 => \cp[0]_i_8_n_0\,
      I4 => plusOp0_in(10),
      O => \cp[8]_i_3_n_0\
    );
\cp[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => cur_pill_m_OBUF(9),
      I1 => \cp[0]_i_3_n_0\,
      I2 => plusOp(9),
      I3 => \cp[0]_i_8_n_0\,
      I4 => plusOp0_in(9),
      O => \cp[8]_i_4_n_0\
    );
\cp[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => cur_pill_m_OBUF(8),
      I1 => \cp[0]_i_3_n_0\,
      I2 => plusOp(8),
      I3 => \cp[0]_i_8_n_0\,
      I4 => plusOp0_in(8),
      O => \cp[8]_i_5_n_0\
    );
\cp_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => cp0,
      CLR => reset_m_IBUF,
      D => \cp_reg[0]_i_2_n_7\,
      Q => cur_pill_m_OBUF(0)
    );
\cp_reg[0]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cp_reg[0]_i_10_n_0\,
      CO(2 downto 0) => \NLW_cp_reg[0]_i_10_CO_UNCONNECTED\(2 downto 0),
      CYINIT => cur_pill_m_OBUF(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3 downto 0) => cur_pill_m_OBUF(4 downto 1)
    );
\cp_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cp_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_cp_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \cp[0]_i_3_n_0\,
      DI(1) => \cp[0]_i_3_n_0\,
      DI(0) => \cp[0]_i_3_n_0\,
      O(3) => \cp_reg[0]_i_2_n_4\,
      O(2) => \cp_reg[0]_i_2_n_5\,
      O(1) => \cp_reg[0]_i_2_n_6\,
      O(0) => \cp_reg[0]_i_2_n_7\,
      S(3) => \cp[0]_i_4_n_0\,
      S(2) => \cp[0]_i_5_n_0\,
      S(1) => \cp[0]_i_6_n_0\,
      S(0) => \cp[0]_i_7_n_0\
    );
\cp_reg[0]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cp_reg[0]_i_9_n_0\,
      CO(2 downto 0) => \NLW_cp_reg[0]_i_9_CO_UNCONNECTED\(2 downto 0),
      CYINIT => cur_pill_m_OBUF(0),
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => cur_pill_m_OBUF(2 downto 1),
      O(3 downto 0) => plusOp0_in(4 downto 1),
      S(3 downto 2) => cur_pill_m_OBUF(4 downto 3),
      S(1) => \cp[0]_i_11_n_0\,
      S(0) => \cp[0]_i_12_n_0\
    );
\cp_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => cp0,
      CLR => reset_m_IBUF,
      D => \cp_reg[8]_i_1_n_5\,
      Q => cur_pill_m_OBUF(10)
    );
\cp_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => cp0,
      CLR => reset_m_IBUF,
      D => \cp_reg[8]_i_1_n_4\,
      Q => cur_pill_m_OBUF(11)
    );
\cp_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => cp0,
      CLR => reset_m_IBUF,
      D => \cp_reg[0]_i_2_n_6\,
      Q => cur_pill_m_OBUF(1)
    );
\cp_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => cp0,
      CLR => reset_m_IBUF,
      D => \cp_reg[0]_i_2_n_5\,
      Q => cur_pill_m_OBUF(2)
    );
\cp_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => cp0,
      CLR => reset_m_IBUF,
      D => \cp_reg[0]_i_2_n_4\,
      Q => cur_pill_m_OBUF(3)
    );
\cp_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => cp0,
      CLR => reset_m_IBUF,
      D => \cp_reg[4]_i_1_n_7\,
      Q => cur_pill_m_OBUF(4)
    );
\cp_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cp_reg[0]_i_2_n_0\,
      CO(3) => \cp_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_cp_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \cp[0]_i_3_n_0\,
      DI(1) => \cp[0]_i_3_n_0\,
      DI(0) => '0',
      O(3) => \cp_reg[4]_i_1_n_4\,
      O(2) => \cp_reg[4]_i_1_n_5\,
      O(1) => \cp_reg[4]_i_1_n_6\,
      O(0) => \cp_reg[4]_i_1_n_7\,
      S(3) => \cp[4]_i_2_n_0\,
      S(2) => \cp[4]_i_3_n_0\,
      S(1) => \cp[4]_i_4_n_0\,
      S(0) => \cp[4]_i_5_n_0\
    );
\cp_reg[4]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \cp_reg[0]_i_9_n_0\,
      CO(3) => \cp_reg[4]_i_6_n_0\,
      CO(2 downto 0) => \NLW_cp_reg[4]_i_6_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp0_in(8 downto 5),
      S(3 downto 0) => cur_pill_m_OBUF(8 downto 5)
    );
\cp_reg[4]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \cp_reg[0]_i_10_n_0\,
      CO(3) => \cp_reg[4]_i_7_n_0\,
      CO(2 downto 0) => \NLW_cp_reg[4]_i_7_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 0) => cur_pill_m_OBUF(8 downto 5)
    );
\cp_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => cp0,
      CLR => reset_m_IBUF,
      D => \cp_reg[4]_i_1_n_6\,
      Q => cur_pill_m_OBUF(5)
    );
\cp_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => cp0,
      CLR => reset_m_IBUF,
      D => \cp_reg[4]_i_1_n_5\,
      Q => cur_pill_m_OBUF(6)
    );
\cp_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => cp0,
      CLR => reset_m_IBUF,
      D => \cp_reg[4]_i_1_n_4\,
      Q => cur_pill_m_OBUF(7)
    );
\cp_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => cp0,
      CLR => reset_m_IBUF,
      D => \cp_reg[8]_i_1_n_7\,
      Q => cur_pill_m_OBUF(8)
    );
\cp_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cp_reg[4]_i_1_n_0\,
      CO(3 downto 0) => \NLW_cp_reg[8]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cp_reg[8]_i_1_n_4\,
      O(2) => \cp_reg[8]_i_1_n_5\,
      O(1) => \cp_reg[8]_i_1_n_6\,
      O(0) => \cp_reg[8]_i_1_n_7\,
      S(3) => \cp[8]_i_2_n_0\,
      S(2) => \cp[8]_i_3_n_0\,
      S(1) => \cp[8]_i_4_n_0\,
      S(0) => \cp[8]_i_5_n_0\
    );
\cp_reg[8]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \cp_reg[4]_i_7_n_0\,
      CO(3 downto 0) => \NLW_cp_reg[8]_i_6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cp_reg[8]_i_6_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => cur_pill_m_OBUF(11 downto 9)
    );
\cp_reg[8]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \cp_reg[4]_i_6_n_0\,
      CO(3 downto 0) => \NLW_cp_reg[8]_i_7_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cp_reg[8]_i_7_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp0_in(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => cur_pill_m_OBUF(11 downto 9)
    );
\cp_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_m_IBUF_BUFG,
      CE => cp0,
      CLR => reset_m_IBUF,
      D => \cp_reg[8]_i_1_n_6\,
      Q => cur_pill_m_OBUF(9)
    );
\cur_bot_m_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cur_bot_m_OBUF(0),
      O => cur_bot_m(0)
    );
\cur_bot_m_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => count(0),
      I1 => enable_m_IBUF,
      I2 => \cb_reg__0\(0),
      O => cur_bot_m_OBUF(0)
    );
\cur_bot_m_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cur_bot_m_OBUF(1),
      O => cur_bot_m(1)
    );
\cur_bot_m_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => count(1),
      I1 => enable_m_IBUF,
      I2 => \cb_reg__0\(1),
      O => cur_bot_m_OBUF(1)
    );
\cur_bot_m_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cur_bot_m_OBUF(2),
      O => cur_bot_m(2)
    );
\cur_bot_m_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => count(2),
      I1 => enable_m_IBUF,
      I2 => \cb_reg__0\(2),
      O => cur_bot_m_OBUF(2)
    );
\cur_bot_m_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cur_bot_m_OBUF(3),
      O => cur_bot_m(3)
    );
\cur_bot_m_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => count(3),
      I1 => enable_m_IBUF,
      I2 => \cb_reg__0\(3),
      O => cur_bot_m_OBUF(3)
    );
\cur_bot_m_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cur_bot_m_OBUF(4),
      O => cur_bot_m(4)
    );
\cur_bot_m_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => count(4),
      I1 => enable_m_IBUF,
      I2 => \cb_reg__0\(4),
      O => cur_bot_m_OBUF(4)
    );
\cur_bot_m_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cur_bot_m_OBUF(5),
      O => cur_bot_m(5)
    );
\cur_bot_m_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => count(5),
      I1 => enable_m_IBUF,
      I2 => \cb_reg__0\(5),
      O => cur_bot_m_OBUF(5)
    );
\cur_bot_m_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cur_bot_m_OBUF(6),
      O => cur_bot_m(6)
    );
\cur_bot_m_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => count(6),
      I1 => enable_m_IBUF,
      I2 => \cb_reg__0\(6),
      O => cur_bot_m_OBUF(6)
    );
\cur_bot_m_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cur_bot_m_OBUF(7),
      O => cur_bot_m(7)
    );
\cur_bot_m_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => count(7),
      I1 => enable_m_IBUF,
      I2 => \cb_reg__0\(7),
      O => cur_bot_m_OBUF(7)
    );
\cur_pill_m_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cur_pill_m_OBUF(0),
      O => cur_pill_m(0)
    );
\cur_pill_m_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cur_pill_m_OBUF(10),
      O => cur_pill_m(10)
    );
\cur_pill_m_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cur_pill_m_OBUF(11),
      O => cur_pill_m(11)
    );
\cur_pill_m_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cur_pill_m_OBUF(1),
      O => cur_pill_m(1)
    );
\cur_pill_m_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cur_pill_m_OBUF(2),
      O => cur_pill_m(2)
    );
\cur_pill_m_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cur_pill_m_OBUF(3),
      O => cur_pill_m(3)
    );
\cur_pill_m_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cur_pill_m_OBUF(4),
      O => cur_pill_m(4)
    );
\cur_pill_m_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cur_pill_m_OBUF(5),
      O => cur_pill_m(5)
    );
\cur_pill_m_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cur_pill_m_OBUF(6),
      O => cur_pill_m(6)
    );
\cur_pill_m_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cur_pill_m_OBUF(7),
      O => cur_pill_m(7)
    );
\cur_pill_m_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cur_pill_m_OBUF(8),
      O => cur_pill_m(8)
    );
\cur_pill_m_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cur_pill_m_OBUF(9),
      O => cur_pill_m(9)
    );
enable_m_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => enable_m,
      O => enable_m_IBUF
    );
\max_bottle_m_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => max_bottle_m(0),
      O => max_bottle_m_IBUF(0)
    );
\max_bottle_m_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => max_bottle_m(1),
      O => max_bottle_m_IBUF(1)
    );
\max_bottle_m_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => max_bottle_m(2),
      O => max_bottle_m_IBUF(2)
    );
\max_bottle_m_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => max_bottle_m(3),
      O => max_bottle_m_IBUF(3)
    );
\max_bottle_m_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => max_bottle_m(4),
      O => max_bottle_m_IBUF(4)
    );
\max_bottle_m_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => max_bottle_m(5),
      O => max_bottle_m_IBUF(5)
    );
\max_bottle_m_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => max_bottle_m(6),
      O => max_bottle_m_IBUF(6)
    );
\max_bottle_m_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => max_bottle_m(7),
      O => max_bottle_m_IBUF(7)
    );
\pnpb_m_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => pnpb_m(0),
      O => pnpb_m_IBUF(0)
    );
\pnpb_m_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => pnpb_m(1),
      O => pnpb_m_IBUF(1)
    );
\pnpb_m_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => pnpb_m(2),
      O => pnpb_m_IBUF(2)
    );
\pnpb_m_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => pnpb_m(3),
      O => pnpb_m_IBUF(3)
    );
\pnpb_m_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => pnpb_m(4),
      O => pnpb_m_IBUF(4)
    );
\pnpb_m_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => pnpb_m(5),
      O => pnpb_m_IBUF(5)
    );
\pnpb_m_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => pnpb_m(6),
      O => pnpb_m_IBUF(6)
    );
\pnpb_m_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => pnpb_m(7),
      O => pnpb_m_IBUF(7)
    );
reset_m_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset_m,
      O => reset_m_IBUF
    );
stop_light_m_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => stop_light_m_OBUF,
      O => stop_light_m
    );
stop_light_m_reg: unisim.vcomponents.LDCP
    generic map(
      INIT => '0',
      IS_PRE_INVERTED => '1'
    )
        port map (
      CLR => reset_m_IBUF,
      D => '0',
      G => p_2_in,
      PRE => enable_m_IBUF,
      Q => stop_light_m_OBUF
    );
stop_light_m_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010111111"
    )
        port map (
      I0 => stop,
      I1 => stop_reg_i_3_n_0,
      I2 => stop_reg_i_4_n_0,
      I3 => max_bottle_m_IBUF(4),
      I4 => max_bottle_m_IBUF(3),
      I5 => stop_reg_i_5_n_0,
      O => p_2_in
    );
stop_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_m_IBUF,
      D => stop_reg_i_1_n_0,
      G => stop_reg_i_2_n_0,
      GE => '1',
      Q => stop
    );
stop_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBAAA"
    )
        port map (
      I0 => stop_reg_i_3_n_0,
      I1 => stop_reg_i_4_n_0,
      I2 => max_bottle_m_IBUF(4),
      I3 => max_bottle_m_IBUF(3),
      I4 => stop_reg_i_5_n_0,
      I5 => stop_reg_i_6_n_0,
      O => stop_reg_i_1_n_0
    );
stop_reg_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => max_bottle_m_IBUF(0),
      I1 => \cb_reg__0\(0),
      I2 => \cb_reg__0\(2),
      I3 => max_bottle_m_IBUF(2),
      I4 => \cb_reg__0\(1),
      I5 => max_bottle_m_IBUF(1),
      O => stop_reg_i_10_n_0
    );
stop_reg_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => max_bottle_m_IBUF(3),
      I1 => \cb_reg__0\(3),
      I2 => \cb_reg__0\(4),
      I3 => max_bottle_m_IBUF(4),
      I4 => \cb_reg__0\(5),
      I5 => max_bottle_m_IBUF(5),
      O => stop_reg_i_11_n_0
    );
stop_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => stop_reg_i_6_n_0,
      I1 => stop_reg_i_5_n_0,
      I2 => stop_reg_i_7_n_0,
      I3 => stop_reg_i_3_n_0,
      I4 => enable_m_IBUF,
      O => stop_reg_i_2_n_0
    );
stop_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0C0FFFFE0C0E0C0"
    )
        port map (
      I0 => pnpb_m_IBUF(4),
      I1 => pnpb_m_IBUF(5),
      I2 => pnpb_m_IBUF(6),
      I3 => stop_reg_i_8_n_0,
      I4 => stop_reg_i_9_n_0,
      I5 => stop_reg_i_4_n_0,
      O => stop_reg_i_3_n_0
    );
stop_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => max_bottle_m_IBUF(1),
      I1 => max_bottle_m_IBUF(0),
      I2 => max_bottle_m_IBUF(2),
      O => stop_reg_i_4_n_0
    );
stop_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0001"
    )
        port map (
      I0 => stop_reg_i_8_n_0,
      I1 => pnpb_m_IBUF(4),
      I2 => pnpb_m_IBUF(5),
      I3 => pnpb_m_IBUF(6),
      I4 => warn_light_m_reg_i_2_n_0,
      I5 => pnpb_m_IBUF(7),
      O => stop_reg_i_5_n_0
    );
stop_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009009"
    )
        port map (
      I0 => \cb_reg__0\(6),
      I1 => max_bottle_m_IBUF(6),
      I2 => \cb_reg__0\(7),
      I3 => max_bottle_m_IBUF(7),
      I4 => stop_reg_i_10_n_0,
      I5 => stop_reg_i_11_n_0,
      O => stop_reg_i_6_n_0
    );
stop_reg_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888880"
    )
        port map (
      I0 => max_bottle_m_IBUF(3),
      I1 => max_bottle_m_IBUF(4),
      I2 => max_bottle_m_IBUF(2),
      I3 => max_bottle_m_IBUF(0),
      I4 => max_bottle_m_IBUF(1),
      O => stop_reg_i_7_n_0
    );
stop_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pnpb_m_IBUF(0),
      I1 => pnpb_m_IBUF(3),
      I2 => pnpb_m_IBUF(1),
      I3 => pnpb_m_IBUF(2),
      O => stop_reg_i_8_n_0
    );
stop_reg_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => max_bottle_m_IBUF(7),
      I1 => max_bottle_m_IBUF(6),
      I2 => max_bottle_m_IBUF(5),
      I3 => max_bottle_m_IBUF(3),
      I4 => max_bottle_m_IBUF(4),
      O => stop_reg_i_9_n_0
    );
warn_light_m_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => warn_light_m_OBUF,
      O => warn_light_m
    );
warn_light_m_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => reset_m_IBUF,
      D => warn_light_m_reg_i_1_n_0,
      G => stop_reg_i_2_n_0,
      GE => '1',
      Q => warn_light_m_OBUF
    );
warn_light_m_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBAAABAAE"
    )
        port map (
      I0 => stop_reg_i_5_n_0,
      I1 => stop_reg_i_4_n_0,
      I2 => max_bottle_m_IBUF(4),
      I3 => max_bottle_m_IBUF(3),
      I4 => warn_light_m_reg_i_2_n_0,
      I5 => warn_light_m_reg_i_3_n_0,
      O => warn_light_m_reg_i_1_n_0
    );
warn_light_m_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => max_bottle_m_IBUF(5),
      I1 => max_bottle_m_IBUF(6),
      I2 => max_bottle_m_IBUF(7),
      O => warn_light_m_reg_i_2_n_0
    );
warn_light_m_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C8C0"
    )
        port map (
      I0 => stop_reg_i_8_n_0,
      I1 => pnpb_m_IBUF(6),
      I2 => pnpb_m_IBUF(5),
      I3 => pnpb_m_IBUF(4),
      O => warn_light_m_reg_i_3_n_0
    );
work_light_m_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => work_light_m_OBUF,
      O => work_light_m
    );
work_light_m_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => work_light_m_reg_i_1_n_0,
      G => work_light_m_reg_i_2_n_0,
      GE => '1',
      Q => work_light_m_OBUF
    );
work_light_m_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000100000000"
    )
        port map (
      I0 => stop,
      I1 => stop_reg_i_3_n_0,
      I2 => stop_reg_i_7_n_0,
      I3 => stop_reg_i_5_n_0,
      I4 => reset_m_IBUF,
      I5 => enable_m_IBUF,
      O => work_light_m_reg_i_1_n_0
    );
work_light_m_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0001FFFFFFFF"
    )
        port map (
      I0 => stop,
      I1 => stop_reg_i_3_n_0,
      I2 => stop_reg_i_7_n_0,
      I3 => stop_reg_i_5_n_0,
      I4 => reset_m_IBUF,
      I5 => enable_m_IBUF,
      O => work_light_m_reg_i_2_n_0
    );
end STRUCTURE;
