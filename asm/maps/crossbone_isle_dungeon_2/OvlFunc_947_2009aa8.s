	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_2009aa8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001ebc
	ldr	r1, =0xcc7
	ldr	r3, [r3]
	add	r3, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r8, r0
	cmp	r3, #1
	bne	.Lm947_1aee
	mov	r2, r8
	ldr	r3, [r2, #0x50]
	ldr	r0, [r6, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	ldrb	r1, [r0, #9]
	and	r2, r3
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	mov	r1, r6
	add	r1, #0x59
	orr	r3, r2
	ldrb	r2, [r1]
	strb	r3, [r0, #9]
	mov	r3, #1
	orr	r3, r2
	b	.Lm947_1bd0
.Lm947_1aee:
	mov	r0, r6
	mov	r1, r8
	bl	OvlFunc_947_2009938
	mov	r5, #8
	mov	r7, r0
.Lm947_1afa:
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r1, r0
	mov	r0, r6
	bl	OvlFunc_947_2009938
	add	r5, #1
	add	r7, r0
	cmp	r5, #0xb
	bls	.Lm947_1afa
	cmp	r7, #0
	beq	.Lm947_1b2a
	mov	r5, #8
.Lm947_1b16:
	mov	r0, r5
	bl	__MapActor_GetActor
	add	r5, #1
	mov	r1, r0
	mov	r0, r6
	bl	OvlFunc_947_20099f0
	cmp	r5, #0xb
	bls	.Lm947_1b16
.Lm947_1b2a:
	mov	r1, r8
	ldr	r2, [r6, #0xc]
	ldr	r3, [r1, #0xc]
	cmp	r2, r3
	bge	.Lm947_1ba6
	mov	r2, #0x23
	add	r2, r6
	mov	r12, r2
	ldrb	r2, [r2]
	mov	r3, #2
	orr	r3, r2
	mov	r1, r12
	strb	r3, [r1]
	mov	r1, r6
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r0, #0xfe
	mov	r3, r0
	and	r3, r2
	strb	r3, [r1]
	ldr	r3, [r6, #0x50]
	mov	r1, r8
	ldrb	r2, [r3, #9]
	ldr	r3, [r1, #0x50]
	ldrb	r3, [r3, #9]
	lsl	r2, #28
	lsl	r3, #28
	lsr	r2, #30
	lsr	r3, #30
	cmp	r2, r3
	bcs	.Lm947_1bc2
	mov	r3, r12
	ldrb	r2, [r3]
	mov	r3, r0
	and	r3, r2
	mov	r1, r12
	strb	r3, [r1]
	mov	r2, r8
	ldr	r3, [r2, #0x50]
	ldr	r4, [r6, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xd
	ldrb	r0, [r4, #9]
	neg	r2, r2
	mov	r1, #0xc
	and	r1, r3
	mov	r3, r2
	and	r3, r0
	orr	r3, r1
	strb	r3, [r4, #9]
	mov	r1, r8
	ldr	r3, [r1, #0x50]
	ldr	r0, [r6, #0x50]
	ldrb	r1, [r3, #0x15]
	mov	r3, #0xc
	and	r3, r1
	ldrb	r1, [r0, #0x15]
	and	r2, r1
	orr	r2, r3
	strb	r2, [r0, #0x15]
	mov	r7, #1
	b	.Lm947_1bc2
.Lm947_1ba6:
	mov	r2, #0x23
	add	r2, r6
	mov	r12, r2
	ldrb	r2, [r2]
	mov	r3, #0xfd
	and	r3, r2
	mov	r1, r12
	strb	r3, [r1]
	mov	r1, r6
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
.Lm947_1bc2:
	cmp	r7, #0
	bne	.Lm947_1bd2
	mov	r3, r12
	ldrb	r2, [r3]
	mov	r3, #1
	orr	r3, r2
	mov	r1, r12
.Lm947_1bd0:
	strb	r3, [r1]
.Lm947_1bd2:
	mov	r0, #0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_947_2009aa8

