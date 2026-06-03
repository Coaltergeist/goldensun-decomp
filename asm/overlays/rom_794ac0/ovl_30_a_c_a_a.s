	.include "macros.inc"

.thumb_func_start OvlFunc_899_2008048
	push	{r5, lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x11
	bgt	.L62
	cmp	r3, #0xf
	blt	.L62
	ldr	r5, =.L5cc8
	b	.L64
.L62:
	ldr	r5, =.L5ab8
.L64:
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_2008048

.thumb_func_start OvlFunc_899_2008080
	push	{lr}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_8092054
	mov	r2, #0xa0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bcc	.Lbe
	mov	r0, #0
	bl	__Func_8092054
	mov	r2, #0xe0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bhi	.Lbe
	bl	__Func_8093c00
	mov	r3, #0x2a
	mov	r2, #0x55
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x29
	mov	r1, #0x55
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.Lf6
.Lbe:
	mov	r0, #0
	bl	__Func_8092054
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	cmp	r3, r2
	bcc	.Lf6
	mov	r0, #0
	bl	__Func_8092054
	mov	r2, #0xc0
	ldrh	r3, [r0, #6]
	lsl	r2, #7
	cmp	r3, r2
	bhi	.Lf6
	bl	__Func_8093c00
	mov	r3, #0x2a
	mov	r2, #0x55
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2b
	mov	r1, #0x55
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Lf6:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008080

.thumb_func_start OvlFunc_899_20080fc
	push	{lr}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r0, #0x1a
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x2a
	bne	.L12c
	mov	r3, #0x29
	mov	r2, #0x18
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x65
	mov	r1, #0x18
	mov	r2, #3
	mov	r3, #4
	bl	__Func_8010704
	ldr	r0, =0x859
	bl	__Func_8079358
.L12c:
	bl	__Func_8091750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20080fc

.thumb_func_start OvlFunc_899_200813c
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L15e
	mov	r0, #4
	mov	r1, #0x13
	bl	__Func_80b0278
	b	.L17e
.L15e:
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L170
	ldr	r0, =0x1280
	bl	__Func_8092b94
	b	.L176
.L170:
	ldr	r0, =0x1370
	bl	__Func_8092b94
.L176:
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_8092f84
.L17e:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200813c

.thumb_func_start OvlFunc_899_200819c
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L1be
	mov	r0, #5
	mov	r1, #0x14
	bl	__Func_80b0278
	b	.L1de
.L1be:
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1d0
	ldr	r0, =0x1282
	bl	__Func_8092b94
	b	.L1d6
.L1d0:
	ldr	r0, =0x1372
	bl	__Func_8092b94
.L1d6:
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092f84
.L1de:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200819c

.thumb_func_start OvlFunc_899_20081fc
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L21e
	mov	r0, #1
	mov	r1, #0x17
	bl	__Func_80b3284
	b	.L23e
.L21e:
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L230
	ldr	r0, =0x128d
	bl	__Func_8092b94
	b	.L236
.L230:
	ldr	r0, =0x137b
	bl	__Func_8092b94
.L236:
	mov	r0, #0x17
	mov	r1, #0
	bl	__Func_8092f84
.L23e:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20081fc

.thumb_func_start OvlFunc_899_200825c
	push	{lr}
	bl	__Func_80916b0
	bl	__Func_8078500
	cmp	r0, #0
	bne	.L288
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x1384
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092f84
	b	.L298
.L288:
	mov	r0, #0xe7
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0xe7
	mov	r1, #0
	bl	__Func_8091a58
.L298:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200825c

.thumb_func_start OvlFunc_899_20082a4
	push	{lr}
	bl	__Func_8091660
	ldr	r0, =0x12bb
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20082a4

.thumb_func_start OvlFunc_899_20082c0
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x92b
	mov	r1, #1
	bl	__Func_801776c
	ldr	r0, =0x94b
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20082c0

.thumb_func_start OvlFunc_899_20082e8
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x929
	mov	r1, #1
	bl	__Func_801776c
	ldr	r0, =0x949
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20082e8

.thumb_func_start OvlFunc_899_2008310
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x11
	bgt	.L32a
	cmp	r3, #0xf
	blt	.L32a
	ldr	r0, =.L61fc
	b	.L33a
.L32a:
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L338
	ldr	r0, =.L6250
	b	.L33a
.L338:
	ldr	r0, =.L5e30
.L33a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_2008310

.thumb_func_start OvlFunc_899_2008354
	push	{r5, lr}
	mov	r5, r0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, r5
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_899_200c624
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008354

.thumb_func_start OvlFunc_899_2008378
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r0
	bl	__Func_8092054
	mov	r3, #0
	mov	r5, r0
	add	r5, #0x5b
	mov	r8, r3
	mov	r3, #1
	strb	r3, [r5]
	bl	__Func_80916b0
	mov	r0, r6
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #2
	bl	__Func_809163c
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	mov	r3, r8
	strb	r3, [r5]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008378

.thumb_func_start OvlFunc_899_20083bc
	push	{r5, lr}
	mov	r5, r0
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_899_200c624
	mov	r1, #0
	mov	r0, r5
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L3ec
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L3ec:
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20083bc

.thumb_func_start OvlFunc_899_2008400
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1247
	bl	__Func_8092b94
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80924d4
	mov	r0, #0xb
	bl	OvlFunc_899_20083bc
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008400

.thumb_func_start OvlFunc_899_2008428
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1253
	bl	__Func_8092b94
	mov	r0, #0xf
	bl	OvlFunc_899_20083bc
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008428

.thumb_func_start OvlFunc_899_2008454
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L476
	mov	r0, #6
	mov	r1, #0x15
	bl	__Func_80b0278
	b	.L49c
.L476:
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L48e
	ldr	r0, =0x1284
	bl	__Func_8092b94
	mov	r0, #0x15
	bl	OvlFunc_899_20083bc
	b	.L49c
.L48e:
	ldr	r0, =0x1374
	bl	__Func_8092b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092f84
.L49c:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008454

.thumb_func_start OvlFunc_899_20084bc
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L4d4
	ldr	r0, =0x1243
	bl	__Func_8092b94
	b	.L4da
.L4d4:
	ldr	r0, =0x1353
	bl	__Func_8092b94
.L4da:
	mov	r0, #9
	bl	OvlFunc_899_2008354
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20084bc

