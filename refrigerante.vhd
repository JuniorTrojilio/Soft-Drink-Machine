entity refrigerante is
	port(moeda, valor: in integer range 0 to 15;
		c: in bit; clk : in bit; clk2 : in bit; reset : in bit;
		tr: out bit_vector (0 to 2);
		d: out bit; 
		display: out bit_vector(6 downto 0));
end refrigerante;

architecture maquina of refrigerante is
	signal	cont : integer range 0 to 15;
	signal   somador : integer range 0 to 15;
	type maquina is (inicio, espera, soma, fornecer);
	signal aux : maquina;
begin
	abc : process (clk)
	begin
		if (clk'event and clk = '1') then
			if (cont = 0) then
				case moeda is			
					when 0 => display <= "0111111";
					when 1 => display <= "0000110";
					when 2 => display <= "1011011";
					when 3 => display <= "1001111";
					when 4 => display <= "1100110";
					when 5 => display <= "1101101";
					when 6 => display <= "1111101";
					when 7 => display <= "0000111";
					when 8 => display <= "1111111";
					when 9 => display <= "1101111";
					when others => display <= "0111111";
				end case;
			tr <= "001";
			cont <= 1;
			elsif (cont = 1) then
				case valor is
					when 0 => display <= "0111111";
					when 1 => display <= "0000110";
					when 2 => display <= "1011011";
					when 3 => display <= "1001111";
					when 4 => display <= "1100110";
					when 5 => display <= "1101101";
					when 6 => display <= "1111101";
					when 7 => display <= "0000111";
					when 8 => display <= "1111111";
					when 9 => display <= "1101111";
					when others => display <= "0111111";
				end case;
			tr <= "010";
			cont <= 2;
			else	
				case somador is
					when 0 => display <= "0111111";
					when 1 => display <= "0000110";
					when 2 => display <= "1011011";
					when 3 => display <= "1001111";
					when 4 => display <= "1100110";
					when 5 => display <= "1101101";
					when 6 => display <= "1111101";
					when 7 => display <= "0000111";
					when 8 => display <= "1111111";
					when 9 => display <= "1101111";
					when others => display <= "0111111";
				end case;
			tr <= "100";
			cont <= 0;
			end if;
		end if;
	end process abc;
		
	statemachine : process (clk2, reset)	
	begin
		if (reset = '1') then
			aux <= inicio;
		elsif (clk2'event and clk2 = '1') then
			case	aux is
				when inicio => somador <= 0;
									d       <= '0';
									aux <= espera;
				when espera => if (somador < valor) then
										case c is
											when '1' => aux <= soma;
											when '0' => aux <= espera;
										end case;
										d <= '0';
									else
										aux <= fornecer;
										d <= '1';
									end if;
				when soma => somador <= moeda + somador;
									aux   <= espera;
				when fornecer => d <= '1';
									aux <= inicio;
			end case;			
		end if;
	end process statemachine;
end architecture;
		