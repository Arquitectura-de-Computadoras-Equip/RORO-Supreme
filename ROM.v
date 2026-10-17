module ROM #(parameter FILENAME = "Datos.txt") (
	input [3:0]DirL,
	output [31:0]Data
);

 reg [31:0] srom[0:8];

assign Data = srom[DirL];

initial
begin
	$readmemb(FILENAME, srom);
end

endmodule
