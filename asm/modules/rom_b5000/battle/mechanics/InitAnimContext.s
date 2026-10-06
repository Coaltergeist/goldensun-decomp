	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start InitAnimContext  @ 0x080b9d34
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r4, #0
	str	r4, [r1, #0x1c]
	mov	r6, r0
	ldr	r2, [r6, #0x58]
	ldr	r3, =0xfff
	and	r3, r2
	str	r3, [r1]
	mov	r3, #0xc0
	lsl	r3, #6
	and	r2, r3
	lsr	r2, #12
	str	r2, [r1, #0x18]
	ldrb	r3, [r6]
	str	r3, [r1, #8]
	mov	r3, #1
	ldrsb	r3, [r6, r3]
	sub	sp, #8
	mov	r8, r4
	cmp	r4, r3
	bge	.Lb9da0
	mov	r7, r1
	add	r5, r6, #2
	add	r7, #0x24
.Lb9d68:
	ldrb	r0, [r5]
	str	r1, [sp, #4]
	str	r4, [sp]
	bl	_GetUnit
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	ldr	r1, [sp, #4]
	ldr	r4, [sp]
	cmp	r3, #0
	bne	.Lb9d8a
	ldr	r3, [r6, #0x58]
	mov	r2, #0x80
	lsl	r2, #9
	and	r3, r2
	cmp	r3, #0
	beq	.Lb9d92
.Lb9d8a:
	ldrb	r3, [r5]
	add	r4, #1
	strh	r3, [r7]
	add	r7, #2
.Lb9d92:
	mov	r3, #1
	add	r8, r3
	mov	r3, #1
	ldrsb	r3, [r6, r3]
	add	r5, #1
	cmp	r8, r3
	blt	.Lb9d68
.Lb9da0:
	cmp	r4, #0
	bne	.Lb9daa
	ldrb	r3, [r6, #2]
	strh	r3, [r1, #0x24]
	mov	r4, #1
.Lb9daa:
	ldrb	r3, [r6, #2]
	str	r3, [r1, #0xc]
	mov	r3, #1
	str	r4, [r1, #0x14]
	str	r3, [r1, #0x10]
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end InitAnimContext
