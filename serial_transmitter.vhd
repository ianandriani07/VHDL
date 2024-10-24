----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:00:00 10/22/2024 
-- Design Name: 
-- Module Name:    serial_transmitter - Behavioral 
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
USE IEEE.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY serial_transmitter IS
    PORT (
        word : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        send : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        busy : OUT STD_LOGIC;
        line : OUT STD_LOGIC
    );
END serial_transmitter;

ARCHITECTURE Behavioral OF serial_transmitter IS
    SIGNAL enable : STD_LOGIC;
    SIGNAL reset_int : STD_LOGIC;
    SIGNAL reg_out : STD_LOGIC_VECTOR(7 DOWNTO 0);

    SIGNAL bit_cntrl : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL bit_selected : STD_LOGIC;
    SIGNAL bit_aggregated : STD_LOGIC_VECTOR(3 DOWNTO 0);

    SIGNAL out_cntrl : STD_LOGIC_VECTOR(1 DOWNTO 0);

    TYPE STATE IS (IDLE, COUNT, DIE);
BEGIN

    in_reg : ENTITY work.sync_register8bits PORT MAP (
        clk => clk,
        reset => reset_int,
        enable => enable,
        input => word,
        reg8bits => reg_out
        );

    in_mux8 : ENTITY work.mux_input_8 PORT MAP (
        in_vec => reg_out,
        control => bit_cntrl,
        mux8_out => bit_selected
        );

    bit_aggregated <= bit_selected & "100";

    in_mux4 : ENTITY work.mux_input_4 PORT MAP (
        in_vec => bit_aggregated,
        control => out_cntrl,
        mux4_out => line
        );

    state_machine : PROCESS (clk, reset)
        VARIABLE curr_state, new_state : STATE;
        VARIABLE counter : STD_LOGIC_VECTOR(2 DOWNTO 0);
    BEGIN
        IF reset'event AND reset = '1' THEN
            reset_int <= '1';
            enable <= '1';
            out_cntrl <= "10";
            curr_state := IDLE;
            new_state := IDLE;
            busy <= '0';
        ELSE
            reset_int <= '0';
        END IF;

        IF clk'event AND clk = '1' THEN
            CASE curr_state IS
                WHEN IDLE =>
                    out_cntrl <= "10";
                    busy <= '0';
                    CASE send IS
                        WHEN '1' =>
                            new_state := COUNT;
                            out_cntrl <= "00";
                            enable <= '0';
                            counter := "111";
                            busy <= '1';
                        WHEN '0' => new_state := IDLE;
                        WHEN OTHERS => new_state := new_state;
                    END CASE;
                WHEN COUNT =>
                    out_cntrl <= "11";
                    IF counter = "000" THEN
                        bit_cntrl <= counter;
                        new_state := DIE;
                    ELSE
                        bit_cntrl <= counter;
                        counter := counter - 1;
                    END IF;
                WHEN DIE =>
                    out_cntrl <= "00";
                    new_state := IDLE;
                    enable <= '1';
            END CASE;
        END IF;

        curr_state := new_state;
    END PROCESS;

END Behavioral;