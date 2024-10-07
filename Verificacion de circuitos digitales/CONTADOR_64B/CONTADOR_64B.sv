/*module CONTADOR_64B(
	output reg[63:0] cuenta
	);


contador tb
(
	.cuenta(cuenta)
);



endmodule : CONTADOR_64B
*/

program automatic contador();
	bit[63:0] cuenta;
	initial
	begin
		while(cuenta<255)
		begin
			$display("cuenta : %d",cuenta);
 			if(cuenta<2^65-1)begin
 				cuenta++;
 			end
 			else begin
 				cuenta = 0;
 			end
 			#40;
 		end
	end 


endprogram : contador





