[BITS 64]

global memset
section .text

memset:
    push RBP
    mov RBP, RSP
    mov RCX, 0

setdata:
    cmp RCX, RDX
    je end
    mov BYTE[RDI + RCX], SIL
    inc RCX
    jmp setdata

end:
    mov RAX, RDI
    mov RSP, RBP
    pop RBP
    ret