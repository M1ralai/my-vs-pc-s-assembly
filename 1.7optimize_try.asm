.globl _main
.p2align 4
_main:                     
    sub sp, sp, #32            
	stp	x29, x30, [sp, #16]             
	add	x29, sp, #16
	stur	wzr, [x29, #-4]
	str	wzr, [sp, #8]
    mov w8, #0
    str w8, [sp, #4]
    b ROWS_FOR
ROWS_FOR:
    mov w9, #0
    str w9, [sp, #8]
    ldr w8, [sp, #4]
    add w8, w8, #1
    subs w11, w8, #15
    str w8, [sp, #4]
    cset w11, lt
    tbz w11, #0, RETURN
    tbnz w11, #0, COLS_FOR
COLS_FOR:
    adrp	x0, l_.str.1@PAGE       
	add	x0, x0, l_.str.1@PAGEOFF    
    bl _printf
    ldp	x29, x30, [sp, #16]
    ldr w9, [sp, #8]
    add w9, w9, #1
    subs w10, w9, #30
    str w9, [sp, #8]
    cset w10, lt
    tbnz w10, #0, COLS_FOR
    adrp	x0, l_.str@PAGE         
	add	x0, x0, l_.str@PAGEOFF      
    bl _printf
    ldp	x29, x30, [sp, #16]
    b ROWS_FOR
RETURN:
    mov w0, #0
    add sp, sp, #32
    ret
    .section	__TEXT,__cstring,cstring_literals
l_.str:                                 
	.asciz	"\n"
l_.str.1:                               
	.asciz	"*"