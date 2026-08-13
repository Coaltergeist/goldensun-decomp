	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Kite  @ 0x080e6948
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001eec
	ldr	r5, [r3]
	ldr	r3, =0x7828
	mov	r6, r0
	add	r5, r3
	str	r6, [r5]
	mov	r0, #0
	sub	sp, #0x10
	bl	AnimStart
	ldr	r3, [r5]
	ldr	r2, [r3, #4]
	mov	r3, #1
	eor	r2, r3
	add	r3, sp, #0xc
	str	r3, [sp]
	add	r3, sp, #8
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r1, #7
	mov	r3, #0
	bl	Anim_Djinni
	bl	AnimEnd
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Anim_Kite
