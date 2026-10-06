	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Func  @ 0x080d6660
	push	{r5, lr}
	mov	r5, r0
	ldr	r1, =0x302
	mov	r0, #0x29
	bl	galloc_iwram
	ldr	r1, =0x782c
	mov	r0, #0x27
	bl	galloc_iwram
	mov	r1, #0x80
	lsl	r1, #7
	mov	r0, #0x28
	bl	galloc_iwram
	ldr	r3, =iwram_3001eec
	ldr	r2, =0x7828
	ldr	r3, [r3]
	add	r3, r2
	ldr	r2, [r5]
	str	r5, [r3]
	cmp	r2, #0
	bne	.Ld6692
	str	r2, [r5, #0x18]
	b	.Ld66a0
.Ld6692:
	ldr	r3, =Data_80ee2b4
	lsl	r2, #2
	sub	r2, #4
	ldr	r3, [r3, r2]
	mov	r0, r5
	bl	_call_via_r3
.Ld66a0:
	mov	r0, #0x28
	bl	gfree
	mov	r0, #0x27
	bl	gfree
	mov	r0, #0x29
	bl	gfree
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Anim_Func
