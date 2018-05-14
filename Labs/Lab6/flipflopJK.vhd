entity FFJK is
    port(
         clk,J,K,P,C: in bit;
         q:out bit
        );
end FFJK;

architecture ckt of FFJK is
signal qs:bit;
begin
 process(clk,P,C)
 begin
    if P='0' then qs<='1';
    elsif C='0' then qs<='0';
    elsif clk='1' AND clk'event then
            if j='1' AND k='1' then qs<=not qs;
            elsif j='1' AND k='0' then qs<='1';
            elsif j='0' AND k='1' then qs<='0';
            end if;
    end if;
 end process;
q<=qs;
end ckt;