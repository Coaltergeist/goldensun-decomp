	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Debug_PaletteEditor  @ 0x0808d0c8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0
	mov	r2, #1
	mov	r9, r1
	ldr	r0, =GFX_Debug_PaletteEditor
	ldr	r1, =0x6001a00
	sub	sp, #0xc
	mov	r10, r2
	mov	r8, r2
	bl	DecompressLZ16
	mov	r3, #0
	str	r3, [sp, #8]
	mov	r11, r3
	b	.L8d114
.L8d0f2:
	mov	r1, r9
	mov	r2, r9
	lsl	r1, #12
	lsl	r2, #5
	str	r1, [sp, #8]
	mov	r11, r2
	b	.L8d114

	.pool_aligned

.L8d108:
	mov	r3, r9
	lsl	r3, #12
	mov	r1, r9
.L8d10e:
	lsl	r1, #5
	str	r3, [sp, #8]
.L8d112:
	mov	r11, r1
.L8d114:
	ldr	r3, =0xfffff0e0
	ldr	r1, =0x600205a
	add	r3, r9
	ldr	r0, [sp, #8]
	mov	r2, r1
	strh	r3, [r1]
	ldr	r3, .L8d144	@ 0xf052
	add	r2, #0x40
	strh	r3, [r2]
	ldr	r3, .L8d148	@ 0xf047
	add	r2, #0x40
	strh	r3, [r2]
	ldr	r3, .L8d14c	@ 0xf042
	add	r2, #0x40
	ldr	r7, =0x5000002
	strh	r3, [r2]
	ldr	r5, .L8d150	@ 0x1f
	mov	r2, #1
	ldr	r4, .L8d154	@ 0xf0e0
	add	r0, #0xd1
	add	r7, r11
	add	r1, #2
	mov	r12, r2
	b	.L8d164

	.align	2, 0
.L8d144:
	.word	0xf052
.L8d148:
	.word	0xf047
.L8d14c:
	.word	0xf042
.L8d150:
	.word	0x1f
.L8d154:
	.word	0xf0e0
	.pool

.L8d164:
	strh	r0, [r1]
	ldrh	r6, [r7]
	mov	r3, r6
	mov	r2, r1
	and	r3, r5
	add	r2, #0x40
	add	r3, r4
	strh	r3, [r2]
	lsr	r3, r6, #5
	and	r3, r5
	add	r2, #0x40
	add	r3, r4
	strh	r3, [r2]
	lsr	r3, r6, #10
	and	r3, r5
	add	r2, #0x40
	add	r3, r4
	strh	r3, [r2]
	mov	r3, #1
	add	r12, r3
	mov	r2, r12
	add	r0, #1
	add	r7, #2
	add	r1, #2
	cmp	r2, #0xf
	bls	.L8d164
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, =gKeyRepeat
	mov	r4, #0x1f
.L8d1a2:
	ldr	r2, [r1]
	mov	r3, #0x40
	and	r2, r3
	cmp	r2, #0
	beq	.L8d1ba
	sub	r3, #0x41
	add	r10, r3
	mov	r2, r10
	cmp	r2, #0
	bgt	.L8d1ba
	mov	r3, #3
	mov	r10, r3
.L8d1ba:
	ldr	r2, [r1]
	mov	r3, #0x80
	and	r2, r3
	cmp	r2, #0
	beq	.L8d1d0
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	cmp	r3, #3
	ble	.L8d1d0
	mov	r10, r2
.L8d1d0:
	ldr	r2, [r1]
	mov	r3, #0x20
	and	r2, r3
	cmp	r2, #0
	beq	.L8d1ea
	mov	r2, #1
	neg	r2, r2
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0
	bgt	.L8d1ea
	mov	r2, #0xf
	mov	r8, r2
.L8d1ea:
	ldr	r2, [r1]
	mov	r3, #0x10
	and	r2, r3
	cmp	r2, #0
	beq	.L8d200
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0xf
	ble	.L8d200
	mov	r8, r3
.L8d200:
	ldr	r2, [r1]
	mov	r3, #0x80
	lsl	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.L8d226
	mov	r3, #1
	neg	r3, r3
	add	r9, r3
	mov	r1, r9
	cmp	r1, #0
	blt	.L8d21a
	b	.L8d0f2
.L8d21a:
	mov	r2, #0xd
	mov	r9, r2
	mov	r3, r9
	mov	r1, r9
	lsl	r3, #12
	b	.L8d10e
.L8d226:
	ldr	r2, [r1]
	mov	r3, #0x80
	lsl	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.L8d246
	mov	r2, #1
	add	r9, r2
	mov	r3, r9
	cmp	r3, #0xd
	bgt	.L8d23e
	b	.L8d108
.L8d23e:
	mov	r1, #0
	mov	r9, r1
	str	r1, [sp, #8]
	b	.L8d112
.L8d246:
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.L8d292
	mov	r2, r9
	lsl	r3, r2, #4
	add	r3, r8
	mov	r1, #0xa0
	lsl	r3, #1
	lsl	r1, #19
	add	r7, r3, r1
	ldrh	r6, [r7]
	mov	r1, r10
	mov	r5, r6
	lsr	r2, r6, #5
	lsr	r3, r6, #10
	and	r5, r4
	and	r2, r4
	and	r3, r4
	cmp	r1, #1
	bne	.L8d278
	cmp	r5, #0x1e
	bhi	.L8d278
	add	r5, #1
.L8d278:
	mov	r1, r10
	cmp	r1, #2
	bne	.L8d284
	cmp	r2, #0x1e
	bhi	.L8d284
	add	r2, #1
.L8d284:
	mov	r1, r10
	cmp	r1, #3
	bne	.L8d2dc
	cmp	r3, #0x1e
	bhi	.L8d2dc
	add	r3, #1
	b	.L8d2dc
.L8d292:
	ldr	r2, [r1]
	mov	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.L8d2e8
	mov	r2, r9
	lsl	r3, r2, #4
	add	r3, r8
	mov	r1, #0xa0
	lsl	r3, #1
	lsl	r1, #19
	add	r7, r3, r1
	ldrh	r6, [r7]
	mov	r1, r10
	mov	r5, r6
	lsr	r2, r6, #5
	lsr	r3, r6, #10
	and	r5, r4
	and	r2, r4
	and	r3, r4
	cmp	r1, #1
	bne	.L8d2c4
	cmp	r5, #0
	beq	.L8d2c4
	sub	r5, #1
.L8d2c4:
	mov	r1, r10
	cmp	r1, #2
	bne	.L8d2d0
	cmp	r2, #0
	beq	.L8d2d0
	sub	r2, #1
.L8d2d0:
	mov	r1, r10
	cmp	r1, #3
	bne	.L8d2dc
	cmp	r3, #0
	beq	.L8d2dc
	sub	r3, #1
.L8d2dc:
	lsl	r3, #10
	lsl	r2, #5
	orr	r3, r2
	orr	r3, r5
	strh	r3, [r7]
	b	.L8d114
.L8d2e8:
	ldr	r2, [r1]
	mov	r3, #8
	and	r2, r3
	cmp	r2, #0
	beq	.L8d352
	mov	r2, r9
	lsl	r3, r2, #4
	add	r3, r8
	mov	r2, #0xa0
	lsl	r3, #1
	lsl	r2, #19
	add	r7, r3, r2
	ldrh	r6, [r7]
	b	.L8d334

	.pool_aligned

.L8d308:
	cmp	r5, #0
	bne	.L8d310
	ldr	r3, =0x7fff
	strh	r3, [r7]
.L8d310:
	cmp	r5, #0xa
	bne	.L8d316
	strh	r6, [r7]
.L8d316:
	cmp	r5, #0x14
	bne	.L8d31e
	ldr	r3, =0
	strh	r3, [r7]
.L8d31e:
	cmp	r5, #0x1e
	bne	.L8d324
	strh	r6, [r7]
.L8d324:
	add	r5, #1
	cmp	r5, #0x27
	bls	.L8d336
	b	.L8d334

	.pool_aligned

.L8d334:
	mov	r5, #0
.L8d336:
	mov	r0, #1
	str	r1, [sp, #4]
	str	r4, [sp]
	bl	WaitFrames
	ldr	r3, =gKeyHeld
	ldr	r2, [r3]
	mov	r3, #8
	and	r2, r3
	ldr	r1, [sp, #4]
	ldr	r4, [sp]
	cmp	r2, #0
	bne	.L8d308
	strh	r6, [r7]
.L8d352:
	ldr	r2, [r1]
	mov	r3, #4
	and	r2, r3
	cmp	r2, #0
	bne	.L8d370
	ldr	r3, =iwram_3001e40
	mov	r0, #1
	str	r1, [sp, #4]
	str	r4, [sp]
	ldr	r3, [r3]
	bl	WaitFrames
	ldr	r1, [sp, #4]
	ldr	r4, [sp]
	b	.L8d1a2
.L8d370:
	bl	LoadStaticUIGFX
	bl	ClearVRAM
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Debug_PaletteEditor
