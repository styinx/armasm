.data
    a:  .byte   4
    b:  .byte   0xb
    .align                  ; pad with zeros
    c:  .word   0xcccccccc
    d:  .hword  0xdddd
    e:  .byte   0xee
    f:  .byte   -1
    x:  .word   0x12345678

.text
.global _start

_start:
    mov r1, #0
    mov r2, #10
    add r1, r2, #20

    ldr r3, =x
    ldr r4, [r1]
    ldr r5, =0xabcdef

    str r2, [r1]
