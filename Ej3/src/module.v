module mux_2_entries (x1, x2, s, y);
    input x1,x2,s;
    output y;

    assign f=(( ~s & x1 ) | (s & x2));
endmodule   

module mux_4_entries_v2(x,s0,s1,y);
    input [3:0] x;
    input s0,s1;
    output reg y;

    always @(x or s0 or s1) begin
        
        if (s0 == 0 && s1==0)
            y=x[0];
        else if (s0==1 && s1==0)
            y=x[1];
        else if (s0==0 && s1==1)
            y=x[2];
        else if (s0==1 && s1==1)
            y=x[3];

    end
endmodule

module decoder_4_exits(s,a,b,c,d);
    input [1:0] s;
    output reg a,b,c,d;

    always @(s[0] or s[1]) begin
        if((s[0]==0 && s[1]==0)) begin
            a=1;b=0;c=0;d=0;
            end

        else if((s[0]==0 && s[1]==1))begin
            a=0;b=1;c=0;d=0;
            end

        else if((s[0]==1 && s[1]==0))begin
            a=0;b=0;c=1;d=0;
            end

        else if((s[0]==1 && s[1]==1))begin
            a=0;b=0;c=0;d=1;
            end

    end
endmodule
