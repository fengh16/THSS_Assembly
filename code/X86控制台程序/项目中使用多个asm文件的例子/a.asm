.386
.model flat,STDCALL
option casemap:none

include a.inc

.code
function_a PROC
    mov eax, 3
    ret
function_a ENDP

END