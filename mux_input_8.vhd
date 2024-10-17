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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_input_8 is
    port (
        in_1, in_2, in_3, in_4, in_5, in_6, in_7, in_8 : in std_logic;
		  control : in std_logic_vector(2 downto 0);
        mux8_out : out std_logic
    );
end mux_input_8;

architecture Behavioral of mux_input_8 is
begin
    with control (2 downto 0) select
    mux8_out <=
        in_1 when "000",
        in_2 when "001",
        in_3 when "010",
        in_4 when "011",
        in_5 when "100",
        in_6 when "101",
        in_7 when "110",
        in_8 when "111";
end Behavioral;

