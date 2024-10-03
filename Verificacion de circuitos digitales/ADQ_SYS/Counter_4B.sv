module Counter_8B(
  input wire clk, rst,
  output reg [7:0] COUNT,
  output reg fac
);

always @(posedge clk or posedge rst) 
begin
  if (rst) 
  begin
    COUNT <= 'h0;
    fac = 'b0;
  end 
  else 
  begin
    if(COUNT=='hFF) 
    begin
      COUNT <= 'h0;
      fac = 'b1;
    end
    else COUNT = COUNT+1;
  end
end


endmodule
