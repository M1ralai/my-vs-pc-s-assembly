.globl _main
_main:
    mov w8, #0          ;assign w8 register as 0
    mov w9, #0          ;assign w9 register as 0
    b WHILE             ;go to WHILE
WHILE:  
    subs w10, w8, #0                    ;substract 0 from w9 register and write it to w10 and give the 0's info
    cset w10, eq                        ;if w8 equal to 0 w10 is 1 if w8 is not equal to 0 w10 is 0
    tbnz w10, #0, INNER_WHILE_LOOP      ;if w10 is not zero go to INNER_WHILE_LOOP
    tbz w10, #0, BREAK_LOOP             ;if w10 is zero go to BREAK_LOOP
;this segment was classical while loop
INNER_WHILE_LOOP:
    add w9, w9, #1                      ;add 1 to w9 register
    subs w10, w9, #15                   ;substract 15 from w9 register and write it to w10 and give the 15's info
    cset w10, eq                        ;if w10 equal to 15 compariston
    tbz w10, #0, WHILE                  ;if w10 is 0 go WHILE
    tbnz w10, #0, IF_STATEMENT_INSIDE   ;if w10 is not 0 go IF_STATEMENT_INSIDE
BREAK_LOOP:
    b IF_STATEMENT_INSIDE
IF_STATEMENT_INSIDE:
    mov w0, w9          ;w0 register is not assigned as w9
    ret                 ;return, default retuwn w0 register