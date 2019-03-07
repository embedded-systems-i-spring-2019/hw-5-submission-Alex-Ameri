----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2019 03:14:00 PM
-- Design Name: 
-- Module Name: Q6_case - Behavioral
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

entity Q6_case is
    Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
           sel : in STD_LOGIC_VECTOR(2 downto 0);
           output : out STD_LOGIC);
end Q6_case;

architecture Behavioral of Q6_case is

begin

    main : process(input, sel)
    begin
        case sel is
            when "000" =>
                output <= input(0);
            when "001" =>
                output <= input(1);
            when "010" =>
                output <= input(2);
            when "011" =>
                output <= input(3);
            when "100" =>
                output <= input(4);
            when "101" =>
                output <= input(5);
            when "110" =>
                output <= input(6);
            when "111" =>
                output <= input(7);
            when others => 
                output <= '0';
        end case;
    end process;

end Behavioral;
