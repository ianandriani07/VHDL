LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY transmissor_tb IS
END transmissor_tb;

ARCHITECTURE transmissor_tb OF transmissor_tb IS
   SIGNAL busy, linha, clock, reset, send : STD_LOGIC;
   SIGNAL palavra : STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
   UUT : ENTITY work.serial_transmitter PORT MAP (
      clk => clock,
      reset => reset,
      send => send,
      word => palavra,
      busy => busy,
      line => linha
      );
   PROCESS
   BEGIN
      clock <= '1' AFTER 5ns, '0' AFTER 10ns;
      WAIT FOR 10ns;
   END PROCESS;

   reset <= '1', '0' AFTER 3 ns;
   send <= '0', '1' AFTER 23 ns, '0' AFTER 50 ns, '1' AFTER 160ns, '0' AFTER 200 ns;
   palavra <= "11010001", "00100110" AFTER 150ns;

END transmissor_tb;