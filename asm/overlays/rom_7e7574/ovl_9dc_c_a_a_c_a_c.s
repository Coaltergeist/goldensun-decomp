	.include "macros.inc"

.thumb_func_start OvlFunc_959_2009528
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r2, =iwram_3001e70
	mov	r1, #0xb2
	ldr	r3, [r2]
	lsl	r1, #1
	add	r6, r3, r1
	ldr	r3, =iwram_3001e40
	ldr	r2, [r2, #0x4c]
	ldr	r3, [r3]
	mov	r8, r2
	mov	r2, #1
	and	r3, r2
	mov	r7, r0
	cmp	r3, #0
	beq	.L1556
	str	r2, [r6, #0x18]
	str	r2, [r6, #0x1c]
	b	.L155e
.L1556:
	mov	r3, #1
	neg	r3, r3
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
.L155e:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1586
	mov	r3, #0xbf
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L1586
	mov	r3, #0xc0
	lsl	r3, #1
	add	r3, r8
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L1590
.L1586:
	mov	r2, r7
	add	r2, #0x5b
	mov	r3, #1
	strb	r3, [r2]
	b	.L1630
.L1590:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1630
	mov	r5, r7
	add	r5, #0x5b
	strb	r0, [r5]
	mov	r0, #0x85
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L15c8
	ldrb	r3, [r5]
	cmp	r3, #0
	bne	.L15c8
	ldr	r2, [r7, #8]
	mov	r3, #0xbc
	lsl	r3, #18
	sub	r3, r2
	str	r3, [r6, #0x20]
	ldr	r2, [r7, #0x10]
	mov	r3, #0xf8
	lsl	r3, #17
	sub	r3, r2
	str	r3, [r6, #0x24]
.L15c8:
	bl	OvlFunc_959_20094cc
	cmp	r0, #0
	bne	.L1630
	mov	r0, #0x12
	bl	OvlFunc_959_2009918
	cmp	r0, #0
	beq	.L15f2
	ldr	r3, =gState
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L1602
	sub	r2, #0xce
	ldr	r3, =0x2092
	add	r2, r8
	b	.L162e
.L15f2:
	ldr	r3, =gState
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.L161a
.L1602:
	mov	r0, #0x12
	bl	OvlFunc_959_20098e4
	cmp	r0, #0
	beq	.L161a
	ldr	r0, =0x215
	bl	__SetFlag
	mov	r0, #0x85
	lsl	r0, #2
	bl	__SetFlag
.L161a:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1630
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #0x5d
.L162e:
	strh	r3, [r2]
.L1630:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009528

