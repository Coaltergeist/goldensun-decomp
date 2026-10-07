	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Field_Move  @ 0x0809802c
	push	{r5, lr}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	sub	sp, #0xc
	ldr	r5, [r3, #0x10]
	bl	Func_8097384
	mov	r0, r5
	bl	Func_8098070
	mov	r5, r0
	bl	Func_8098184
	cmp	r5, #0
	beq	.L98058
	mov	r0, r5
	mov	r1, #4
	bl	_Actor_SetAnim
	mov	r0, #0x1e
	bl	WaitFrames
.L98058:
	bl	Func_809748c
	mov	r0, r5
	bl	Func_80981b0
	add	sp, #0xc
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Field_Move
