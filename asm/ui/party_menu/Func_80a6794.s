	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a6794  @ 0x080a6794
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r10, r3
	mov	r0, r10
	sub	sp, #8
	bl	Func_80a1814
	mov	r5, #0
	mov	r1, #2
	mov	r2, #2
	mov	r3, #8
	str	r5, [sp]
	bl	Func_80a1870
	mov	r6, #2
	mov	r1, #5
	mov	r2, #0x1e
	mov	r3, #0xf
	mov	r0, #0
	str	r6, [sp]
	bl	_CreateUIBox
	mov	r3, #0x88
	lsl	r3, #1
	mov	r2, r10
	add	r3, r10
	str	r0, [r2, #0x20]
	strb	r5, [r3]
	ldr	r3, =0x111
	mov	r2, #0x89
	add	r3, r10
	lsl	r2, #1
	strb	r5, [r3]
	add	r2, r10
	mov	r3, #8
	strb	r3, [r2]
	ldr	r3, =0x113
	add	r3, r10
	strb	r6, [r3]
	mov	r1, #0
	mov	r2, #4
	mov	r8, r0
	bl	LoadUIHandCursorGFX
	mov	r3, #0xd
	strb	r3, [r0, #5]
	mov	r3, r10
	str	r0, [r3, #0x44]
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	mov	r3, r8
	str	r5, [sp]
	str	r5, [sp, #4]
	mov	r6, r10
	bl	_Func_801ec6c
	mov	r2, #8
	mov	r9, r2
	add	r6, #0x48
	mov	r7, #0x60
.La6818:
	mov	r3, r9
	str	r3, [sp]
	mov	r1, r5
	mov	r3, r7
	mov	r0, #4
	mov	r2, r8
	bl	_Func_801eb64
	add	r5, #1
	stmia	r6!, {r0}
	add	r7, #0x10
	cmp	r5, #7
	ble	.La6818
	mov	r2, #0x18
	mov	r6, r10
	mov	r5, #8
	mov	r9, r2
	add	r6, #0x68
	mov	r7, #0x60
.La683e:
	mov	r3, r9
	str	r3, [sp]
	mov	r1, r5
	mov	r3, r7
	mov	r0, #4
	mov	r2, r8
	bl	_Func_801eb64
	add	r5, #1
	stmia	r6!, {r0}
	add	r7, #0x10
	cmp	r5, #0xf
	ble	.La683e
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a6794

