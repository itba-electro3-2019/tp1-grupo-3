module test(); //Bench test que prueba todas las combinaciones.
    integer i,j;
    reg [3:0]x1;//deben poder se reescribibles
    reg [3:0]x2;
    wire [7:0]y;
    ej5 myej5(x1,x2,y); //mi ejercicio 5
    initial begin
                $display("Se mostrará el valor de las entradas en decimal, y luego la salida en  bcd");
                $display("x1    x  x2    =  BCD");
        for (i = 0 ;i<10 ;i=i+1 ) begin
            for (j = 0;j<10 ;j=j+1 ) begin
                x1=i;
                x2=j;
                #1$display("%d\t%d\t%b",x1,x2,y);
            end
        end
    end
endmodule