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
// index from zero to 32*16*16 = 8192

// Then we need to put this in a loop that polls the keyboard
// Initialize the status of the screen - starts out white
		@screenstatus
		M=0
		(LOOPKEYBOARD)
		@screenstatus
		M=!M
		
// Initialize the index value
		@8192
		D=A
		@index
		M=D

		(LOOP)
// if index == 0 then goto STOP
		@index
		D=M
		@STOP
		D;JLT

		@SCREEN
		D=A
		@index
		
		A=M+D	// starts in lower right corner of screen
		M=-1	// minus 1 for black, 0 for white

// decrement the index
		@index
		M=M-1

		@LOOP
		0;JMP
		


		(STOP)

		@KBD
		D=M
		@LOOPKEYBOARD
		0;JMP
		
		(END)
		@END
		0;JMP