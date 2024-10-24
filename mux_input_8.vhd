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
        in_vec : in std_logic_vector(7 downto 0);
		control : in std_logic_vector(2 downto 0);
        mux8_out : out std_logic
    );
end mux_input_8;

architecture Behavioral of mux_input_8 is
begin
    with control (2 downto 0) select
    mux8_out <=
        in_vec(0) when "000",
        in_vec(1) when "001",
        in_vec(2) when "010",
        in_vec(3) when "011",
        in_vec(4) when "100",
        in_vec(5) when "101",
        in_vec(6) when "110",
        in_vec(7) when "111",
			'0' when others;
end Behavioral;

