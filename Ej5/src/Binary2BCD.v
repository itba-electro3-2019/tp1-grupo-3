
module Binary2BCD(in,out);//La idea del algoritmo es la siguiente:
/*Vos creas un byte para la salida en un pincipio nulo, y el numero en binario appendeado
Luego shifteas a la izquierda y si alguno de los dos nibbles son >=5 sumas 3.*/
input [7:0] in; 
output reg [7:0]out;
reg [3:0] arrDec;//Estos dos son los que rellenan el array Full Expression.
reg [3:0] arrUnit;
reg [15:0] fullExp;//aqui van a el  numero en bcd y el binario al final.
reg [3:0]tempDe;//variables temporales para copiar y sumar a mi array.
reg [7:0]tempUn;
reg tempShift;
integer j,n;//contadores
always @(in) begin
    arrDec=0;
    arrUnit=0;
    fullExp={arrDec,arrUnit,in};
    for (j =0 ;j<8 ;j=j+1 ) begin
        if ((fullExp[15]*8+fullExp[14]*4+fullExp[13]*2+fullExp[12])>4) begin
            for (n = 0;n<4 ;n=n+1 ) begin//si es mayor a 5 la suma del primer nibble se le suma 3
                tempDe[n]=fullExp[12+n];//serian las unidades
            end
            tempDe=arrDec+3;
            for (n = 0;n<4 ;n=n+1 ) begin
                fullExp[12+n]=tempDe[n];
            end
        end
        if ((fullExp[11]*8+fullExp[10]*4+fullExp[9]*2+fullExp[8])>4) 
        begin//lo mismo para el segundo. (decenas)
            for (n = 0;n<8 ;n=n+1 ) begin
                tempUn[n]=fullExp[8+n];
            end
            tempUn=tempUn+3;
            for (n = 0;n<8 ;n=n+1 ) begin
                fullExp[8+n]=tempUn[n];                
            end
        end
        tempShift=fullExp[15];
        fullExp = fullExp<<1;//Shifteo toda la expresion a la izquierda procurando guardar el ultimo bit.
        fullExp[0]=tempShift;

    end
    for (n = 0;n<8 ;n=n+1 ) begin
        out[7-n]=fullExp[15-n];        
    end    
end
endmodule
