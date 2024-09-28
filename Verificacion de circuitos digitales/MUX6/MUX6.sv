

module MUX6(
 input wire [7:0] E1,E2,E3,E4,E5,E6,
 input wire [2:0] sel,
 output reg [7:0] salida
);



always@(*) 
begin
  case(sel)
    4'b000: salida = E1;
    4'b001: salida = E2;
    4'b010: salida = E3;
    4'b011: salida = E4;
    4'b100: salida = E5;
    4'b101: salida = E6;
    default: salida = 8'h00;
  endcase
end








endmodule