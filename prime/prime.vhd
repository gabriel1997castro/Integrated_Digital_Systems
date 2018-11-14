-------------------------------------------------------
-- Autor: Gabriel G. A. Castro and Eric V. Castro    --
-- Date : November 14, 2018                          --
-- Code to receive an binary input and find the      --
-- bigger prime number less than or equal to it.     --
-------------------------------------------------------
 
-----------------------Libraries-----------------------
library IEEE;
use IEEE.std_logic_1164.all;
USE ieee.numeric_std.ALL;

-------------------------------------------------------
entity prime is
	port ( N: in STD_LOGIC_VECTOR (7 downto 0);
			 Y: out STD_LOGIC_VECTOR (7 downto 0));
end prime;
-------------------------------------------------------

architecture prime_arch of prime is

-----Function to check the if the number is prime -----
function check_prime (constant N_int: in integer) return STD_LOGIC is
	variable prime: boolean;
	variable y: STD_LOGIC; -- output
	begin
		prime := true;
		-- 3 because it checks only even numbers and  --
		-- 16 because the input have 8 bits, sqrt(256)--
		-- is 16. See Trial division method           --
		for i in 3 to 16 loop
			if N_int mod i = 0 and N_int /= i then
				prime := false;
			end if;
		end loop;
		if prime then y := '1';
		else y := '0';
		end if;
return y;
end check_prime;


begin
-------------------------------------------------------
	process(N)
		variable N_int: integer;
		variable bigger: integer;
		begin
			N_int := to_integer(unsigned(N));
			if N_int=0 or N_int=1 then N_int := 2;
			elsif (N_int > 2) then
				-- It forces to check only even numbers 
				if(N_int mod 2 = 0) then N_int := N_int - 1;
				end if;
				L1: for j in 1 to 7 loop
						if (check_prime(N_int) = '1') then
							exit L1;
						else N_int := N_int - 2; --even numbers
						end if;
				end loop L1;
			end if;
			Y <= std_logic_vector(to_unsigned(N_int, Y'length)); 
	end process;
-------------------------------------------------------
end prime_arch;