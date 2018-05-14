entity ex1 is
    port(
        A,B,C,D: IN BIT;
        s1,s2, s1_2,s2_2, s1_3,s2_3,s1_4,s2_4: OUT BIT
    );

end ex1;

architecture ex1a of ex1 is
    begin
        s1 <= ((A OR B) XOR (A AND (B XNOR C)));
        s2 <= ((A AND (B XNOR C)) OR ((B XNOR C) OR D));

        s1_2 <= (A XOR B) AND (A AND (B XNOR C));
        s2_2 <= (A AND (B XNOR C)) OR ((B XNOR C) XOR D);

        s1_3 <= (D OR C) XNOR (D AND (C AND B));
        s2_3 <= (D AND (C AND B)) OR (A OR (C AND B));

        s1_4 <= (D XOR C) XNOR (D OR (C OR B));
        s2_4 <= (D OR (C OR B)) OR ((C OR B) XOR A);


    end ex1a;