module test_sim1(

    );
    
    reg a, b; wire c;
    
    testv2 dut(.a(a), .b(b), .c(c));

    initial
    begin
    
        a = 0; b = 0; #5;
        a = 0; b = 1; #5;
        a = 1; b = 0; #5;
        a = 1; b = 1; #5;

    end
endmodule