module clk(clk_50M,clk,reset_N);
input clk_50M;
input reset_N;
output clk;
reg clk;
reg[24:0] count;

always @(posedge clk_50M or negedge reset_N)
begin
	if(!reset_N)
		begin
			clk <= 0;
			count <= 0;
		end
	else
		begin
			if(count == 25'b1011111010111100001000000)
				begin
					clk <= ~clk;
					count <= 0;
				end
			else
				count <= count + 1;
		end
end

endmodule
