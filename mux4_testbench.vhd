--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:01:04 10/22/2024
-- Design Name:   
-- Module Name:   /home/ianan/HDL/VHDL/mux4_testbench.vhd
-- Project Name:  serial_transmiter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_input_4
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY mux4_testbench IS
END mux4_testbench;
 
ARCHITECTURE behavior OF mux4_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)

   --Inputs
   signal in_1 : std_logic := '0';
   signal in_2 : std_logic := '0';
   signal in_3 : std_logic := '0';
   signal in_4 : std_logic := '0';
   signal control : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal mux4_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.mux_input_4 PORT MAP (
          in_1 => in_1,
          in_2 => in_2,
          in_3 => in_3,
          in_4 => in_4,
          control => control,
          mux4_out => mux4_out
        );

   -- Stimulus process
   stim_proc: process
		variable counter: std_logic_vector(5 downto 0);
   begin
		counter := counter + 1;
		wait for 5ns;
   end process;

END;
