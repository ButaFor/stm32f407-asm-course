        .syntax unified
        .cpu cortex-m4
        .thumb

        .section .text
        .global main
        .type main, %function
        .thumb_func

main:
        @ Lab 01, variant 3.
        mov     r0, #85         @ R0 = A = 85 (0x55)
        mov     r1, #27         @ R1 = B = 27 (0x1B)
        add     r2, r0, r1      @ R2 = A + B = 112 (0x70)
        sub     r3, r0, r1      @ R3 = A - B = 58 (0x3A)

stop:
        nop                     @ Set a breakpoint here to inspect R0-R3.
        b       stop

.size main, .-main
