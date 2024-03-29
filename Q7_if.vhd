----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2019 03:14:00 PM
-- Design Name: 
-- Module Name: Q7_if - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Q7_if is
    Port ( input : in STD_LOGIC_VECTOR (2 downto 0);
           output : out STD_LOGIC_VECTOR (7 downto 0));
end Q7_if;

architecture Behavioral of Q7_if is

begin
    main : process(input)
    begin
        if (input = "000") then
            output <= "00000001";
        elsif (input = "001") then
            output <= "00000010";
        elsif (input = "010") then
            output <= "00000100";
        elsif (input = "011") then
            output <= "00001000";
        elsif (input = "100") then
            output <= "00010000";
        elsif (input = "101") then
            output <= "00100000";
        elsif (input = "110") then
            output <= "01000000";
        elsif (input = "111") then
            output <= "10000000";
        else
            output <= (others => '0');
        end if;
    end process;

end Behavioral;
