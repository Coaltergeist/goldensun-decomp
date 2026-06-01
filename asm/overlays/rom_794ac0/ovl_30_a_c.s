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

.thumb_func_start OvlFunc_899_20084f4
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L50c
	ldr	r0, =0x135c
	bl	__Func_8092b94
	b	.L512
.L50c:
	ldr	r0, =0x124c
	bl	__Func_8092b94
.L512:
	mov	r0, #0xc
	bl	OvlFunc_899_2008354
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20084f4

.thumb_func_start OvlFunc_899_200852c
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x856
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L572
	ldr	r0, =0x851
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L56a
	ldr	r0, =0x1276
	bl	__Func_8092b94
	mov	r0, #0x10
	bl	OvlFunc_899_2008354
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0x10
	mov	r1, #3
	mov	r2, #0x14
	bl	OvlFunc_899_200c63c
	ldr	r0, =0x851
	bl	__Func_8079358
	b	.L578
.L56a:
	ldr	r0, =0x1278
	bl	__Func_8092b94
	b	.L578
.L572:
	ldr	r0, =0x1250
	bl	__Func_8092b94
.L578:
	mov	r0, #0x10
	bl	OvlFunc_899_2008354
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200852c

.thumb_func_start OvlFunc_899_200859c
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x128e
	bl	__Func_8092b94
	mov	r0, #0x12
	bl	OvlFunc_899_2008354
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200859c

.thumb_func_start OvlFunc_899_20085bc
	push	{r5, lr}
	mov	r0, #0x18
	bl	__Func_8092054
	mov	r5, r0
	bl	__Func_80916b0
	mov	r1, #2
	mov	r0, #0x18
	bl	__Func_80925cc
	ldr	r0, =0x12ac
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #10
	mov	r0, #0x18
	bl	__Func_8092064
	ldrh	r2, [r5, #6]
	mov	r3, #0xf0
	lsl	r3, #8
	ldr	r1, =0xffffb000
	and	r3, r2
	mov	r2, #0xc0
	add	r3, r1
	lsl	r2, #7
	cmp	r3, r2
	bhi	.L61e
	add	r5, #0x64
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	cmp	r3, #2
	bgt	.L648
	ldr	r2, =.L64a8
	lsl	r3, #2
	ldr	r1, [r2, r3]
	mov	r0, #0x18
	bl	__Func_809207c
	ldrh	r3, [r5]
	add	r3, #1
	b	.L658
.L61e:
	add	r5, #0x64
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #2
	ble	.L648
	ldr	r2, =.L64a8
	lsl	r3, #2
	ldr	r1, [r2, r3]
	mov	r0, #0x18
	bl	__Func_809207c
	ldrh	r3, [r5]
	add	r3, #1
	b	.L658

	.pool_aligned

.L648:
	ldr	r2, =.L64c0
	lsl	r3, #2
	ldr	r1, [r2, r3]
	mov	r0, #0x18
	bl	__Func_809207c
	ldrh	r3, [r5]
	sub	r3, #1
.L658:
	strh	r3, [r5]
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #5
	ble	.L66a
	mov	r3, #0
	strh	r3, [r5]
	ldr	r2, .L678	@ 0
.L66a:
	lsl	r3, r2, #16
	cmp	r3, #0
	bge	.L680
	mov	r3, #5
	strh	r3, [r5]
	b	.L680

	.align	2, 0
.L678:
	.word	0
	.pool

.L680:
	mov	r0, #0x18
	bl	__Func_80920e8
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20085bc

.thumb_func_start OvlFunc_899_2008690
	push	{r5, r6, r7, lr}
	mov	r0, #0x19
	bl	__Func_8092054
	mov	r7, #0xf0
	ldrh	r3, [r0, #6]
	mov	r5, r0
	add	r5, #0x64
	lsl	r7, #8
	and	r7, r3
	ldrh	r3, [r5]
	lsl	r3, #16
	asr	r6, r3, #17
	bl	__Func_80916b0
	mov	r1, #2
	mov	r0, #0x19
	bl	__Func_80925cc
	ldr	r0, =0x12ad
	bl	__Func_8092b94
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xe0
	mov	r2, #0xe0
	mov	r0, #0x19
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r0, #0
	ldrsh	r3, [r5, r0]
	cmp	r3, #4
	bhi	.L78e
	ldr	r2, =.L6e4
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L6e4:
	.word	.L71a
	.word	.L742
	.word	.L71a
	.word	.L742
	.word	.L6f8
.L6f8:
	ldr	r2, =0xffffdfff
	ldr	r0, =0x7ffe
	add	r3, r7, r2
	cmp	r3, r0
	bhi	.L70e
	ldr	r1, =.L58bc
	mov	r0, #0x19
	bl	__Func_809207c
	mov	r3, #2
	b	.L78c
.L70e:
	ldr	r1, =.L5858
	mov	r0, #0x19
	bl	__Func_809207c
	mov	r3, #3
	b	.L78c
.L71a:
	ldr	r2, =0xffffdfff
	ldr	r0, =0x7ffe
	add	r3, r7, r2
	cmp	r3, r0
	bhi	.L76a
	mov	r0, #0
	ldrsh	r2, [r5, r0]
	lsl	r3, r6, #2
	add	r3, r2
	ldr	r1, =.L64d8
	lsl	r3, #2
	ldr	r1, [r1, r3]
	mov	r0, #0x19
	bl	__Func_809207c
	ldrh	r3, [r5]
	lsl	r2, r6, #1
	sub	r3, r2
	add	r3, #1
	b	.L78c
.L742:
	ldr	r0, =0xffff9fff
	ldr	r2, =0x7ffe
	add	r3, r7, r0
	cmp	r3, r2
	bhi	.L76a
	mov	r0, #0
	ldrsh	r2, [r5, r0]
	lsl	r3, r6, #2
	add	r3, r2
	ldr	r1, =.L64d8
	lsl	r3, #2
	ldr	r1, [r1, r3]
	mov	r0, #0x19
	bl	__Func_809207c
	ldrh	r3, [r5]
	lsl	r2, r6, #1
	sub	r3, r2
	add	r3, #1
	b	.L78c
.L76a:
	mov	r3, #1
	mov	r0, #0
	ldrsh	r2, [r5, r0]
	eor	r3, r6
	lsl	r3, #2
	add	r3, r2
	ldr	r1, =.L64d8
	lsl	r3, #2
	ldr	r1, [r1, r3]
	mov	r0, #0x19
	bl	__Func_809207c
	ldrh	r3, [r5]
	lsl	r2, r6, #1
	sub	r3, r2
	ldr	r2, =0xffff
	add	r3, r2
.L78c:
	strh	r3, [r5]
.L78e:
	ldrh	r2, [r5]
	mov	r3, #3
	and	r3, r2
	strh	r3, [r5]
	mov	r0, #0x19
	bl	__Func_80920e8
	bl	__Func_8091750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008690

.thumb_func_start OvlFunc_899_20087cc
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1356
	bl	__Func_8092b94
	mov	r0, #0xa
	bl	OvlFunc_899_20083bc
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20087cc

.thumb_func_start OvlFunc_899_20087ec
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1359
	bl	__Func_8092b94
	mov	r0, #0xb
	bl	OvlFunc_899_2008354
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20087ec

.thumb_func_start OvlFunc_899_200880c
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1368
	bl	__Func_8092b94
	mov	r0, #0xe
	bl	OvlFunc_899_20083bc
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200880c

.thumb_func_start OvlFunc_899_200882c
	push	{r5, lr}
	bl	__Func_80916b0
	ldr	r0, =0x857
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L8ca
	ldr	r5, =0x1360
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #0x10
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0x10
	mov	r2, #0x14
	bl	OvlFunc_899_200c624
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	bl	__Func_8078500
	cmp	r0, #0
	bne	.L8bc
	add	r0, r5, #3
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	bl	__Func_8091750
	b	.L906
.L8bc:
	ldr	r0, =0x857
	bl	__Func_8079358
	mov	r0, #0xbd
	mov	r1, #0
	bl	__Func_8091a58
.L8ca:
	ldr	r0, =0x1364
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092c40
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L8fa
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L8fa:
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
.L906:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200882c

.thumb_func_start OvlFunc_899_200891c
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_899_200c624
	ldr	r0, =0x85b
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L946
	ldr	r0, =0x137c
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092c40
	b	.L954
.L946:
	ldr	r0, =0x1385
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092c40
.L954:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L9c0
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x12
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	bl	__Func_8078500
	cmp	r0, #0
	bne	.L9a8
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
	b	.L9ec
.L9a8:
	mov	r0, #0xe7
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0xe7
	mov	r1, #0
	bl	__Func_8091a58
	ldr	r0, =0x85b
	bl	__Func_8079358
	b	.L9ec
.L9c0:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092f84
.L9ec:
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200891c

.thumb_func_start OvlFunc_899_2008a14
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	bne	.La2c
	ldr	r0, =0x1245
	bl	__Func_8092b94
	b	.La32
.La2c:
	ldr	r0, =0x1355
	bl	__Func_8092b94
.La32:
	mov	r0, #9
	bl	OvlFunc_899_2008378
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008a14

.thumb_func_start OvlFunc_899_2008a4c
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	bne	.La64
	ldr	r0, =0x124b
	bl	__Func_8092b94
	b	.La6a
.La64:
	ldr	r0, =0x135b
	bl	__Func_8092b94
.La6a:
	mov	r0, #0xb
	bl	OvlFunc_899_2008378
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008a4c

.thumb_func_start OvlFunc_899_2008a84
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	bne	.La9c
	ldr	r0, =0x124e
	bl	__Func_8092b94
	b	.Laa2
.La9c:
	ldr	r0, =0x135e
	bl	__Func_8092b94
.Laa2:
	mov	r0, #0xc
	bl	OvlFunc_899_2008378
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008a84

.thumb_func_start OvlFunc_899_2008abc
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lad4
	ldr	r0, =0x127c
	bl	__Func_8092b94
	b	.Lada
.Lad4:
	ldr	r0, =0x136c
	bl	__Func_8092b94
.Lada:
	mov	r0, #0x10
	bl	OvlFunc_899_2008378
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008abc

.thumb_func_start OvlFunc_899_2008af4
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lb0c
	ldr	r0, =0x1294
	bl	__Func_8092b94
	b	.Lb24
.Lb0c:
	ldr	r0, =0x85b
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lb1e
	ldr	r0, =0x1382
	bl	__Func_8092b94
	b	.Lb24
.Lb1e:
	ldr	r0, =0x1cf4
	bl	__Func_8092b94
.Lb24:
	mov	r0, #0x12
	bl	OvlFunc_899_2008378
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008af4

.thumb_func_start OvlFunc_899_2008b48
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	mov	r0, #2
	bl	__Func_8092064
	mov	r0, #0x13
	bl	__Func_80f9080
	mov	r1, #0xc0
	mov	r2, #0xcc
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0xcc
	mov	r0, #1
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xb8
	mov	r2, #0xcc
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xd0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x85
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lbc2
	b	.Ld30
.Lbc2:
	mov	r0, #0x85
	lsl	r0, #4
	bl	__Func_8079358
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_899_200c658
	mov	r0, #0x28
	bl	__Func_809163c
	bl	OvlFunc_899_200c684
	ldr	r0, =0x1256
	bl	__Func_8092b94
	mov	r0, #0x3c
	bl	__Func_80f9080
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0x1e
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_899_200c658
	mov	r0, #0x28
	bl	__Func_809163c
	bl	OvlFunc_899_200c684
	mov	r0, #2
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x32
	bl	OvlFunc_899_200c624
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_899_200c658
	mov	r0, #0x28
	bl	__Func_809163c
	bl	OvlFunc_899_200c684
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #2
	mov	r1, #0x32
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0x14
	bl	OvlFunc_899_200c63c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_899_200c5f4
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0xbc
	mov	r2, #0xbc
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #2
	bl	__Func_80921c4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x32
	bl	OvlFunc_899_200c624
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #3
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092c40
	b	.Ld44
.Ld30:
	mov	r0, #0x3c
	bl	__Func_80f9080
	ldr	r0, =0x125d
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092c40
.Ld44:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Ld8c
	bl	OvlFunc_899_2008de4
	ldr	r0, =0x856
	bl	__Func_8079358
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.Ld7a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_8092128
.Ld7a:
	mov	r0, #2
	bl	__Func_80923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	b	.Ld94
.Ld8c:
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
.Ld94:
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.Ldb4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_8092128
.Ldb4:
	mov	r0, #1
	bl	__Func_80923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	bl	__Func_808acc4
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008b48

.thumb_func_start OvlFunc_899_2008de4
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #2
	bl	__Func_8092054
	mov	r3, #0
	add	r0, #0x5b
	mov	r2, #0
	mov	r1, #4
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_8092560
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r3, =0x125f
	mov	r8, r3
	mov	r0, r8
	bl	__Func_8092b94
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r1, #0xbc
	mov	r2, #0xc4
	lsl	r2, #1
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_899_200c658
	mov	r0, #0x28
	bl	__Func_809163c
	bl	OvlFunc_899_200c684
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r1, #0xc0
	mov	r2, #0xd4
	lsl	r2, #1
	strb	r3, [r0]
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_809163c
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0x1e
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_899_200c60c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x28
	bl	OvlFunc_899_200c60c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809280c
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091c7c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #3
	mov	r2, #0xa
	bl	OvlFunc_899_200c63c
	mov	r1, #0xc0
	mov	r2, #0xcc
	lsl	r2, #1
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, r8
	mov	r1, #1
	add	r0, #5
	bl	__Func_801776c
	mov	r0, r8
	add	r0, #6
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #1
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, #0xb0
	and	r5, r3
	mov	r2, #0xcc
	lsl	r1, #1
	lsl	r2, #1
	strb	r5, [r0]
	mov	r0, #1
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_809163c
	mov	r0, #1
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r6, r3
	strb	r6, [r0]
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xb8
	mov	r2, #0xcc
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #2
	bl	__Func_809218c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xb8
	mov	r2, #0xd4
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r2, #0
	mov	r1, #1
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #2
	bl	__Func_80923c4
	mov	r0, #2
	mov	r1, #1
	bl	OvlFunc_899_200c658
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	bl	OvlFunc_899_200c684
	mov	r2, #0x1e
	mov	r0, #2
	mov	r1, #0
	bl	OvlFunc_899_200c624
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #3
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0
	mov	r0, #1
	mov	r1, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0
	mov	r1, #3
	mov	r2, #0x28
	bl	OvlFunc_899_200c63c
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0x1e
	bl	OvlFunc_899_200c60c
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r1, =0x103
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_899_200c60c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, r8
	mov	r1, #1
	add	r0, #0xd
	bl	__Func_801776c
	mov	r0, r8
	add	r0, #0xe
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0
	bl	OvlFunc_899_200c658
	bl	__Func_8097adc
	mov	r0, #1
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	bl	OvlFunc_899_200c684
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0
	bl	__Func_8092848
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092848
	mov	r2, #0x14
	mov	r0, #0
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #1
	mov	r1, #0x1e
	b	.L1214

	.pool_aligned

.L1214:
	bl	OvlFunc_899_200c5f4
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0
	bl	__Func_809280c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, #1
	bl	OvlFunc_899_200c624
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x83
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0x14
	bl	OvlFunc_899_200c63c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #0
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80917d0
	mov	r3, #0x16
	add	r8, r3
	mov	r0, r8
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008de4

.thumb_func_start OvlFunc_899_2009348
	push	{r5, lr}
	bl	__Func_80916b0
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	ldr	r2, =0x6666
	mov	r0, #2
	ldr	r1, =0xcccc
	bl	__Func_8092064
	mov	r1, #3
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r5, =0x12c5
	mov	r1, #1
	mov	r0, r5
	add	r5, #1
	bl	__Func_801776c
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80924d4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #3
	mov	r2, #0x28
	bl	OvlFunc_899_200c63c
	mov	r1, #0xc6
	mov	r2, #0xdc
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r1, #0xc6
	mov	r2, #0xdc
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xc6
	mov	r2, #0xdc
	mov	r0, #2
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xca
	mov	r2, #0xd8
	mov	r0, #1
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0xc6
	mov	r2, #0xe4
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #2
	bl	__Func_809218c
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #2
	bl	__Func_80923c4
	mov	r0, #2
	mov	r1, #8
	mov	r2, #0x3c
	bl	OvlFunc_899_200c60c
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #8
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r2, #0x1e
	mov	r0, #1
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #8
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r2, #0x1e
	mov	r0, #8
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_899_200c5f4
	mov	r1, #0xba
	mov	r2, #0xcc
	lsl	r2, #17
	lsl	r1, #18
	mov	r0, #0xa
	bl	__Func_80923e4
	mov	r0, #0x3d
	bl	__Func_80f9080
	mov	r0, #0xa
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #8
	mov	r1, #0xa
	mov	r2, #0x28
	bl	OvlFunc_899_200c60c
	mov	r0, #0xa
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xc
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xba
	mov	r2, #0xcc
	mov	r0, #0xb
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xba
	mov	r2, #0xcc
	mov	r0, #0xc
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xc6
	mov	r2, #0xd0
	mov	r0, #0xa
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x46
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #8
	mov	r1, #0xa
	bl	__Func_809280c
	ldr	r1, =.L5248
	mov	r0, #0xb
	bl	__Func_809207c
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r1, =.L52ac
	mov	r0, #0xc
	bl	__Func_809207c
	mov	r0, #0xc
	bl	__Func_80920e8
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #0xa
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xc
	mov	r1, #0x28
	bl	OvlFunc_899_200c5f4
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #0xa
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #8
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #8
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r2, #0x1e
	mov	r0, #8
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x1e
	mov	r0, #1
	mov	r1, #2
	bl	OvlFunc_899_200c60c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #8
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0x14
	b	.L1764

	.pool_aligned

.L1764:
	bl	OvlFunc_899_200c5f4
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x14
	mov	r0, #0xc
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #0xc
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092c40
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x1e
	bl	OvlFunc_899_200c60c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1854
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #2
	mov	r1, #0xa
	bl	__Func_809280c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
	b	.L1894
.L1854:
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xa
	mov	r0, #2
	bl	__Func_809280c
	ldr	r5, =0x12dc
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	sub	r5, #3
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, r5
	bl	__Func_8092b94
.L1894:
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #0xb
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x14
	mov	r0, #0xc
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #0xc
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x1e
	mov	r0, #0xa
	mov	r1, #0xb
	bl	OvlFunc_899_200c624
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xb
	mov	r1, #3
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r2, #0x1e
	mov	r0, #0xa
	mov	r1, #0xc
	bl	OvlFunc_899_200c624
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xc
	mov	r1, #3
	mov	r2, #0x28
	bl	OvlFunc_899_200c63c
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092f84
	ldr	r0, =0x854
	bl	__Func_8079358
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	ldr	r5, =0x15
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	mov	r0, r5
	mov	r1, #0x11
	bl	__Func_8091f90
	mov	r0, r5
	mov	r1, #0x10
	bl	__Func_8091fa8
	ldr	r3, =ewram_2000240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0xc
	mov	r1, #5
	bl	__Func_8091eb0
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2009348

.thumb_func_start OvlFunc_899_2009990
	push	{lr}
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #0xb
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2009990

.thumb_func_start OvlFunc_899_20099a4
	push	{lr}
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0xb6
	mov	r2, #0xcc
	lsl	r1, #2
	mov	r0, #0
	lsl	r2, #1
	bl	__Func_809218c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #0xf
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20099a4

.thumb_func_start OvlFunc_899_20099e4
	push	{lr}
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0xba
	mov	r2, #0xcc
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	ldr	r0, =0x854
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1a22
	bl	__Func_80916b0
	ldr	r0, =0x12c3
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
.L1a22:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #0xe
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20099e4

.thumb_func_start OvlFunc_899_2009a4c
	push	{r5, r6, lr}
	mov	r0, #0x18
	sub	sp, #8
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0x19
	bl	__Func_8092054
	mov	r6, r0
	bl	__Func_80916b0
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r2, #0xae
	mov	r0, #0
	mov	r1, #0xe8
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0xae
	mov	r1, #0xc8
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0x19
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0x18
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0xa
	mov	r0, #0x19
	mov	r1, #0
	bl	OvlFunc_899_200c60c
	mov	r1, #2
	mov	r0, #0x18
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x1296
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x19
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x19
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0x18
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x18
	lsl	r1, #11
	lsl	r2, #10
	bl	__Func_8092064
	mov	r1, #0xe0
	mov	r2, #0xe0
	lsl	r2, #9
	mov	r0, #0x19
	lsl	r1, #10
	bl	__Func_8092064
	ldr	r1, =.L5830
	mov	r0, #0x19
	bl	__Func_809207c
	ldr	r1, =.L5560
	mov	r0, #0x18
	bl	__Func_809207c
	mov	r0, #0x18
	bl	__Func_80920e8
	mov	r3, #0xe
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #3
	mov	r1, #0x2d
	mov	r0, #0xe
	bl	__Func_8010704
	ldr	r0, =0x852
	bl	__Func_8079358
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079358
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_899_200aba0
	bl	__Func_80041d8
	add	r5, #0x64
	mov	r3, #1
	strh	r3, [r5]
	add	r6, #0x64
	mov	r3, #3
	strh	r3, [r6]
	bl	__Func_8091750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2009a4c

.thumb_func_start OvlFunc_899_2009ba0
	push	{r5, r6, lr}
	mov	r0, #0x18
	sub	sp, #8
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0x19
	bl	__Func_8092054
	mov	r6, r0
	bl	__Func_80916b0
	ldr	r0, =OvlFunc_899_200aba0
	bl	__Func_8004278
	mov	r0, #0xc0
	lsl	r0, #2
	add	r5, #0x64
	bl	__Func_8079374
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #3
	bgt	.L1bda
	ldr	r1, =.L5678
	mov	r0, #0x18
	bl	__Func_809207c
	b	.L1be2
.L1bda:
	ldr	r1, =.L5650
	mov	r0, #0x18
	bl	__Func_809207c
.L1be2:
	mov	r3, r6
	add	r3, #0x64
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bgt	.L1bf8
	ldr	r1, =.L5768
	mov	r0, #0x19
	bl	__Func_809207c
	b	.L1c00
.L1bf8:
	ldr	r1, =.L5650
	mov	r0, #0x19
	bl	__Func_809207c
.L1c00:
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r2, #0xb6
	mov	r0, #0
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xf8
	mov	r2, #0xb6
	mov	r0, #2
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0xf8
	mov	r2, #0xb6
	mov	r0, #1
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0x84
	mov	r2, #0xba
	mov	r0, #2
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_809218c
	mov	r2, #0xba
	mov	r1, #0xe8
	lsl	r2, #2
	mov	r0, #1
	bl	__Func_80921c4
	mov	r0, #2
	bl	__Func_80923c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x1e
	mov	r0, #2
	mov	r1, #0
	bl	OvlFunc_899_200c60c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	ldr	r5, =0x1299
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #2
	bl	OvlFunc_899_200c60c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0x14
	bl	OvlFunc_899_200c63c
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0xa
	bl	OvlFunc_899_200c624
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L1cf2
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1cf2:
	mov	r1, #0x1e
	mov	r0, #1
	bl	OvlFunc_899_200c5f4
	add	r0, r5, #4
	bl	__Func_8092b94
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0x32
	bl	OvlFunc_899_200c60c
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x32
	bl	OvlFunc_899_200c624
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0x1e
	bl	OvlFunc_899_200c60c
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r1, #0x1e
	mov	r0, #2
	bl	OvlFunc_899_200c5f4
	ldr	r0, =0x129f
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	mov	r2, #0x32
	bl	OvlFunc_899_200c63c
	mov	r2, #0xb6
	mov	r0, #2
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__Func_809218c
	mov	r2, #0xb6
	mov	r0, #1
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r1, #0xd0
	mov	r2, #0xae
	mov	r0, #0x18
	lsl	r1, #15
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0xf0
	mov	r2, #0xae
	mov	r0, #0x19
	lsl	r1, #15
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x19
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r3, #0xe
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x32
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	bl	__Func_8091750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2009ba0

.thumb_func_start OvlFunc_899_2009e64
	push	{lr}
	ldr	r0, =0x107
	bl	__Func_8079358
	mov	r0, #0x94
	lsl	r0, #2
	bl	__Func_8079358
	bl	OvlFunc_899_200cb2c
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2009e64

.thumb_func_start OvlFunc_899_2009e80
	push	{lr}
	mov	r0, #0x1e
	sub	sp, #8
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0x18
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x12a0
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x14
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0x19
	lsl	r1, #1
	bl	__Func_8093874
	mov	r0, #0x19
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x19
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #4
	mov	r0, #0x18
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x18
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x18
	lsl	r1, #11
	lsl	r2, #10
	bl	__Func_8092064
	mov	r1, #0xe0
	mov	r2, #0xe0
	lsl	r2, #9
	mov	r0, #0x19
	lsl	r1, #10
	bl	__Func_8092064
	ldr	r1, =.L5830
	mov	r0, #0x19
	bl	__Func_809207c
	ldr	r1, =.L5560
	mov	r0, #0x18
	bl	__Func_809207c
	mov	r0, #0x18
	bl	__Func_80920e8
	mov	r0, #0x18
	bl	__Func_8092054
	mov	r3, #1
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0x19
	bl	__Func_8092054
	mov	r3, #3
	add	r0, #0x64
	strh	r3, [r0]
	mov	r2, #0x2c
	mov	r3, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x30
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2009e80

.thumb_func_start OvlFunc_899_2009f50
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	sub	sp, #8
	ldr	r5, [r3]
	bl	__Func_80916b0
	ldr	r0, =OvlFunc_899_200c8c8
	bl	__Func_8004278
	ldr	r0, =0x107
	bl	__Func_8079374
	mov	r0, #0x94
	lsl	r0, #2
	bl	__Func_8079374
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0x19
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #0x18
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #0x19
	mov	r1, #2
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0xc1
	lsl	r2, #1
	add	r5, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	mov	r6, #0x18
	cmp	r3, #0xc9
	beq	.L2008
	cmp	r3, #0xc9
	blt	.L202a
	cmp	r3, #0xcb
	bgt	.L202a
	ldr	r0, =0x12a4
	bl	__Func_8092b94
	mov	r1, #0x81
	mov	r0, #0x19
	lsl	r1, #1
	bl	__Func_8093874
	mov	r0, #0x19
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x19
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	mov	r6, #0x19
	cmp	r3, #0xca
	beq	.L202a
.L2008:
	ldr	r0, =0x12a3
	bl	__Func_8092b94
	mov	r1, #0x81
	mov	r0, #0x18
	lsl	r1, #1
	bl	__Func_8093874
	mov	r0, #0x18
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x18
	mov	r1, #0x14
	mov	r6, #0x18
	bl	OvlFunc_899_200c5f4
.L202a:
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, r6
	mov	r0, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809280c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x12a5
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, r6
	mov	r0, #2
	bl	OvlFunc_899_200c658
	bl	__Func_8097adc
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x18
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x18
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0x19
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x19
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_80937b8
	bl	OvlFunc_899_200c684
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0
	mov	r1, #1
	mov	r0, #2
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0
	bl	__Func_8092054
	ldr	r1, [r0, #0x50]
	mov	r5, #0xd
	ldrb	r2, [r1, #9]
	neg	r5, r5
	mov	r3, r5
	mov	r6, #4
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	mov	r0, #1
	bl	__Func_8092054
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	mov	r0, #2
	bl	__Func_8092054
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	and	r5, r3
	orr	r5, r6
	ldr	r6, =iwram_3001ebc
	mov	r3, #0xe4
	ldr	r1, [r6]
	lsl	r3, #1
	strb	r5, [r2, #9]
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	mov	r5, #0xe0
	ldr	r3, =0x201
	lsl	r5, #1
	str	r3, [r1, r5]
	bl	__Func_8091df4
	bl	__Func_8091e20
	bl	OvlFunc_899_200a1c8
	mov	r3, #0xe
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #1
	mov	r0, #0xe
	bl	__Func_8010704
	ldr	r0, =0x853
	bl	__Func_8079358
	mov	r0, #0x18
	bl	__Func_8092054
	mov	r3, #5
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0x19
	bl	__Func_8092054
	mov	r3, #4
	add	r0, #0x64
	mov	r1, #0xc8
	strh	r3, [r0]
	lsl	r1, #4
	ldr	r0, =OvlFunc_899_200aba0
	bl	__Func_80041d8
	ldr	r2, [r6]
	ldr	r3, =0x209
	str	r3, [r2, r5]
	bl	__Func_8091750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2009f50

.thumb_func_start OvlFunc_899_200a1c8
	push	{r5, r6, lr}
	bl	__Func_808acc4
	mov	r1, #1
	mov	r0, #0
	bl	__Func_8092b08
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #0x90
	mov	r0, #0x80
	mov	r2, #0xc8
	mov	r3, #0xea
	lsl	r3, #18
	lsl	r0, #14
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80935b0
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xf8
	mov	r2, #0xb6
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0x84
	mov	r2, #0xba
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0xe8
	mov	r2, #0xba
	lsl	r1, #16
	lsl	r2, #18
	mov	r0, #1
	bl	__Func_80923e4
	mov	r0, #0
	bl	__Func_8092054
	ldr	r1, [r0, #0x50]
	mov	r5, #0xd
	ldrb	r2, [r1, #9]
	neg	r5, r5
	mov	r3, r5
	and	r3, r2
	mov	r6, #4
	orr	r3, r6
	strb	r3, [r1, #9]
	mov	r0, #1
	bl	__Func_8092054
	ldr	r1, [r0, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r5
	and	r3, r2
	orr	r3, r6
	strb	r3, [r1, #9]
	mov	r0, #2
	bl	__Func_8092054
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	and	r5, r3
	orr	r5, r6
	strb	r5, [r2, #9]
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0x1e
	bl	OvlFunc_899_200c60c
	mov	r1, #0xd0
	mov	r2, #0xae
	mov	r0, #0x18
	lsl	r1, #15
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0xf0
	mov	r2, #0xae
	mov	r0, #0x19
	lsl	r1, #15
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r2, #0
	mov	r0, #0x18
	mov	r1, #0x19
	bl	__Func_8092848
	mov	r1, #0
	mov	r0, #0
	bl	__Func_809335c
	bl	__Func_8093530
	bl	__Func_800fe9c
	mov	r0, #0x1e
	bl	__Func_809163c
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x12ae
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x32
	bl	OvlFunc_899_200c624
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x14
	bl	OvlFunc_899_200c624
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	mov	r5, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L24a0
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L24a0
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0x14
	bl	OvlFunc_899_200c624
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092c40
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L24a0
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0
	ldr	r1, =0x105
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #2
	bl	OvlFunc_899_200c60c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_899_200c5f4
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_899_200c5f4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_899_200c624
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0x14
	bl	OvlFunc_899_200c63c
	mov	r0, #1
	mov	r1, #0x14
	mov	r5, #1
	bl	OvlFunc_899_200c5f4
.L24a0:
	cmp	r5, #0
	bne	.L24c4
	ldr	r0, =0x12bc
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_899_200c624
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
.L24c4:
	mov	r2, #0
	ldr	r1, =0x105
	mov	r0, #0
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_899_200c5f4
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0xa
	bl	OvlFunc_899_200c63c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_8092848
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, #2
	bl	OvlFunc_899_200c624
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #2
	mov	r1, #3
	mov	r2, #0xa
	bl	OvlFunc_899_200c63c
	mov	r2, #0xb6
	mov	r0, #2
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__Func_809218c
	mov	r2, #0xb6
	mov	r0, #1
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200a1c8

.thumb_func_start OvlFunc_899_200a564
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #0xb
	cmp	r3, #7
	bls	.L257c
	b	.L2690
.L257c:
	ldr	r2, =.L2584
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L2584:
	.word	.L25a4
	.word	.L25b8
	.word	.L25d8
	.word	.L25fe
	.word	.L2618
	.word	.L262c
	.word	.L2652
	.word	.L2678
.L25a4:
	ldr	r3, =.L55b0
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #2
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.L58bc
	mov	r0, #0x19
	mov	r1, #3
	b	.L25f6
.L25b8:
	ldr	r3, =.L5678
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #4
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.L55d8
	mov	r0, #0x18
	mov	r1, #2
	mov	r2, #3
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.L5830
	mov	r0, #0x19
	mov	r1, #1
	b	.L2610
.L25d8:
	ldr	r3, =.L5538
	mov	r0, #0x18
	mov	r1, #2
	mov	r2, #1
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.L5718
	mov	r0, #0x18
	mov	r1, #3
	mov	r2, #6
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.L5894
	mov	r0, #0x19
	mov	r1, #2
.L25f6:
	mov	r2, #4
	bl	OvlFunc_899_200a6e4
	b	.L2690
.L25fe:
	ldr	r3, =.L55b0
	mov	r0, #0x18
	mov	r1, #3
	mov	r2, #2
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.L5858
	mov	r0, #0x19
	mov	r1, #4
.L2610:
	mov	r2, #3
	bl	OvlFunc_899_200a6e4
	b	.L2690
.L2618:
	ldr	r3, =.L56c8
	mov	r0, #0x18
	mov	r1, #4
	mov	r2, #5
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.L57cc
	mov	r0, #0x19
	mov	r1, #1
	b	.L2670
.L262c:
	ldr	r3, =.L5560
	mov	r0, #0x18
	mov	r1, #4
	mov	r2, #1
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.L56f0
	mov	r0, #0x18
	mov	r1, #5
	mov	r2, #6
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.L57a4
	mov	r0, #0x19
	mov	r1, #3
	mov	r2, #1
	bl	OvlFunc_899_200a6e4
	b	.L2690
.L2652:
	ldr	r3, =.L5650
	mov	r0, #0x18
	mov	r1, #5
	mov	r2, #4
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.L5600
	mov	r0, #0x18
	mov	r1, #6
	mov	r2, #3
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.L5808
	mov	r0, #0x19
	mov	r1, #4
.L2670:
	mov	r2, #2
	bl	OvlFunc_899_200a6e4
	b	.L2690
.L2678:
	ldr	r3, =.L56c8
	mov	r0, #0x18
	mov	r1, #6
	mov	r2, #5
	bl	OvlFunc_899_200a6e4
	ldr	r3, =.L5768
	mov	r0, #0x19
	mov	r1, #2
	mov	r2, #1
	bl	OvlFunc_899_200a6e4
.L2690:
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200a564

.thumb_func_start OvlFunc_899_200a6e4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r10, r2
	mov	r8, r3
	mov	r7, r0
	mov	r5, r1
	bl	__Func_8092054
	mov	r6, r0
	add	r6, #0x64
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, r5
	bne	.L2710
	mov	r0, r7
	mov	r1, r8
	bl	__Func_809207c
	mov	r3, r10
	strh	r3, [r6]
.L2710:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200a6e4

.thumb_func_start OvlFunc_899_200a71c
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #0
	bl	__Func_8092054
	asr	r5, #20
	ldr	r3, [r0, #0x10]
	sub	r5, #0x22
	asr	r3, #20
	cmp	r5, #1
	bhi	.L274a
	cmp	r3, #0x28
	ble	.L274a
	cmp	r3, #0x2a
	bgt	.L274a
	mov	r0, #0x94
	lsl	r0, #2
	bl	__Func_8079358
	b	.L2752
.L274a:
	mov	r0, #0x94
	lsl	r0, #2
	bl	__Func_8079374
.L2752:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200a71c

.thumb_func_start OvlFunc_899_200a758
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	ldr	r3, =ewram_2000240
	sub	r2, #0x47
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #5
	sub	sp, #8
	cmp	r3, #0xc
	bls	.L277c
	b	.L2b92
.L277c:
	ldr	r2, =.L2784
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L2784:
	.word	.L27b8
	.word	.L2b92
	.word	.L2840
	.word	.L2b92
	.word	.L2b92
	.word	.L27d6
	.word	.L2840
	.word	.L289c
	.word	.L296a
	.word	.L296a
	.word	.L2a12
	.word	.L2ab2
	.word	.L2b2c
.L27b8:
	mov	r0, #8
	bl	__Func_8092054
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #8
	bl	__Func_8092054
	str	r5, [r0, #0xc]
	mov	r0, #8
	bl	__Func_8092054
	str	r5, [r0, #0x14]
	b	.L2b92
.L27d6:
	mov	r0, #0x85
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L27fc
	mov	r1, #0xbc
	mov	r2, #0xbc
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
.L27fc:
	ldr	r0, =0x856
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2810
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.L2810:
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L281c
	b	.L2b92
.L281c:
	mov	r1, #0x86
	mov	r2, #0xe8
	lsl	r2, #17
	mov	r0, #0x10
	lsl	r1, #18
	bl	__Func_80923e4
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_809207c
	mov	r1, #0xa0
	mov	r0, #0x10
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	b	.L2b92
.L2840:
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2884
	mov	r1, #0x8e
	mov	r2, #0xa2
	lsl	r2, #18
	mov	r0, #0x12
	lsl	r1, #18
	bl	__Func_80923e4
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_809207c
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x8e
	mov	r2, #0x80
	mov	r3, #0xa8
	lsl	r1, #18
	mov	r0, #0xe7
	lsl	r2, #13
	lsl	r3, #18
	bl	OvlFunc_899_200c698
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_899_200a71c
	b	.L28de
.L2884:
	ldr	r0, =0x853
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L2890
	b	.L2b92
.L2890:
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	b	.L2b92
.L289c:
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L28e6
	ldr	r0, =0x852
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L28e6
	ldr	r0, =0x853
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L28e6
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L28e6
	mov	r3, #0xe
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_899_200aba0
.L28de:
	lsl	r1, #4
	bl	__Func_80041d8
	b	.L2b92
.L28e6:
	ldr	r0, =0x856
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L290a
	mov	r1, #0xf0
	mov	r2, #0xae
	mov	r0, #0x19
	lsl	r1, #15
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0x80
	mov	r0, #0x19
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
.L290a:
	ldr	r0, =0x852
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L2916
	b	.L2b92
.L2916:
	mov	r0, #0xe
	mov	r5, #0xe
	mov	r6, #0x2c
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	ldr	r0, =0x853
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L2946
	mov	r0, #0xe
	mov	r1, #0x32
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	b	.L2b92
.L2946:
	mov	r0, #0x18
	bl	__Func_8092054
	mov	r3, #5
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0x19
	bl	__Func_8092054
	mov	r3, #4
	add	r0, #0x64
	mov	r1, #0xc8
	strh	r3, [r0]
	lsl	r1, #4
	ldr	r0, =OvlFunc_899_200aba0
	bl	__Func_80041d8
	b	.L2b92
.L296a:
	mov	r0, #2
	bl	__Func_809163c
	mov	r5, #2
	mov	r6, #0xa
	mov	r0, #0x36
	mov	r1, #2
	mov	r2, #0x23
	mov	r3, #0x14
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x36
	mov	r1, #2
	mov	r2, #0x5f
	mov	r3, #0x14
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x36
	mov	r1, #2
	mov	r2, #0x23
	mov	r3, #0x50
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r5, #4
	mov	r6, #8
	mov	r0, #0x36
	mov	r1, #2
	mov	r2, #0x2e
	mov	r3, #0x15
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r1, #2
	mov	r2, #0x2e
	mov	r3, #0x51
	mov	r0, #0x36
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x1a
	bl	__Func_8092054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #4
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x1a
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	ldr	r0, =0x859
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L29f0
	b	.L2b92
.L29f0:
	mov	r1, #0xa9
	mov	r0, #0x1a
	lsl	r1, #18
	ldr	r2, =0x19b0000
	bl	__Func_80923e4
	mov	r3, #0x29
	mov	r2, #0x18
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x65
	mov	r1, #0x18
	mov	r2, #3
	mov	r3, #4
	bl	__Func_8010704
	b	.L2b92
.L2a12:
	mov	r0, #2
	bl	__Func_809163c
	mov	r5, #2
	mov	r6, #8
	mov	r0, #0x36
	mov	r1, #2
	mov	r2, #0x2c
	mov	r3, #0x15
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x36
	mov	r1, #2
	mov	r2, #0x2c
	mov	r3, #0x51
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	bl	__Func_80916b0
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2a6a
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_80924d4
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80924d4
	mov	r0, #1
	bl	__Func_809163c
	mov	r0, #0x11
	mov	r1, #2
	bl	__Func_80924d4
	b	.L2b92
.L2a6a:
	mov	r1, #0xce
	mov	r2, #0xe4
	mov	r0, #8
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80923e4
	ldr	r0, =0x854
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2a8c
	bl	OvlFunc_899_200adb4
	bl	__Func_8091750
	b	.L2b92
.L2a8c:
	mov	r1, #7
	mov	r0, #8
	bl	__Func_80924d4
	bl	OvlFunc_899_200c5cc
	mov	r0, #0x11
	bl	__Func_80f9080
	ldr	r0, =0x12c3
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0xa
	bl	OvlFunc_899_200c5f4
	bl	__Func_8091750
	b	.L2b92
.L2ab2:
	mov	r3, #0x15
	str	r3, [sp, #4]
	mov	r5, #0x2c
	mov	r0, #0x36
	mov	r1, #2
	mov	r2, #2
	mov	r3, #8
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r3, #0x51
	str	r3, [sp, #4]
	mov	r0, #0x36
	mov	r3, #8
	mov	r1, #2
	mov	r2, #2
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r1, #0xce
	mov	r2, #0xe4
	mov	r0, #8
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80923e4
	bl	OvlFunc_899_200abf0
	mov	r0, #0x10
	bl	__Func_8091e9c
	b	.L2b92

	.pool_aligned

.L2b2c:
	mov	r3, #0x15
	str	r3, [sp, #4]
	mov	r5, #0x2c
	mov	r0, #0x36
	mov	r1, #2
	mov	r2, #2
	mov	r3, #8
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r3, #0x51
	str	r3, [sp, #4]
	mov	r0, #0x36
	mov	r1, #2
	mov	r2, #2
	mov	r3, #8
	str	r5, [sp]
	bl	__Func_80105d4
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L2b74
	mov	r1, #0xce
	mov	r2, #0xe4
	mov	r0, #8
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80923e4
	bl	OvlFunc_899_200afd4
	bl	OvlFunc_899_200b6f8
	b	.L2b92
.L2b74:
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_80924d4
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80924d4
	mov	r0, #1
	bl	__Func_809163c
	mov	r0, #0x11
	mov	r1, #2
	bl	__Func_80924d4
.L2b92:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_200a758

.thumb_func_start OvlFunc_899_200aba0
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, #0x18
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0x19
	bl	__Func_8092054
	ldr	r3, [r5, #0x10]
	mov	r8, r0
	ldr	r0, [r6, #0x10]
	ldr	r1, [r6, #8]
	sub	r0, r3
	ldr	r3, [r5, #8]
	sub	r1, r3
	bl	__Func_80044d0
	strh	r0, [r5, #6]
	mov	r2, r8
	ldr	r3, [r2, #0x10]
	ldr	r0, [r6, #0x10]
	ldr	r1, [r6, #8]
	sub	r0, r3
	ldr	r3, [r2, #8]
	sub	r1, r3
	bl	__Func_80044d0
	mov	r3, r8
	strh	r0, [r3, #6]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200aba0

.thumb_func_start OvlFunc_899_200abf0
	push	{r5, lr}
	bl	__Func_80916b0
	mov	r1, #0xc6
	mov	r2, #0xd0
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xc8
	mov	r2, #0xc8
	mov	r0, #0xb
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xc2
	mov	r2, #0xd0
	mov	r0, #0xc
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xb
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #0xc
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xc4
	mov	r2, #0xe0
	mov	r0, #0
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xca
	mov	r2, #0xd8
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xc2
	mov	r2, #0xd8
	lsl	r2, #17
	mov	r0, #2
	lsl	r1, #18
	bl	__Func_80923e4
	mov	r0, #0
	mov	r1, #0x13
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #0x13
	bl	__Func_80924d4
	mov	r1, #0x13
	mov	r0, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	mov	r5, #2
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #1
	bl	__Func_8092054
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #2
	bl	__Func_8092054
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #0
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #2
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #1
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #0xb0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	mov	r1, #0
	mov	r0, #0
	bl	__Func_809335c
	bl	__Func_8093530
	bl	__Func_800fe9c
	bl	OvlFunc_899_200c5cc
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r1, #3
	mov	r0, #0xa
	bl	OvlFunc_899_200c63c
	ldr	r0, =0x12dd
	bl	__Func_8092b94
	mov	r0, #0xa
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r0, #8
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r1, #0xca
	mov	r2, #0xe4
	mov	r0, #0xb
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0xc6
	mov	r2, #0xe4
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0xc
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0xb
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x1e
	mov	r0, #0xc
	mov	r1, #0
	bl	OvlFunc_899_200c60c
	mov	r0, #0xc
	mov	r1, #0x3c
	bl	OvlFunc_899_200c5f4
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200abf0

.thumb_func_start OvlFunc_899_200adb4
	push	{r5, r6, lr}
	mov	r1, #0xc6
	mov	r2, #0xd0
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xc8
	mov	r2, #0xc8
	mov	r0, #0xb
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xc2
	mov	r2, #0xd0
	mov	r0, #0xc
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc6
	mov	r2, #0xdc
	mov	r0, #0
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xca
	mov	r2, #0xd8
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xc6
	mov	r2, #0xe4
	mov	r0, #2
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	ldr	r5, =iwram_3001ebc
	ldr	r3, =0x209
	ldr	r2, [r5]
	mov	r6, #0xe0
	lsl	r6, #1
	mov	r1, #0
	str	r3, [r2, r6]
	mov	r0, #0
	bl	__Func_809335c
	bl	__Func_8093530
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r3, [r5]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x20
	str	r2, [r3]
	bl	OvlFunc_899_200c5cc
	mov	r0, #0x3c
	bl	__Func_809163c
	ldr	r0, =0x12e1
	bl	__Func_8092b94
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xb
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0x1e
	mov	r0, #0xa
	mov	r1, #0xb
	bl	OvlFunc_899_200c624
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xb
	mov	r1, #3
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r2, #0x1e
	mov	r0, #0xa
	mov	r1, #0xc
	bl	OvlFunc_899_200c624
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xc
	mov	r1, #3
	mov	r2, #0x28
	bl	OvlFunc_899_200c63c
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r2, [r5]
	mov	r3, #0x80
	ldr	r5, =0x15
	lsl	r3, #2
	str	r3, [r2, r6]
	mov	r0, r5
	mov	r1, #0x11
	bl	__Func_8091f90
	mov	r0, r5
	mov	r1, #0x10
	bl	__Func_8091fa8
	ldr	r3, =ewram_2000240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0xc
	mov	r1, #5
	bl	__Func_8091eb0
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200adb4

