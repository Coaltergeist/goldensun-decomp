	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f07f0  @ 0x080f07f0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, #0x90
	lsl	r6, #4
	sub	sp, #0x2c
	mov	r10, r0
	mov	r0, r6
	str	r1, [sp, #8]
	mov	r7, r2
	bl	alloc_ewram
	mov	r1, #0
	mov	r2, #0xc0
	mov	r3, r10
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r9, r2
	cmp	r3, #0
	bne	.Lf0826
	mov	r0, #1
	neg	r0, r0
	b	.Lf0a16
.Lf0826:
	mov	r5, #0x80
	lsl	r5, #2
	mov	r0, r5
	bl	_GetFlag
	cmp	r0, #0
	bne	.Lf0848
	ldr	r3, =Func_80008d8
	ldr	r0, [sp, #4]
	mov	r1, r6
	mov	r2, #0
	bl	_call_via_r3
	mov	r0, r5
	bl	_SetFlag
	b	.Lf086e
.Lf0848:
	ldr	r4, [sp, #4]
	mov	r5, #0x80
	lsl	r5, #4
	mov	r2, #0x80
	add	r1, r4, r5
	ldr	r3, =Func_8001af8
	lsl	r2, #1
	mov	r0, r4
	bl	_call_via_r3
	mov	r2, #0x80
	ldr	r1, [sp, #4]
	lsl	r2, #1
	add	r0, r1, r2
	ldr	r3, =Func_80008d8
	mov	r1, r5
	mov	r2, #0
	bl	_call_via_r3
.Lf086e:
	mov	r4, r10
	ldrb	r0, [r4]
	mov	r3, #0
	mov	r8, r3
	add	r4, #1
	cmp	r0, #0
	beq	.Lf0892
	ldr	r2, =.Lf11bd
.Lf087e:
	cmp	r0, #0x1f
	bls	.Lf088a
	mov	r3, r0
	sub	r3, #0x20
	ldrb	r3, [r2, r3]
	add	r8, r3
.Lf088a:
	ldrb	r0, [r4]
	add	r4, #1
	cmp	r0, #0
	bne	.Lf087e
.Lf0892:
	cmp	r7, #2
	bne	.Lf08a0
	mov	r4, r9
	mov	r1, r8
	sub	r4, r1
	str	r4, [sp]
	b	.Lf08b2
.Lf08a0:
	cmp	r7, #1
	bne	.Lf08b2
	mov	r2, r9
	mov	r4, r8
	sub	r3, r2, r4
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [sp]
.Lf08b2:
	mov	r4, r10
	ldrb	r0, [r4]
	mov	r1, #0
	add	r4, #1
	mov	r8, r1
	mov	r10, r4
	cmp	r0, #0
	beq	.Lf0938
.Lf08c2:
	cmp	r0, #0x1f
	bls	.Lf092c
	mov	r2, #0x20
	neg	r2, r2
	add	r2, r0
	ldr	r1, =.Lf1770
	lsl	r3, r2, #3
	add	r4, r1, r3
	mov	r14, r2
	ldr	r1, [sp]
	ldr	r2, [sp, #4]
	add	r3, r2, r1
	mov	r2, r8
	add	r1, r3, r2
	mov	r3, #0
	mov	r12, r3
	mov	r2, #1
	mov	r3, #0xf
	mov	r11, r2
	mov	r9, r3
.Lf08ea:
	ldr	r3, =0x101
	ldrb	r7, [r4]
	mov	r6, #0x80
	add	r4, #1
	mov	r5, #7
	add	r2, r1, r3
.Lf08f6:
	mov	r3, r7
	and	r3, r6
	cmp	r3, #0
	beq	.Lf0906
	mov	r3, r11
	strb	r3, [r2]
	mov	r3, r9
	strb	r3, [r1]
.Lf0906:
	sub	r5, #1
	add	r2, #1
	add	r1, #1
	lsr	r6, #1
	cmp	r5, #0
	bge	.Lf08f6
	mov	r2, #1
	add	r12, r2
	mov	r3, r12
	add	r1, #0xf8
	cmp	r3, #7
	ble	.Lf08ea
	mov	r3, #1
	cmp	r0, #0x1f
	bls	.Lf092a
	ldr	r4, =.Lf11bd
	mov	r1, r14
	ldrb	r3, [r4, r1]
.Lf092a:
	add	r8, r3
.Lf092c:
	mov	r2, r10
	ldrb	r0, [r2]
	mov	r3, #1
	add	r10, r3
	cmp	r0, #0
	bne	.Lf08c2
.Lf0938:
	mov	r4, #0x18
	mov	r2, #0x60
	mov	r10, r4
	ldr	r4, [sp, #4]
	mov	r8, r2
	mov	r6, #0x80
	mov	r3, #7
	mov	r2, #0xc0
	mov	r1, r4
	mov	r7, #0x60
	lsl	r6, #1
	mov	r12, r3
	mov	r14, r2
.Lf0952:
	cmp	r7, #0
	beq	.Lf0970
	mov	r5, r8
	mov	r2, r4
.Lf095a:
	ldrb	r3, [r2, #1]
	ldrb	r0, [r2]
	lsl	r3, #4
	orr	r0, r3
	sub	r5, #1
	strb	r0, [r1]
	add	r2, #2
	add	r4, #2
	add	r1, #1
	cmp	r5, #0
	bne	.Lf095a
.Lf0970:
	sub	r3, r1, r7
	mov	r2, r14
	add	r1, r3, r6
	sub	r3, r4, r2
	add	r4, r3, r6
	mov	r3, #1
	neg	r3, r3
	add	r12, r3
	mov	r2, r12
	cmp	r2, #0
	bge	.Lf0952
	mov	r3, r10
	cmp	r3, #0
	beq	.Lf0a0e
	ldr	r4, [sp, #8]
	ldr	r0, [sp, #4]
	lsl	r1, r4, #5
	mov	r12, r10
.Lf0994:
	ldr	r3, =0x6010000
	ldr	r4, =0x6010004
	add	r2, r1, r3
	ldr	r3, [r0]
	str	r3, [r2]
	add	r2, r1, r4
	mov	r4, #0x80
	lsl	r4, #1
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0x80
	str	r3, [r2]
	ldr	r3, =0x6010008
	lsl	r4, #2
	add	r2, r1, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0xc0
	str	r3, [r2]
	ldr	r3, =0x601000c
	lsl	r4, #2
	add	r2, r1, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0x80
	str	r3, [r2]
	ldr	r3, =0x6010010
	lsl	r4, #3
	add	r2, r1, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0xa0
	str	r3, [r2]
	ldr	r3, =0x6010014
	lsl	r4, #3
	add	r2, r1, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0xc0
	str	r3, [r2]
	ldr	r3, =0x6010018
	lsl	r4, #3
	add	r2, r1, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	mov	r4, #0xe0
	str	r3, [r2]
	ldr	r3, =0x601001c
	lsl	r4, #3
	add	r2, r1, r3
	add	r3, r0, r4
	ldr	r3, [r3]
	str	r3, [r2]
	mov	r2, #1
	neg	r2, r2
	add	r12, r2
	mov	r3, r12
	add	r1, #0x20
	add	r0, #4
	cmp	r3, #0
	bne	.Lf0994
.Lf0a0e:
	ldr	r0, [sp, #4]
	bl	free
	mov	r0, #0
.Lf0a16:
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80f07f0

	.section .rodata

.Lf0a5c:
	.incrom 0xf0a5c, 0xf11bd
.Lf11bd:
	.incrom 0xf11bd, 0xf1220
.Lf1220:
	.incrom 0xf1220, 0xf1770
.Lf1770:
	.incrom 0xf1770, 0xf1a64
