.386
.model flat, stdcall
option casemap:none

include         C:\masm32\include\msvcrt.inc
includelib      C:\masm32\lib\msvcrt.lib

.data
szMsg			byte    "�������������֣��ÿո����:", 0ah, 0dh, 0
scanMsg			byte    "%d %d", 0
ansMsg			byte    "�����%d", 0ah, 0dh, 0  ; 0ah 0dh�ǻس�����
varA			sdword  0
varB			sdword  0

.code
start:
                invoke  crt_printf, offset szMsg  ; ����printf
                invoke  crt_scanf, offset scanMsg, offset varA, offset varB ; ����scanf
                mov     eax, varA
                add     eax, varB    ; ����eax��varA+varB
                invoke  crt_printf, offset ansMsg, eax
                ret
end				start