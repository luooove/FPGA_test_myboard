module test_new_broad(clk_50M,reset_N,LED);
input clk_50M,reset_N;
wire clk_50M,reset_N;
wire clk;
output[7:0] LED;
reg[7:0] LED;
always @(posedge clk or negedge reset_N)
begin
	if(!reset_N)
		begin
			LED <= 0;
		end
	else
		begin
			LED <= ~LED;
		end
end

//initial
//begin
//	LED <= 0;
//end

clk m1(.clk_50M(clk_50M),.reset_N(reset_N),.clk(clk));

endmodule
