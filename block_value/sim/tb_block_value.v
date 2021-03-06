`timescale 1ns/1ns
module tb_block_value();
	reg        sys_clock;
	reg        sys_rst_n;
	reg  [1:0]  in       ;
	wire [1:0] out       ;

initial
	begin
		sys_clock <= 1'b1;
		sys_rst_n <= 1'b0;
		in        <= 2'b0;
		#20;
		sys_rst_n <= 1'b1;
	end

always #10 sys_clock = ~sys_clock   ;
always #20 in       <= {$random} % 4;

block_value block_value_inst
(
	. sys_clock(sys_clock),
	. sys_rst_n(sys_rst_n),
	. in       (in),
	.out       (out)
);
endmodule
