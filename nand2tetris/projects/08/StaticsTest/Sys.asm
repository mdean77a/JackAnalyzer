//  Assembly translation of StaticsTest/Sys.vm
// function Sys.init 0
(Sys.init)
@0
D=A
@SKIP_INIT_LOCAL.1
D;JEQ
(INIT_LOCALS.1)
@SP
A=M
M=0
@SP
M=M+1

D=D-1
@INIT_LOCALS.1
D;JNE
(SKIP_INIT_LOCAL.1)

// push constant 6 
@6
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

// call Class1.set 2
//  push return address label onto stack
@Class1.set$ret.2
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
@2
D=A
@ARG
M=M-D

//  Set LCL to SP
@SP
D=M
@LCL
M=D


//  goto functionName
@Class1.set
0;JMP

//  insert the return address label
(Class1.set$ret.2)
// pop  temp 0
@5
D=A
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

// push constant 23 
@23
D=A
@SP
A=M
M=D
@SP
M=M+1

// push constant 15 
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Class2.set 2
//  push return address label onto stack
@Class2.set$ret.3
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
@2
D=A
@ARG
M=M-D

//  Set LCL to SP
@SP
D=M
@LCL
M=D


//  goto functionName
@Class2.set
0;JMP

//  insert the return address label
(Class2.set$ret.3)
// pop  temp 0
@5
D=A
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

// call Class1.get 0
//  push return address label onto stack
@Class1.get$ret.4
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
@Class1.get
0;JMP

//  insert the return address label
(Class1.get$ret.4)
// call Class2.get 0
//  push return address label onto stack
@Class2.get$ret.5
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
@Class2.get
0;JMP

//  insert the return address label
(Class2.get$ret.5)
// label WHILE
(WHILE.5)

// goto WHILE
@WHILE.5
0;JMP

