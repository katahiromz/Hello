	.file	"hello13.cpp"
	.intel_syntax noprefix
	.text
	.section	.text$_Z6printfPKcz,"x"
	.linkonce discard
	.p2align 4,,15
	.globl	__Z6printfPKcz
	.def	__Z6printfPKcz;	.scl	2;	.type	32;	.endef
__Z6printfPKcz:
	push	ebx
	sub	esp, 24
	mov	DWORD PTR [esp], 1
	lea	ebx, [esp+36]
	call	[DWORD PTR __imp____acrt_iob_func]
	mov	edx, DWORD PTR [esp+32]
	mov	DWORD PTR [esp+8], ebx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], edx
	call	___mingw_vfprintf
	add	esp, 24
	pop	ebx
	ret
	.section .rdata,"dr"
LC0:
	.ascii "---\12\0"
	.align 4
LC1:
	.ascii "%p(%d): pNode %p, value %d, pNext %p\12\0"
	.text
	.p2align 4,,15
	.globl	_printAllNodes@4
	.def	_printAllNodes@4;	.scl	2;	.type	32;	.endef
_printAllNodes@4:
	push	edi
	push	esi
	push	ebx
	sub	esp, 32
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	mov	edi, DWORD PTR [esp+48]
	call	__Z6printfPKcz
	test	edi, edi
	je	L4
	mov	ebx, edi
	xor	esi, esi
	.p2align 4,,10
L6:
	mov	eax, DWORD PTR [ebx]
	mov	DWORD PTR [esp+20], eax
	mov	eax, DWORD PTR [ebx+4]
	mov	DWORD PTR [esp+12], ebx
	mov	DWORD PTR [esp+8], esi
	add	esi, 1
	mov	DWORD PTR [esp+16], eax
	mov	DWORD PTR [esp+4], edi
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	__Z6printfPKcz
	mov	ebx, DWORD PTR [ebx]
	test	ebx, ebx
	jne	L6
L4:
	add	esp, 32
	pop	ebx
	pop	esi
	pop	edi
	ret	4
	.p2align 4,,15
	.globl	_addNode@8
	.def	_addNode@8;	.scl	2;	.type	32;	.endef
_addNode@8:
	push	ebx
	sub	esp, 24
	mov	DWORD PTR [esp], 8
	mov	ebx, DWORD PTR [esp+32]
	call	__Znwj
	mov	edx, DWORD PTR [esp+36]
	mov	DWORD PTR [eax+4], edx
	mov	edx, DWORD PTR [ebx]
	mov	DWORD PTR [ebx], eax
	mov	DWORD PTR [eax], edx
	add	esp, 24
	mov	eax, 1
	pop	ebx
	ret	8
	.p2align 4,,15
	.globl	_findNode@8
	.def	_findNode@8;	.scl	2;	.type	32;	.endef
_findNode@8:
	mov	eax, DWORD PTR [esp+4]
	mov	edx, DWORD PTR [esp+8]
	test	eax, eax
	je	L15
	cmp	edx, DWORD PTR [eax+4]
	jne	L16
	jmp	L15
	.p2align 4,,10
L17:
	cmp	DWORD PTR [eax+4], edx
	je	L15
L16:
	mov	eax, DWORD PTR [eax]
	test	eax, eax
	jne	L17
L15:
	ret	8
	.p2align 4,,15
	.globl	_deleteNode@8
	.def	_deleteNode@8;	.scl	2;	.type	32;	.endef
_deleteNode@8:
	sub	esp, 28
	mov	ecx, DWORD PTR [esp+36]
	test	ecx, ecx
	je	L21
	mov	eax, DWORD PTR [esp+32]
	mov	edx, DWORD PTR [eax]
	test	edx, edx
	je	L23
	mov	eax, DWORD PTR [edx]
	cmp	ecx, eax
	jne	L25
	jmp	L39
	.p2align 4,,10
L37:
	mov	edx, DWORD PTR [eax]
	cmp	edx, ecx
	je	L24
	mov	eax, edx
L25:
	test	eax, eax
	jne	L37
L23:
	mov	DWORD PTR [esp+4], 8
	mov	DWORD PTR [esp], ecx
	call	__ZdlPvj
L21:
	add	esp, 28
	ret	8
L39:
	mov	eax, edx
	.p2align 4,,10
L24:
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR [eax], edx
	jmp	L23
	.p2align 4,,15
	.globl	_deleteAllNodes@4
	.def	_deleteAllNodes@4;	.scl	2;	.type	32;	.endef
_deleteAllNodes@4:
	push	esi
	push	ebx
	sub	esp, 20
	mov	esi, DWORD PTR [esp+32]
	mov	eax, DWORD PTR [esi]
	test	eax, eax
	je	L41
	.p2align 4,,10
L42:
	mov	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], 8
	call	__ZdlPvj
	mov	eax, ebx
	test	ebx, ebx
	jne	L42
L41:
	mov	DWORD PTR [esi], 0
	add	esp, 20
	pop	ebx
	pop	esi
	ret	4
	.def	___main;	.scl	2;	.type	32;	.endef
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	lea	ecx, [esp+4]
	and	esp, -16
	push	DWORD PTR [ecx-4]
	push	ebp
	mov	ebp, esp
	push	ebx
	push	ecx
	sub	esp, 16
	call	___main
	mov	eax, DWORD PTR _g_pHead
	mov	DWORD PTR [esp], eax
	call	_printAllNodes@4
	sub	esp, 4
	mov	DWORD PTR [esp], 8
	call	__Znwj
	mov	edx, DWORD PTR _g_pHead
	mov	DWORD PTR [eax+4], 123
	mov	DWORD PTR [eax], edx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR _g_pHead, eax
	call	_printAllNodes@4
	sub	esp, 4
	mov	DWORD PTR [esp], 8
	call	__Znwj
	mov	edx, DWORD PTR _g_pHead
	mov	DWORD PTR [eax+4], 456
	mov	DWORD PTR [eax], edx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR _g_pHead, eax
	call	_printAllNodes@4
	mov	eax, DWORD PTR _g_pHead
	sub	esp, 4
	mov	DWORD PTR [esp], eax
	call	_printAllNodes@4
	sub	esp, 4
	mov	DWORD PTR [esp], 8
	call	__Znwj
	mov	edx, DWORD PTR _g_pHead
	mov	DWORD PTR [eax+4], 789
	mov	DWORD PTR [eax], edx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR _g_pHead, eax
	call	_printAllNodes@4
	sub	esp, 4
	mov	DWORD PTR [esp], 8
	call	__Znwj
	mov	edx, DWORD PTR _g_pHead
	mov	DWORD PTR [eax+4], 555
	mov	DWORD PTR [eax], edx
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR _g_pHead, eax
	call	_printAllNodes@4
	mov	eax, DWORD PTR _g_pHead
	sub	esp, 4
	test	eax, eax
	je	L49
	.p2align 4,,10
L50:
	mov	ebx, DWORD PTR [eax]
	mov	DWORD PTR [esp], eax
	mov	DWORD PTR [esp+4], 8
	call	__ZdlPvj
	mov	eax, ebx
	test	ebx, ebx
	jne	L50
L49:
	mov	DWORD PTR [esp], 0
	mov	DWORD PTR _g_pHead, 0
	call	_printAllNodes@4
	xor	eax, eax
	sub	esp, 4
	lea	esp, [ebp-8]
	pop	ecx
	pop	ebx
	pop	ebp
	lea	esp, [ecx-4]
	ret
	.globl	_g_pHead
	.bss
	.align 4
_g_pHead:
	.space 4
	.ident	"GCC: (RosBE-Windows) 8.4.0"
	.def	___mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	__Znwj;	.scl	2;	.type	32;	.endef
	.def	__ZdlPvj;	.scl	2;	.type	32;	.endef
