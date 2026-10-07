	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a602c  @ 0x080a602c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	mov	r4, r0
	lsl	r0, #2
	mov	r8, r0
	ldr	r7, [r3]
	mov	r3, r8
	add	r3, #0x14
	ldr	r0, [r7, r3]
	mov	r5, #0
	mov	r3, #1
	strb	r3, [r0, #5]
	strh	r5, [r0, #0xc]
	mov	r0, #0x87
	lsl	r0, #2
	add	r3, r7, r0
	ldr	r2, [r3]
	sub	r0, #3
	mov	r3, #0xd
	strb	r3, [r2, #5]
	add	r3, r7, r0
	ldrb	r3, [r3]
	add	r4, #0x1c
	add	r2, r7, #2
	ldrsb	r1, [r7, r4]
	strb	r3, [r2, r4]
	mov	r2, #1
	neg	r2, r2
	cmp	r1, r2
	bne	.La607c
	ldr	r3, .La6074	@ 0
	mov	r6, #0
	strb	r3, [r7, r4]
	b	.La608a

	.align	2, 0
.La6074:
	.word	0
	.pool

.La607c:
	lsl	r6, r1, #1
	add	r0, r6, r1
	lsl	r0, #3
	sub	r0, #0xa
	mov	r1, #0x10
	bl	Func_80a1ac0
.La608a:
	mov	r5, #0x82
	lsl	r5, #2
	add	r3, r6, r5
	ldrh	r0, [r7, r3]
	bl	_GetUnit
	mov	r3, #0xe4
	lsl	r3, #1
	add	r6, r7, r3
	mov	r1, r6
	mov	r2, #2
	bl	Func_80a68ec
	mov	r2, #0x86
	lsl	r2, #2
	add	r3, r7, r2
	add	r5, r7, r5
	mov	r1, r6
	strb	r0, [r3]
	mov	r0, r5
	bl	Func_80a60d4
	mov	r3, r8
	add	r3, #0x14
	mov	r5, r0
	ldr	r0, [r7, r3]
	bl	Func_80a17c4
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r5
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a602c

