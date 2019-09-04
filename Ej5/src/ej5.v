module ej5(A,B,Y);
/*El siguiente modulo realiza el producto de la entrada en BCD (La entrada es una sola cifra en bcd)
y expresa la salida como un numero de dos cifras en BCD
*/
input [3:0] A;
input [3:0] B;
output wire [7:0] Y;

reg [7:0] TOTAL;
Binary2BCD mybcd(TOTAL,Y);
always @(A or B) begin //cuando cambie a o b hace el producto lo cual lama a el traductor binario BCD
    if (A<10 && B<10)//COn esta verificación te aseguras que entre
        TOTAL=A*B;
    else 
        $display("Input invalido, el siguiente resultado no tendrá significado.");
end
    
endmodule 