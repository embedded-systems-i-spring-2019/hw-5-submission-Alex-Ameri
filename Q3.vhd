----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2019 03:14:00 PM
-- Design Name: 
-- Module Name: Q3 - Behavioral
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

entity Q3 is
    Port ( A_1, A_2, B_1, B_2, D_1 : in STD_LOGIC;
           E_out : out STD_LOGIC);
end Q3;

architecture Behavioral of Q3 is
    signal AB, CD, DnotE : STD_LOGIC;
begin
    AB <= A_1 and A_2;
    CD <= B_1 or B_2;
    DnotE <= B_2 and (not D_1);
    E_out <= (AB or CD or DnotE);

end Behavioral;
