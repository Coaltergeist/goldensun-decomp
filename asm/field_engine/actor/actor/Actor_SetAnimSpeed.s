	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Actor_SetAnimSpeed  @ 0x0800c344
	push	{r5, r6, r7, lr}
	mov	r7, r1
	cmp	r0, #0
	beq	.Lc380
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r2, #0xf
	and	r2, r3
	cmp	r2, #1
	beq	.Lc360
	cmp	r2, #2
	beq	.Lc36a
	b	.Lc380
.Lc360:
	ldr	r0, [r0, #0x50]
	mov	r1, r7
	bl	Sprite_SetAnimSpeed
	b	.Lc380
.Lc36a:
	ldr	r5, [r0, #0x50]
	mov	r6, #3
.Lc36e:
	ldmia	r5!, {r0}
	cmp	r0, #0
	beq	.Lc37a
	mov	r1, r7
	bl	Sprite_SetAnimSpeed
.Lc37a:
	sub	r6, #1
	cmp	r6, #0
	bge	.Lc36e
.Lc380:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Actor_SetAnimSpeed

