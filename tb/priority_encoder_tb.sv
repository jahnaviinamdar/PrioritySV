`timescale 1ns/1ps

module tb_arbiter_rr;

    logic clk;
    logic rst_n;
    logic [3:0] req;
    logic [3:0] grant;

    arbiter_rr uut (
        .clk(clk),
        .rst_n(rst_n),
        .req(req),
        .grant(grant)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst_n = 0;
        req = 4'b0000;
        #12;
        rst_n = 1;
        #10;

        repeat (20) begin
            req = $urandom_range(1, 15);
            #10;
        end

        #20;
        $finish;
    end

endmodule