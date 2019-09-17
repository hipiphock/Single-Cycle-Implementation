-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/30/2019 19:08:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          single
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY single_vhd_vec_tst IS
END single_vhd_vec_tst;
ARCHITECTURE single_arch OF single_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL pALUout : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL pBranch : STD_LOGIC;
SIGNAL pClock : STD_LOGIC;
SIGNAL pInstruction : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL pM2R : STD_LOGIC;
SIGNAL pMEM_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL pMR : STD_LOGIC;
SIGNAL pMW : STD_LOGIC;
SIGNAL pNEXTPC : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL pPC : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL pReset : STD_LOGIC;
SIGNAL pWB : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL pWriteData : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT single
	PORT (
	pALUout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	pBranch : OUT STD_LOGIC;
	pClock : IN STD_LOGIC;
	pInstruction : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	pM2R : OUT STD_LOGIC;
	pMEM_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	pMR : OUT STD_LOGIC;
	pMW : OUT STD_LOGIC;
	pNEXTPC : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	pPC : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	pReset : IN STD_LOGIC;
	pWB : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	pWriteData : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : single
	PORT MAP (
-- list connections between master ports and signals
	pALUout => pALUout,
	pBranch => pBranch,
	pClock => pClock,
	pInstruction => pInstruction,
	pM2R => pM2R,
	pMEM_out => pMEM_out,
	pMR => pMR,
	pMW => pMW,
	pNEXTPC => pNEXTPC,
	pPC => pPC,
	pReset => pReset,
	pWB => pWB,
	pWriteData => pWriteData
	);

-- pReset
t_prcs_pReset: PROCESS
BEGIN
	pReset <= '1';
	WAIT FOR 35000 ps;
	pReset <= '0';
WAIT;
END PROCESS t_prcs_pReset;

-- pClock
t_prcs_pClock: PROCESS
BEGIN
LOOP
	pClock <= '0';
	WAIT FOR 5000 ps;
	pClock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_pClock;
END single_arch;
