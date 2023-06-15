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
// Since the memory map is contiguous I do not have to track rows
// and columns.  I just need to fill the whole map, so I only need one
// index from SCREEN to SCREEN + 8192 and set the register to -1.

		
							// Poll the keyboard
		(POLLKEYBOARD)
		@KBD
		D=M
		@WHITEN
		D;JEQ				// If KBD was zero then go to whiten
		@BLACKEN
		0;JMP				// Else go to blacken
		
		(WHITEN)
		// Initialize the index value to 8192
		@8192
		D=A
		@index
		M=D
		(WHITENLOOP)
		@index
		D=M
		@FINISHEDWHITEN
		D;JLT				// index down to zero
		@SCREEN
		D=A
		@index
		A=M+D
		M=0					// white pixel
		@index
		M=M-1				//decrement index
		@WHITENLOOP
		0;JMP				// continue whiten loop
		(FINISHEDWHITEN)
		@POLLKEYBOARD
		0;JMP
		
		(BLACKEN)
		// Initialize the index value to 8192
		@8192
		D=A
		@index
		M=D
		(BLACKENLOOP)
		@index
		D=M
		@FINISHEDBLACKEN
		D;JLT				// index down to zero
		@SCREEN
		D=A
		@index
		A=M+D
		M=-1				// black pixel
		@index
		M=M-1				//decrement index		
		@BLACKENLOOP
		0;JMP				// continue blacken loop
		(FINISHEDBLACKEN)
		@POLLKEYBOARD
		0;JMP
		
		(END)
		@END
		0;JMP