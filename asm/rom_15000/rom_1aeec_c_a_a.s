	.include "macros.inc"

.thumb_func_start Func_801c0dc
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r3, =.L342f8
	mov	r5, r0
	mov	r8, r3
	mov	r6, r1
	bl	Func_8004080
	mov	r2, r8
	str	r0, [r6]
	mov	r1, #0x80
	bl	Func_8003fa4
	ldr	r3, .L1c134	@ 0x3ff
	ldrh	r2, [r5, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	mov	r0, #0xd
	strh	r3, [r5, #8]
	neg	r0, r0
	ldrb	r3, [r5, #5]
	mov	r2, r0
	and	r2, r3
	mov	r3, #0x11
	neg	r3, r3
	and	r2, r3
	mov	r3, #0x20
	orr	r2, r3
	mov	r3, #4
	ldrb	r1, [r5, #7]
	neg	r3, r3
	and	r2, r3
	sub	r3, #0x3b
	and	r3, r1
	mov	r1, #0x3f
	and	r3, r1
	strb	r3, [r5, #7]
	and	r2, r1
	mov	r3, #0x80
	orr	r2, r3
	b	.L1c140

	.align	2, 0
.L1c134:
	.word	0x3ff
	.pool

.L1c140:
	ldrb	r3, [r5, #9]
	and	r0, r3
	strb	r2, [r5, #5]
	strb	r0, [r5, #9]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_801c0dc

.thumb_func_start Func_801c154
	push	{lr}
	ldr	r3, =0x1ff
	ldrh	r4, [r0, #6]
	and	r1, r3
	ldr	r3, =0xfffffe00
	and	r3, r4
	orr	r3, r1
	mov	r1, #0xfc
	strh	r3, [r0, #6]
	strb	r2, [r0, #4]
	bl	Func_8003dec
	b	.L1c178

	.pool_aligned

.L1c178:
	pop	{r0}
	bx	r0
.func_end Func_801c154

.thumb_func_start Func_801c17c
	push	{lr}
	bl	Func_8003f3c
	pop	{r0}
	bx	r0
.func_end Func_801c17c

.thumb_func_start Func_801c188
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e98
	ldr	r5, [r3]
	mov	r0, r5
	bl	Func_801b36c
	mov	r6, r0
	ldrh	r3, [r6, #0xa]
	cmp	r3, #1
	beq	.L1c1a4
	cmp	r3, #6
	bne	.L1c206
.L1c1a4:
	mov	r1, #0xc1
	lsl	r1, #3
	mov	r0, #0x11
	bl	Func_80048b0
	mov	r3, #0xc3
	lsl	r3, #2
	add	r5, r3
	ldrh	r3, [r6, #8]
	mov	r7, r0
	ldr	r0, =0xf1
	mov	r8, r3
	bl	Func_8002f40
	ldr	r3, =0x604
	add	r2, r7, r3
	ldrh	r3, [r6, #8]
	lsl	r3, #1
	ldrh	r3, [r3, r0]
	add	r0, r3
	str	r0, [r2]
	mov	r1, r7
	bl	Func_80053e8
	ldrh	r3, [r5, #0xa]
	cmp	r3, #0
	bne	.L1c1e0
	bl	Func_8004080
	strh	r0, [r5, #0xc]
.L1c1e0:
	mov	r1, #0x80
	ldrh	r0, [r5, #0xc]
	lsl	r1, #3
	mov	r2, r7
	bl	Func_8003fa4
	mov	r3, #1
	strh	r3, [r5, #0xa]
	mov	r3, r8
	strh	r3, [r5, #8]
	mov	r3, #0x28
	strh	r3, [r5, #0x22]
	strh	r3, [r5, #0x24]
	mov	r3, #0xf0
	strh	r0, [r5, #0xe]
	strh	r3, [r5, #0x26]
	mov	r0, #0x11
	bl	Func_8002dd8
.L1c206:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801c188

.thumb_func_start Func_801c21c
	push	{r5, lr}
	ldr	r3, =iwram_3001e98
	mov	r2, #0xc3
	ldr	r3, [r3]
	lsl	r2, #2
	add	r5, r3, r2
	ldrh	r3, [r5, #0xa]
	cmp	r3, #0
	beq	.L1c238
	ldrh	r0, [r5, #0xc]
	bl	Func_8003f3c
	mov	r3, #0
	strh	r3, [r5, #0xa]
.L1c238:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_801c21c

.thumb_func_start Func_801c244
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r6, [r3]
	mov	r5, #0
.L1c24c:
	bl	Func_801c2d0
	mov	r0, r5
	bl	Func_8028920
	mov	r5, r0
	bl	Func_801c2e4
	cmp	r5, #4
	bhi	.L1c2c2
	ldr	r2, =.L1c268
	lsl	r3, r5, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1c268:
	.word	.L1c27c
	.word	.L1c290
	.word	.L1c29e
	.word	.L1c2a8
	.word	.L1c2b6
.L1c27c:
	bl	_Func_808ce74
	cmp	r0, #0
	bne	.L1c286
	mov	r0, #0xff
.L1c286:
	mov	r2, #0xbd
	lsl	r2, #1
	add	r3, r6, r2
	strh	r0, [r3]
	b	.L1c2c2
.L1c290:
	bl	_Func_80a5b94
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.L1c2c2
	b	.L1c24c
.L1c29e:
	bl	_Func_80aa56c
	cmp	r0, #0
	beq	.L1c2c2
	b	.L1c24c
.L1c2a8:
	bl	_Func_80a24d0
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.L1c2c2
	b	.L1c24c
.L1c2b6:
	bl	_Func_80a7478
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L1c24c
.L1c2c2:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_801c244

.thumb_func_start Func_801c2d0
	push	{lr}
	mov	r0, #1
	bl	Func_801ef08
	mov	r0, #1
	bl	Func_80030f8
	pop	{r0}
	bx	r0
.func_end Func_801c2d0

.thumb_func_start Func_801c2e4
	push	{lr}
	bl	Func_801f5d4
	pop	{r0}
	bx	r0
.func_end Func_801c2e4

.thumb_func_start Func_801c2f0
	push	{lr}
	bl	Func_801a66c
	bl	Func_801a778
	mov	r0, #1
	bl	Func_80030f8
	pop	{r0}
	bx	r0
.func_end Func_801c2f0

.thumb_func_start Func_801c304
	push	{r5, lr}
	ldr	r3, =iwram_3001e98
	ldr	r1, =0x39e
	ldr	r3, [r3]
	add	r2, r3, r1
	strh	r0, [r2]
	mov	r2, #0xee
	lsl	r2, #2
	add	r3, r2
	mov	r2, #1
	strh	r2, [r3]
	bl	Func_801a7f4
	bl	Func_801b228
	mov	r1, #5
	mov	r0, #0
	bl	Func_801b010
	bl	Func_801a968
	mov	r0, #1
	bl	Func_801b424
	mov	r5, r0
	bl	Func_801b148
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_801c304

.thumb_func_start Func_801c34c
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	sub	sp, #0x14
	ldr	r6, [r3]
	ldr	r2, =ewram_2000240
	mov	r3, #8
	mov	r1, #0xe0
	str	r3, [sp, #0x10]
	str	r3, [sp, #0xc]
	lsl	r1, #1
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	bl	_Func_808b158
	ldr	r3, =0x99b
	mov	r5, r0
	add	r5, r3
	add	r0, sp, #4
	add	r1, sp, #0x10
	add	r2, sp, #0xc
	add	r3, sp, #8
	str	r0, [sp]
	mov	r0, r5
	bl	Func_80187ac
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0xa
	sub	r0, r2
	sub	r1, r3
	mov	r4, #2
	asr	r1, #1
	asr	r0, #1
	str	r1, [sp, #0xc]
	str	r4, [sp]
	str	r0, [sp, #0x10]
	bl	Func_80162d4
	mov	r2, #0x8c
	lsl	r2, #2
	mov	r1, r0
	add	r3, r6, r2
	str	r1, [r3]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	bl	Func_801e74c
	mov	r3, #0x8d
	lsl	r3, #2
	add	r2, r6, r3
	mov	r1, #0xc8
	mov	r3, #0x5a
	strh	r3, [r2]
	lsl	r1, #4
	ldr	r0, =Func_801c3e8
	bl	Func_80041d8
	add	sp, #0x14
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_801c34c

.thumb_func_start Func_801c3e8
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0x8d
	ldr	r1, [r3]
	lsl	r0, #2
	add	r2, r1, r0
	ldrh	r3, [r2]
	ldr	r0, =0xffff
	add	r3, r0
	strh	r3, [r2]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L1c416
	mov	r2, #0x8c
	lsl	r2, #2
	add	r3, r1, r2
	ldr	r0, [r3]
	mov	r1, #2
	bl	Func_8016418
	ldr	r0, =Func_801c3e8
	bl	Func_8004278
.L1c416:
	pop	{r0}
	bx	r0
.func_end Func_801c3e8

.thumb_func_start Func_801c428
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0x8c
	ldr	r3, [r3]
	lsl	r2, #2
	add	r3, r2
	ldr	r0, [r3]
	cmp	r0, #0
	beq	.L1c44c
	ldrh	r3, [r0, #0x16]
	cmp	r3, #0
	beq	.L1c44c
	mov	r1, #2
	bl	Func_8016418
	ldr	r0, =Func_801c3e8
	bl	Func_8004278
.L1c44c:
	pop	{r0}
	bx	r0
.func_end Func_801c428

.thumb_func_start Func_801c458
	push	{lr}
	mov	r0, r1
	bl	_Func_80789dc
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end Func_801c458

