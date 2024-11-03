.globl _main
_main:                               
    mov w8 , #5         ;assign w8 register as 5
    mov w9 , #3         ;assign w9 register as 3
    add w0 ,w9, w8      ; assign w0 as addition of w9 and w8
    ret                 ;return w0 register, ret returns w0 as default