

module test_mux;



    //reg w0,w1,w2,w3,s0,s1;



    //reg [3:0] in;
    //reg s0,s1;
    //wire out;
    //mux_4_entries_v2 dut_module(in,s0,s1,out);
    
    reg [1:0] in;
    wire a,b,c,d;

    decoder_4_exits dut_module(in,a,b,c,d);
     
    
    
    integer i,j;

    initial begin

        

        in=0;
        for(i=0;i<4;i=i+1) begin
            $display("input in=%d",in);
            #1;
            in=in+1;
        end

        // for (i=0;i<2;i=i+1) begin
        //     for (j=0;j<2;j=j+1) begin
        //         in[i]=j;
        //         $display("input signal in0=%d in1=%d",in[0],in[1]);
        //         #1; 
        //     end
        // end

    end
    /*
        initial begin

            in=4'h6;
            for (i=0;i<2;i=i+1) begin
                for (j=0;j<2;j=j+1) begin
                    s0=i; s1=j;
                $display("s0= %d s1=  %d", s0,s1);
                #1;
                end
            end
        end
    */

       initial begin
        $monitor("a=%b b=%b c=%b d=%b",a,b,c,d);
        //$monitor("input signal in=%b",in);
         end
endmodule
