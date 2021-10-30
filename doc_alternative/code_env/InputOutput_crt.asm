.386
.model flat, stdcall
option casemap:none

includelib      msvcrt.lib
include         msvcrt.inc

.data
szMsg			byte    "请输入两个数字，用空格隔开:", 0ah, 0dh, 0
scanMsg			byte    "%d %d", 0
ansMsg			byte    "结果是%d", 0ah, 0dh, 0  ; 0ah 0dh是回车换行
varA			sdword  0
varB			sdword  0

.code
start:
                invoke  crt_printf, offset szMsg  ; 调用printf
                invoke  crt_scanf, offset scanMsg, offset varA, offset varB ; 调用scanf
                mov     eax, varA
                add     eax, varB    ; 现在eax是varA+varB
                invoke  crt_printf, offset ansMsg, eax
                ret
end				start