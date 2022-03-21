	.file	"hello13.cpp"
	.intel_syntax noprefix
	.text
	.section	.text$_Z6printfPKcz,"x"
	.linkonce discard
	.globl	__Z6printfPKcz
	.def	__Z6printfPKcz;	.scl	2;	.type	32;	.endef
__Z6printfPKcz:
	push	ebp
	mov	ebp, esp
	push	ebx
	sub	esp, 36
	lea	eax, [ebp+12]
	mov	DWORD PTR [ebp-16], eax
	mov	ebx, DWORD PTR [ebp-16]
	mov	DWORD PTR [esp], 1
	mov	eax, DWORD PTR __imp____acrt_iob_func
	call	eax
	mov	edx, eax
	mov	DWORD PTR [esp+8], ebx
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], edx
	call	___mingw_vfprintf
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-12]
	add	esp, 36
	pop	ebx
	pop	ebp
	ret
	.globl	_g_pHead
	.bss
	.align 4
_g_pHead:
	.space 4
	.section .rdata,"dr"
LC0:
	.ascii "---\12\0"
	.align 4
LC1:
	.ascii "%p(%d): pNode %p, value %d, pNext %p\12\0"
	.text
	.globl	__Z13printAllNodesP7tagNODE
	.def	__Z13printAllNodesP7tagNODE;	.scl	2;	.type	32;	.endef
__Z13printAllNodesP7tagNODE:
	push	ebp
	mov	ebp, esp
	sub	esp, 56
	mov	DWORD PTR [ebp-16], 0
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	__Z6printfPKcz
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-12], eax
L5:
	cmp	DWORD PTR [ebp-12], 0
	je	L6
	mov	eax, DWORD PTR [ebp-12]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp-12]
	mov	eax, DWORD PTR [eax+4]
	mov	DWORD PTR [esp+20], edx
	mov	DWORD PTR [esp+16], eax
	mov	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR [esp+12], eax
	mov	eax, DWORD PTR [ebp-16]
	mov	DWORD PTR [esp+8], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	__Z6printfPKcz
	add	DWORD PTR [ebp-16], 1
	mov	eax, DWORD PTR [ebp-12]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [ebp-12], eax
	jmp	L5
L6:
	nop
	leave
	ret
	.globl	__Z7addNodeRP7tagNODEi
	.def	__Z7addNodeRP7tagNODEi;	.scl	2;	.type	32;	.endef
__Z7addNodeRP7tagNODEi:
	push	ebp
	mov	ebp, esp
	sub	esp, 40
	mov	DWORD PTR [esp], 8
	call	__Znwj
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-12]
	mov	edx, DWORD PTR [ebp+12]
	mov	DWORD PTR [eax+4], edx
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR [eax], edx
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp-12]
	mov	DWORD PTR [eax], edx
	mov	eax, 1
	leave
	ret
	.globl	__Z8findNodeP7tagNODEi
	.def	__Z8findNodeP7tagNODEi;	.scl	2;	.type	32;	.endef
__Z8findNodeP7tagNODEi:
	push	ebp
	mov	ebp, esp
	sub	esp, 16
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-4], eax
L13:
	cmp	DWORD PTR [ebp-4], 0
	je	L10
	mov	eax, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [eax+4]
	cmp	DWORD PTR [ebp+12], eax
	jne	L11
	mov	eax, DWORD PTR [ebp-4]
	jmp	L12
L11:
	mov	eax, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [ebp-4], eax
	jmp	L13
L10:
	mov	eax, 0
L12:
	leave
	ret
	.globl	__Z10deleteNodeRP7tagNODES0_
	.def	__Z10deleteNodeRP7tagNODES0_;	.scl	2;	.type	32;	.endef
__Z10deleteNodeRP7tagNODES0_:
	push	ebp
	mov	ebp, esp
	sub	esp, 40
	cmp	DWORD PTR [ebp+12], 0
	je	L20
	mov	eax, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [ebp-12], eax
L19:
	cmp	DWORD PTR [ebp-12], 0
	je	L17
	mov	eax, DWORD PTR [ebp-12]
	mov	eax, DWORD PTR [eax]
	cmp	DWORD PTR [ebp+12], eax
	jne	L18
	mov	eax, DWORD PTR [ebp+12]
	mov	edx, DWORD PTR [eax]
	mov	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR [eax], edx
	jmp	L17
L18:
	mov	eax, DWORD PTR [ebp-12]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [ebp-12], eax
	jmp	L19
L17:
	mov	DWORD PTR [esp+4], 8
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp], eax
	call	__ZdlPvj
	jmp	L14
L20:
	nop
L14:
	leave
	ret
	.globl	__Z14deleteAllNodesRP7tagNODE
	.def	__Z14deleteAllNodesRP7tagNODE;	.scl	2;	.type	32;	.endef
__Z14deleteAllNodesRP7tagNODE:
	push	ebp
	mov	ebp, esp
	sub	esp, 40
	mov	eax, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [ebp-12], eax
L23:
	cmp	DWORD PTR [ebp-12], 0
	je	L22
	mov	eax, DWORD PTR [ebp-12]
	mov	eax, DWORD PTR [eax]
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [esp+4], 8
	mov	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR [esp], eax
	call	__ZdlPvj
	mov	eax, DWORD PTR [ebp-16]
	mov	DWORD PTR [ebp-12], eax
	jmp	L23
L22:
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [eax], 0
	nop
	leave
	ret
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	and	esp, -16
	sub	esp, 16
	call	___main
	mov	eax, DWORD PTR _g_pHead
	mov	DWORD PTR [esp], eax
	call	__Z13printAllNodesP7tagNODE
	mov	DWORD PTR [esp+4], 123
	mov	DWORD PTR [esp], OFFSET FLAT:_g_pHead
	call	__Z7addNodeRP7tagNODEi
	mov	eax, DWORD PTR _g_pHead
	mov	DWORD PTR [esp], eax
	call	__Z13printAllNodesP7tagNODE
	mov	DWORD PTR [esp+4], 456
	mov	DWORD PTR [esp], OFFSET FLAT:_g_pHead
	call	__Z7addNodeRP7tagNODEi
	mov	eax, DWORD PTR _g_pHead
	mov	DWORD PTR [esp], eax
	call	__Z13printAllNodesP7tagNODE
	mov	eax, DWORD PTR _g_pHead
	mov	DWORD PTR [esp], eax
	call	__Z13printAllNodesP7tagNODE
	mov	DWORD PTR [esp+4], 789
	mov	DWORD PTR [esp], OFFSET FLAT:_g_pHead
	call	__Z7addNodeRP7tagNODEi
	mov	eax, DWORD PTR _g_pHead
	mov	DWORD PTR [esp], eax
	call	__Z13printAllNodesP7tagNODE
	mov	DWORD PTR [esp+4], 555
	mov	DWORD PTR [esp], OFFSET FLAT:_g_pHead
	call	__Z7addNodeRP7tagNODEi
	mov	eax, DWORD PTR _g_pHead
	mov	DWORD PTR [esp], eax
	call	__Z13printAllNodesP7tagNODE
	mov	DWORD PTR [esp], OFFSET FLAT:_g_pHead
	call	__Z14deleteAllNodesRP7tagNODE
	mov	eax, DWORD PTR _g_pHead
	mov	DWORD PTR [esp], eax
	call	__Z13printAllNodesP7tagNODE
	mov	eax, 0
	leave
	ret
	.ident	"GCC: (RosBE-Windows) 8.4.0"
	.def	___mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	__Znwj;	.scl	2;	.type	32;	.endef
	.def	__ZdlPvj;	.scl	2;	.type	32;	.endef
