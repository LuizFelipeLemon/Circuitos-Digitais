-- Franscico Bianor
-- Luiz Felipe Santana

entity ex2 is
    port(
        SW: IN bit_vector(3 downto 0);
        HEX0: OUT  bit_vector(6 downto 0)
    );

end ex2;

architecture ex1a of ex2 is
    

    
    begin
        
        HEX0(0) <= (((not SW(1)) and (not SW(0)))         or         ((SW(2)) AND (not SW(1)) )         or         (((SW(3))) AND (not SW(2))AND (SW(0)))         or         ((SW(3)) AND (SW(2)) AND (not SW(0)))          or         ((not (SW(3))) AND (SW(1)) AND (SW(0)))         or         ((SW(1)) AND ( not SW(3)) AND (not SW(2))));

        HEX0(1) <= (((SW(0)) AND (not SW(1)))         or         ((SW(3)) AND (not SW(0)))         or         ((SW(0)) AND (not SW(2)) AND (not SW(3)))         or         ((SW(2)) AND (SW(1)) AND (not SW(0))));
        
        HEX0(2) <= (((SW(3)))         or         ((not (SW(2))) AND (not SW(1)))         or         ( (not SW(2)) AND (SW(0)))         or         ((SW(2)) AND (SW(1)) AND (not SW(0))));

        HEX0(4)<= ((not SW(3)) and (SW(0)))    or     ((SW(1)) and( SW(0)))     or     ((not SW(3)) and (not SW(2)) and (SW(1)))     or     ((not SW(1)) and (not SW(3))and  (SW(2)))     or     ((not SW(0)) and (not SW(1)) and  (SW(3)));
        
        HEX0(3) <= ((not SW(3)) and (not SW(2)) and (not SW(1)))     or     ((not SW(2)) and (not SW(3)) and ( not SW(0)))     or     ((not SW(1)) and (not SW(2)) and (not SW(0))) or (( SW(0)) and (SW(2)) and (not SW(3)))     or     (( SW(0)) and ( SW(1)) and (SW(3)))     or     ((SW(3)) and (SW(2)) and (not SW(0)));

        HEX0(5) <= ((not SW(0)) AND (not SW(2)))         or         ((not SW(1)) AND (not SW(0)))         or         ((SW(3)) AND (SW(2)) AND (not SW(1)))         or         ((SW(1)) AND (SW(0)));

        HEX0(6) <= ((not SW(3)) AND (not SW(2)))         or         ((not SW(1)) AND (not SW(3)))         or         ((not SW(2)) AND (not SW(0)))         or         ((SW(3)) AND (SW(1)) )         or         ((not SW(1)) AND (SW(2)) AND (SW(0)));


    end ex1a;
