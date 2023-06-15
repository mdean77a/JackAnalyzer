// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// First how to blacken the whole screen
// 32 words per row (32 x 16 = 512 pixels)
// 16 rows (256 pixels)
// Since the memory map is contiguous I do not have to track rows
// and columns.  I just need to fill the whole map, so I only need one
// index from zero to 32*16 = 512

// Initialize the index value
@512
D=A
		@index
		M=D
		(LOOP)
// if index == 0 then goto STOP
		@index
		D=M
		@STOP
		D;JEQ

		@index
		D=M
		@SCREEN
		A=M+D	// starts in lower right corner of screen
		M=-1	// minus 1 for black, 0 for white

// decrement the index
		@index
		M=M-1

		@LOOP
		0;JMP

		(STOP)
		@STOP
		0;JMP