	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a5fe0  @ 0x080a5fe0
	push	{r5, lr}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0xbc
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldrh	r3, [r3]
	ldr	r0, =0x3fff
	and	r0, r3
	bl	_GetMoveInfo
	mov	r5, r0
	ldrb	r0, [r5, #0xc]
	bl	_Func_808e96c
	cmp	r0, #0
	beq	.La6006
	mov	r0, #0
	b	.La601e
.La6006:
	ldrb	r3, [r5, #8]
	mov	r0, #2
	cmp	r3, #0xff
	beq	.La601e
	ldrb	r3, [r5]
	mov	r2, #2
	eor	r3, r2
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	mov	r3, #1
	sub	r0, r3, r0
.La601e:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80a5fe0

