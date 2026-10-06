	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b60a0  @ 0x080b60a0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e74
	ldr	r1, [r3]
	mov	r3, r1
	add	r3, #0x44
	ldrb	r3, [r3]
	sub	sp, #4
	mov	r4, #0
	cmp	r3, #0
	beq	.Lb613c
	mov	r3, r1
	add	r3, #0x50
	ldrb	r2, [r3]
	mov	r3, #1
	eor	r3, r2
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, =ewram_2002024
	lsl	r2, #3
	add	r7, r2, r3
	mov	r3, r1
	add	r3, #0x52
	ldrb	r3, [r3]
	ldr	r5, =ewram_2002224
	cmp	r3, #0
	bne	.Lb6136
	ldr	r3, .Lb60f8	@ 0x45
	ldr	r2, .Lb60fc	@ 0x58
	strh	r3, [r5]
	strh	r3, [r5, #4]
	ldr	r3, .Lb6100	@ 0x43
	strh	r2, [r5, #2]
	strh	r3, [r5, #6]
	mov	r6, #0
.Lb60e4:
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb6114
	add	r4, #1
	cmp	r4, #0x18
	ble	.Lb6126
	b	.Lb6136

	.align	2, 0
.Lb60f8:
	.word	0x45
.Lb60fc:
	.word	0x58
.Lb6100:
	.word	0x43
	.pool

.Lb6114:
	ldrh	r2, [r5, #4]
	ldrh	r3, [r7, #4]
	mov	r4, #0
	cmp	r2, r3
	bne	.Lb6126
	ldrh	r2, [r5, #6]
	ldrh	r3, [r7, #6]
	cmp	r2, r3
	beq	.Lb613c
.Lb6126:
	mov	r0, #1
	str	r4, [sp]
	bl	WaitFrames
	add	r6, #1
	ldr	r4, [sp]
	cmp	r6, #0x1d
	ble	.Lb60e4
.Lb6136:
	mov	r0, #1
	neg	r0, r0
	b	.Lb613e
.Lb613c:
	mov	r0, #0
.Lb613e:
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b60a0

