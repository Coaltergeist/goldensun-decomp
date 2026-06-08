	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Poison  @ 0x080d5258
	push	{lr}
	ldr	r3, [r0, #0x18]
	cmp	r3, #0
	bne	.Ld5268
	mov	r1, #0
	bl	BaseAnim_ParticleCloud
	b	.Ld526e
.Ld5268:
	mov	r1, #1
	bl	BaseAnim_ParticleCloud
.Ld526e:
	pop	{r0}
	bx	r0
.func_end Anim_Poison

