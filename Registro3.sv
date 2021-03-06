module Registro3 #(parameter N=32)( input logic reset,clk,en,
												 input logic d_X[N-1:0],d_Y[N-1:0],d_Exp[7:0],
												 output logic q_X[N-1:0],q_Y[N-1:0],q_Exp[7:0]);


//reset asincronico

always_ff@(posedge clk,posedge reset)												 
		if (reset) begin q_X<=32'b0; q_Y<=32'b0; q_Exp<=8'b0; end 
		else if(en) begin q_X<=d_X; q_Y<=d_Y; q_Exp <=  d_Exp; end
			
												 
endmodule
