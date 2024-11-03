.globl _main
_main:
    mov w8, #0              ; assign w8 as 0
    mov w9, #0              ; assign w9 as 0
    subs w10, w8, w9        ; 
    cset w10 , ne           ; ne is equality question and we get its answer in w10
    tbnz w10 , #0 , FALSE   ; compare w10 and 0 then if its correct its jump to false
    tbz w10 , #1 , TRUE     ; compare w10 and 1 then if its correct jump to true
    b CONTINUE              ; after if statement there is no else so after that continues main
FALSE:
    mov w0, #0              ; assign w0 as 0 because its false
    b RETURN
TRUE:
    mov w0, #1              ; assign w0 as 1 because its true
    b RETURN
CONTINUE:
    mov w0, #3
    b RETURN
RETURN:
    ret
