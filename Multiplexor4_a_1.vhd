 library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;
 
 entity Multiplexor4_a_1 is
			port(
					A : in STD_LOGIC;
					B : in STD_LOGIC;
					C : in STD_LOGIC;
					D : in STD_LOGIC;
					Sel : in STD_LOGIC_VECTOR(1 downto 0);
					Salida : out STD_LOGIC
			);
end Multiplexor4_a_1;

architecture simple of MUltiplexor4_a_1 is 
	begin
	
			process(Sel)
				begin
					
					case Sel IS
						
							when "00" => Salida <= A;
							when "01" => Salida <= B;
							when "10" => Salida <= C;
							when "11" => Salida <= D;
							when others => Salida <='1';
					
					end case;
					end process;
					
end simple;
		
