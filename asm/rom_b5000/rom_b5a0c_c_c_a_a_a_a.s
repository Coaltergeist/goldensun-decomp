	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b5e14  @ 0x080b5e14
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0xaa
	lsl	r0, #1
	sub	sp, #0x30
	bl	Func_8004970
	mov	r2, #0
	mov	r8, r0
	mov	r10, r2
	mov	r7, #0
	b	.Lb5eaa
.Lb5e30:
	bl	Func_8006488
	mov	r2, #0x95
	lsl	r2, #1
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb5e44
	mov	r3, #1
	add	r10, r3
.Lb5e44:
	mov	r0, #2
	bl	WaitFrames
	mov	r5, sp
	ldr	r0, =0x80c
	mov	r1, r5
	bl	_DecompressString2
	mov	r0, #0
	ldrh	r3, [r5, r0]
	cmp	r3, #0
	beq	.Lb5e6c
	mov	r2, r5
.Lb5e5e:
	add	r0, #1
	cmp	r0, #4
	bgt	.Lb5e6c
	add	r2, #2
	ldrh	r3, [r2]
	cmp	r3, #0
	bne	.Lb5e5e
.Lb5e6c:
	mov	r4, r0
	mov	r0, #0xe
	cmp	r0, r4
	blt	.Lb5e8c
	sub	r3, r6, r4
	mov	r1, r6
	mov	r2, r3
	add	r1, #0xe
	add	r2, #0xe
.Lb5e7e:
	ldrb	r3, [r2]
	sub	r0, #1
	strb	r3, [r1]
	sub	r2, #1
	sub	r1, #1
	cmp	r0, r4
	bge	.Lb5e7e
.Lb5e8c:
	cmp	r4, #0
	ble	.Lb5ea4
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
.Lb5e96:
	ldrh	r3, [r1]
	sub	r0, #1
	strb	r3, [r2]
	add	r1, #2
	add	r2, #1
	cmp	r0, #0
	bne	.Lb5e96
.Lb5ea4:
	mov	r3, #0
	strb	r3, [r6, #0xe]
	add	r7, #1
.Lb5eaa:
	cmp	r7, #2
	bgt	.Lb5ec4
	mov	r0, r7
	add	r0, #0x80
	bl	_GetUnit
	mov	r6, r0
	bl	Func_8006408
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.Lb5e30
.Lb5ec4:
	mov	r0, r8
	bl	free
	mov	r0, #0xa0
	lsl	r0, #1
	bl	Func_8004970
	mov	r8, r0
	mov	r0, #1
	bl	_Func_8077330
	bl	Func_8006408
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.Lb5ef0
	bl	Func_8006488
	mov	r0, #2
	bl	WaitFrames
.Lb5ef0:
	mov	r0, r8
	bl	free
	mov	r0, r10
	add	sp, #0x30
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b5e14

.thumb_func_start Func_80b5f0c  @ 0x080b5f0c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, #0xaa
	lsl	r5, #1
	mov	r0, r5
	sub	sp, #0x10
	bl	Func_8004970
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	mov	r6, r0
	mov	r9, r3
	mov	r2, #0xff
	mov	r5, #7
	add	r3, #0x4f
.Lb5f34:
	sub	r5, #1
	strb	r2, [r3]
	sub	r3, #1
	cmp	r5, #0
	bge	.Lb5f34
	mov	r7, sp
	mov	r0, r7
	bl	Func_80b6a60
	mov	r5, #0
	mov	r8, r0
	cmp	r5, r8
	bge	.Lb5fa8
	mov	r1, #0x95
	lsl	r1, #1
	add	r1, r6
	mov	r10, r7
	mov	r11, r1
	mov	r7, #0
.Lb5f5a:
	mov	r2, r10
	ldrh	r0, [r7, r2]
	bl	_GetUnit
	mov	r2, #0xaa
	mov	r1, r0
	lsl	r2, #1
	ldr	r3, =Func_8001af8
	mov	r0, r6
	bl	_call_via_r3
	mov	r3, #2
	mov	r4, r11
	mov	r1, r10
	strb	r3, [r4]
	ldrh	r3, [r7, r1]
	mov	r2, r5
	add	r3, #0x48
	sub	r2, #0x80
	mov	r4, r9
	mov	r1, #0xaa
	lsl	r1, #1
	strb	r2, [r4, r3]
	mov	r0, r6
	bl	Func_80063bc
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.Lb5fa8
	bl	Func_8006458
	add	r5, #1
	mov	r0, #2
	bl	WaitFrames
	add	r7, #2
	cmp	r5, r8
	blt	.Lb5f5a
.Lb5fa8:
	mov	r2, #0x95
	lsl	r2, #1
	mov	r3, #0
	add	r7, r6, r2
	mov	r8, r3
	b	.Lb5fc0
.Lb5fb4:
	bl	Func_8006458
	mov	r0, #2
	bl	WaitFrames
	add	r5, #1
.Lb5fc0:
	cmp	r5, #2
	bgt	.Lb5fda
	mov	r4, r8
	mov	r1, #0xaa
	lsl	r1, #1
	strb	r4, [r7]
	mov	r0, r6
	bl	Func_80063bc
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	bne	.Lb5fb4
.Lb5fda:
	mov	r5, #0xa0
	mov	r0, r6
	lsl	r5, #1
	bl	free
	mov	r0, r5
	bl	Func_8004970
	mov	r6, r0
	mov	r0, #0
	bl	_Func_8077330
	ldr	r3, =Func_8001af8
	mov	r1, r0
	mov	r2, r5
	mov	r0, r6
	bl	_call_via_r3
	mov	r4, r6
	mov	r3, #0x84
	lsl	r3, #1
	add	r2, r6, r3
	ldr	r3, [r2]
	mov	r1, #0
	add	r4, #8
	cmp	r1, r3
	bge	.Lb6028
	mov	r0, r2
	mov	r2, r4
.Lb6014:
	ldrb	r3, [r2, #2]
	mov	r4, r9
	add	r3, #0x48
	ldrb	r3, [r4, r3]
	strb	r3, [r2, #2]
	ldr	r3, [r0]
	add	r1, #1
	add	r2, #4
	cmp	r1, r3
	blt	.Lb6014
.Lb6028:
	mov	r1, #0xa0
	lsl	r1, #1
	mov	r0, r6
	bl	Func_80063bc
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.Lb604a
	bl	Func_8006458
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #2
	bl	WaitFrames
.Lb604a:
	mov	r0, r6
	bl	free
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b5f0c

	.section .text.after_606c, "ax", %progbits
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
