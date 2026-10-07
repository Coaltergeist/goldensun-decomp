	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_960_20089cc
	push	{r5, r6, r7, lr}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r6, r0
	ldr	r0, [r3]
	sub	sp, #0x38
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r6, #0x34]
	mov	r3, #0xc0
	lsl	r3, #9
	mov	r7, r6
	str	r3, [r6, #0x30]
	add	r7, #0x55
	mov	r3, #0
	strb	r3, [r7]
	mov	r1, #0
	mov	r5, r0
	mov	r0, r6
	bl	__Actor_SetSpriteFlags
	mov	r1, r6
	add	r1, #0x54
	ldrb	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	mov	r0, #0x82
	strb	r3, [r1]
	lsl	r0, #1
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm960_a20
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x3c]
	b	.Lm960_a80
.Lm960_a20:
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x38]
	ldr	r3, [r5, #0x14]
	str	r3, [r6, #0x3c]
	ldr	r3, [r5, #0x10]
	str	r3, [r6, #0x40]
	ldr	r1, [r6, #8]
	ldr	r3, [r5, #8]
	sub	r2, r1, r3
	cmp	r2, #0
	bge	.Lm960_a38
	sub	r2, r3, r1
.Lm960_a38:
	ldr	r0, [r6, #0x10]
	ldr	r1, [r5, #0x10]
	sub	r3, r0, r1
	cmp	r3, #0
	blt	.Lm960_a4e
	add	r3, r2, r3
	mov	r2, #0x80
	lsl	r2, #12
	cmp	r3, r2
	blt	.Lm960_a5a
	b	.Lm960_a82
.Lm960_a4e:
	sub	r3, r1, r0
	add	r3, r2, r3
	mov	r2, #0x80
	lsl	r2, #12
	cmp	r3, r2
	bge	.Lm960_a82
.Lm960_a5a:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, r5
	add	r3, #0x55
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lm960_a72
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r3
	mov	r3, #0x37
	strh	r3, [r2]
.Lm960_a72:
	mov	r3, #3
	strb	r3, [r7]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x38]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #0x3c]
	ldr	r3, [r5, #0x10]
.Lm960_a80:
	str	r3, [r6, #0x40]
.Lm960_a82:
	ldr	r3, =iwram_3001e40
	ldr	r7, [r3]
	mov	r3, #7
	and	r7, r3
	cmp	r7, #0
	bne	.Lm960_abc
	ldr	r3, =0xcccc
	add	r5, sp, #0x10
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	bl	__Random
	mov	r2, #0xf8
	lsl	r0, #12
	lsl	r2, #8
	lsr	r0, #16
	add	r0, r2
	strh	r0, [r5, #0x22]
	ldr	r3, =0x880001
	ldr	r0, [r6, #8]
	str	r3, [sp, #8]
	ldr	r1, [r6, #0xc]
	ldr	r2, [r6, #0x10]
	mov	r3, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
.Lm960_abc:
	mov	r0, #1
	add	sp, #0x38
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_960_20089cc

