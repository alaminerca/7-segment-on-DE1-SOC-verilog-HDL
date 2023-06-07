

module seven_seg (
    input [3:0] SW, // 4-bit input from switches
    	 
    output reg [6:0] HEX0 // 7-bit output to 7-segment display
);

always @ (*) // triggered by rising edge of KEY[0]
begin
    case (SW) // select value based on SW
        4'h0: HEX0 <= 7'b1000000; // display 0
        4'h1: HEX0 <= 7'b1111001; // display 1
        4'h2: HEX0 <= 7'b0100100; // display 2
        4'h3: HEX0 <= 7'b0110000; // display 3
        4'h4: HEX0 <= 7'b0011001; // display 4
        4'h5: HEX0 <= 7'b0010010; // display 5
        4'h6: HEX0 <= 7'b0000010; // display 6
        4'h7: HEX0 <= 7'b1111000; // display 7
        4'h8: HEX0 <= 7'b0000000; // display 8
        4'h9: HEX0 <= 7'b0010000; // display 9
        default: HEX0 <= 7'b1111111; // turn off all segments if SW is not a valid number
    endcase
end

endmodule



