	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808fecc
	push	{lr}
	mov	r1, #0xa8
	lsl	r1, #3
	mov	r0, #0x1f
	sub	sp, #4
	bl	Func_80048f4
	mov	r3, #0
	mov	r4, r0
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000150
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r4
	add	sp, #4
	pop	{r1}
	bx	r1
.func_end Func_808fecc

.thumb_func_start Func_808fefc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r3, #0xff
	mov	r10, r1
	asr	r2, r0, #8
	ldr	r1, =iwram_3001e70
	mov	r6, r3
	and	r2, r3
	ldr	r7, [r1]
	and	r6, r0
	cmp	r2, #4
	bls	.L8ff1c
	b	.L90168
.L8ff1c:
	lsl	r3, r2, #2
	ldr	r2, =.L8ff24
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L8ff24:
	.word	.L8ff38
	.word	.L8ff4c
	.word	.L8ffa2
	.word	.L9003c
	.word	.L900c0
.L8ff38:
	mov	r0, #0
	bl	Func_8003b70
	mov	r0, r10
	bl	Func_8003bb4
	mov	r0, #1
	bl	Func_80030f8
	b	.L90168
.L8ff4c:
	mov	r3, #0xa0
	lsl	r3, #19
	mov	r0, #0x80
	ldrh	r1, [r3]
	lsl	r0, #8
	bl	Func_8091220
	mov	r0, r10
	bl	Func_8091254
	mov	r0, #1
	bl	Func_80030f8
	ldr	r1, =ewram_2002090
	ldr	r4, =REG_IME
	ldrh	r3, [r4]
	mov	r5, r3
	strh	r4, [r4]
	ldrh	r3, [r1]
	cmp	r3, #0x1f
	bgt	.L8ff98
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	strh	r3, [r1]
	mov	r0, #0x80
	lsl	r0, #19
	lsl	r2, #2
	ldrh	r3, [r7, #0x14]
	add	r2, r1
	ldrh	r1, [r0]
	add	r2, #4
	orr	r3, r1
	stmia	r2!, {r3}
	mov	r3, #0x80
	stmia	r2!, {r0}
	lsl	r3, #10
	str	r3, [r2]
.L8ff98:
	strh	r5, [r4]
	mov	r0, #0
	bl	Func_8091240
	b	.L9019c
.L8ffa2:
	bl	Func_808fecc
	mov	r1, #0xa5
	mov	r5, r0
	lsl	r1, #3
	mov	r2, #0
	add	r3, r5, r1
	mov	r8, r2
	add	r1, #2
	strh	r6, [r3]
	mov	r2, r8
	add	r3, r5, r1
	strh	r2, [r3]
	ldr	r3, =0x534
	add	r1, #0xc
	add	r2, r5, r3
	mov	r3, #0x3f
	strh	r3, [r2]
	add	r2, r5, r1
	mov	r3, #1
	mov	r1, #0xc8
	strh	r3, [r2]
	lsl	r1, #4
	ldr	r0, =Func_808f52c
	bl	Func_80041d8
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_808f498
	bl	Func_80041d8
	mov	r0, #1
	bl	Func_80030f8
	ldr	r1, =ewram_2002090
	ldr	r4, =REG_IME
	ldrh	r3, [r4]
	mov	r6, r3
	strh	r4, [r4]
	ldrh	r3, [r1]
	cmp	r3, #0x1f
	bgt	.L90018
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	strh	r3, [r1]
	mov	r0, #0x80
	lsl	r0, #19
	lsl	r2, #2
	ldrh	r3, [r7, #0x14]
	add	r2, r1
	ldrh	r1, [r0]
	add	r2, #4
	orr	r3, r1
	stmia	r2!, {r3}
	mov	r3, #0x80
	stmia	r2!, {r0}
	lsl	r3, #10
	str	r3, [r2]
.L90018:
	strh	r6, [r4]
	ldr	r2, =0x53a
	add	r3, r5, r2
	mov	r1, r8
	strb	r1, [r3]
	ldr	r3, =0x53b
	ldr	r1, =0x53c
	add	r2, r5, r3
	mov	r3, #0x20
	strb	r3, [r2]
	add	r3, r5, r1
	mov	r2, r10
	add	r1, #1
	strb	r2, [r3]
	add	r3, r5, r1
	mov	r2, r8
	strb	r2, [r3]
	b	.L9019c
.L9003c:
	bl	Func_808fecc
	mov	r1, #0xa5
	mov	r5, r0
	lsl	r1, #3
	add	r3, r5, r1
	ldr	r2, =0x52a
	mov	r1, #0x20
	mov	r8, r1
	strh	r6, [r3]
	add	r3, r5, r2
	mov	r2, r8
	strh	r2, [r3]
	mov	r0, #0xf
	bl	Func_80907b0
	mov	r0, #1
	bl	Func_80030f8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_8090658
	bl	Func_80041d8
	ldr	r1, =ewram_2002090
	ldr	r4, =REG_IME
	ldrh	r3, [r4]
	mov	r6, r3
	strh	r4, [r4]
	ldrh	r3, [r1]
	cmp	r3, #0x1f
	bgt	.L9009e
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	strh	r3, [r1]
	mov	r0, #0x80
	lsl	r0, #19
	lsl	r2, #2
	ldrh	r3, [r7, #0x14]
	add	r2, r1
	ldrh	r1, [r0]
	add	r2, #4
	orr	r3, r1
	stmia	r2!, {r3}
	mov	r3, #0x80
	stmia	r2!, {r0}
	lsl	r3, #10
	str	r3, [r2]
.L9009e:
	strh	r6, [r4]
	ldr	r1, =0x53a
	mov	r2, #0
	add	r3, r5, r1
	add	r1, #1
	strb	r2, [r3]
	add	r3, r5, r1
	mov	r1, r8
	strb	r1, [r3]
	ldr	r1, =0x53c
	add	r3, r5, r1
	mov	r1, r10
	strb	r1, [r3]
	ldr	r1, =0x53d
	add	r3, r5, r1
	strb	r2, [r3]
	b	.L9019c
.L900c0:
	ldr	r7, [r1]
	bl	Func_808fecc
	mov	r3, #0x80
	lsl	r3, #1
	ldr	r1, .L900f4	@ 0
	add	r2, r7, r3
	ldr	r3, .L900f8	@ 0x50
	mov	r8, r1
	mov	r1, #0x81
	mov	r9, r3
	lsl	r1, #1
	mov	r3, #0x50
	strh	r3, [r2]
	add	r2, r7, r1
	mov	r5, r0
	strh	r3, [r2]
	mov	r0, #1
	bl	Func_80030f8
	cmp	r6, #0
	bne	.L90134
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80903bc
	b	.L9013a

	.align	2, 0
.L900f4:
	.word	0
.L900f8:
	.word	0x50
	.pool

.L90134:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_8090488
.L9013a:
	bl	Func_80041d8
	ldr	r2, =Func_8090584
	mov	r1, #0
	mov	r0, #1
	bl	SetIntrHandler
	ldr	r2, =0x53a
	mov	r1, r9
	add	r3, r5, r2
	add	r2, #1
	strb	r1, [r3]
	add	r3, r5, r2
	mov	r1, r8
	add	r2, #1
	strb	r1, [r3]
	add	r3, r5, r2
	mov	r1, r10
	add	r2, #1
	strb	r1, [r3]
	add	r3, r5, r2
	mov	r1, r8
	strb	r1, [r3]
.L90168:
	ldr	r1, =ewram_2002090
	ldr	r4, =REG_IME
	ldrh	r3, [r4]
	mov	r5, r3
	strh	r4, [r4]
	ldrh	r3, [r1]
	cmp	r3, #0x1f
	bgt	.L9019a
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	strh	r3, [r1]
	mov	r0, #0x80
	lsl	r0, #19
	lsl	r2, #2
	ldrh	r3, [r7, #0x14]
	add	r2, r1
	ldrh	r1, [r0]
	add	r2, #4
	orr	r3, r1
	stmia	r2!, {r3}
	mov	r3, #0x80
	stmia	r2!, {r0}
	lsl	r3, #10
	str	r3, [r2]
.L9019a:
	strh	r5, [r4]
.L9019c:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808fefc

.thumb_func_start Func_80901c0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0xff
	asr	r2, r0, #8
	mov	r6, r3
	and	r2, r3
	mov	r7, r1
	and	r6, r0
	cmp	r2, #4
	bls	.L901d8
	b	.L90352
.L901d8:
	lsl	r3, r2, #2
	ldr	r2, =.L901e0
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L901e0:
	.word	.L901f4
	.word	.L90202
	.word	.L90214
	.word	.L90278
	.word	.L902e8
.L901f4:
	mov	r0, #0
	bl	Func_8003bb4
	mov	r0, r7
	bl	Func_8003b70
	b	.L90352
.L90202:
	mov	r0, #0x80
	lsl	r0, #8
	mov	r1, #0
	bl	Func_8091200
	mov	r0, r7
	bl	Func_8091254
	b	.L90352
.L90214:
	bl	Func_808fecc
	mov	r2, #0xa5
	mov	r5, r0
	lsl	r2, #3
	add	r3, r5, r2
	strh	r6, [r3]
	ldr	r2, .L9025c	@ 0
	ldr	r3, =0x52a
	mov	r8, r2
	add	r2, r5, r3
	mov	r3, #0x20
	strh	r3, [r2]
	ldr	r3, =0x534
	add	r2, r5, r3
	mov	r3, #0x3f
	strh	r3, [r2]
	ldr	r3, =0x536
	mov	r1, #0xc8
	add	r2, r5, r3
	mov	r3, #1
	strh	r3, [r2]
	lsl	r1, #4
	ldr	r0, =Func_808f52c
	bl	Func_80041d8
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_808f498
	bl	Func_80041d8
	mov	r0, #1
	bl	Func_80030f8
	b	.L902a8

	.align	2, 0
.L9025c:
	.word	0
	.pool

.L90278:
	bl	Func_808fecc
	mov	r2, #0xa5
	mov	r5, r0
	lsl	r2, #3
	add	r3, r5, r2
	strh	r6, [r3]
	ldr	r2, .L902c0	@ 0
	ldr	r3, =0x52a
	mov	r8, r2
	add	r2, r5, r3
	mov	r3, #0x20
	strh	r3, [r2]
	mov	r0, #0
	bl	Func_80907b0
	mov	r0, #1
	bl	Func_80030f8
	mov	r1, #0xc8
	ldr	r0, =Func_8090658
	lsl	r1, #4
	bl	Func_80041d8
.L902a8:
	ldr	r2, =0x53a
	ldr	r6, .L902c4	@ 0x20
	add	r3, r5, r2
	strb	r6, [r3]
	ldr	r3, =0x53b
	add	r2, r5, r3
	mov	r3, #0x40
	strb	r3, [r2]
	ldr	r2, =0x53c
	add	r3, r5, r2
	b	.L902dc

	.align	2, 0
.L902c0:
	.word	0
.L902c4:
	.word	0x20
	.pool

.L902dc:
	strb	r7, [r3]
	ldr	r3, =0x53d
	mov	r2, r8
	add	r5, r3
	strb	r2, [r5]
	b	.L90352
.L902e8:
	bl	Func_808fecc
	mov	r5, r0
	cmp	r6, #0
	bne	.L90322
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80903bc
	bl	Func_80041d8
	ldr	r2, =Func_8090584
	mov	r0, #1
	mov	r1, #0
	bl	SetIntrHandler
	ldr	r2, =0x53a
	add	r3, r5, r2
	strb	r6, [r3]
	ldr	r3, =0x53b
	add	r2, r5, r3
	mov	r3, #0x50
	strb	r3, [r2]
	ldr	r2, =0x53c
	add	r3, r5, r2
	add	r2, #1
	strb	r7, [r3]
	add	r3, r5, r2
	strb	r6, [r3]
	b	.L90352
.L90322:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_8090488
	bl	Func_80041d8
	ldr	r2, =Func_8090584
	mov	r1, #0
	mov	r0, #1
	bl	SetIntrHandler
	ldr	r2, =0x53a
	mov	r1, #0
	add	r3, r5, r2
	strb	r1, [r3]
	ldr	r3, =0x53b
	add	r2, r5, r3
	mov	r3, #0x50
	strb	r3, [r2]
	ldr	r2, =0x53c
	add	r3, r5, r2
	add	r2, #1
	strb	r7, [r3]
	add	r3, r5, r2
	strb	r1, [r3]
.L90352:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80901c0

