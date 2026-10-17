module ROmina (
    input [3:0] DirL,
    output [31:0] Data
);
    reg [31:0] srom [0:15];
    assign Data = srom[DirL];
    initial
    begin
        $readmemb("Datos_ROmina.txt", srom);
    end
endmodule
