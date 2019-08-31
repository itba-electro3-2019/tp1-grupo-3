
module mux_2_entries(x,s,y);
    input [3:0] x;
    input [1:0] s;
    output reg y;

    always @(x or s) begin
        
        if (s[0] == 0 && s[1]==0)
            y=x[0];
        else if (s[0]==1 && s[1]==0)
            y=x[1];
        else if (s[0]==0 && s[1]==1)
            y=x[2];
        else if (s[0]==1 && s[1]==1)
            y=x[3];

    end
endmodule


module decoder_4_exits(s,y);
    input [1:0] s;
    output reg [3:0] y;     //teniendo en cuenta que mi arreglo de salida va de la A a la D siendo A el bit menos significativo del arreglo

    always @(s[0] or s[1]) begin
        if(s[0]==0 && s[1]==0) begin
            y=4'h1;                         //selecciona la salida A
            end

        else if(s[0]==1 && s[1]==0)begin
            y=4'h2;                         //selecciona la salidad B
            end

        else if(s[0]==0 && s[1]==1)begin
            y=4'h4;                         //selecciona la salida C
            end

        else if(s[0]==1 && s[1]==1)begin
            y=4'h8;                         //selecciona la salida D
            end

    end
endmodule
