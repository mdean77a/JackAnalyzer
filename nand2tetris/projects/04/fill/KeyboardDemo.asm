// Keyboard.asm is an attempt to understand how to poll the keyboard
//
// April 19 2023 J Michael Dean
//
// KBD should refer to register 24576 which should report zero
// unless the keyboard has been pressed.
//
// So I should just make a loop that looks at the KBD register and
// store the result in some location such as R0
//
(LOOP)
@KBD		//set address to keyboard
D=M
@R0
M=D
@LOOP
0;JMP