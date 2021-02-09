`timescale 1ns/1ns
`include "simple_in_n_out.v"

module simple_in_n_out_tb;

	reg in_1;
	reg in_2;
	reg in_3;

	reg out_1;
	reg out_2;

	simple_in_n_out uut(in_1,in_2,in_3,out_1,out_2);
	initial begin

		$dumpfile("simple_in_n_out_tb.vcd");
		$dumpvars(0,simple_in_n_out);

		in_1 = 0;
		in_2 = 0;
		in_3 = 0;

		#20;

		in_1 = 1;
		in_2 = 0;
		in_3 = 0;

		#20;

		in_1 = 0;
		in_2 = 1;
		in_3 = 0;

		#20;
		
		in_1 = 1;
		in_2 = 1;
		in_3 = 0;
		
		#20;
		
		in_1 = 0;
		in_2 = 0;
		in_3 = 1;


		$display("test complete");

	end


endmodule

