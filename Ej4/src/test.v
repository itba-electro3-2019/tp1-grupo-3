module test();
    reg [3:0]x;        // Entrada; Como tiene que ser un L-value debe ser un registro. 
    wire [3:0]y;     //Salida
    integer i;
    Ej4 testing(x, y);//modulo a probar
    initial begin
    $display("Entrada\tSalida");
    $display("Binario\tGray");
        for(i = 0; i < 16; i = i + 1) begin
            x=i;//actualizo x
            #1$display("%b\t%b", x,y);//Como corre en paralelo tengo que esperar a que surjan efectos de la anterior linea.
        end 
    end
endmodule