// Array processing example from book
// Trying to understand so I can do the fill assignment
//
// PointerDemo.asm
// Start at base address R0, and set the first R1 words to -1

// n = 0
@n
M=0
(LOOP)
// if n == R1 then goto END
@n
D=M
@R1
D=D-M
@END
D;JEQ

// Now we want to use R0 + n as address pointer
@R0
D=M	// now base address is in D
@n
A = D+M
M = -1

// now increment the n value
@n
M=M+1

@LOOP
0;JMP

(END)
@END
0;JMP


