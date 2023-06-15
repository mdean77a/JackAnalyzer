// This is the Sum1ToN.asm program from the text book
// I am typing it in to get practice with the CPU Emulator
// and the syntax of the assembly language.
//
// i = 1
		@i
		M = 1
		
// sum = 0
		@sum
		M = 0
		
// if i > R0 then goto STOP
	(LOOP)	
		@i
		D = M
		@R0
		D = D - M
		@STOP
		D;JGT
		
// sum = sum + 1
		@sum
		D=M
		@i
		D=D+M
		@sum
		M=D

// i = i + 1
		@i
		M = M + 1
		
		
// goto LOOP
		@LOOP
		0;JMP
		
	(STOP)
//		R1 = sum
		@sum
		D=M
		@R1
		M=D

	(END)	
		@END
		0;JMP