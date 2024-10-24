--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:57:14 10/22/2024
-- Design Name:   
-- Module Name:   /home/ianan/HDL/VHDL/mux8_test_bench.vhd
-- Project Name:  serial_transmiter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux_input_8
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
 
ENTITY mux8_test_bench IS
END mux8_test_bench;
 
ARCHITECTURE behavior OF mux8_test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_input_8
    PORT(
         in_vec : IN  std_logic_vector(7 downto 0);
         control : IN  std_logic_vector(2 downto 0);
         mux8_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in_vec : std_logic_vector(7 downto 0) := (others => '0');
   signal control : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal mux8_out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux_input_8 PORT MAP (
          in_vec => in_vec,
          control => control,
          mux8_out => mux8_out
        );

   -- Stimulus process
   stim_proc: process
   begin
      
      -- Teste 1: control = "000", saida in_vec(0)
      in_vec <= "10000000"; -- Deixando o indice 0 sendo = 1
      control <= "000"; -- Selecionando o indice 0
      wait for 10 ns; -- Delay de 10 ns
      
      -- Teste 2: control = "001" saida in_vec(1)
      in_vec <= "01000000"; -- Deixando o indice 1 sendo = 1
      control <= "001"; -- Selecionando o indice 1
      wait for 10 ns; -- Delay de 10 ns

      -- Teste 3: control = "010" saida in_vec(2)
      in_vec <= "00100000"; -- Deixando o indice 2 sendo = 1
      control <= "010"; -- Selecionando o indice 2
      wait for 10 ns; -- Delay de 10 ns

      -- Teste 4: control = "011" saida in_vec(3)
      in_vec <= "00010000"; -- Deixado o indice 3 sendo = 1
      control <= "011"; -- Selecionando o indice 3
      wait for 10 ns; -- Delay de 10 ns

      -- Teste 5: control = "100" saida in_vec(4)
      in_vec <= "00001000"; -- Deixado o indice 4 sendo = 1
      control <= "100"; -- Selecionando o indice 4
      wait for 10 ns; -- Delay de 10 ns

      -- Teste 6: control = "101" saida in_vec(5)
      in_vec <= "00000100"; -- Deixado o indice 5 sendo = 1
      control <= "101"; -- Selecionando o indice 5
      wait for 10 ns; -- Delay de 10 ns

      -- Teste 7: control = "110" saida in_vec(6)
      in_vec <= "00000010"; -- Deixado o indice 6 sendo = 1
      control <= "110"; -- Selecionando o indice 6
      wait for 10 ns; -- Delay de 10 ns

      -- Teste 8: control = "111" saida in_vec(7)
      in_vec <= "00000001"; -- Deixado o indice 6 sendo = 1
      control <= "111"; -- Selecionando o indice 6
      wait for 10 ns; -- Delay de 10 ns
      -- Fim da simulacao
      wait;
   end process;

END;
