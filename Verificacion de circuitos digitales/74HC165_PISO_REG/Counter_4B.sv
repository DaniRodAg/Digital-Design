module Couner_4B(
  input reg[0:3] D_in,
  input reg LOAD, ASC_DESC,
  input reg clk, rst,
  output reg[0:3] COUNT,
);

reg [0:3] D;

always@(posedge clk)
begin
  if (~LOAD)
  begin
    D <= D_in;
  end 
  else
  begin
    if(ASC_DESC)
    begin
      
    end

  end

end

endmodule