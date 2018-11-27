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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/26/2018 15:32:34"
                                                            
-- Vhdl Test Bench template for design  :  prime
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY prime_tb IS
END prime_tb;
ARCHITECTURE prime_arch OF prime_tb IS
-- constants                                                 
-- signals                                                   
SIGNAL N : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT prime
	PORT (
	N : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	DUT : prime
	PORT MAP (
-- list connections between master ports and signals
	N => N,
	Y => Y
	);
	N <= "00000000", "01100100" after 10ns;
                                        
END prime_arch;