.386
.model flat, stdcall
option casemap:none

includelib      msvcrt.lib
printf          PROTO C :ptr sbyte, :VARARG
scanf           PROTO C :ptr sbyte, :VARARG

.data
szMsg			byte    "�������������֣��ÿո����:", 0ah, 0dh, 0
scanMsg			byte    "%d %d", 0
ansMsg			byte    "�����%d", 0ah, 0dh, 0  ; 0ah 0dh�ǻس�����
varA			sdword  0
varB			sdword  0

.code
start:
                invoke  printf, offset szMsg  ; ����printf
                invoke  scanf, offset scanMsg, offset varA, offset varB ; ����scanf
                mov     eax, varA
                add     eax, varB    ; ����eax��varA+varB
                invoke  printf, offset ansMsg, eax
                ret
end				start