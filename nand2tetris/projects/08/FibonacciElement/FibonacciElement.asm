// Set SP to 256
@256
D=A
@SP
M=D//  push return address label onto stack
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
//  Assembly translation of FibonacciElement/Main.vm
// function Main.fibonacci 0
(Main.fibonacci)
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

// lt
@SP
M=M-1
A=M
D=M

@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
D=D-M

@LESSTHAN.3
D;JLT
@SP
A=M
M=0

@END.3
0;JMP
(LESSTHAN.3)
@SP
A=M
M=-1

(END.3)
@SP
M=M+1

// if-goto IF_TRUE
@SP
M=M-1
@SP
A=M
D=M
@IF_TRUE.3
D;JNE

// goto IF_FALSE
@IF_FALSE.3
0;JMP

// label IF_TRUE
(IF_TRUE.3)

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

// return
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
M=M-D            // But this is not the return address - it is the location
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

// and return
@retAddr
A=M
0;JMP
// label IF_FALSE
(IF_FALSE.3)

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

// call Main.fibonacci 1
//  push return address label onto stack
@Main.fibonacci$ret.4
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
@1
D=A
@ARG
M=M-D

//  Set LCL to SP
@SP
D=M
@LCL
M=D


//  goto functionName
@Main.fibonacci
0;JMP

//  insert the return address label
(Main.fibonacci$ret.4)
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

// call Main.fibonacci 1
//  push return address label onto stack
@Main.fibonacci$ret.5
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
@1
D=A
@ARG
M=M-D

//  Set LCL to SP
@SP
D=M
@LCL
M=D


//  goto functionName
@Main.fibonacci
0;JMP

//  insert the return address label
(Main.fibonacci$ret.5)
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

// return
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
M=M-D            // But this is not the return address - it is the location
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

// and return
@retAddr
A=M
0;JMP
//  Assembly translation of FibonacciElement/Sys.vm
// function Sys.init 0
(Sys.init)
@0
D=A
@SKIP_INIT_LOCAL.6
D;JEQ
(INIT_LOCALS.6)
@SP
A=M
M=0
@SP
M=M+1

D=D-1
@INIT_LOCALS.6
D;JNE
(SKIP_INIT_LOCAL.6)

// push constant 4 
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Main.fibonacci 1
//  push return address label onto stack
@Main.fibonacci$ret.7
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
@1
D=A
@ARG
M=M-D

//  Set LCL to SP
@SP
D=M
@LCL
M=D


//  goto functionName
@Main.fibonacci
0;JMP

//  insert the return address label
(Main.fibonacci$ret.7)
// label WHILE
(WHILE.7)

// goto WHILE
@WHILE.7
0;JMP

