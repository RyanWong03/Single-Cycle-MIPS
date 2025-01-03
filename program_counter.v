`timescale 1ns/1ns

module program_counter(clock, pc_in_addr, pc_out_addr);
   input clock;
   input [31:0] pc_in_addr;
   output reg [31:0] pc_out_addr;

   always @(posedge clock) begin
      pc_out_addr <= pc_in_addr;
   end
   
endmodule // program_counter

