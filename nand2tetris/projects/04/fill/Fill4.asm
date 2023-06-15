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

		// Initialize the index value
		@8192
		D=A
		@index
		M=D

		(POLLKEYBOARD)
		@KBD
		D=M
		@BLACKEN
		D;JGT
		@WHITEN
		0;JMP

		(BLACKEN)
		// if index == 0 then goto STOPBLACKENING
		@index
		D=M
		@STOPBLACKENING
		D;JLT
		@SCREEN
		D=A
		@index
		A=M+D	// starts in lower right corner of screen
		M=-1	// minus 1 for black, 0 for white
		// decrement the index
		@index
		M=M-1
		@BLACKEN
		0;JMP
		(STOPBLACKENING) //Entire screen should be black at this point
		@POLLKEYBOARD
		0;JMP
		
		@8192
		D=A
		@index
		M=D
		(WHITEN)
		@index
		D=M
		@STOPWHITEN
		D;JLT
		@SCREEN
		D=A
		@index
		A=M+D	// starts in lower right corner of screen
		M=0	// minus 1 for black, 0 for white
		// decrement the index
		@index
		M=M-1		
		@WHITEN
		0;JMP
		(STOPWHITEN)
		@POLLKEYBOARD
		0;JMP
		
		
		(END)
		@END
		0;JMP