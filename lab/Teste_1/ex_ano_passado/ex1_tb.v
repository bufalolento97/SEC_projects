`timescale 1ns / 1ps

module ex1_tb;

   reg  [3:0] a;
   //reg  [3:0] b;
   reg 	      clk;

   wire [11:0] c;
   

   test_ex1 zica(
		    .a(a),
		    .clk(clk),
		    .c(c)
		    
		    );

   initial begin

      $dumpfile("top.vcd");
      $dumpvars();


	// Initialize Inputs
	clk = 1;
	a = 4'b0100;
	//b = 0;

	#10
	a = 4'b1000;
	//b = 4'b0001;
	#120

      $finish;
      
    end 
// initial begin
   always #10 clk = ~clk;
endmodule

