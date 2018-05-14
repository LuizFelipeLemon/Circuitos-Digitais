entity Contador_UpDown is
	port(
		A: in bit_vector(3 downto 0);
		clock, LD, CLR, UP_DW: in bit;
		S: out bit_vector(3 downto 0)
	);
end Contador_UpDown;

architecture ckt of Contador_UpDown is

	signal Set: bit_vector(3 downto 0);
	signal clear: bit_vector(3 downto 0);
	signal i: bit_vector(0 to 3);
	signal Up_Down: bit_vector(2 downto 0);

	component FFJK is
		port(
			clk, J, K, P, C: in bit;
			q: out bit
		);
	end component;

begin

	Set(0) <= not((LD and not(CLR)) AND A(0));
	Set(1) <= not((LD and not(CLR)) AND A(1));
	Set(2) <= not((LD and not(CLR)) AND A(2));
	Set(3) <= not((LD and not(CLR)) AND A(3));

	clear(0) <= not(CLR) AND (not(LD) or A(0));
	clear(1) <= not(CLR) AND (not(LD) or A(1));
	clear(2) <= not(CLR) AND (not(LD) or A(2));
	clear(3) <= not(CLR) AND (not(LD) or A(3));

	F1: FFJK port map(clock,'1','1',Set(3),clear(3),i(3)		);
	Up_Down(0) <= (not(UP_DW) and i(3)) or (UP_DW and not(i(3)));

	F2: FFJK port map(clock,Up_Down(0),Up_Down(0),Set(2),clear(2),i(2));
	Up_Down(1) <= (not(UP_DW) and i(3) and i(2)) or (UP_DW and not(i(3)) and not(i(2)));

	F3: FFJK port map(clock,Up_Down(1),Up_Down(1),Set(1),clear(1),i(1));
	Up_Down(2) <= (not(UP_DW) and i(3) and i(2) and i(1)) or (UP_DW and not(i(3)) and not(i(2)) and not(i(1)));

	F4: FFJK port map(clock,Up_Down(2),Up_Down(2),Set(0),clear(0),i(0));

	S <= i;

end ckt;