`timescale 1ns/1ps


module Counter_4B_TB();

reg [3:0] D_in, COUNT;
reg LOAD, ASC_DESC;
reg clk_tb, rst;

Counter_4B dub
(
	.D_in(D_in),
	.COUNT(COUNT),
	.LOAD(LOAD),
	.ASC_DESC(ASC_DESC),

	.clk(clk_tb),
	.rst(rst)
);

initial
begin
/*  clk_tb = 1'b0;
  D_in = 4'h0;
  LOAD = 1'b1;
  ASC_DESC = 1'b0;
  rst = 1'b0;
  @(posedge clk_tb);
  LOAD = 1'b0;
  @(posedge clk_tb);
  @(posedge clk_tb);
  LOAD = 1'b1;
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  LOAD = 1'b0;
  @(posedge clk_tb);
  @(posedge clk_tb);
  LOAD = 1'b1;
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  #100
*/

  clk_tb = 1'b0;
  D_in = 4'h7;
  LOAD = 1'b1;
  ASC_DESC = 1'b0;
  rst = 1'b0;
  @(posedge clk_tb);
  LOAD = 1'b0;
  @(posedge clk_tb);
  @(posedge clk_tb);
  LOAD = 1'b1;
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  D_in = 4'hA;
  ASC_DESC = 1'b1;
  LOAD = 1'b0;
  @(posedge clk_tb);
  @(posedge clk_tb);
  LOAD = 1'b1;
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  rst = 1'b1;
  @(posedge clk_tb);
  rst = 1'b0;
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  LOAD = 1'b0;
  @(posedge clk_tb);
  @(posedge clk_tb);
  LOAD = 1'b1;
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  @(posedge clk_tb);
  #100

  $stop;
end

always
  #10 clk_tb = !clk_tb;

endmodule
