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
//  Assembly translation of StaticsTest/Class1.vm
// function Class1.set 0
(Class1.set)
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

// pop  static 0
@SP
M=M-1
A=M
D=M
@Class1.0
M=D

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

// pop  static 1
@SP
M=M-1
A=M
D=M
@Class1.1
M=D

// push constant 0 
@0
D=A
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
// function Class1.get 0
(Class1.get)
@0
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

// push static 0 
@Class1.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1 
@Class1.1
D=M
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
//  Assembly translation of StaticsTest/Sys.vm
// function Sys.init 0
(Sys.init)
@0
D=A
@SKIP_INIT_LOCAL.4
D;JEQ
(INIT_LOCALS.4)
@SP
A=M
M=0
@SP
M=M+1

D=D-1
@INIT_LOCALS.4
D;JNE
(SKIP_INIT_LOCAL.4)

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
@Class1.set$ret.5
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
(Class1.set$ret.5)
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
@Class2.set$ret.6
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
(Class2.set$ret.6)
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
@Class1.get$ret.7
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
(Class1.get$ret.7)
// call Class2.get 0
//  push return address label onto stack
@Class2.get$ret.8
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
(Class2.get$ret.8)
// label WHILE
(WHILE.8)

// goto WHILE
@WHILE.8
0;JMP

//  Assembly translation of StaticsTest/Class2.vm
// function Class2.set 0
(Class2.set)
@0
D=A
@SKIP_INIT_LOCAL.9
D;JEQ
(INIT_LOCALS.9)
@SP
A=M
M=0
@SP
M=M+1

D=D-1
@INIT_LOCALS.9
D;JNE
(SKIP_INIT_LOCAL.9)

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

// pop  static 0
@SP
M=M-1
A=M
D=M
@Class2.0
M=D

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

// pop  static 1
@SP
M=M-1
A=M
D=M
@Class2.1
M=D

// push constant 0 
@0
D=A
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
// function Class2.get 0
(Class2.get)
@0
D=A
@SKIP_INIT_LOCAL.10
D;JEQ
(INIT_LOCALS.10)
@SP
A=M
M=0
@SP
M=M+1

D=D-1
@INIT_LOCALS.10
D;JNE
(SKIP_INIT_LOCAL.10)

// push static 0 
@Class2.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1 
@Class2.1
D=M
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
