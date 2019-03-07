----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2019 03:14:00 PM
-- Design Name: 
-- Module Name: Q2_if - Behavioral
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

entity Q2_if is
    Port ( A_1, A_2, B_1, B_2, D_1 : in STD_LOGIC;
           E_out : out STD_LOGIC);
end Q2_if;

architecture Behavioral of Q2_if is
begin

    main : process( A_1, A_2, B_1, B_2, D_1)
    begin
        if((A_1 and A_2) = '1' or (B_1 or B_2) = '1' or (B_2 and (not D_1)) = '1') then
            E_out <= '1';
        else
            E_out <= '0';
        end if;
    end process;
end Behavioral;
