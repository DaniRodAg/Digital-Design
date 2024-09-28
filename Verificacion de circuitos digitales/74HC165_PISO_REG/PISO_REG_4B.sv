module PISO_REG_4B(
  input reg[0:3] D_in,
  input reg LOAD,
  input reg clk, clken,
  output reg[0:3] Q,
);

reg [0:3] D;

always@(posedge clk or posedge clken)
begin
  if (~LOAD)
  begin
    D <= D_in;
  end 
  else if (~clk | ~clken)
  begin
    D <= D >> 1;
  end

end

endmodule