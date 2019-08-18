module Ej4(x,y);//x[3]=x_4 bit mas significativo.
    input [3:0]x;
    output reg [3:0]y; //Tiene que ser un L-value
    /*
    ~   negation
    &   and
    |   or
    */
    always @(*)begin
        y[3] = x[3];
        y[2] = ((x[3])&(~x[2]))|((~x[3])&x[2]);  //x[3] ^ x[2];
        y[1] = (x[2]&(~x[1]))|((~x[2])&x[1]);//x[2] ^ x[1];
        y[0] = (x[0]&(~x[1]))|((~x[0])&x[1]);//x[0] ^ x[1];
    end
endmodule