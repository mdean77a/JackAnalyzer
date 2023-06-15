// call assembly code
// setup code not to go into codewriter
// set up SP
@256
D=A
@SP
M=D
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
// ====================== CODE ABOVE IS SETUP CODE NOT TO BE INCLUDED IN CODEWRITER ===============


@RETURNADDRESS
D=A
@SP
A=M
M=D
@SP
M=M+1

// push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

// push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

// push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// reposition ARG to SP minus 5 minus nArgs
// I will just pretend nArgs is 3
@SP
A=M
D=A-1
@ARG
M=D
@5
D=A
@ARG
M=M-D
@3
D=A
@ARG
M=M-D

// Now set LCL to SP
@SP
D=M
@LCL
M=D

(RETURNADDRESS)

// fuck with This and That
@99
D=A
@THIS
//A=M
M=D
@THAT
//A=M
M=D

// Do a simple ADD routine and put result on the stack
// push constant 7 
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 8 
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M+D
@SP
M=M+1


// Now lets return
// create variable endFrame
@LCL
D=M
@endFrame
M=D

// calculate the return address
@endFrame
D=M
@retAddr
M=D            // currently endFrame
@5
D=A
@retAddr
M=M-D			// But this is not the return address - it is the location
D=M
A=D
D=M
@retAddr
M=D

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

(END)
@END
0;JMP
