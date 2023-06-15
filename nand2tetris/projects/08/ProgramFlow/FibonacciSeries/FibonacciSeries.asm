///  BOOTSTRAP CODE TO BE DEVELOPED
//  Assembly translation of ProgramFlow/FibonacciSeries/FibonacciSeries.vm
// push argument 1 
@ARG
D=M
@R13
M=D
@1
D=A
@R13
D=D+M
@R14
M=D
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop  pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D

// push constant 0 
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop  that 0
@THAT
D=M
@R13
M=D
@0
D=A
@R13
D=D+M
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D

// push constant 1 
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop  that 1
@THAT
D=M
@R13
M=D
@1
D=A
@R13
D=D+M
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D

// push argument 0 
@ARG
D=M
@R13
M=D
@0
D=A
@R13
D=D+M
@R14
M=D
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2 
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

// pop  argument 0
@ARG
D=M
@R13
M=D
@0
D=A
@R13
D=D+M
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D

// label MAIN_LOOP_START
(MAIN_LOOP_START.0)

// push argument 0 
@ARG
D=M
@R13
M=D
@0
D=A
@R13
D=D+M
@R14
M=D
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1

// if-goto COMPUTE_ELEMENT
@SP
M=M-1
@SP
A=M
D=M
@COMPUTE_ELEMENT.0
D;JNE

// goto END_PROGRAM
@END_PROGRAM.0
0;JMP

// label COMPUTE_ELEMENT
(COMPUTE_ELEMENT.0)

// push that 0 
@THAT
D=M
@R13
M=D
@0
D=A
@R13
D=D+M
@R14
M=D
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1

// push that 1 
@THAT
D=M
@R13
M=D
@1
D=A
@R13
D=D+M
@R14
M=D
A=D
D=M
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

// pop  that 2
@THAT
D=M
@R13
M=D
@2
D=A
@R13
D=D+M
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D

// push pointer 1 
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1 
@1
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

// pop  pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D

// push argument 0 
@ARG
D=M
@R13
M=D
@0
D=A
@R13
D=D+M
@R14
M=D
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1 
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

// pop  argument 0
@ARG
D=M
@R13
M=D
@0
D=A
@R13
D=D+M
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D

// goto MAIN_LOOP_START
@MAIN_LOOP_START.0
0;JMP

// label END_PROGRAM
(END_PROGRAM.0)

