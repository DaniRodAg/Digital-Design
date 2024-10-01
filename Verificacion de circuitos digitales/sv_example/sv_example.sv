`timescale 1ns/1ps

module HelloWorld();

bit[7:0] variable1;
initial
  begin
  	$display("Hello World %h --> %t",variable1,$realtime());
  	#150;
  	$stop;
  end

endmodule
