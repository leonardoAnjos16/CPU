module Controller(clock, Q, Tx, Ty, Tz, Talu);

	input wire clock;
	input wire [2:0] Q;
	output reg [1:0] Tx, Ty, Tz;
	output reg Talu;
	
	parameter CLEAR = 2'b00;
	parameter LOAD = 2'b01;
	parameter HOLD = 2'b10;
	parameter SHIFTL = 2'b11;
	
	parameter ADD = 1'b0;
	parameter SUB = 1'b1;
	
	always @(posedge clock) begin
		case(Q)
			3'b000:
				begin
					Tx <= LOAD;
					Ty <= CLEAR;
					Tz <= CLEAR;
				end
			3'b001:
				begin
					Tx <= LOAD;
					Ty <= LOAD;
					Tz <= HOLD;
					Talu <= ADD;
				end
			3'b010:
				begin
					Tx <= LOAD;
					Ty <= LOAD;
					Tz <= HOLD;
					Talu <= ADD;
				end
			3'b011:
				begin
					Tx <= HOLD;
					Ty <= LOAD;
					Tz <= HOLD;
					Talu <= SUB;
				end
			3'b100:
				begin
					Tx <= HOLD;
					Ty <= SHIFTL;
					Tz <= HOLD;
				end
			3'b101:
				begin
					Tx <= CLEAR;
					Ty <= CLEAR;
					Tz <= LOAD;
				end
		endcase
	end
	
endmodule 