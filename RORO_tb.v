`timescale 1ns/1ns
module RORO_Tb();

reg[3:0] posicion_tb;
wire[31:0] resultado_tb;
wire ZF_tb;

RORO DUV(
	.posicionOp(posicion_tb),
	.resultado(resultado_tb),
	.ZF(ZF_tb)
);

initial
begin
	posicion_tb = 4'b0000;
	#100;

	posicion_tb = 4'b0001;
	#100;

	posicion_tb = 4'b0010;
	#100;

	posicion_tb = 4'b0011;
	#100;

	posicion_tb = 4'b0100;
	#100;

	posicion_tb = 4'b0101;
	#100;

	posicion_tb = 4'b0110;
	#100;

	posicion_tb = 4'b0111;
	#100;

	posicion_tb = 4'b1000;
	#100;

	posicion_tb = 4'b1001;
	#100;

	posicion_tb = 4'b1010;
	#100;

	posicion_tb = 4'b1011;
	#100;

	posicion_tb = 4'b1100;
	#100;

	posicion_tb = 4'b1101;
	#100;

	posicion_tb = 4'b1110;
	#100;

	posicion_tb = 4'b1111;
	#100;

	$stop;
end

endmodule
