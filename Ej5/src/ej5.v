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
    TOTAL=A*B;
end
    
endmodule 

// module ej5();//Para debugear el modulo individualmente.
// reg [3:0] A;
// reg [3:0] B;
// wire [7:0] Y;
// reg [7:0] TOTAL;
// Binary2BCD mybcd(TOTAL,Y);
// initial begin
    // A=9;
    // B=9;
    // TOTAL=A*B;
    // #1$display("A=%b B=%b TOTAL= %b Y= %b",A,B,TOTAL,Y);//DEBUG
// end
// endmodule 