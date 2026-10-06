	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8078144  @ 0x08078144
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	bl	GetPartySize
	mov	r7, #0
	mov	r8, r0
	cmp	r7, r8
	bge	.L7820c
.L78156:
	mov	r1, #0xfc
	ldr	r2, =gState
	lsl	r1, #1
	add	r3, r7, r1
	ldrb	r6, [r2, r3]
	ldr	r3, =.L7a828
	ldrb	r3, [r3, r6]
	mov	r5, #0
	cmp	r3, #0
	bne	.L7817c
	mov	r0, #0x88
	lsl	r0, #1
	bl	GetFlag
	cmp	r0, #0
	bne	.L78190
	mov	r0, #0x89
	lsl	r0, #1
	b	.L78188
.L7817c:
	ldr	r0, =0x111
	bl	GetFlag
	cmp	r0, #0
	bne	.L78190
	ldr	r0, =0x113
.L78188:
	bl	GetFlag
	cmp	r0, #0
	beq	.L78192
.L78190:
	mov	r5, #1
.L78192:
	cmp	r5, #0
	beq	.L78206
	mov	r0, r6
	bl	GetUnit
	mov	r5, r0
	ldrh	r3, [r5, #0x36]
	strh	r3, [r5, #0x3a]
	mov	r2, #0x38
	ldrsh	r0, [r5, r2]
	mov	r3, #0x34
	ldrsh	r1, [r5, r3]
	lsl	r0, #14
	bl	__divsi3
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L781c0
	mov	r3, #0
	cmp	r0, #0
	blt	.L781c0
	mov	r3, r0
.L781c0:
	strh	r3, [r5, #0x14]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L781d4
	mov	r1, #0x38
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L781d4
	mov	r3, #1
	strh	r3, [r5, #0x14]
.L781d4:
	mov	r2, #0x3a
	ldrsh	r0, [r5, r2]
	mov	r3, #0x36
	ldrsh	r1, [r5, r3]
	lsl	r0, #14
	bl	__divsi3
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L781f2
	mov	r3, #0
	cmp	r0, #0
	blt	.L781f2
	mov	r3, r0
.L781f2:
	strh	r3, [r5, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L78206
	mov	r1, #0x3a
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L78206
	mov	r3, #1
	strh	r3, [r5, #0x16]
.L78206:
	add	r7, #1
	cmp	r7, r8
	blt	.L78156
.L7820c:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8078144
