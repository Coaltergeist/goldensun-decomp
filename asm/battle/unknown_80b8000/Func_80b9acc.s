	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b9acc  @ 0x080b9acc
	push	{lr}
	ldr	r3, =iwram_3001e80
	ldr	r0, =gKeyHeld
	ldr	r1, [r3]
	add	r3, #0x80
	ldr	r4, [r3]
	mov	r2, #0x80
	ldr	r3, [r0]
	lsl	r2, #2
	and	r3, r2
	sub	sp, #4
	cmp	r3, #0
	beq	.Lb9aec
	ldrh	r3, [r1, #0x36]
	add	r3, r2
	strh	r3, [r1, #0x36]
.Lb9aec:
	ldr	r3, [r0]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb9b00
	ldrh	r3, [r1, #0x36]
	ldr	r2, =0xfffffe00
	add	r3, r2
	strh	r3, [r1, #0x36]
.Lb9b00:
	ldr	r3, [r4, #0x14]
	cmp	r3, #0
	bne	.Lb9b1a
	mov	r1, #0xf0
	mov	r3, #0x80
	lsl	r3, #9
	lsl	r1, #15
	str	r3, [sp]
	mov	r0, r1
	mov	r2, #0
	mov	r3, #0
	bl	Func_80c0a24
.Lb9b1a:
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end Func_80b9acc
