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

entity mux_input_4 is
    port (
        in_vec : in std_logic_vector(3 downto 0);
		  control : in std_logic_vector(1 downto 0);
        mux4_out : out std_logic
    );
end mux_input_4;

architecture Behavioral of mux_input_4 is
begin
    with control (1 downto 0) select
    mux4_out <=
        in_vec(0) when "00",
        in_vec(1) when "01",
        in_vec(2) when "10",
        in_vec(3) when "11";
end Behavioral;

