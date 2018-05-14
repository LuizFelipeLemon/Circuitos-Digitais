
entity mealy is
 port(S:in bit_vector(0 to 4);
        ck: in bit;
        W: out bit;
        sm: out bit_vector(1 downto 0));
end mealy;

architecture ckt of mealy is

component ffjk is
  port( clk,J,K,P,C: in bit;
            q: out bit);
end component;

signal J1,K1,J0,K0: bit;
signal nt,t: bit_vector(1 downto 0);


begin
nt(0) <= not t(0);
nt(1) <= not t(1);
J1 <= S(2) or (S(1) and S(3));
K1 <= S(1) and S(4);
J0 <= (not S(2) and S(3)) or (S(0) and S(2)) or (S(0) and S(4));
K0 <= (S(0) and S(4)) or (not S(0) and not S(2) and S(3));
  
box0: ffjk port map(
  clk => ck,
  J => J0,
  K => K0,
  P => '1',
  C => '1',
  q => t(0));

box1: ffjk port map(
  clk => ck,
  J => J1,
  K => K1,
  P => '1',
  C => '1',
  q => t(1));
  
  W <= (not S(0) and not S(2) and not S(3)) or (not S(1) and not S(2) and not S(3)) or (S(0) and S(1) and not S(4));
  sm(1) <= (not S(0) and S(2)) or (S(0) and not S(1)) or (not S(0) and S(1) and S(3)) or (S(0) and not S(4));
  sm(0) <= (S(0) and S(1) and not S(4)) or (not S(1) and not S(2) and S(3)) or (not S(0) and S(1) and S(2)) or (not S(0) and S(1) and not S(3));
end ckt;
