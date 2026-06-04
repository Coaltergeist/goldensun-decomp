	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b5a0c
	push	{r5, r6, r7, lr}
	sub	sp, #0x1c
	ldr	r3, =iwram_3001e74
	mov	r7, sp
	mov	r0, r7
	ldr	r5, [r3]
	bl	Func_80b6a60
	mov	r6, r0
	cmp	r6, #0
	ble	.Lb5a3a
	mov	r2, r5
	mov	r0, r7
	add	r2, #0x58
	mov	r4, #0
	mov	r1, r6
.Lb5a2c:
	ldrh	r3, [r4, r0]
	sub	r1, #1
	strh	r3, [r2]
	add	r4, #2
	add	r2, #2
	cmp	r1, #0
	bne	.Lb5a2c
.Lb5a3a:
	lsl	r3, r6, #1
	ldr	r2, .Lb5a6c	@ 0xff
	add	r3, #0x58
	strh	r2, [r5, r3]
	mov	r0, r7
	bl	Func_80b6ae0
	mov	r3, r5
	add	r3, #0x42
	ldrb	r3, [r3]
	mov	r6, r0
	cmp	r3, #0
	blt	.Lb5a84
	cmp	r3, #1
	bgt	.Lb5a84
	mov	r1, #0
	cmp	r1, r6
	bge	.Lb5ab6
	add	r3, r5, #2
	mov	r2, r5
	mov	r12, r3
	mov	r0, r7
	add	r2, #0x66
	mov	r4, #0
	b	.Lb5a74

	.align	2, 0
.Lb5a6c:
	.word	0xff
	.pool

.Lb5a74:
	ldrh	r3, [r4, r0]
	add	r1, #1
	strh	r3, [r2]
	add	r4, #2
	add	r2, #2
	cmp	r1, r6
	blt	.Lb5a74
	b	.Lb5aba
.Lb5a84:
	cmp	r6, #0
	ble	.Lb5ab6
	lsr	r3, r6, #31
	add	r3, r6, r3
	add	r5, #2
	asr	r3, #1
	ldr	r4, =.Lc2a10
	mov	r12, r5
	mov	r14, r3
	mov	r0, r7
	mov	r1, r6
.Lb5a9a:
	ldrb	r3, [r4]
	lsl	r3, #24
	asr	r3, #24
	add	r3, r14
	ldrh	r2, [r0]
	lsl	r3, #1
	add	r3, #0x64
	sub	r1, #1
	add	r4, #1
	add	r0, #2
	strh	r2, [r5, r3]
	cmp	r1, #0
	bne	.Lb5a9a
	b	.Lb5aba
.Lb5ab6:
	add	r5, #2
	mov	r12, r5
.Lb5aba:
	lsl	r3, r6, #1
	ldr	r2, .Lb5acc	@ 0xff
	add	r3, #0x64
	mov	r1, r12
	strh	r2, [r1, r3]
	add	sp, #0x1c
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0

	.align	2, 0
.Lb5acc:
	.word	0xff
.func_end Func_80b5a0c

.thumb_func_start Func_80b5ad4
	push	{lr}
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x6000290
	ldr	r1, =0x6000280
	ldr	r2, =0x80000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =Func_80008d4
	mov	r1, #0x14
	ldr	r0, =0x600028c
	bl	_call_via_r3
	pop	{r1}
	bx	r1
.func_end Func_80b5ad4

