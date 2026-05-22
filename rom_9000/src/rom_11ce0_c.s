	.include "macros.inc"

.thumb_func_start Func_11f54
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e70
	mov	r5, r1
	ldr	r1, [r3]
	mov	r6, r2
	asr	r5, #16
	asr	r6, #16
	ldr	r2, =ewram_10000
	cmp	r1, #0
	beq	.L11f7a
	mov	r2, #3
	and	r2, r0
	lsl	r3, r2, #1
	add	r3, r2
	mov	r2, #0x98
	lsl	r2, #1
	lsl	r3, #4
	add	r3, r2
	ldr	r2, [r1, r3]
.L11f7a:
	mov	r3, r5
	cmp	r5, #0
	bge	.L11f82
	add	r3, #0xf
.L11f82:
	asr	r1, r3, #4
	mov	r3, r6
	cmp	r6, #0
	bge	.L11f8c
	add	r3, #0xf
.L11f8c:
	asr	r3, #4
	lsl	r3, #7
	add	r3, r1, r3
	lsl	r3, #2
	add	r2, r3
	ldrb	r1, [r2, #3]
	ldr	r3, =ewram_2c000
	lsl	r1, #2
	add	r0, r1, r3
	mov	r2, #0xf
	ldrb	r0, [r0]
	mov	r3, r2
	ldr	r4, =.L134fc
	and	r3, r0
	ldr	r7, =ewram_2c001
	and	r5, r2
	and	r6, r2
	lsl	r3, #2
	add	r0, r1, r7
	ldr	r3, [r4, r3]
	mov	r1, r5
	mov	r2, r6
	bl	_call_via_r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_11f54

.thumb_func_start Func_11fd8
	push	{r5, r6, lr}
	ldr	r3, =iwram_1e70
	ldr	r5, [r3]
	mov	r4, r2
	mov	r6, r0
	asr	r1, #16
	asr	r4, #16
	ldr	r0, =ewram_10000
	cmp	r5, #0
	beq	.L11ffe
	mov	r2, #3
	and	r2, r6
	lsl	r3, r2, #1
	add	r3, r2
	mov	r2, #0x98
	lsl	r3, #4
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r5, r3]
.L11ffe:
	cmp	r1, #0
	bge	.L12004
	add	r1, #0xf
.L12004:
	mov	r2, r4
	asr	r1, #4
	cmp	r2, #0
	bge	.L1200e
	add	r2, #0xf
.L1200e:
	asr	r3, r2, #4
	lsl	r3, #7
	add	r3, r1, r3
	lsl	r3, #2
	add	r0, r3
	ldrb	r3, [r0, #3]
	ldr	r2, =ewram_2c000
	lsl	r3, #2
	add	r3, r2
	ldrb	r3, [r3]
	mov	r0, #0xf
	and	r0, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_11fd8

.thumb_func_start Func_12038
	push	{r5, lr}
	ldr	r3, =iwram_1e70
	mov	r5, r0
	ldr	r0, [r3]
	mov	r4, r2
	asr	r1, #20
	asr	r4, #20
	ldr	r2, =ewram_10000
	cmp	r0, #0
	beq	.L1205e
	mov	r2, #3
	and	r2, r5
	lsl	r3, r2, #1
	add	r3, r2
	mov	r2, #0x98
	lsl	r2, #1
	lsl	r3, #4
	add	r3, r2
	ldr	r2, [r0, r3]
.L1205e:
	lsl	r3, r4, #7
	add	r3, r1, r3
	lsl	r3, #2
	add	r2, r3
	ldrb	r0, [r2, #2]
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_12038

.thumb_func_start Func_12078
	push	{r5, r6, lr}
	mov	r6, r3
	ldr	r3, =iwram_1e70
	mov	r5, r0
	ldr	r0, [r3]
	mov	r4, r2
	asr	r1, #20
	asr	r4, #20
	cmp	r0, #0
	beq	.L120a8
	mov	r2, #3
	and	r2, r5
	lsl	r3, r2, #1
	add	r3, r2
	mov	r2, #0x98
	lsl	r2, #1
	lsl	r3, #4
	add	r3, r2
	ldr	r2, [r0, r3]
	lsl	r3, r4, #7
	add	r3, r1, r3
	lsl	r3, #2
	add	r2, r3
	strb	r6, [r2, #2]
.L120a8:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_12078

.thumb_func_start Func_120b4
	push	{lr}
	cmp	r0, #0
	bge	.L120bc
	add	r0, #0xf
.L120bc:
	asr	r0, #4
	cmp	r1, #0
	bge	.L120c4
	add	r1, #0xf
.L120c4:
	asr	r3, r1, #4
	lsl	r3, #7
	add	r3, r0, r3
	ldr	r2, =ewram_10000
	lsl	r3, #2
	add	r3, r2
	ldrb	r0, [r3, #1]
	lsr	r0, #6
	pop	{r1}
	bx	r1
.func_end Func_120b4

.thumb_func_start Func_120dc
	push	{r5, r6, r7, lr}
	mov	r3, #0xa
	ldrsh	r6, [r1, r3]
	ldr	r3, =iwram_1e70
	mov	r2, #2
	ldrsh	r5, [r1, r2]
	ldr	r1, [r3]
	mov	r7, r0
	mov	r0, #0
	cmp	r1, #0
	beq	.L1217c
	mov	r2, r7
	add	r2, #0x22
	ldrb	r3, [r2]
	cmp	r3, #2
	bhi	.L1210e
	mov	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	mov	r2, #0x98
	lsl	r2, #1
	lsl	r3, #4
	add	r3, r2
	ldr	r2, [r1, r3]
	b	.L12110
.L1210e:
	ldr	r2, =ewram_10000
.L12110:
	mov	r3, r5
	cmp	r5, #0
	bge	.L12118
	add	r3, #0xf
.L12118:
	asr	r1, r3, #4
	mov	r3, r6
	cmp	r6, #0
	bge	.L12122
	add	r3, #0xf
.L12122:
	asr	r3, #4
	lsl	r3, #7
	add	r3, r1, r3
	lsl	r3, #2
	add	r2, r3
	ldrb	r3, [r2, #2]
	mov	r0, #2
	cmp	r3, #0xff
	beq	.L1217c
	ldrb	r1, [r2, #3]
	ldr	r3, =ewram_2c000
	lsl	r1, #2
	add	r0, r1, r3
	mov	r2, #0xf
	ldrb	r0, [r0]
	mov	r3, r2
	and	r3, r0
	lsl	r3, #2
	mov	r12, r3
	ldr	r4, =.L134fc
	ldr	r3, =ewram_2c001
	and	r5, r2
	and	r6, r2
	mov	r2, r12
	add	r0, r1, r3
	ldr	r3, [r4, r2]
	mov	r1, r5
	mov	r2, r6
	bl	_call_via_r3
	ldr	r3, [r7, #0x14]
	sub	r0, r3
	mov	r3, #0x80
	lsl	r3, #12
	cmp	r0, r3
	ble	.L1216e
	mov	r0, #1
	b	.L1217c
.L1216e:
	ldr	r2, =0xfff40000
	cmp	r0, r2
	bge	.L1217a
	mov	r0, #1
	neg	r0, r0
	b	.L1217c
.L1217a:
	mov	r0, #0
.L1217c:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_120dc

	.section .rodata
	.global .L132fc
	.global .L133fc

.L132fc:
	.incrom 0x132fc, 0x133fc
.L133fc:
	.incrom 0x133fc, 0x134fc
.L134fc:
	.word	Func_11ce0
	.word	Func_11cec
	.word	Func_11d10
	.word	Func_11d34
	.word	Func_11d60
	.word	Func_11d94
	.word	Func_11ddc
	.word	Func_11e2c
	.word	Func_11e50
	.word	Func_11e6c
	.word	Func_11e88
	.word	Func_11ed0
	.word	Func_11f14
	.word	Func_11f28
	.word	Func_11f3c
	.word	Func_11f48
