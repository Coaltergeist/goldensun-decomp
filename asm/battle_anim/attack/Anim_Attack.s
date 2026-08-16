	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Attack  @ 0x080e3a3c
	push	{r5, lr}
	mov	r5, r0
	ldr	r1, =0x60e
	mov	r0, #0x29
	bl	galloc_ewram
	ldr	r1, =0x782c
	mov	r0, #0x27
	bl	galloc_iwram
	mov	r1, #0x80
	lsl	r1, #7
	mov	r0, #0x28
	bl	galloc_iwram
	ldr	r3, [r5]
	mov	r1, r3
	sub	r1, #0x64
	cmp	r1, #0x23
	bhi	.Le3a6c
	mov	r0, r5
	bl	BaseAnim_SpecialAttack
	b	.Le3a7e
.Le3a6c:
	cmp	r3, #0xc7
	ble	.Le3a78
	mov	r0, r5
	bl	Anim_CriticalHit
	b	.Le3a7e
.Le3a78:
	mov	r0, r5
	bl	BaseAnim_Attack
.Le3a7e:
	mov	r0, #0x28
	bl	gfree
	mov	r0, #0x27
	bl	gfree
	mov	r0, #0x29
	bl	gfree
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Anim_Attack
