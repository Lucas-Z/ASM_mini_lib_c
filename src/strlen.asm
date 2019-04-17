[BITS 64]

global strlen
section .text

strlen:
    push RBP
    mov RBP, RSP
    mov RCX, 0

parcourString:
    cmp BYTE[RDI + RCX], 0
    je end
    inc RCX
    jmp parcourString

end:
    mov RAX, RCX
    mov RSP, RBP 
    pop RBP
    ret