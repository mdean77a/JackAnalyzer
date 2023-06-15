// BOOTSTRAP WILL GO HERE
//  Assembly translation of NestedCall/Sys.vm
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

// push constant 4000 
@4000
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop  pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D

// push constant 5000 
@5000
D=A
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

// call Sys.main 0
//  push return address label onto stack
@Sys.main$ret.2
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
@Sys.main
0;JMP

//  insert the return address label
(Sys.main$ret.2)
// pop  temp 1
@5
D=A
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

// label LOOP
(LOOP.2)

// goto LOOP
@LOOP.2
0;JMP

// function Sys.main 5
(Sys.main)
@5
D=A
@SKIP_INIT_LOCAL.3
D;JEQ
(INIT_LOCALS.3)
@SP
A=M
M=0
@SP
M=M+1

D=D-1
@INIT_LOCALS.3
D;JNE
(SKIP_INIT_LOCAL.3)

// push constant 4001 
@4001
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop  pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D

// push constant 5001 
@5001
D=A
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

// push constant 200 
@200
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop  local 1
@LCL
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

// push constant 40 
@40
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop  local 2
@LCL
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

// push constant 6 
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop  local 3
@LCL
D=M
@R13
M=D
@3
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

// push constant 123 
@123
D=A
@SP
A=M
M=D
@SP
M=M+1

// call Sys.add12 1
//  push return address label onto stack
@Sys.add12$ret.4
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
@Sys.add12
0;JMP

//  insert the return address label
(Sys.add12$ret.4)
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

// push local 1 
@LCL
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

// push local 2 
@LCL
D=M
@R13
M=D
@2
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

// push local 3 
@LCL
D=M
@R13
M=D
@3
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

// push local 4 
@LCL
D=M
@R13
M=D
@4
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
// function Sys.add12 0
(Sys.add12)
@0
D=A
@SKIP_INIT_LOCAL.5
D;JEQ
(INIT_LOCALS.5)
@SP
A=M
M=0
@SP
M=M+1

D=D-1
@INIT_LOCALS.5
D;JNE
(SKIP_INIT_LOCAL.5)

// push constant 4002 
@4002
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop  pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D

// push constant 5002 
@5002
D=A
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

// push constant 12 
@12
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
