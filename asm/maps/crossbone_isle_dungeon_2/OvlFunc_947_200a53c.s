	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_200a53c
	push	{r5, lr}
	sub	sp, #0x20
	bl	__CutsceneStart
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_947_2008758
	cmp	r0, #0
	beq	.Lm947_2566
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0xc]
	bl	OvlFunc_947_20088ec
	b	.Lm947_2572
.Lm947_2566:
	bl	OvlFunc_947_200a498
	bl	OvlFunc_947_20083a8
	bl	OvlFunc_947_200a4cc
.Lm947_2572:
	bl	__CutsceneEnd
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a53c

