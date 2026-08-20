	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a355c  @ 0x080a355c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	mov	r10, r0
	ldr	r7, [r3]
	mov	r6, r10
	mov	r1, #0
	add	r6, #0x1c
	ldr	r0, [r7, #0x2c]
	mov	r8, r1
	ldrsb	r5, [r7, r6]
	bl	_Func_80164ac
	ldr	r1, =0x219
	add	r3, r7, r1
	ldrb	r3, [r3]
	add	r2, r7, #2
	strb	r3, [r2, r6]
	mov	r2, #1
	neg	r2, r2
	cmp	r5, r2
	bne	.La3594
	mov	r3, r8
	strb	r3, [r7, r6]
	mov	r6, #0
	b	.La35a2
.La3594:
	lsl	r6, r5, #1
	add	r0, r6, r5
	lsl	r0, #3
	sub	r0, #0xa
	mov	r1, #0x10
	bl	Func_80a1ac0
.La35a2:
	mov	r5, #0x82
	lsl	r5, #2
	add	r3, r6, r5
	ldrh	r0, [r7, r3]
	bl	_GetUnit
	mov	r1, #0xe4
	lsl	r1, #1
	add	r6, r7, r1
	mov	r1, r6
	mov	r2, #0
	bl	Func_80a3ddc
	mov	r2, #0x86
	lsl	r2, #2
	add	r3, r7, r2
	add	r5, r7, r5
	strb	r0, [r3]
	mov	r1, r6
	mov	r0, r5
	bl	Func_80a35f8
	mov	r1, r10
	lsl	r3, r1, #2
	add	r3, #0x14
	mov	r8, r0
	ldr	r0, [r7, r3]
	bl	Func_80a17c4
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a355c

