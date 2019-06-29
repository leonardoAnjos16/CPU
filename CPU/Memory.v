module Memory(clock, counter, value);

	input wire clock;
	input wire [2:0] counter;
	output reg [3:0] value;
	
	parameter A = 4;
	parameter C = 2;
	parameter D = 3;
	
	always @(posedge clock) begin
		case(counter)
			3'b000:
				value <= A;
			3'b001:
				value <= C;
			3'b010:
				value <= D;
		endcase
	end
	
endmodule 