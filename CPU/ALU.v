module ALU(operation, A, B, out);

	input wire operation;
	input wire [3:0] A, B;
	output reg [3:0] out;
	
	parameter ADD = 1'b0;
	parameter SUB = 1'b1;
	
	always begin
		case(operation)
			ADD:
				out <= (A + B);
			SUB:
				out <= (A - B);
		endcase
	end
	
endmodule 