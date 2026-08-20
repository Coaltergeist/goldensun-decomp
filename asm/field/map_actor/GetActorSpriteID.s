	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GetActorSpriteID  @ 0x08092ba8
	push	{lr}
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	ldr	r3, =0xfff
	and	r3, r0
	lsl	r3, #2
	add	r3, #0x14
	ldr	r2, [r2, r3]
	mov	r1, #1
	neg	r1, r1
	cmp	r2, #0
	beq	.L92bd2
	mov	r3, r2
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L92bd2
	ldr	r3, [r2, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r1, [r3, r2]
.L92bd2:
	mov	r0, r1
	pop	{r1}
	bx	r1
.func_end GetActorSpriteID

