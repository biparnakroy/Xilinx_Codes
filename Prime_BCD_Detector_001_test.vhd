--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:32:24 08/13/2021
-- Design Name:   
-- Module Name:   Prime_BCD_Detector_001_test
-- Project Name:  MiniProject
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Prime_BCD
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Prime_BCD_Detector_001_test IS
END Prime_BCD_Detector_001_test;
 
ARCHITECTURE behavior OF Prime_BCD_Detector_001_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Prime_BCD_Detector_001
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         S : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');

     --Outputs
   signal S : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: Prime_BCD_Detector_001 PORT MAP (
          A => A,
          S => S
        );

  
   -- Stimulus process
   stim_proc: process
   begin    
        A(0) <= '0';
        A(1) <= '0';
        A(2) <= '0';
      wait for 100 ns;    
        A(0) <= '0';
        A(1) <= '0';
        A(2) <= '1';
      wait for 100 ns;
        A(0) <= '0';
        A(1) <= '1';
        A(2) <= '0';
      wait for 100 ns;
        A(0) <= '0';
        A(1) <= '1';
        A(2) <= '1';
      wait for 100 ns;
        A(0) <= '1';
        A(1) <= '0';
        A(2) <= '0';
      wait for 100 ns;
        A(0) <= '1';
        A(1) <= '0';
        A(2) <= '1';
      wait for 100 ns;
        A(0) <= '1';
        A(1) <= '1';
        A(2) <= '0';
      wait for 100 ns;
        A(0) <= '1';
        A(1) <= '1';
        A(2) <= '1';
      wait for 100 ns;

   end process;

END;