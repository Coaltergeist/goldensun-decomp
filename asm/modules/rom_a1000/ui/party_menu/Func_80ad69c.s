	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80ad69c  @ 0x080ad69c
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r1, =0x219
	ldr	r2, [r3]
	add	r3, r2, r1
	ldrb	r3, [r3]
	mov	r6, #0
	cmp	r6, r3
	bge	.Lad6c6
	mov	r3, #0x8a
	lsl	r3, #1
	add	r7, r2, r1
	add	r5, r2, r3
.Lad6b6:
	ldmia	r5!, {r0}
	mov	r1, #1
	bl	_Sprite_SetAnim
	ldrb	r3, [r7]
	add	r6, #1
	cmp	r6, r3
	blt	.Lad6b6
.Lad6c6:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80ad69c

