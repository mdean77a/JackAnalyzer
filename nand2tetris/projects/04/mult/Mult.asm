// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Pseudocode attempt
//	Set R2 to zero
//	Set temporary variable called index to the value in R1
//  Start a LOOP
//		Check to see if the index has been decremented to zero
//			If it has, then jump to END
//		Get R0 and store it in D register
//		Get R2 and add the D register to it
//		Decrement index by 1
//		Jump to beginning of the LOOP

	@R2
	M=0		// initialize R2 to zero

	@R1		// first operand of multiplication
	D=M
	@index
	M=D		// initialize the counter with the first operand

	(LOOP)	// start of the multiplication loop
	@index
	D=M
	@END
	D;JEQ
	@R0		// get the second operand
	D=M
	@R2
	M=M+D	// added R0 to the accumulator at R2

	@index
	M=M-1	// decrement the index

	@LOOP
	0;JMP	// continue the loop


	(END)
	@END
	D;JEQ

