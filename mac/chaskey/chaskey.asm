; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\odzhan\tinycrypt\mac\chaskey\chaskey.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_chas_setkey
; Function compile flags: /Ogspy
;	COMDAT _chas_setkey
_TEXT	SEGMENT
_out$ = 8						; size = 4
_in$ = 12						; size = 4
_chas_setkey PROC					; COMDAT
; File c:\odzhan\tinycrypt\mac\chaskey\chaskey.c
; Line 37
	mov	eax, DWORD PTR _out$[esp-4]
	push	ebx
	push	esi
	mov	esi, DWORD PTR _in$[esp+4]
	push	edi
	push	16					; 00000010H
	pop	ecx
	mov	edi, eax
	push	2
	rep movsb
	add	eax, 16					; 00000010H
	pop	edi
$LL4@chas_setke:
; Line 41
	mov	ecx, DWORD PTR [eax-16]
; Line 43
	mov	esi, DWORD PTR [eax-4]
	lea	edx, DWORD PTR [ecx+ecx]
	mov	DWORD PTR [eax], edx
	test	esi, esi
	jns	SHORT $LN1@chas_setke
	xor	edx, 135				; 00000087H
	mov	DWORD PTR [eax], edx
$LN1@chas_setke:
; Line 45
	mov	edx, DWORD PTR [eax-12]
	lea	ebx, DWORD PTR [edx+edx]
	shr	ecx, 31					; 0000001fH
	or	ecx, ebx
	mov	DWORD PTR [eax+4], ecx
; Line 46
	mov	ecx, DWORD PTR [eax-8]
	shr	edx, 31					; 0000001fH
	lea	ebx, DWORD PTR [ecx+ecx]
	or	ebx, edx
; Line 47
	shr	ecx, 31					; 0000001fH
	lea	edx, DWORD PTR [esi+esi]
	or	edx, ecx
	mov	DWORD PTR [eax+8], ebx
	mov	DWORD PTR [eax+12], edx
; Line 49
	add	eax, 16					; 00000010H
	dec	edi
	jne	SHORT $LL4@chas_setke
; Line 51
	pop	edi
	pop	esi
	pop	ebx
	ret	0
_chas_setkey ENDP
_TEXT	ENDS
PUBLIC	_chas_permute
; Function compile flags: /Ogspy
;	COMDAT _chas_permute
_TEXT	SEGMENT
_v$ = 8							; size = 4
_chas_permute PROC					; COMDAT
; Line 55
	mov	eax, DWORD PTR _v$[esp-4]
	mov	ecx, DWORD PTR [eax]
; Line 73
	mov	edx, DWORD PTR [eax+4]
	push	ebx
	push	esi
	mov	esi, DWORD PTR [eax+12]
	push	edi
	mov	edi, DWORD PTR [eax+8]
	push	12					; 0000000cH
	pop	ebx
$LL3@chas_permu:
; Line 60
	add	ecx, edx
	rol	edx, 5
; Line 61
	xor	edx, ecx
; Line 63
	add	edi, esi
; Line 64
	rol	esi, 8
; Line 65
	xor	esi, edi
	rol	ecx, 16					; 00000010H
; Line 66
	add	ecx, esi
; Line 67
	rol	esi, 13					; 0000000dH
; Line 69
	add	edi, edx
	xor	esi, ecx
; Line 70
	rol	edx, 7
; Line 71
	xor	edx, edi
; Line 72
	rol	edi, 16					; 00000010H
; Line 73
	dec	ebx
	mov	DWORD PTR [eax], ecx
	jne	SHORT $LL3@chas_permu
; Line 74
	mov	DWORD PTR [eax+8], edi
	pop	edi
	mov	DWORD PTR [eax+12], esi
	pop	esi
	mov	DWORD PTR [eax+4], edx
	pop	ebx
	ret	0
_chas_permute ENDP
_TEXT	ENDS
PUBLIC	_chas_xor
; Function compile flags: /Ogspy
;	COMDAT _chas_xor
_TEXT	SEGMENT
_out$ = 8						; size = 4
_in$ = 12						; size = 4
_len$ = 16						; size = 4
_chas_xor PROC						; COMDAT
; Line 76
	push	esi
; Line 79
	mov	esi, DWORD PTR _len$[esp]
	test	esi, esi
	jle	SHORT $LN1@chas_xor
	mov	eax, DWORD PTR _out$[esp]
	mov	ecx, DWORD PTR _in$[esp]
	sub	ecx, eax
$LL3@chas_xor:
; Line 80
	mov	dl, BYTE PTR [ecx+eax]
	xor	BYTE PTR [eax], dl
	inc	eax
	dec	esi
	jne	SHORT $LL3@chas_xor
$LN1@chas_xor:
	pop	esi
; Line 82
	ret	0
_chas_xor ENDP
_TEXT	ENDS
PUBLIC	_chas_mac
; Function compile flags: /Ogspy
;	COMDAT _chas_mac
_TEXT	SEGMENT
_v$ = -16						; size = 16
_tag$ = 8						; size = 4
_msg$ = 12						; size = 4
_msglen$ = 16						; size = 4
_key$ = 20						; size = 4
_chas_mac PROC						; COMDAT
; Line 86
	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H
	push	ebx
	push	esi
; Line 91
	mov	esi, DWORD PTR _key$[ebp]
	push	edi
	push	16					; 00000010H
	pop	ebx
	lea	edi, DWORD PTR _v$[ebp]
	mov	ecx, ebx
	rep movsb
	mov	esi, DWORD PTR _msglen$[ebp]
$LL4@chas_mac:
; Line 96
	mov	eax, esi
	cmp	esi, ebx
	jb	SHORT $LN8@chas_mac
	mov	eax, ebx
$LN8@chas_mac:
; Line 99
	push	eax
	push	DWORD PTR _msg$[ebp]
	lea	eax, DWORD PTR _v$[ebp]
	push	eax
	call	_chas_xor
	add	esp, 12					; 0000000cH
; Line 102
	cmp	esi, ebx
	jbe	SHORT $LN12@chas_mac
; Line 112
	lea	eax, DWORD PTR _v$[ebp]
	push	eax
	call	_chas_permute
; Line 115
	add	DWORD PTR _msg$[ebp], ebx
	pop	ecx
; Line 116
	sub	esi, ebx
; Line 117
	jmp	SHORT $LL4@chas_mac
$LN12@chas_mac:
; Line 103
	jae	SHORT $LN1@chas_mac
; Line 105
	xor	BYTE PTR _v$[ebp+esi], 1
$LN1@chas_mac:
; Line 107
	xor	eax, eax
	cmp	esi, ebx
	setne	al
; Line 120
	push	ebx
	dec	eax
	and	eax, -16				; fffffff0H
	add	eax, 32					; 00000020H
	add	DWORD PTR _key$[ebp], eax
	push	DWORD PTR _key$[ebp]
	lea	eax, DWORD PTR _v$[ebp]
	push	eax
	call	_chas_xor
; Line 122
	lea	eax, DWORD PTR _v$[ebp]
	push	eax
	call	_chas_permute
; Line 124
	push	ebx
	push	DWORD PTR _key$[ebp]
	lea	eax, DWORD PTR _v$[ebp]
	push	eax
	call	_chas_xor
; Line 126
	mov	edi, DWORD PTR _tag$[ebp]
	add	esp, 28					; 0000001cH
	mov	ecx, ebx
	lea	esi, DWORD PTR _v$[ebp]
	rep movsb
	pop	edi
	pop	esi
	pop	ebx
; Line 127
	leave
	ret	0
_chas_mac ENDP
_TEXT	ENDS
END
