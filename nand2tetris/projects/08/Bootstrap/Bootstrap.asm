@256
D=A
@SP
M=D
//  push return address label onto stack
@Sys.init$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1


//  push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1


//  push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1


//  push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1


//  push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1


//  Reposition ARG to SP-5 - nARGS
@SP
A=M
D=A
@ARG
M=D
@5
D=A
@ARG
M=M-D
@0
D=A
@ARG
M=M-D

//  Set LCL to SP
@SP
D=M
@LCL
M=D


//  goto functionName
@Sys.init
0;JMP

//  insert the return address label
(Sys.init$ret.1)
//  Assembly translation of Bootstrap/Sys.vm
// function Sys.init 0
(Sys.init)
@0
D=A
@SKIP_INIT_LOCAL.2
D;JEQ
(INIT_LOCALS.2)
@SP
A=M
M=0
@SP
M=M+1

D=D-1
@INIT_LOCALS.2
D;JNE
(SKIP_INIT_LOCAL.2)

