// Return assembly code
// setup code for SP  - do not include this in codewriter
@256
D=A
@SP
M=D
// set up a value on the stack to pop in my test code
@999
D=A
@SP
A=M
M=D
@SP
M=M+1
// set up LCL
@300
D=A
@LCL
M=D
// set up ARG
@400
D=A
@ARG
M=D
// set up THIS
@500
D=A
@THIS
M=D
// set up THAT
@510
D=A
@THAT
M=D


//==========================================
// create variable endFrame
@LCL
D=M
@endFrame
M=D

// calculate the return address
@retAddr
M=D			// currently endFrame
@5
D=A
@retAddr
M=M-D		// retAddr pointer!


// pop the stack and assign to ARG[M]
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D

// reset SP to ARG + 1
@ARG
D=M
D=D+1
@SP
M=D

// now restore the old pointers
@endFrame
D=M
@R13
M=D-1
@R13
A=M
D=M
@THAT
M=D
@R13
M=M-1
@R13
A=M
D=M
@THIS
M=D
@R13
M=M-1
@R13
A=M
D=M
@ARG
M=D
@R13
M=M-1
@R13
A=M
D=M
@LCL
M=D


// now return to the return address
@retAddr
0;JMP

