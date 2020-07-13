----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2020 06:40:47 AM
-- Design Name: 
-- Module Name: 4to1MuxDataflow - Dataflow
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

entity MuxDataflow is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           s0 : in STD_LOGIC;
           s1 : in STD_LOGIC;
           x : out STD_LOGIC);
end MuxDataflow;

architecture Dataflow of MuxDataflow is
        SIGNAL sel : INTEGER;
begin
    sel <=   0 When s0 = '0' and s1 = '0' Else
                1 When s0 = '0' and s1 = '1' Else
                2 When s0 = '1' and s1 = '0' Else
                3;
    x <= a AFTER 0.5ns WHEN sel = 0 Else
         b AFTER 0.5ns WHEN sel = 1 Else
         c AFTER 0.5ns WHEN sel = 2 Else
         d AFTER 0.5ns;
END Dataflow;
    
          