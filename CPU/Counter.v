module Counter(clock, out);

	input wire clock;
	output reg [2:0] out;
	
	always @(posedge clock) begin
		if (out == 3'b111)
			out <= 3'b000;
		else
			out <= (out + 1);
	end
	
endmodule 