; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	c:\odzhan\tinycrypt\block\led\led.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_RCONST
PUBLIC	_SBox
PUBLIC	_MDS
_DATA	SEGMENT
_SBox	DB	0cH
	DB	05H
	DB	06H
	DB	0bH
	DB	09H
	DB	00H
	DB	0aH
	DB	0dH
	DB	03H
	DB	0eH
	DB	0fH
	DB	08H
	DB	04H
	DB	07H
	DB	01H
	DB	02H
_DATA	ENDS
CONST	SEGMENT
_RCONST	DB	01H
	DB	03H
	DB	07H
	DB	0fH
	DB	01fH
	DB	03eH
	DB	03dH
	DB	03bH
	DB	037H
	DB	02fH
	DB	01eH
	DB	03cH
	DB	039H
	DB	033H
	DB	027H
	DB	0eH
	DB	01dH
	DB	03aH
	DB	035H
	DB	02bH
	DB	016H
	DB	02cH
	DB	018H
	DB	030H
	DB	021H
	DB	02H
	DB	05H
	DB	0bH
	DB	017H
	DB	02eH
	DB	01cH
	DB	038H
	DB	031H
	DB	023H
	DB	06H
	DB	0dH
	DB	01bH
	DB	036H
	DB	02dH
	DB	01aH
	DB	034H
	DB	029H
	DB	012H
	DB	024H
	DB	08H
	DB	011H
	DB	022H
	DB	04H
_MDS	DB	04H
	DB	01H
	DB	02H
	DB	02H
	DB	08H
	DB	06H
	DB	05H
	DB	06H
	DB	0bH
	DB	0eH
	DB	0aH
	DB	09H
	DB	02H
	DB	02H
	DB	0fH
	DB	0bH
CONST	ENDS
PUBLIC	_addKey
; Function compile flags: /Ogspy
;	COMDAT _addKey
_TEXT	SEGMENT
_s$ = 8							; size = 4
_k$ = 12						; size = 4
_flag$ = 16						; size = 1
_addKey	PROC						; COMDAT
; File c:\odzhan\tinycrypt\block\led\led.c
; Line 25
	push	ebp
	mov	ebp, esp
; Line 27
	cmp	BYTE PTR _flag$[ebp], 1
; Line 28
	mov	ecx, DWORD PTR _k$[ebp]
	mov	eax, DWORD PTR _s$[ebp]
	jne	SHORT $LN2@addKey
	mov	edx, DWORD PTR [ecx+8]
	xor	DWORD PTR [eax], edx
	mov	ecx, DWORD PTR [ecx+12]
; Line 29
	jmp	SHORT $LN5@addKey
$LN2@addKey:
; Line 30
	mov	edx, DWORD PTR [ecx]
	xor	DWORD PTR [eax], edx
	mov	ecx, DWORD PTR [ecx+4]
$LN5@addKey:
	xor	DWORD PTR [eax+4], ecx
; Line 32
	pop	ebp
	ret	0
_addKey	ENDP
_TEXT	ENDS
PUBLIC	_addConstants
; Function compile flags: /Ogspy
;	COMDAT _addConstants
_TEXT	SEGMENT
_s$ = 8							; size = 4
_r$ = 12						; size = 4
_addConstants PROC					; COMDAT
; Line 36
	mov	ecx, DWORD PTR _r$[esp-4]
	movzx	eax, BYTE PTR _RCONST[ecx]
	mov	edx, eax
	and	edx, 56					; 00000038H
	shl	edx, 13					; 0000000dH
	and	eax, 7
	xor	edx, eax
	mov	eax, DWORD PTR _s$[esp-4]
	xor	edx, 16					; 00000010H
	shl	edx, 8
	xor	DWORD PTR [eax], edx
; Line 37
	movzx	ecx, BYTE PTR _RCONST[ecx]
	mov	edx, ecx
	and	edx, 56					; 00000038H
	shl	edx, 13					; 0000000dH
	and	ecx, 7
	xor	edx, ecx
	xor	edx, 2097200				; 00200030H
	shl	edx, 8
	xor	DWORD PTR [eax+4], edx
; Line 38
	ret	0
_addConstants ENDP
_TEXT	ENDS
PUBLIC	_subCells
; Function compile flags: /Ogspy
;	COMDAT _subCells
_TEXT	SEGMENT
_x$ = -8						; size = 8
tv234 = 8						; size = 4
_s$ = 8							; size = 4
_subCells PROC						; COMDAT
; Line 41
	push	ebp
	mov	ebp, esp
	push	ecx
	push	ecx
; Line 43
	mov	eax, DWORD PTR _s$[ebp]
	push	ebx
	push	esi
	push	edi
	mov	edi, DWORD PTR [eax]
	xor	ecx, ecx
	push	28					; 0000001cH
	mov	DWORD PTR _x$[ebp], ecx
	mov	DWORD PTR _x$[ebp+4], ecx
	mov	DWORD PTR tv234[ebp], ecx
	pop	edx
$LL8@subCells:
; Line 46
	push	28					; 0000001cH
	pop	esi
	sub	esi, DWORD PTR tv234[ebp]
	mov	ebx, edi
	mov	ecx, esi
	shr	ebx, cl
	add	DWORD PTR tv234[ebp], 4
	mov	ecx, edx
	and	ebx, 15					; 0000000fH
	movzx	ebx, BYTE PTR _SBox[ebx]
	shl	ebx, cl
; Line 47
	mov	ecx, esi
	xor	DWORD PTR _x$[ebp], ebx
	mov	ebx, DWORD PTR [eax+4]
	shr	ebx, cl
	mov	ecx, edx
	sub	edx, 4
	and	ebx, 15					; 0000000fH
	movzx	esi, BYTE PTR _SBox[ebx]
	shl	esi, cl
	xor	DWORD PTR _x$[ebp+4], esi
	cmp	edx, -4					; fffffffcH
	jg	SHORT $LL8@subCells
; Line 49
	mov	ecx, DWORD PTR _x$[ebp]
	pop	edi
	mov	DWORD PTR [eax], ecx
; Line 50
	mov	ecx, DWORD PTR _x$[ebp+4]
	pop	esi
	mov	DWORD PTR [eax+4], ecx
	pop	ebx
; Line 51
	leave
	ret	0
_subCells ENDP
_TEXT	ENDS
PUBLIC	_shiftRows
; Function compile flags: /Ogspy
;	COMDAT _shiftRows
_TEXT	SEGMENT
_s$ = 8							; size = 4
_shiftRows PROC						; COMDAT
; Line 55
	mov	eax, DWORD PTR _s$[esp-4]
	mov	ecx, DWORD PTR [eax]
	movzx	edx, WORD PTR [eax+2]
	push	esi
	push	edi
	mov	edi, ecx
	shr	ecx, 12					; 0000000cH
	and	ecx, 15					; 0000000fH
	mov	esi, 4095				; 00000fffH
	and	edi, esi
	shl	edi, 4
	or	edi, ecx
	mov	ecx, edx
	shl	ecx, 16					; 00000010H
	or	ecx, edx
; Line 56
	movzx	edx, WORD PTR [eax+6]
	and	ecx, -65536				; ffff0000H
	xor	edi, ecx
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [eax], edi
	mov	edi, ecx
	and	ecx, 15					; 0000000fH
	shr	edi, 4
	shl	ecx, 12					; 0000000cH
	and	edi, esi
	or	edi, ecx
	mov	ecx, edx
	shl	ecx, 16					; 00000010H
	or	ecx, edx
	and	ecx, -256				; ffffff00H
	shl	ecx, 8
	xor	edi, ecx
	mov	DWORD PTR [eax+4], edi
	pop	edi
	pop	esi
; Line 57
	ret	0
_shiftRows ENDP
_TEXT	ENDS
PUBLIC	_gm
; Function compile flags: /Ogspy
;	COMDAT _gm
_TEXT	SEGMENT
_a$ = 8							; size = 1
_b$ = 12						; size = 1
_gm	PROC						; COMDAT
; Line 84
	mov	dl, BYTE PTR _a$[esp-4]
	push	esi
	push	4
	xor	al, al
	pop	esi
$LL5@gm:
; Line 88
	test	BYTE PTR _b$[esp], 1
	je	SHORT $LN2@gm
	xor	al, dl
$LN2@gm:
; Line 89
	mov	cl, dl
	and	cl, 8
; Line 90
	add	dl, dl
; Line 91
	cmp	cl, 8
	jne	SHORT $LN1@gm
	xor	dl, 19					; 00000013H
$LN1@gm:
; Line 92
	shr	BYTE PTR _b$[esp], 1
	dec	esi
	jne	SHORT $LL5@gm
	pop	esi
; Line 95
	ret	0
_gm	ENDP
_TEXT	ENDS
PUBLIC	_mixColumnsSerial
; Function compile flags: /Ogspy
;	COMDAT _mixColumnsSerial
_TEXT	SEGMENT
_x$ = -20						; size = 8
_t$ = -12						; size = 4
tv511 = -4						; size = 4
_s$ = 8							; size = 4
_mixColumnsSerial PROC					; COMDAT
; Line 60
	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H
	push	ebx
	push	esi
	push	edi
; Line 62
	xor	eax, eax
	push	12					; 0000000cH
	mov	DWORD PTR _x$[ebp], eax
	mov	DWORD PTR _x$[ebp+4], eax
	mov	DWORD PTR tv511[ebp], eax
	pop	esi
$LL8@mixColumns:
; Line 68
	mov	ebx, DWORD PTR _s$[ebp]
	mov	eax, DWORD PTR [ebx]
	push	28					; 0000001cH
	pop	edi
	sub	edi, DWORD PTR tv511[ebp]
	mov	edx, eax
	mov	ecx, edi
	shr	edx, cl
; Line 69
	push	12					; 0000000cH
	and	dl, 15					; 0000000fH
	mov	BYTE PTR _t$[ebp], dl
	pop	edx
	sub	edx, DWORD PTR tv511[ebp]
; Line 74
	push	2
	mov	ecx, edx
	shr	eax, cl
	mov	ecx, edi
	and	al, 15					; 0000000fH
	mov	BYTE PTR _t$[ebp+1], al
	mov	eax, DWORD PTR [ebx+4]
	mov	ebx, eax
	shr	ebx, cl
	mov	ecx, edx
	shr	eax, cl
	and	bl, 15					; 0000000fH
	mov	BYTE PTR _t$[ebp+2], bl
	and	al, 15					; 0000000fH
	mov	BYTE PTR _t$[ebp+3], al
	push	DWORD PTR _t$[ebp+3]
	call	_gm
	push	2
	push	DWORD PTR _t$[ebp+2]
; Line 75
	movzx	ebx, al
	call	_gm
	movzx	eax, al
	push	1
	push	DWORD PTR _t$[ebp+1]
	xor	ebx, eax
	call	_gm
	movzx	eax, al
	push	4
	push	DWORD PTR _t$[ebp]
	xor	ebx, eax
	call	_gm
	movzx	eax, al
	push	6
	push	DWORD PTR _t$[ebp+3]
	xor	ebx, eax
	lea	ecx, DWORD PTR [esi+16]
	shl	ebx, cl
	call	_gm
	push	5
	push	DWORD PTR _t$[ebp+2]
	movzx	edi, al
	call	_gm
	movzx	eax, al
	push	6
	push	DWORD PTR _t$[ebp+1]
	xor	edi, eax
	call	_gm
	movzx	eax, al
	push	8
	push	DWORD PTR _t$[ebp]
	xor	edi, eax
	call	_gm
	movzx	eax, al
	xor	edi, eax
	mov	ecx, esi
	shl	edi, cl
	add	esp, 64					; 00000040H
; Line 76
	push	9
	push	DWORD PTR _t$[ebp+3]
	xor	ebx, edi
	xor	DWORD PTR _x$[ebp], ebx
	call	_gm
	push	10					; 0000000aH
	push	DWORD PTR _t$[ebp+2]
; Line 77
	movzx	edi, al
	call	_gm
	movzx	eax, al
	xor	edi, eax
; Line 76
	push	14					; 0000000eH
	push	DWORD PTR _t$[ebp+1]
	call	_gm
; Line 77
	movzx	eax, al
	push	11					; 0000000bH
	push	DWORD PTR _t$[ebp]
	xor	edi, eax
	call	_gm
	movzx	eax, al
	push	11					; 0000000bH
	push	DWORD PTR _t$[ebp+3]
	xor	edi, eax
	lea	ecx, DWORD PTR [esi+16]
	shl	edi, cl
	call	_gm
	push	15					; 0000000fH
	push	DWORD PTR _t$[ebp+2]
	movzx	ebx, al
	call	_gm
	movzx	eax, al
	push	2
	push	DWORD PTR _t$[ebp+1]
	xor	ebx, eax
	call	_gm
	movzx	eax, al
	push	2
	push	DWORD PTR _t$[ebp]
	xor	ebx, eax
	call	_gm
	add	DWORD PTR tv511[ebp], 4
	movzx	eax, al
	xor	ebx, eax
	mov	ecx, esi
	shl	ebx, cl
	sub	esi, 4
	add	esp, 64					; 00000040H
	xor	edi, ebx
	xor	DWORD PTR _x$[ebp+4], edi
	cmp	esi, -4					; fffffffcH
	jg	$LL8@mixColumns
; Line 79
	mov	ecx, DWORD PTR _x$[ebp]
	mov	eax, DWORD PTR _s$[ebp]
	pop	edi
	mov	DWORD PTR [eax], ecx
	mov	ecx, DWORD PTR _x$[ebp+4]
	pop	esi
	mov	DWORD PTR [eax+4], ecx
	pop	ebx
; Line 80
	leave
	ret	0
_mixColumnsSerial ENDP
_TEXT	ENDS
PUBLIC	_encrypt
; Function compile flags: /Ogspy
;	COMDAT _encrypt
_TEXT	SEGMENT
_kf$ = -4						; size = 1
_s$ = 8							; size = 4
_k$ = 12						; size = 4
_encrypt PROC						; COMDAT
; Line 4
	push	ebp
	mov	ebp, esp
	push	ecx
	push	ebx
	push	esi
; Line 10
	mov	esi, DWORD PTR _s$[ebp]
	xor	ebx, ebx
	push	edi
	mov	edi, DWORD PTR _k$[ebp]
	mov	BYTE PTR _kf$[ebp], bl
$LL4@encrypt:
; Line 11
	mov	eax, ebx
	and	eax, -2147483645			; 80000003H
	jns	SHORT $LN13@encrypt
	dec	eax
	or	eax, -4					; fffffffcH
	inc	eax
$LN13@encrypt:
	jne	SHORT $LN1@encrypt
; Line 12
	push	DWORD PTR _kf$[ebp]
	push	edi
	push	esi
	call	_addKey
	add	esp, 12					; 0000000cH
; Line 13
	xor	BYTE PTR _kf$[ebp], 1
$LN1@encrypt:
; Line 16
	push	ebx
	push	esi
	call	_addConstants
; Line 17
	push	esi
	call	_subCells
; Line 18
	push	esi
	call	_shiftRows
; Line 19
	push	esi
	call	_mixColumnsSerial
	add	esp, 20					; 00000014H
	inc	ebx
	cmp	ebx, 48					; 00000030H
	jl	SHORT $LL4@encrypt
; Line 21
	mov	eax, DWORD PTR [edi]
	xor	DWORD PTR [esi], eax
	mov	eax, DWORD PTR [edi+4]
	xor	DWORD PTR [esi+4], eax
	pop	edi
	pop	esi
	pop	ebx
; Line 22
	leave
	ret	0
_encrypt ENDP
_TEXT	ENDS
END
