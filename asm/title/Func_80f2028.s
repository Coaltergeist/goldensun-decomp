	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f2028  @ 0x080f2028
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001efc
	ldr	r6, [r3]
	ldr	r3, =iwram_3001d20
	ldrb	r3, [r3]
	mov	r1, #0
	mov	r8, r1
	cmp	r3, #0
	bne	.Lf2056
	ldr	r2, [r6, #0xc]
	mov	r3, #3
	add	r2, #1
	and	r3, r2
	str	r2, [r6, #0xc]
	cmp	r3, #0
	bne	.Lf2056
	ldr	r3, [r6, #0x14]
	add	r3, #1
	str	r3, [r6, #0x14]
.Lf2056:
	ldr	r3, =iwram_3001ad0
	ldrh	r2, [r3, #6]
	mov	r3, #0x30
	sub	r3, r2
	ldr	r2, [r6, #0x14]
	mov	r10, r3
	mov	r3, #0x90
	sub	r1, r3, r2
	mov	r2, #0x8c
	ldr	r3, [r6, #8]
	lsl	r2, #1
	cmp	r3, r2
	blt	.Lf2072
	b	.Lf23ae
.Lf2072:
	ldr	r3, [r6, #0xc]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lf207e
	b	.Lf2208
.Lf207e:
	ldr	r3, =.Lf39ab
	mov	r2, r10
	ldrb	r3, [r3]
	sub	r2, r1, r2
	mov	r7, r3
	mov	r9, r2
	sub	r3, #0x68
	mov	r0, r9
	mul	r0, r3
	mov	r1, #0x50
	bl	__divsi3
	add	r0, r10
	mov	r5, r0
	sub	r5, #0x10
	sub	r7, #0x10
	cmp	r5, #0xff
	ble	.Lf20aa
	ldr	r3, =0xffffff00
.Lf20a4:
	add	r5, r3
	cmp	r5, #0xff
	bgt	.Lf20a4
.Lf20aa:
	cmp	r5, #0
	bge	.Lf20b8
	mov	r3, #0x80
	lsl	r3, #1
.Lf20b2:
	add	r5, r3
	cmp	r5, #0
	blt	.Lf20b2
.Lf20b8:
	add	r0, r7, #4
	lsl	r0, #16
	mov	r3, r0
	ldr	r2, =0x40002400
	orr	r3, r5
	orr	r3, r2
	mov	r1, #0x18
	str	r3, [r6, r1]
	mov	r1, r7
	add	r1, #0x14
	lsl	r1, #16
	mov	r3, r1
	ldr	r2, =0x50002400
	orr	r3, r5
	orr	r3, r2
	mov	r2, r5
	add	r2, #0x10
	mov	r4, #0x20
	lsl	r2, #24
	str	r3, [r6, r4]
	lsr	r2, #24
	ldr	r3, =0x60002400
	orr	r0, r2
	orr	r0, r3
	ldr	r3, =0x70002400
	mov	r4, #0x28
	orr	r1, r2
	str	r0, [r6, r4]
	mov	r2, #0xe8
	orr	r1, r3
	mov	r0, #0x30
	mov	r3, #0x1c
	str	r1, [r6, r0]
	str	r2, [r6, r3]
	mov	r3, #0x24
	str	r2, [r6, r3]
	mov	r3, #0x2c
	str	r2, [r6, r3]
	mov	r3, #0x34
	str	r2, [r6, r3]
	ldr	r3, =.Lf39ab
	ldrb	r3, [r3, #2]
	mov	r7, r3
	sub	r3, #0x68
	mov	r0, r9
	mul	r0, r3
	mov	r1, #0x50
	bl	__divsi3
	add	r0, r10
	mov	r5, r0
	sub	r5, #0x10
	sub	r7, #0x10
	cmp	r5, #0xff
	ble	.Lf212e
	ldr	r3, =0xffffff00
.Lf2128:
	add	r5, r3
	cmp	r5, #0xff
	bgt	.Lf2128
.Lf212e:
	cmp	r5, #0
	bge	.Lf213c
	mov	r3, #0x80
	lsl	r3, #1
.Lf2136:
	add	r5, r3
	cmp	r5, #0
	blt	.Lf2136
.Lf213c:
	add	r3, r7, #4
	ldr	r2, =0x80002400
	lsl	r3, #16
	orr	r3, r5
	orr	r3, r2
	mov	r1, #0x38
	str	r3, [r6, r1]
	mov	r2, #0x3c
	mov	r3, #0x80
	str	r3, [r6, r2]
	mov	r3, #5
	mov	r8, r3
	ldr	r3, =.Lf39ab
	ldrb	r3, [r3, #4]
	mov	r7, r3
	sub	r3, #0x68
	mov	r0, r9
	mul	r0, r3
	mov	r1, #0x50
	bl	__divsi3
	add	r0, r10
	mov	r5, r0
	sub	r5, #0x20
	sub	r7, #0x20
	cmp	r5, #0xff
	ble	.Lf217a
	ldr	r3, =0xffffff00
.Lf2174:
	add	r5, r3
	cmp	r5, #0xff
	bgt	.Lf2174
.Lf217a:
	cmp	r5, #0
	bge	.Lf2188
	mov	r3, #0x80
	lsl	r3, #1
.Lf2182:
	add	r5, r3
	cmp	r5, #0
	blt	.Lf2182
.Lf2188:
	add	r0, r7, #4
	lsl	r0, #16
	mov	r1, r8
	mov	r3, r0
	ldr	r2, =0x80002400
	lsl	r1, #3
	orr	r3, r5
	mov	r12, r1
	orr	r3, r2
	add	r1, #0x18
	str	r3, [r6, r1]
	mov	r1, r7
	add	r1, #0x24
	lsl	r1, #16
	mov	r3, r1
	ldr	r2, =0x90002400
	orr	r3, r5
	orr	r3, r2
	mov	r2, r5
	mov	r4, r12
	add	r2, #0x20
	add	r4, #0x20
	lsl	r2, #24
	str	r3, [r6, r4]
	lsr	r2, #24
	ldr	r3, =0xa0002400
	orr	r0, r2
	orr	r0, r3
	ldr	r3, =0xb0002400
	orr	r1, r2
	add	r4, #8
	str	r0, [r6, r4]
	orr	r1, r3
	mov	r0, r12
	mov	r3, r12
	mov	r2, #0xc0
	b	.Lf2396

	.pool_aligned

.Lf2208:
	ldr	r3, =.Lf39ab
	mov	r2, r10
	ldrb	r3, [r3, #1]
	sub	r2, r1, r2
	mov	r7, r3
	mov	r9, r2
	sub	r3, #0x68
	mov	r0, r9
	mul	r0, r3
	mov	r1, #0x50
	bl	__divsi3
	add	r0, r10
	mov	r5, r0
	sub	r5, #0x10
	sub	r7, #0x10
	cmp	r5, #0xff
	ble	.Lf2234
	ldr	r3, =0xffffff00
.Lf222e:
	add	r5, r3
	cmp	r5, #0xff
	bgt	.Lf222e
.Lf2234:
	cmp	r5, #0
	bge	.Lf2242
	mov	r3, #0x80
	lsl	r3, #1
.Lf223c:
	add	r5, r3
	cmp	r5, #0
	blt	.Lf223c
.Lf2242:
	add	r0, r7, #4
	lsl	r0, #16
	mov	r3, r0
	ldr	r2, =0x40002400
	orr	r3, r5
	orr	r3, r2
	mov	r1, #0x18
	str	r3, [r6, r1]
	mov	r1, r7
	add	r1, #0x14
	lsl	r1, #16
	mov	r3, r1
	ldr	r2, =0x50002400
	orr	r3, r5
	orr	r3, r2
	mov	r2, r5
	add	r2, #0x10
	mov	r4, #0x20
	lsl	r2, #24
	str	r3, [r6, r4]
	lsr	r2, #24
	ldr	r3, =0x60002400
	orr	r0, r2
	orr	r0, r3
	ldr	r3, =0x70002400
	mov	r4, #0x28
	orr	r1, r2
	str	r0, [r6, r4]
	mov	r2, #0xe8
	orr	r1, r3
	mov	r0, #0x30
	mov	r3, #0x1c
	str	r1, [r6, r0]
	str	r2, [r6, r3]
	mov	r3, #0x24
	str	r2, [r6, r3]
	mov	r3, #0x2c
	str	r2, [r6, r3]
	mov	r3, #0x34
	str	r2, [r6, r3]
	ldr	r3, =.Lf39ab
	ldrb	r3, [r3, #3]
	mov	r7, r3
	sub	r3, #0x68
	mov	r0, r9
	mul	r0, r3
	mov	r1, #0x50
	bl	__divsi3
	add	r0, r10
	mov	r5, r0
	sub	r5, #0x10
	sub	r7, #0x10
	cmp	r5, #0xff
	ble	.Lf22b8
	ldr	r3, =0xffffff00
.Lf22b2:
	add	r5, r3
	cmp	r5, #0xff
	bgt	.Lf22b2
.Lf22b8:
	cmp	r5, #0
	bge	.Lf22c6
	mov	r3, #0x80
	lsl	r3, #1
.Lf22c0:
	add	r5, r3
	cmp	r5, #0
	blt	.Lf22c0
.Lf22c6:
	add	r0, r7, #4
	lsl	r0, #16
	mov	r3, r0
	ldr	r2, =0x40002400
	orr	r3, r5
	orr	r3, r2
	mov	r1, #0x38
	str	r3, [r6, r1]
	mov	r1, r7
	add	r1, #0x14
	lsl	r1, #16
	mov	r3, r1
	ldr	r2, =0x50002400
	orr	r3, r5
	orr	r3, r2
	mov	r2, r5
	add	r2, #0x10
	mov	r4, #0x40
	lsl	r2, #24
	str	r3, [r6, r4]
	lsr	r2, #24
	ldr	r3, =0x60002400
	orr	r0, r2
	orr	r0, r3
	ldr	r3, =0x70002400
	mov	r4, #0x48
	orr	r1, r2
	str	r0, [r6, r4]
	mov	r2, #0xe0
	orr	r1, r3
	mov	r0, #0x50
	mov	r3, #0x3c
	str	r1, [r6, r0]
	str	r2, [r6, r3]
	mov	r3, #0x44
	str	r2, [r6, r3]
	mov	r3, #0x4c
	str	r2, [r6, r3]
	mov	r3, #0x54
	str	r2, [r6, r3]
	mov	r3, #8
	mov	r8, r3
	ldr	r3, =.Lf39ab
	ldrb	r3, [r3, #5]
	mov	r7, r3
	sub	r3, #0x68
	mov	r0, r9
	mul	r0, r3
	mov	r1, #0x50
	bl	__divsi3
	add	r0, r10
	mov	r5, r0
	sub	r5, #0x20
	sub	r7, #0x20
	cmp	r5, #0xff
	ble	.Lf2340
	ldr	r3, =0xffffff00
.Lf233a:
	add	r5, r3
	cmp	r5, #0xff
	bgt	.Lf233a
.Lf2340:
	cmp	r5, #0
	bge	.Lf234e
	mov	r3, #0x80
	lsl	r3, #1
.Lf2348:
	add	r5, r3
	cmp	r5, #0
	blt	.Lf2348
.Lf234e:
	add	r0, r7, #4
	lsl	r0, #16
	mov	r1, r8
	mov	r3, r0
	ldr	r2, =0x80002400
	lsl	r1, #3
	orr	r3, r5
	mov	r12, r1
	orr	r3, r2
	add	r1, #0x18
	str	r3, [r6, r1]
	mov	r1, r7
	add	r1, #0x24
	lsl	r1, #16
	mov	r3, r1
	ldr	r2, =0x90002400
	orr	r3, r5
	orr	r3, r2
	mov	r2, r5
	mov	r4, r12
	add	r2, #0x20
	add	r4, #0x20
	lsl	r2, #24
	str	r3, [r6, r4]
	lsr	r2, #24
	ldr	r3, =0xa0002400
	orr	r0, r2
	orr	r0, r3
	ldr	r3, =0xb0002400
	orr	r1, r2
	add	r4, #8
	str	r0, [r6, r4]
	orr	r1, r3
	mov	r0, r12
	mov	r3, r12
	mov	r2, #0xa0
.Lf2396:
	add	r3, #0x1c
	add	r0, #0x30
	str	r1, [r6, r0]
	str	r2, [r6, r3]
	add	r3, #8
	str	r2, [r6, r3]
	add	r3, #8
	str	r2, [r6, r3]
	add	r3, #8
	str	r2, [r6, r3]
	mov	r2, #4
	add	r8, r2
.Lf23ae:
	mov	r3, r8
	cmp	r3, #0x77
	bhi	.Lf23c8
	lsl	r3, #3
	ldr	r2, =0x400020a0
	add	r3, #0x18
.Lf23ba:
	mov	r1, #1
	add	r8, r1
	mov	r1, r8
	str	r2, [r6, r3]
	add	r3, #8
	cmp	r1, #0x77
	bls	.Lf23ba
.Lf23c8:
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lf23fc	@ 0x3f50
	strh	r3, [r2]
	ldr	r3, .Lf2400	@ 0xe0e
	add	r2, #2
	strh	r3, [r2]
	mov	r2, r8
	lsl	r5, r2, #3
	mov	r7, r6
	mov	r4, #0x84
	lsr	r2, r5, #2
	lsl	r4, #24
	add	r7, #0x18
	mov	r1, #0xe0
	ldr	r3, =REG_DMA3SAD
	mov	r0, r7
	lsl	r1, #19
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =iwram_3001ad0
	ldrh	r2, [r3, #6]
	mov	r3, #0x20
	sub	r2, r3, r2
	b	.Lf243c

	.align	2, 0
.Lf23fc:
	.word	0x3f50
.Lf2400:
	.word	0xe0e
	.pool

.Lf243c:
	cmp	r2, #0xff
	ble	.Lf2448
	ldr	r3, =0xffffff00
.Lf2442:
	add	r2, r3
	cmp	r2, #0xff
	bgt	.Lf2442
.Lf2448:
	cmp	r2, #0
	bge	.Lf2456
	mov	r3, #0x80
	lsl	r3, #1
.Lf2450:
	add	r2, r3
	cmp	r2, #0
	blt	.Lf2450
.Lf2456:
	ldr	r3, =0xc05c2000
	mov	r4, #0xe0
	orr	r2, r3
	mov	r3, #0x80
	lsl	r3, #4
	lsl	r4, #19
	mov	r0, r6
	str	r2, [r6, #0x78]
	add	r0, #0x78
	str	r3, [r6, #0x7c]
	add	r1, r5, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x84000002
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r7
	mov	r1, r4
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80f2028

