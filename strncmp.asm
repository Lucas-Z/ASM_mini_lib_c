[BITS 64]

global strncmp
section .text

strncmp:
    push RBP
    mov RBP, RSP
    mov RCX, 0

    cmp RDX, 0
    je end0

    dec RDX ;
loopString:
    mov AL, BYTE[RDI + RCX]

    cmp RDX, RCX ;
    je end ;
    
    cmp BYTE[RSI + RCX], AL
    jne end
    cmp AL, 0
    je end
    inc RCX
    jmp loopString

end0:
    mov RAX, 0
    mov RSP, RBP
    pop RBP
    ret

end:
    sub AL, BYTE[RSI + RCX]
    movsx RAX, AL
    mov RSP, RBP
    pop RBP
    ret