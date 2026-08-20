	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b6148  @ 0x080b6148
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e74
	ldr	r1, [r3]
	mov	r3, r1
	add	r3, #0x44
	ldrb	r3, [r3]
	sub	sp, #0x14
	mov	r7, #0
	cmp	r3, #0
	bne	.Lb615e
	b	.Lb636e
.Lb615e:
	mov	r3, r1
	add	r3, #0x50
	ldrb	r2, [r3]
	mov	r3, #1
	eor	r3, r2
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, =ewram_2002024
	lsl	r2, #3
	add	r5, r2, r3
	mov	r3, r1
	add	r3, #0x52
	ldrb	r3, [r3]
	ldr	r6, =ewram_2002224
	cmp	r3, #0
	beq	.Lb6180
	b	.Lb634c
.Lb6180:
	ldr	r3, .Lb6198	@ 0x65
	strh	r3, [r6]
	ldr	r3, .Lb619c	@ 0x78
	strh	r3, [r6, #2]
	ldr	r3, .Lb61a0	@ 0x54
	strh	r3, [r6, #8]
	ldr	r3, .Lb61a4	@ 0x55
	mov	r0, #1
	strh	r3, [r6, #0xa]
	bl	WaitFrames
	b	.Lb61ba

	.align	2, 0
.Lb6198:
	.word	0x65
.Lb619c:
	.word	0x78
.Lb61a0:
	.word	0x54
.Lb61a4:
	.word	0x55
	.pool

.Lb61b4:
	mov	r0, #1
	bl	WaitFrames
.Lb61ba:
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb61ce
	add	r7, #1
	cmp	r7, #0x18
	ble	.Lb61b4
	b	.Lb634c
.Lb61ce:
	ldrh	r2, [r6, #4]
	ldrh	r3, [r5, #4]
	mov	r7, #0
	cmp	r2, r3
	beq	.Lb61da
	b	.Lb634c
.Lb61da:
	ldrh	r2, [r6, #6]
	ldrh	r3, [r5, #6]
	cmp	r2, r3
	beq	.Lb61e4
	b	.Lb634c
.Lb61e4:
	ldrh	r2, [r6]
	ldrh	r3, [r5]
	cmp	r2, r3
	bne	.Lb61b4
	ldrh	r2, [r6, #2]
	ldrh	r3, [r5, #2]
	cmp	r2, r3
	bne	.Lb61b4
	ldrh	r2, [r6, #8]
	ldrh	r3, [r5, #8]
	cmp	r2, r3
	bne	.Lb61b4
	ldrh	r2, [r6, #0xa]
	ldrh	r3, [r5, #0xa]
	cmp	r2, r3
	bne	.Lb61b4
	ldr	r3, .Lb6228	@ 0x72
	strh	r3, [r6, #0xc]
	ldr	r3, .Lb622c	@ 0x6e
	strh	r3, [r6, #0xe]
	b	.Lb6214
.Lb620e:
	mov	r0, #1
	bl	WaitFrames
.Lb6214:
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb6234
	add	r7, #1
	cmp	r7, #0x18
	ble	.Lb620e
	b	.Lb634c

	.align	2, 0
.Lb6228:
	.word	0x72
.Lb622c:
	.word	0x6e
	.pool

.Lb6234:
	ldrh	r2, [r6, #8]
	ldrh	r3, [r5, #8]
	mov	r7, #0
	cmp	r2, r3
	beq	.Lb6240
	b	.Lb634c
.Lb6240:
	ldrh	r2, [r6, #0xa]
	ldrh	r3, [r5, #0xa]
	cmp	r2, r3
	beq	.Lb624a
	b	.Lb634c
.Lb624a:
	ldrh	r2, [r6, #0xc]
	ldrh	r3, [r5, #0xc]
	cmp	r2, r3
	bne	.Lb620e
	ldrh	r2, [r6, #0xe]
	ldrh	r3, [r5, #0xe]
	cmp	r2, r3
	bne	.Lb620e
	ldr	r3, =0x45
	ldr	r2, =0x58
	strh	r3, [r6]
	strh	r3, [r6, #4]
	ldr	r3, =0x43
	strh	r2, [r6, #2]
	strh	r3, [r6, #6]
	b	.Lb6270
.Lb626a:
	mov	r0, #1
	bl	WaitFrames
.Lb6270:
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb6294
	add	r7, #1
	cmp	r7, #0x18
	ble	.Lb626a
	b	.Lb634c

	.pool_aligned

.Lb6294:
	ldrh	r2, [r6, #0xc]
	ldrh	r3, [r5, #0xc]
	mov	r7, #0
	cmp	r2, r3
	bne	.Lb634c
	ldrh	r2, [r6, #0xe]
	ldrh	r3, [r5, #0xe]
	cmp	r2, r3
	bne	.Lb634c
	ldrh	r2, [r6]
	ldrh	r3, [r5]
	cmp	r2, r3
	bne	.Lb626a
	ldrh	r2, [r6, #2]
	ldrh	r3, [r5, #2]
	cmp	r2, r3
	bne	.Lb626a
	ldrh	r2, [r6, #4]
	ldrh	r3, [r5, #4]
	cmp	r2, r3
	bne	.Lb626a
	ldrh	r2, [r6, #6]
	ldrh	r3, [r5, #6]
	cmp	r2, r3
	bne	.Lb626a
	ldr	r3, =0x74
	strh	r3, [r6, #8]
	ldr	r3, =0x75
	strh	r3, [r6, #0xa]
	b	.Lb62d6
.Lb62d0:
	mov	r0, #1
	bl	WaitFrames
.Lb62d6:
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb62f8
	add	r7, #1
	cmp	r7, #0x18
	ble	.Lb62d0
	b	.Lb634c

	.pool_aligned

.Lb62f8:
	ldrh	r2, [r6]
	ldrh	r3, [r5]
	mov	r7, #0
	cmp	r2, r3
	bne	.Lb634c
	ldrh	r2, [r6, #2]
	ldrh	r3, [r5, #2]
	cmp	r2, r3
	bne	.Lb634c
	ldrh	r2, [r6, #4]
	ldrh	r3, [r5, #4]
	cmp	r2, r3
	bne	.Lb634c
	ldrh	r2, [r6, #6]
	ldrh	r3, [r5, #6]
	cmp	r2, r3
	bne	.Lb634c
	ldrh	r2, [r6, #8]
	ldrh	r3, [r5, #8]
	cmp	r2, r3
	bne	.Lb62d0
	ldrh	r2, [r6, #0xa]
	ldrh	r3, [r5, #0xa]
	cmp	r2, r3
	bne	.Lb62d0
	ldr	r3, =0x52
	strh	r3, [r6, #0xc]
	ldr	r3, =0x4e
	strh	r3, [r6, #0xe]
	b	.Lb633a
.Lb6334:
	mov	r0, #1
	bl	WaitFrames
.Lb633a:
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb6360
	add	r7, #1
	cmp	r7, #0x18
	ble	.Lb6334
.Lb634c:
	mov	r0, #1
	neg	r0, r0
	b	.Lb6370

	.pool_aligned

.Lb6360:
	ldrh	r3, [r5, #0xc]
	mov	r7, #0
	cmp	r3, #0x72
	bne	.Lb636e
	ldrh	r3, [r5, #0xe]
	cmp	r3, #0x6e
	beq	.Lb6334
.Lb636e:
	mov	r0, #0
.Lb6370:
	add	sp, #0x14
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b6148

