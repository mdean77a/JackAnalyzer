//  Assembly translation of StaticsTest/Class2.vm
// function Class2.set 0
(Class2.set)
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
@StaticsTest/Class2.0
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
@StaticsTest/Class2.1
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

// push static 0 
@StaticsTest/Class2.0
D=M
@SP
A=M
M=D
@SP
M=M+1

// push static 1 
@StaticsTest/Class2.1
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
