-- Franscico Bianor
-- Luiz Felipe Santana

entity main is
    port(
        Asf,Bsf: IN bit_vector(3 downto 0);
        Cinf : IN BIT;
        Sf: OUT  bit_vector(7 downto 0);
        Cof : OUT BIT
    );

end main;






architecture felipe of main is
    
    component soma4 is
        port(
            As,Bs: IN bit_vector(3 downto 0);
            Cin : IN BIT;
            S: OUT  bit_vector(3 downto 0);
            Co : OUT BIT
        );
    
    end component;

    signal Sf1,Sf2 : bit_vector(3 downto 0);
    signal cor : BIT;
    signal cout1 : BIT;
    signal cout2 : BIT;



    begin

        somaN: soma4 port map(
            As => Asf,
            Bs => Bsf,
            Cin => Cinf,
            S => Sf1,
            Co => cout1
        );

        cor <= (Sf1(1) AND Sf1(3)) OR (Sf1(2) AND Sf1(3)) OR cout1;

        soma6 : soma4 port map(
            As => Sf1,
            Bs(3) => '0' ,
            Bs(2) => cor,
            Bs(1) => cor,
            Bs(0) => '0',
            Cin => '0',
            S => Sf(3 downto 0)
        );

        Sf(7 downto 5)<="000";
        Sf(4)<=cor;

end felipe;