	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_CurePoison
	push	{lr}
	ldr	r3, [r0, #0x18]
	cmp	r3, #0
	bne	.Ld897c
	mov	r1, #3
	bl	BaseAnim_Heal
	b	.Ld8982
.Ld897c:
	mov	r1, #4
	bl	BaseAnim_Heal
.Ld8982:
	pop	{r0}
	bx	r0
.func_end Anim_CurePoison

