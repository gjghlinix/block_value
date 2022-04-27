module block_value
(
	input wire        sys_clock,
	input wire        sys_rst_n,
	input wire [1:0]  in,
	
	output reg [1:0]  out
);
reg [1:0] in_reg;

always@(posedge sys_clock or negedge sys_rst_n)
	if(sys_rst_n == 1'b0)	
		begin
			in_reg = 2'b0;
			out    = 2'b0;
		end
	else
		begin
			in_reg = in;
			out    = in_reg;
		end
		
endmodule
