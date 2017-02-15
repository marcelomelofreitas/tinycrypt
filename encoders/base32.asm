; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	c:\odzhan\tinycrypt\encoders\base32.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

_DATA	SEGMENT
COMM	_buf:BYTE:0400H
_DATA	ENDS
PUBLIC	_b32_encode
EXTRN	__allshl:PROC
; Function compile flags: /Ogspy
;	COMDAT _b32_encode
_TEXT	SEGMENT
_z$ = -24						; size = 8
tv156 = -16						; size = 4
_i$ = -12						; size = 4
_p$ = -8						; size = 4
_pad$ = -4						; size = 4
_str$ = 8						; size = 4
_inlen$ = 12						; size = 4
_b32_encode PROC					; COMDAT
; File c:\odzhan\tinycrypt\encoders\base32.c
; Line 46
	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H
; Line 53
	and	DWORD PTR _i$[ebp], 0
	cmp	DWORD PTR _inlen$[ebp], 0
	mov	DWORD PTR _pad$[ebp], 8
	mov	DWORD PTR _p$[ebp], OFFSET _buf
	jle	$LN18@b32_encode
	push	ebx
	push	esi
	push	edi
$LL19@b32_encode:
; Line 57
	mov	ecx, DWORD PTR _i$[ebp]
	xor	esi, esi
	xor	edi, edi
	xor	ebx, ebx
	mov	DWORD PTR _z$[ebp], esi
	mov	DWORD PTR _z$[ebp+4], esi
$LL36@b32_encode:
	cmp	ecx, DWORD PTR _inlen$[ebp]
	jge	SHORT $LN15@b32_encode
; Line 59
	mov	eax, DWORD PTR _str$[ebp]
	movzx	eax, BYTE PTR [ecx+eax]
	shld	ebx, edi, 8
	shl	edi, 8
	cdq
	or	edi, eax
	or	ebx, edx
	inc	ecx
	inc	esi
	mov	DWORD PTR _i$[ebp], ecx
	cmp	esi, 5
	jl	SHORT $LL36@b32_encode
$LN15@b32_encode:
; Line 64
	cmp	esi, 5
	jge	SHORT $LN31@b32_encode
; Line 65
	lea	ecx, DWORD PTR [esi+esi]
	mov	eax, edi
	mov	edx, ebx
	call	__allshl
	mov	edi, eax
	mov	ebx, edx
; Line 66
	cmp	esi, 1
	jne	SHORT $LN29@b32_encode
	mov	DWORD PTR _pad$[ebp], 2
$LN29@b32_encode:
; Line 67
	cmp	esi, 2
	jne	SHORT $LN30@b32_encode
	mov	DWORD PTR _pad$[ebp], 4
$LN30@b32_encode:
; Line 68
	cmp	esi, 3
	jne	SHORT $LN11@b32_encode
	mov	DWORD PTR _pad$[ebp], 5
$LN11@b32_encode:
; Line 69
	cmp	esi, 4
	jne	SHORT $LN31@b32_encode
	mov	DWORD PTR _pad$[ebp], 7
$LN31@b32_encode:
; Line 72
	mov	eax, DWORD PTR _pad$[ebp]
	test	eax, eax
	jle	SHORT $LN7@b32_encode
	mov	DWORD PTR tv156[ebp], eax
$LL32@b32_encode:
; Line 73
	mov	eax, DWORD PTR _z$[ebp+4]
; Line 74
	mov	edx, edi
	and	edx, 31					; 0000001fH
	xor	esi, esi
	shr	eax, 27					; 0000001bH
	xor	ecx, ecx
	or	eax, edx
	mov	edx, DWORD PTR _z$[ebp]
	or	ecx, esi
	mov	esi, DWORD PTR _z$[ebp+4]
	shld	esi, edx, 5
; Line 75
	shrd	edi, ebx, 5
	shl	edx, 5
	or	eax, edx
	or	ecx, esi
	shr	ebx, 5
	dec	DWORD PTR tv156[ebp]
	mov	DWORD PTR _z$[ebp], eax
	mov	DWORD PTR _z$[ebp+4], ecx
	jne	SHORT $LL32@b32_encode
$LN7@b32_encode:
; Line 78
	xor	ecx, ecx
$LL33@b32_encode:
; Line 79
	mov	al, 61					; 0000003dH
; Line 80
	cmp	ecx, DWORD PTR _pad$[ebp]
	jge	SHORT $LN35@b32_encode
; Line 81
	mov	al, BYTE PTR _z$[ebp]
	and	al, 31					; 0000001fH
; Line 82
	cmp	al, 25					; 00000019H
	ja	SHORT $LN2@b32_encode
	add	al, 65					; 00000041H
	jmp	SHORT $LN35@b32_encode
$LN2@b32_encode:
; Line 83
	add	al, 24					; 00000018H
$LN35@b32_encode:
; Line 85
	mov	edx, DWORD PTR _p$[ebp]
	inc	DWORD PTR _p$[ebp]
	mov	BYTE PTR [edx], al
; Line 86
	mov	eax, DWORD PTR _z$[ebp]
	mov	edx, DWORD PTR _z$[ebp+4]
	shrd	eax, edx, 5
	shr	edx, 5
	inc	ecx
	mov	DWORD PTR _z$[ebp], eax
	mov	DWORD PTR _z$[ebp+4], edx
	cmp	ecx, 8
	jl	SHORT $LL33@b32_encode
; Line 53
	mov	eax, DWORD PTR _inlen$[ebp]
	cmp	DWORD PTR _i$[ebp], eax
	jl	$LL19@b32_encode
	pop	edi
	pop	esi
	pop	ebx
$LN18@b32_encode:
; Line 89
	mov	eax, DWORD PTR _p$[ebp]
	mov	BYTE PTR [eax], 0
; Line 90
	mov	eax, OFFSET _buf
; Line 91
	leave
	ret	0
_b32_encode ENDP
_TEXT	ENDS
PUBLIC	??_C@_02DKCKIIND@?$CFs?$AA@			; `string'
PUBLIC	__$ArrayPad$
PUBLIC	_main
EXTRN	_printf:PROC
EXTRN	___security_cookie:DWORD
EXTRN	@__security_check_cookie@4:PROC
;	COMDAT ??_C@_02DKCKIIND@?$CFs?$AA@
CONST	SEGMENT
??_C@_02DKCKIIND@?$CFs?$AA@ DB '%s', 00H		; `string'
; Function compile flags: /Ogspy
CONST	ENDS
;	COMDAT _main
_TEXT	SEGMENT
_box$ = -260						; size = 256
__$ArrayPad$ = -4					; size = 4
_argc$ = 8						; size = 4
_argv$ = 12						; size = 4
_main	PROC						; COMDAT
; Line 94
	push	ebp
	mov	ebp, esp
	sub	esp, 260				; 00000104H
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
; Line 98
	xor	eax, eax
	mov	ecx, 256				; 00000100H
$LL4@main:
; Line 99
	mov	BYTE PTR _box$[ebp+eax], al
	inc	eax
	cmp	eax, ecx
	jl	SHORT $LL4@main
; Line 102
	push	ecx
	lea	eax, DWORD PTR _box$[ebp]
	push	eax
	call	_b32_encode
	push	eax
	push	OFFSET ??_C@_02DKCKIIND@?$CFs?$AA@
	call	_printf
; Line 116
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	add	esp, 16					; 00000010H
	xor	eax, eax
	call	@__security_check_cookie@4
	leave
	ret	0
_main	ENDP
_TEXT	ENDS
END
