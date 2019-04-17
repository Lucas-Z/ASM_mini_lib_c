[BITS 64]

global memcpy
section .text

memcpy:
    push RBP
    mov RBP, RSP
    mov RCX, 0

setdata:
    cmp RCX, RDX
    je end
    mov R8B, BYTE[RSI + RCX]
    mov BYTE[RDI + RCX], R8B
    inc RCX
    jmp setdata

end:
    mov RAX, RDI
    mov RSP, RBP
    pop RBP
    ret