.globl	_main         
_main:                                  
	.cfi_startproc
	stp	x29, x30, [sp, #16] ;store two register in the sp with 16 immadiate level
	add	x29, sp, #16		;assign string length in x29 register x = 64 bit general purpose register holding address
	stur	wzr, [x29, #-4] ;clones wzr registers value and writes in x29 simm = -4 (interesting)
	adrp	x0, l_.str@PAGE ;making 4KB addressable x0 register
	add	x0, x0, l_.str@PAGEOFF ;connecting 4KB memory addressable x0 register with our string and write it
	bl	_printf             ;calling printf function, its prints x0 register
	ldp	x29, x30, [sp, #16] ;call back x29 and x30
	mov w0, #0              ;declare and assign w0 as 0
	ret                     ;return w0 so return 0
	.cfi_endproc


.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; declare string
	.asciz	"Hello ASM World!"          ; assign string
