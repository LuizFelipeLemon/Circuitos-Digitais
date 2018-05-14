entity ffd is
    port( clk,D,P,C: in bit;
              q: out bit);
  end ffd;
  
  architecture ckt of ffd is
    signal qS: bit;
    begin
      process(clk,P,C)
        begin
          if P = '0' then qS <= '1';
          elsif C = '0' then qS <= '0';
          elsif clk = '1' and  clk'event then 
            qS <= D;
          end if;
        end process;
        q <= qS;
      end ckt;