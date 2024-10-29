.globl _main
_main:                                 
	.cfi_startproc ;start function
    mov w8 , #5 ;assign w8 register as 5
    mov w9 , #3 ;assign w9 register as 3
    add w0 ,w9, w8 ; assign w0 as addition of w9 and w8
    ret ;return w0 as default
	.cfi_endproc ;end function