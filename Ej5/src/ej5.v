module ej5();
/*
Cosas que hay que hacer:
-Implementar un modulo para shiftear.
-Implementar un modulo para aislar una parte de un array
*/
reg [3:0] A;
reg [3:0] B;
reg [7:0] TOT;
wire [7:0] Y;
integer i=5;

always @(*) 
    begin
    TOT=0;
    A=6;
    B=5;
        for (i = 0;i < B ;i=i+1 ) begin
            TOT=TOT+A;
            $display("hola %d",TOT);
        end
    end

endmodule 

module Binary2BCD(in,out);//La idea del algoritmo es la siguiente:
/*Vos creas un byte para la salida en un pincipio nulo, y el numero en binario appendeado
Luego shifteas a la izquierda y si alguno de los dos nibbles son >=5 sumas 3.*/
input [7:0] in; 
reg [3:0] tempDec;
reg [3:0] tempUnit;
reg [15:0] fullExp;

integer j;
always @(*) begin
fullExp={tempDec,tempUnit,in}
    for (j =0 ;j<8 ;j=j+1 ) begin
        if ((fullExp[0]*8+fullExp[1]*4+fullExp[2]*2+fullExp[1])>4) begin//hay que fijarse si los bits de tempDec o tempUnit>=5 si lo son se le suma 3 
            //Seria mas lindo implementado de otra manera, tipo asilando lo que quiero ver            
        end
        if () begin//Segundo caso
            
        end
        //Luego hay que shiftear a la izquierda con alguna funcion.
    end     
end


endmodule