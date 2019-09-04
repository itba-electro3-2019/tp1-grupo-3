

module test_mux;

    // reg [1:0] in;
    // wire [3:0] out;
    // decoder_4_exits dut_module(in,out);

    reg [3:0] in;
    reg [1:0] sel;
    wire out;

    mux_2_entries dut_module(in,sel,out);

    integer i,j;

    initial begin
        in=4'h8;
        sel=0;
        for(i=0;i<4;i=i+1) begin
            $display("selector=%b",sel);
            #1;
            sel=sel+1;
        end


    end


    //prueba del decoder

    // initial begin

    //     in=0;
    //     for(i=0;i<4;i=i+1) begin
    //         $display("input in=%b",in);
    //         #1;
    //         in=in+1;
    //     end

    // end

    initial begin
        $monitor("out= %b",out);
        //$monitor("input signal in=%b",in);
    end

endmodule
