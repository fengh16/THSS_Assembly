.386
.model flat,STDCALL
option casemap:none

includelib      msvcrt.lib
include         msvcrt.inc
include         a.inc

.data
szMsg			byte    "½á¹ûÊÇ%d", 0ah, 0dh, 0

.code
start PROC
		invoke function_a
		invoke crt_printf, offset szMsg, eax
		ret
start ENDP
end				start
