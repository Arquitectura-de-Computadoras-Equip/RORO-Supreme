module ALU(
    input [3:0] ALU_op,
    input [31:0] A,
    input [31:0] B,
    output reg [31:0] result,
    output reg zero
);
    always @*
    begin
        case(ALU_op)
            4'd0:  result = A & B;
            4'd1:  result = A | B;
            4'd2:  result = A + B;
            4'd6:  result = A - B;
            4'd7:  result = ($signed(A) < $signed(B)) ? 32'd1 : 32'd0;
            4'd12: result = ~(A | B);
            default: result = 32'd0;
        endcase
        zero = (result == 32'd0);
    end
endmodule
