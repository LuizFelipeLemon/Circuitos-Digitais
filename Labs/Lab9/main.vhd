entity main is
    port(r,u,y,clkM,Cm: in bit;
          S: out bit_vector(3 downto 0));
  end main;
  
  architecture ckt of main is
  
  component ffd is
    port( clk,D,P,C: in bit;
              q: out bit);
  end component;
  
  signal Sa,Sb: bit;
  signal n1,n2,si: bit;


  
  
  begin

    n1 <= ((not Sa) and u) OR (Sa and (not Sb)) OR (Sa and (not r)) OR ((not Sa) and Sb and y);
    
    n2 <= (not Sa and Sb and u)  OR (Sa and Sb and (not r))  OR (Sa and (not Sb) and u) OR ((not Sa) and Sb and (not y)) OR ((not Sb) and u and y);

    si <= ((not Sa) and (not Sb) and (not y))  OR ((not Sb) and (not u) and (not y)) OR (Sa and Sb and (not r));

    ffd1: ffd port map(
        clk => clkM,
        P => '1',
        C => Cm,
        q => Sa,
        D => n1);
    
    ffd2: ffd port map(
        clk => clkM,
        P => '1',
        C => Cm,
        q => Sb,
        D =>n2);
        



  end;