module CPU(clock, valueX, valueY, valueZ, outALU, Tx, Ty, Tz, Talu, counter, valueMemory);

	input wire clock;
	output wire [3:0] valueX, valueY, valueZ, outALU, valueMemory;
	output wire [2:0] counter;
	output wire [1:0] Tx, Ty, Tz;
	output wire Talu;
	
	Counter(clock, counter);
	Memory(clock, counter, valueMemory);
	Controller controller(clock, counter, Tx, Ty, Tz, Talu);
	
	Register regX(clock, Tx, valueMemory, valueX);
	Register regY(clock, Ty, outALU, valueY);
	Register regZ(clock, Tz, valueY, valueZ);
	ALU alu(Talu, valueY, valueX, outALU);
	
endmodule 