----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:04:48 10/17/2024 
-- Design Name: 
-- Module Name:    sync_register8bits - Behavioral 
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

entity sync_register8bits is
    port (
        clk: in std_logic;
        reset: in std_logic;
        enable: in std_logic;
        input: in std_logic_vector(7 downto 0);
        reg8bits: out std_logic_vector(7 downto 0)
    );
end sync_register8bits;

architecture Behavioral of sync_register8bits is
begin
    process (clk, reset, enable)
        variable reg: std_logic_vector(7 downto 0);
    begin
        if reset = '1' then
            reg := (others => '0');
				reg8bits <= reg;
        elsif clk'event and clk = '1' then
            if enable = '1' then
                reg := input;
                reg8bits <= reg;
            else
                reg8bits <= reg;
            end if;
        else
            reg8bits <= reg;
        end if;
    end process;
end Behavioral;

