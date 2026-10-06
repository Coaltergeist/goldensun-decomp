	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a9a5c  @ 0x080a9a5c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r6, r0
	mov	r0, r1
	mov	r10, r2
	mov	r8, r3
	bl	_GetUnit
	bl	Func_80a9cbc
	bl	Func_80a345c
	ldr	r5, =0xb24
	mov	r1, r6
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
	add	r0, r5, #1
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0x20
	bl	_Func_801e7c0
	add	r0, r5, #2
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0x10
	add	r5, #3
	bl	_Func_801e7c0
	mov	r0, r5
	mov	r5, #0xe4
	lsl	r5, #1
	mov	r3, #0x30
	mov	r1, r6
	mov	r2, #0
	add	r5, r8
	bl	_Func_801e7c0
	mov	r0, r6
	mov	r1, r5
	bl	Func_80a9aec
	mov	r3, r10
	cmp	r3, #0
	bne	.La9ad8
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r5
	mov	r1, #1
	bl	Func_80a3e28
	mov	r0, r5
	bl	Func_80a9c18
.La9ad8:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80a9a5c

