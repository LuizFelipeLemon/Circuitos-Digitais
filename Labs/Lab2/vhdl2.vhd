entity lab2 is 
port( CIN : IN  bit_vector (3 downto 0);
      COUT : OUT bit_vector (6 downto 0));
end lab2;

architecture circuit of lab2 is 
begin 

COUT(0) <= (((not CIN(1)) and (not CIN(0)))         or         ((CIN(2)) AND (not CIN(1)) )         or         (((CIN(3))) AND (not CIN(2))AND (CIN(0)))         or         ((CIN(3)) AND (CIN(2)) AND (not CIN(0)))          or         ((not (CIN(3))) AND (CIN(1)) AND (CIN(0)))         or         ((CIN(1)) AND ( not CIN(3)) AND (not CIN(2))));

COUT(1) <= (((CIN(0))and(not CIN(1)))or((CIN(3)) and (not CIN(0)))or((CIN(0)) and (not CIN(2))and (not CIN(3)))or((CIN(2)) and (CIN(1)) and (not CIN(0))));
        
COUT(2) <= (((CIN(3)))or((not (CIN(2))) and (not CIN(1)))or( (not CIN(2)) and (CIN(0)))or((CIN(2)) and (CIN(1)) AND (not CIN(0))));

COUT(4)<= ((not CIN(3))and(CIN(0)))or((CIN(1))and( CIN(0)))or((not CIN(3)) and (not CIN(2)) and (CIN(1)))or((not CIN(1)) and (not CIN(3))and  (CIN(2)))or((not CIN(0)) and (not CIN(1)) and  (CIN(3)));
        
COUT(3) <= ((not CIN(3))and(not CIN(2))and(not CIN(1)))or((not CIN(2))and(not CIN(3))and( not CIN(0)))or((not CIN(1))and(not CIN(2))and(not CIN(0)))or(( CIN(0))and(CIN(2))and(not CIN(3)))or(( CIN(0))and( CIN(1))and(CIN(3)))or((CIN(3))and(CIN(2))and(not CIN(0)));

COUT(5) <= ((not CIN(0))and(not CIN(2)))or((not CIN(1))and(not CIN(0)))or((CIN(3))and(CIN(2))and(not CIN(1)))or((CIN(1))and(CIN(0)));

COUT(6) <= ((not CIN(3))and(not CIN(2)))or((not CIN(1))and(not CIN(3)))or((not CIN(2))and(not CIN(0)))or((CIN(3))and(CIN(1)))or((not CIN(1))and(CIN(2))and(CIN(0)));


end circuit ;