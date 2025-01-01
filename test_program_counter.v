`timescale 1ns/1ns
`include "program_counter.v"

module program_counter_test_bench;
   reg clock;
   reg pc_in_addr;
   wire	pc_out_addr;
   
   program_counter PC(clock, pc_in_addr, pc_out_addr);

   //Generate clock at 50 MHz (20ns).
   initial begin
      clock = 0;
      forever #10 clock = ~clock;
   end

   //Run test cases
   initial begin
      //Program starts at address 0.
      pc_in_addr = 32'h00000000;

      //Wait one clock cycle before checking output.
      #20;
      if(pc_out_addr != 32'h00000000) begin
	 $display("Test failed. in = %d, expected = %d", pc_in_addr, pc_out_addr);
	 $finish;
      end

      pc_in_addr = 32'h000000004;
      #20;
      if(pc_out_addr != 32'h00000004) begin
	 $display("Test failed. in = %d, expected = %d", pc_in_addr, pc_out_addr);
	 $finish;
      end
      endmodule // program_counter_test_bench

