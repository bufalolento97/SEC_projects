`timescale 1ns / 1ps

//compute p**q, where q=4


module top ( //top level module
	input [1:0]  a,
	input [1:0]  b,
	output [3:0] s
);

   wire        aux_a0_b0;
   wire        aux_a1_b0;
   wire        aux_a0_b1;
   wire        aux_a1_b1;
   wire        aux_cout1;
   wire        aux;
   
   assign aux = 1'b0;
   
   assign aux_a0_b0 = a[0] & b[0];
   assign aux_a1_b0 = a[1] & b[0];
   assign aux_a0_b1 = a[0] & b[1];
   assign aux_a1_b1 = a[1] & b[1];

   assign s[0] = aux_a0_b0;
   
   full_adder fa0 (
		   .a(aux_a1_b0),
		   .b(aux_a0_b1),
		   .c(aux),
		   .s(s[1]),
		   .cout(aux_cout1));
   
   full_adder fa1 (
		   .a(aux_a1_b1),
		   .b(aux_cout1),
		   .c(aux),
		   .s(s[2]),
		   .cout(s[3]));
     
   
   
   
    
endmodule
