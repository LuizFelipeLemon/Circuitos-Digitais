-- Franscico Bianor
-- Luiz Felipe Santana

entity circuitoX is
    port(clrx,clk3,dx : IN BIT;
        Z : OUT bit_vector(3 downto 0)
    );

end circuitoX;





architecture ckt3 of circuitoX is
    
    component ffd is
        port(clk,D,P,C : IN BIT;
             q : OUT BIT);
    
    end component;

    signal L, q1,q2,q3,q4 : BIT;
    signal nclrx : BIT;

    begin
    
        nclrx <= not clrx;

    f4: ffd port map(
        clk => clk3,
        D => dx,
        P =>'1',
        C => '1',
        q => q4
        
    );

    f3: ffd port map(
        clk => clk3,
        D => q4,
        P =>'1',
        C => '1',
        q => q3
        
    );
    f2: ffd port map(
        clk => clk3,
        D => q3,
        P =>'1',
        C => '1',
        q => q2
        
    );
    f1: ffd port map(
        clk => clk3,
        D => q2,
        P =>'1',
        C => '1',
        q => q1
        
    );
    
    Z(0) <= q4;
    Z(1) <= q3;
    Z(2) <= q2;
    Z(3) <= q1;

end ckt3;
