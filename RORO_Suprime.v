module RORO_Suprime(
    input [3:0] posicion,
    output [11:0] instruccion
);
    reg [11:0] srom [0:15];
    assign instruccion = srom[posicion];
    initial
    begin
        $readmemb("Instrucciones.txt", srom);
    end
endmodule
