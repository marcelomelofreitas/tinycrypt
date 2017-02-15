; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\odzhan\tinycrypt\hash\md4\md4.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_MD4_Transform
; Function compile flags: /Ogspy
;	COMDAT _MD4_Transform
_TEXT	SEGMENT
_idxh$ = -60						; size = 16
_idxg$ = -44						; size = 16
_s$ = -28						; size = 16
_roth$ = -12						; size = 4
_rotg$ = -8						; size = 4
_rotf$ = -4						; size = 4
_c$ = 8							; size = 4
_MD4_Transform PROC					; COMDAT
; File c:\odzhan\tinycrypt\hash\md4\md4.c
; Line 42
	push	ebp
	mov	ebp, esp
	sub	esp, 60					; 0000003cH
; Line 66
	mov	edx, DWORD PTR _c$[ebp]
	push	ebx
	push	esi
	push	edi
	mov	esi, edx
	lea	edi, DWORD PTR _s$[ebp]
	movsd
	movsd
	movsd
	movsd
; Line 70
	mov	eax, DWORD PTR _s$[ebp]
	mov	DWORD PTR _rotf$[ebp], 319489795	; 130b0703H
	mov	DWORD PTR _rotg$[ebp], 218694915	; 0d090503H
	mov	DWORD PTR _roth$[ebp], 252381443	; 0f0b0903H
	mov	DWORD PTR _idxg$[ebp], 201851904	; 0c080400H
	mov	DWORD PTR _idxg$[ebp+4], 218694913	; 0d090501H
	mov	DWORD PTR _idxg$[ebp+8], 235537922	; 0e0a0602H
	mov	DWORD PTR _idxg$[ebp+12], 252380931	; 0f0b0703H
	mov	DWORD PTR _idxh$[ebp], 201590784	; 0c040800H
	mov	DWORD PTR _idxh$[ebp+4], 235276802	; 0e060a02H
	mov	DWORD PTR _idxh$[ebp+8], 218433793	; 0d050901H
	mov	DWORD PTR _idxh$[ebp+12], 252119811	; 0f070b03H
	xor	esi, esi
	lea	ebx, DWORD PTR [edx+16]
$LL10@MD4_Transf:
; Line 71
	cmp	esi, 16					; 00000010H
	jae	SHORT $LN7@MD4_Transf
; Line 73
	mov	ecx, DWORD PTR _s$[ebp+8]
	xor	ecx, DWORD PTR _s$[ebp+12]
	and	ecx, DWORD PTR _s$[ebp+4]
	xor	ecx, DWORD PTR _s$[ebp+12]
	add	ecx, DWORD PTR [ebx]
	add	eax, ecx
; Line 74
	mov	ecx, esi
	and	ecx, 3
	movzx	ecx, BYTE PTR _rotf$[ebp+ecx]
	jmp	SHORT $LN4@MD4_Transf
$LN7@MD4_Transf:
; Line 77
	mov	edi, DWORD PTR _s$[ebp+8]
	cmp	esi, 32					; 00000020H
	jae	SHORT $LN5@MD4_Transf
	mov	ecx, edi
	or	ecx, DWORD PTR _s$[ebp+4]
	and	edi, DWORD PTR _s$[ebp+4]
	and	ecx, DWORD PTR _s$[ebp+12]
	or	ecx, edi
	mov	edi, esi
	and	edi, 15					; 0000000fH
	movzx	edi, BYTE PTR _idxg$[ebp+edi]
	add	ecx, DWORD PTR [edx+edi*4+16]
	lea	eax, DWORD PTR [eax+ecx+1518500249]
; Line 78
	mov	ecx, esi
	and	ecx, 3
	movzx	ecx, BYTE PTR _rotg$[ebp+ecx]
; Line 79
	jmp	SHORT $LN4@MD4_Transf
$LN5@MD4_Transf:
; Line 81
	xor	edi, DWORD PTR _s$[ebp+4]
	mov	ecx, esi
	xor	edi, DWORD PTR _s$[ebp+12]
	and	ecx, 15					; 0000000fH
	movzx	ecx, BYTE PTR _idxh$[ebp+ecx]
	mov	ecx, DWORD PTR [edx+ecx*4+16]
	add	ecx, edi
	lea	eax, DWORD PTR [eax+ecx+1859775393]
; Line 82
	mov	ecx, esi
	and	ecx, 3
	movzx	ecx, BYTE PTR _roth$[ebp+ecx]
$LN4@MD4_Transf:
; Line 84
	mov	edi, eax
; Line 85
	mov	eax, DWORD PTR _s$[ebp+12]
	rol	edi, cl
; Line 86
	mov	ecx, DWORD PTR _s$[ebp+8]
	mov	DWORD PTR _s$[ebp+12], ecx
; Line 87
	mov	ecx, DWORD PTR _s$[ebp+4]
	inc	esi
	add	ebx, 4
	mov	DWORD PTR _s$[ebp+8], ecx
; Line 88
	mov	DWORD PTR _s$[ebp+4], edi
	cmp	esi, 48					; 00000030H
	jb	$LL10@MD4_Transf
; Line 91
	mov	DWORD PTR _s$[ebp], eax
	lea	eax, DWORD PTR _s$[ebp]
	push	4
	sub	eax, edx
	pop	ecx
$LL3@MD4_Transf:
; Line 92
	mov	esi, DWORD PTR [eax+edx]
	add	DWORD PTR [edx], esi
	add	edx, 4
	dec	ecx
	jne	SHORT $LL3@MD4_Transf
	pop	edi
	pop	esi
	pop	ebx
; Line 94
	leave
	ret	0
_MD4_Transform ENDP
_TEXT	ENDS
PUBLIC	_MD4_Init
; Function compile flags: /Ogspy
;	COMDAT _MD4_Init
_TEXT	SEGMENT
_c$ = 8							; size = 4
_MD4_Init PROC						; COMDAT
; Line 102
	mov	eax, DWORD PTR _c$[esp-4]
	and	DWORD PTR [eax+80], 0
	and	DWORD PTR [eax+84], 0
; Line 103
	mov	DWORD PTR [eax], 1732584193		; 67452301H
; Line 104
	mov	DWORD PTR [eax+4], -271733879		; efcdab89H
; Line 105
	mov	DWORD PTR [eax+8], -1732584194		; 98badcfeH
; Line 106
	mov	DWORD PTR [eax+12], 271733878		; 10325476H
; Line 107
	ret	0
_MD4_Init ENDP
_TEXT	ENDS
PUBLIC	_MD4_Update
; Function compile flags: /Ogspy
;	COMDAT _MD4_Update
_TEXT	SEGMENT
_p$ = -4						; size = 4
_c$ = 8							; size = 4
_r$ = 12						; size = 4
_in$ = 12						; size = 4
_len$ = 16						; size = 4
_MD4_Update PROC					; COMDAT
; Line 114
	push	ebp
	mov	ebp, esp
	push	ecx
; Line 118
	mov	ecx, DWORD PTR _len$[ebp]
	mov	eax, DWORD PTR _in$[ebp]
	mov	DWORD PTR _p$[ebp], eax
	test	ecx, ecx
	je	SHORT $LN10@MD4_Update
; Line 121
	push	ebx
	mov	ebx, DWORD PTR _c$[ebp]
	mov	eax, DWORD PTR [ebx+80]
	and	eax, 63					; 0000003fH
; Line 124
	add	DWORD PTR [ebx+80], ecx
	adc	DWORD PTR [ebx+84], 0
; Line 126
	test	ecx, ecx
	je	SHORT $LN13@MD4_Update
	push	esi
	push	edi
	jmp	SHORT $LN3@MD4_Update
$LL12@MD4_Update:
	mov	ecx, DWORD PTR _len$[ebp]
$LN3@MD4_Update:
; Line 127
	push	64					; 00000040H
	pop	edx
	sub	edx, eax
	mov	DWORD PTR _r$[ebp], ecx
	cmp	ecx, edx
	jb	SHORT $LN8@MD4_Update
	mov	DWORD PTR _r$[ebp], edx
$LN8@MD4_Update:
; Line 128
	mov	edx, DWORD PTR _r$[ebp]
	mov	esi, DWORD PTR _p$[ebp]
	mov	ecx, edx
; Line 129
	add	edx, eax
	lea	edi, DWORD PTR [ebx+eax+16]
	rep movsb
	cmp	edx, 64					; 00000040H
	jb	SHORT $LN14@MD4_Update
; Line 131
	push	ebx
	call	_MD4_Transform
	pop	ecx
; Line 132
	mov	ecx, DWORD PTR _r$[ebp]
	sub	DWORD PTR _len$[ebp], ecx
; Line 134
	add	DWORD PTR _p$[ebp], ecx
	xor	eax, eax
	cmp	DWORD PTR _len$[ebp], eax
	ja	SHORT $LL12@MD4_Update
$LN14@MD4_Update:
	pop	edi
	pop	esi
$LN13@MD4_Update:
	pop	ebx
$LN10@MD4_Update:
; Line 136
	leave
	ret	0
_MD4_Update ENDP
_TEXT	ENDS
PUBLIC	_MD4_Final
; Function compile flags: /Ogspy
;	COMDAT _MD4_Final
_TEXT	SEGMENT
_dgst$ = 8						; size = 4
_c$ = 12						; size = 4
_MD4_Final PROC						; COMDAT
; Line 144
	push	ebx
	push	esi
; Line 146
	mov	esi, DWORD PTR _c$[esp+4]
	mov	edx, DWORD PTR [esi+80]
	push	edi
	and	edx, 63					; 0000003fH
; Line 148
	push	64					; 00000040H
	lea	ebx, DWORD PTR [edx+esi+16]
	pop	ecx
	sub	ecx, edx
	xor	al, al
	mov	edi, ebx
	rep stosb
; Line 150
	mov	BYTE PTR [ebx], 128			; 00000080H
; Line 152
	cmp	edx, 56					; 00000038H
	jb	SHORT $LN1@MD4_Final
; Line 153
	push	esi
	call	_MD4_Transform
	pop	ecx
; Line 155
	push	64					; 00000040H
	lea	edi, DWORD PTR [esi+16]
	xor	al, al
	pop	ecx
	rep stosb
$LN1@MD4_Final:
; Line 158
	mov	eax, DWORD PTR [esi+80]
	mov	ecx, DWORD PTR [esi+84]
	shld	ecx, eax, 3
	shl	eax, 3
; Line 160
	push	esi
	mov	DWORD PTR [esi+72], eax
	mov	DWORD PTR [esi+76], ecx
	call	_MD4_Transform
; Line 162
	mov	edi, DWORD PTR _dgst$[esp+12]
	pop	ecx
	push	16					; 00000010H
	pop	ecx
	rep movsb
	pop	edi
	pop	esi
	pop	ebx
; Line 163
	ret	0
_MD4_Final ENDP
_TEXT	ENDS
END
