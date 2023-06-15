///  BOOTSTRAP CODE TO BE DEVELOPED
//  Assembly translation of ProgramFlow/BasicLoop/BasicLoop.vm
// push constant 0 
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop  local 0
@LCL
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

// label LOOP_START
(LOOP_START.0)

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

// push local 0 
@LCL
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

// pop  local 0
@LCL
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

// if-goto LOOP_START
@SP
M=M-1
@SP
A=M
D=M
@LOOP_START.0
D;JNE

// push local 0 
@LCL
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

