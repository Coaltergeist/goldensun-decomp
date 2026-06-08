	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start CreateParticleActor
	push	{r5, r6, lr}
	ldr	r4, =iwram_3001f30
	ldr	r6, [r4]
	bl	_CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L96cce
	mov	r3, r5
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L96ca2
	bl	_DeleteActor
	mov	r0, #0
	b	.L96cd0
.L96ca2:
	ldr	r3, [r6, #0x10]
	ldr	r3, [r3, #0x14]
	mov	r2, r5
	str	r3, [r5, #0x14]
	add	r2, #0x55
	mov	r3, #4
	strb	r3, [r2]
	sub	r2, #0x32
	strb	r3, [r2]
	ldr	r1, [r5, #0x50]
	ldrb	r2, [r1, #9]
	sub	r3, #0x11
	and	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r5
	mov	r1, #0
	bl	_Actor_SetSpriteFlags
	mov	r0, r5
	mov	r1, #1
	bl	_Actor_SetAnim
.L96cce:
	mov	r0, r5
.L96cd0:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end CreateParticleActor

	.section .rodata
	.global .L9ed84
	.global .L9ef84
	.global .L9f024
	.global .L9f0a4

.L9ed84:
	.incrom 0x9ed84, 0x9ef84
.L9ef84:
	.incrom 0x9ef84, 0x9f024
.L9f024:
	.incrom 0x9f024, 0x9f0a4
.L9f0a4:
	.incrom 0x9f0a4, 0x9f0b0
