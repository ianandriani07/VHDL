--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:35:49 10/22/2024
-- Design Name:   
-- Module Name:   /home/ianan/HDL/VHDL/mu4_test_bench.vhd
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
 
ENTITY mu4_test_bench IS
END mu4_test_bench;
 
ARCHITECTURE behavior OF mu4_test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_input_4
    PORT(
         in_vec : IN  std_logic_vector(3 downto 0);
         control : IN  std_logic_vector(1 downto 0);
         mux4_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in_vec : std_logic_vector(3 downto 0) := (others => '0');
   signal control : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal mux4_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_input_4 PORT MAP (
          in_vec => in_vec,
          control => control,
          mux4_out => mux4_out
        ); 

   -- Stimulus process
   stim_proc: process
   begin

      -- Teste 1: control = "00", saida in_vec(0)
      in_vec <= "1000"; -- Deixando o indice 0 sendo = 1
      control <= "00"; -- Selecionando o indice 0
      wait for 10 ns; -- Delay de 10 ns
      
      -- Teste 2: control = "01" saida in_vec(1)
      in_vec <= "0100"; -- Deixando o indice 1 sendo = 1
      control <= "01"; -- Selecionando o indice 1
      wait for 10 ns; -- Delay de 10 ns

      -- Teste 3: control = "10" saida in_vec(2)
      in_vec <= "0010"; -- Deixando o indice 2 sendo = 1
      control <= "10"; -- Selecionando o indice 2
      wait for 10 ns; -- Delay de 10 ns

      -- Teste 4: control = "11" saida in_vec(3)
      in_vec <= "0001"; -- Deixado o indice 3 sendo = 1
      control <= "11"; -- Selecionando o indice 3
      wait for 10 ns; -- Delay de 10 ns

      -- Fim da simulacao

      wait;
   end process;

END;
