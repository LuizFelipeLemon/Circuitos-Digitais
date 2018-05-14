entity main is 
    port(
        Am : IN bit_vector(3 downto 0);
        k : IN bit_vector(1 downto 0);
        clk : IN BIT;
        Zm : OUT bit_vector(3 downto 0);
        Lm : IN BIT

    );
end main;


architecture ckt of main is 

    component circuitoY is
        port(clry,clk2 : IN BIT;
            A : IN bit_vector(3 downto 0);
            qy : OUT BIT;
            L : IN BIT
        );

    end component;

    component circuitoX is
        port(clrx,clk3,dx : IN BIT;
            Z : OUT bit_vector(3 downto 0)
        );
    
    end component;

    signal q : BIT;
    signal Zmp : bit_vector(3 downto 0);

    begin

        cy : circuitoY port map(
            clk2     => clk,
            clry => k(0),
            A => Am,
            qy => q,
            L => Lm

        );

        cx : circuitoX port map(
            clk3 => clk,
            clrx => k(1),
            dx => q,
            Z => Zmp
        );

        Zm <= Zmp;

end ckt;

