.globl _main
_main:
    mov w8, #0              ;get variable in w8 and its have value 0
    mov w9, #0              ;get variable in w9 and its have value 0
    b LOOP                  ;go to LOOP subroutine
LOOP:
    subs w10, w8 ,#8         
    cset w10, ge
    tbz w10, #0 , LOW
    tbnz w10, #0 , GREAT_EQUAL
LOW:
    add w8, w8, #1
    add w9, w9, #1
    b LOOP
GREAT_EQUAL:
    mov w0, w9
    ret