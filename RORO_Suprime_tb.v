`timescale 1ns/1ns
module RORO_Suprime_tb();

reg[3:0] posicion_tb;
wire[11:0] instruccion_tb;

RORO_Suprime DUV(
	.posicion(posicion_tb),
	.instruccion(instruccion_tb)
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
