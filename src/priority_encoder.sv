module arbiter_rr (
    input  logic        clk,
    input  logic        rst_n,
    input  logic [3:0]  req,
    output logic [3:0]  grant
);

    logic [1:0] pointer;
    logic [3:0] grant_next;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            pointer <= 2'b00;
        else if (|req && !(grant == req))
            pointer <= pointer + 2'd1;
    end

    always_comb begin
        grant_next = 4'b0000;
        case (pointer)
            2'd0: grant_next = (req[0]) ? 4'b0001 :
                                (req[1]) ? 4'b0010 :
                                (req[2]) ? 4'b0100 :
                                (req[3]) ? 4'b1000 : 4'b0000;
            2'd1: grant_next = (req[1]) ? 4'b0010 :
                                (req[2]) ? 4'b0100 :
                                (req[3]) ? 4'b1000 :
                                (req[0]) ? 4'b0001 : 4'b0000;
            2'd2: grant_next = (req[2]) ? 4'b0100 :
                                (req[3]) ? 4'b1000 :
                                (req[0]) ? 4'b0001 :
                                (req[1]) ? 4'b0010 : 4'b0000;
            2'd3: grant_next = (req[3]) ? 4'b1000 :
                                (req[0]) ? 4'b0001 :
                                (req[1]) ? 4'b0010 :
                                (req[2]) ? 4'b0100 : 4'b0000;
        endcase
    end

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            grant <= 4'b0000;
        else
            grant <= grant_next;
    end

endmodule