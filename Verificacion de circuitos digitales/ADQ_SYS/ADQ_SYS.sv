module ADQ_SYS(
  input wire clk, rst, eoc, init, add_count_f
  output wire ACK, SC, CS, W, CC, RC
  output reg [3:0] 
);

reg [3:0] D;
reg [3:0] next_state, present_state;

assign COUNT = present_state;

// Definir estados con localparam
localparam [3:0]  s0 = 4'h0,
                  s1 = 4'h1,
                  s2 = 4'h2,
                  s3 = 4'h3,
                  s4 = 4'h4,
                  s5 = 4'h5,
                  s6 = 4'h6,
                  s7 = 4'h7,
                  s8 = 4'h8,
                  s9 = 4'h9,
                  s10 = 4'hA,
                  s11 = 4'hB,
                  s12 = 4'hC,
                  s13 = 4'hD,
                  s14 = 4'hE,
                  s15 = 4'hF;

always @(posedge clk or posedge rst) 
begin
  if (rst) 
  begin
    present_state <= 'h0;
  end 
  else if (~LOAD) 
  begin
    D <= D_in;
    present_state <=D;
  end 
  else 
  begin
    present_state <= next_state;
  end
end

always @(*)
begin
  // Asc
  if (ASC_DESC) 
  begin
    case (present_state)
      s0:  next_state <= s1;
      s1:  next_state <= s2;
      s2:  next_state <= s3;
      s3:  next_state <= s4;
      s4:  next_state <= s5;
      s5:  next_state <= s6;
      s6:  next_state <= s7;
      s7:  next_state <= s8;
      s8:  next_state <= s9;
      s9:  next_state <= s10;
      s10: next_state <= s11;
      s11: next_state <= s12;
      s12: next_state <= s13;
      s13: next_state <= s14;
      s14: next_state <= s15;
      s15: next_state <= D;
      default: next_state <= D; // Default state
    endcase
  end 
  else // Desc
  begin
    case (present_state)
      s0:  next_state <= D;
      s1:  next_state <= s0;
      s2:  next_state <= s1;
      s3:  next_state <= s2;
      s4:  next_state <= s3;
      s5:  next_state <= s4;
      s6:  next_state <= s5;
      s7:  next_state <= s6;
      s8:  next_state <= s7;
      s9:  next_state <= s8;
      s10: next_state <= s9;
      s11: next_state <= s10;
      s12: next_state <= s11;
      s13: next_state <= s12;
      s14: next_state <= s13;
      s15: next_state <= s14;
      default: next_state <= D;
    endcase
  end
end


endmodule
