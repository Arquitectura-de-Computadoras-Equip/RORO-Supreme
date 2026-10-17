module RORO(
    input [3:0] posicionOp,
    output [31:0] resultado,
    output ZF
);
    wire [11:0] instruccionOp;
    wire [31:0] c1, c2;

    RORO_Suprime RORO_SuPrima(
        .posicion(posicionOp),
        .instruccion(instruccionOp)
    );

    ROM #(.FILENAME("Datos_ROma.txt")) Roma (
    	.DirL(instruccionOp[7:4]),
    	.Data(c1)
    );

    ROM #(.FILENAME("Datos_ROmina.txt")) Romina (
    	.DirL(instruccionOp[3:0]),
    	.Data(c2)
    );

    ALU Pablo(
        .ALU_op(instruccionOp[11:8]),
        .A(c1),
        .B(c2),
        .result(resultado),
        .zero(ZF)
    );
endmodule
