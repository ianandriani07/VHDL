----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:43:29 10/17/2024 
-- Design Name: 
-- Module Name:    mux_input_8 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY mux_input_4 IS
    PORT (
        in_vec : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        control : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        mux4_out : OUT STD_LOGIC
    );
END mux_input_4;

ARCHITECTURE Behavioral OF mux_input_4 IS
BEGIN
    WITH control (1 DOWNTO 0) SELECT
    mux4_out <=
        in_vec(0) WHEN "00",
        in_vec(1) WHEN "01",
        in_vec(2) WHEN "10",
        in_vec(3) WHEN "11",
		  '0' 		WHEN OTHERS;
END Behavioral;