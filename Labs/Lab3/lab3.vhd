-- Franscico Bianor
-- Luiz Felipe Santana

entity main is
    port(
        SW: IN bit_vector(7 downto 0);
        bcd: OUT  bit_vector(11 downto 0)
    );

end main;

architecture ex1a of main is
    
    component box is
        port(
            A: IN bit_vector(3 downto 0);
            S: OUT  bit_vector(3 downto 0)
        );
    
    end component;

    signal BX0,BX1,BX2,BX3,BX4,BX5,BX6,BX7 : bit_vector(3 downto 0);

    begin
        
        box0: box port map(
            A(2 downto 0) => SW(7 downto 5),
            A(3) => '0',
            S => BX0);

        box1: box port map(
            A(3 downto 1) => BX0(2 downto 0),
            A(0) => SW(4),
            S => BX1);

        box2: box port map(
            A(3 downto 1) => BX1(2 downto 0),
            A(0) => SW(3),
            S => BX2);

        box3: box port map(
            A(3) => '0',
            A(2) => BX0(3),
            A(1) => BX1(3),
            A(0) => BX2(3),
            S => BX3);

        box4: box port map(
            A(3 downto 1) => BX2(2 downto 0),
            A(0) => SW(2),
            S => BX4);
        
        box5: box port map(
            A(3 downto 1) => BX3(2 downto 0),
            A(0) => BX4(3),
            S => BX5);

        box6: box port map(
            A(3 downto 1) => BX4(2 downto 0),
            A(0) => SW(1),
            S => BX6);


    bcd(11) <= '0';

    bcd(10) <= '0';

    bcd(9) <= BX3(3);

    bcd(8 downto 5) <= BX5;

    bcd(4 downto 1) <= BX6;

    bcd(0) <= SW(0);
    




        
        

    end ex1a;
