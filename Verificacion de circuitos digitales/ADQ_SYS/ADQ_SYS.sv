module ADQ_SYS(
  input wire clk, rst, eoc, init, fac,
  output reg [6:0] present_state
);

reg [6:0] next_state;

// Definir estados con localparam
localparam [6:0]  s0 = 7'h00,
                  s1 = 7'h02,
                  s2 = 7'h08,
                  s3 = 7'h01,
                  s4 = 7'h30,
                  s5 = 7'h04,
                  s6 = 7'h40;

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
    s5:  if(fac==1'b1) 
            next_state <= s6;
         else next_state <= s2;
    s6:  next_state <= s6;
    default: next_state <= s0; // Default state
  endcase
end


endmodule
