module ADQ_SYS(
  input wire clk, rst, eoc, init, fac,
  output reg [5:0] present_state
);

reg [5:0] next_state;

// Definir estados con localparam
localparam [5:0]  s0 = 6'h00,
                  s1 = 6'h09,
                  s2 = 6'h0C,
                  s3 = 6'h08,
                  s4 = 6'h18,
                  s5 = 6'h0e,
                  s6 = 6'h20;

always @(posedge clk or posedge rst or posedge init) 
begin
  if (rst) 
  begin
    present_state <= s0;
  end 
  else if (init) 
  begin
    present_state <= s1;
  end 
  else 
  begin
    present_state <= next_state;
  end
end

always @(*)
begin
  case (present_state)
    s0:  next_state <= s1;
    s1:  next_state <= s2;
    s2:  next_state <= s3;
    s3:  if(eoc==1'b1) 
           next_state <= s4;
         else 
           next_state <= s3;
    s4:  next_state <= s5;
    s5:  if(fac==1'b1) next_state <= s6;
         else next_state <= s2;
    s6:  next_state <= s6;
    default: next_state <= s0; // Default state
  endcase
end


endmodule
