module shiftLeft(big,outBig);
input [15:0] big;
output reg [15:0]outBig;
reg [15:0]temp;
integer g;
always @(*)begin
temp[0] = big[15];
    for (g = 1;g<16 ;g=g+1 ) begin
        temp[g]= big[g-1];
    end
    #1 outBig=temp;
end
endmodule // 
