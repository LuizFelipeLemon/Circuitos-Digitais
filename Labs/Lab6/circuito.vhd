-- Franscico Bianor
-- Luiz Felipe Santana

entity circuitoY is
    port(clry,clk2 : IN BIT;
        A : IN bit_vector(3 downto 0);
        qy : OUT BIT ;
        L : IN BIT
    );

end circuitoY;





architecture ckt2 of circuitoY is
    
    component ffd is
        port(clk,D,P,C : IN BIT;
             q : OUT BIT);
    
    end component;

    signal q1,q2,q3,q4,p1,p2,p3,p4,c1,c2,c3,c4 : BIT;
    

    begin

    c4 <= ((not A(0)) NAND L) AND clry;
    c3 <= ((not A(1)) NAND L) AND clry;
    c2 <= ((not A(2)) NAND L) AND clry;
    c1 <= ((not A(3)) NAND L) AND clry;

    p4 <= (A(0) NAND L) OR (not clry);
    p3 <= (A(1) NAND L) OR (not clry);
    p2 <= (A(2) NAND L) OR (not clry);
    p1 <= (A(3) NAND L) OR (not clry);
    

    f4: ffd port map(
        clk => clk2,
        D => '0',
        P => p4,
        C => c4,
        q => q4
        
    );

    f3: ffd port map(
        clk => clk2,
        D => q4,
        P => p3,
        C => c3,
        q => q3
        
    );
    f2: ffd port map(
        clk => clk2,
        D => q3,
        P => p2,
        C => c2,
        q => q2
        
    );
    f1: ffd port map(
        clk => clk2,
        D => q2,
        P => p1,
        C => c1,
        q => q1
        
    );

    qy <= q1;

end ckt2;
