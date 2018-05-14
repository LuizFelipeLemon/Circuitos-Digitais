-- Franscico Bianor
-- Luiz Felipe Santana

entity soma4 is
    port(
        As,Bs: IN bit_vector(3 downto 0);
        Cin : IN BIT;
        S: OUT  bit_vector(3 downto 0);
        Co : OUT BIT
    );

end soma4;





architecture vira of soma4 is
    
    component somador is
        port(Ci,A,B : IN BIT;
             S,Co : OUT BIT);
        
    end component;

    signal Cout : bit_vector(3 downto 0);
    signal Si : bit_vector(3 downto 0);

    begin
        
        somador0: somador port map(
            Ci => Cin,
            A => As(0),
            B => Bs(0),
            S => Si(0),
            Co => Cout(0));

        somador1: somador port map(
            Ci => Cout(0),
            A => As(1),
            B => Bs(1),
            S => Si(1),
            Co => Cout(1));

        somador2: somador port map(
            Ci => Cout(1),
            A => As(2),
            B => Bs(2),
            S => Si(2),
            Co => Cout(2));

        somador3: somador port map(
            Ci => Cout(2),
            A => As(3),
            B => Bs(3),
            S => Si(3),
            Co => Cout(3));

        S <= Si;
        Co <= Cout(3);
               
        

    end vira;
