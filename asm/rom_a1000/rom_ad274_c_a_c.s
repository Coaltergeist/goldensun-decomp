	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80ad608  @ 0x080ad608
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r7, [r3]
	mov	r3, #0x89
	lsl	r0, #2
	lsl	r3, #2
	add	r6, r0, r3
	ldr	r0, [r7, r6]
	mov	r5, r1
	mov	r8, r2
	cmp	r0, #0
	beq	.Lad62c
	bl	_DeleteSprite
	mov	r3, #0
	str	r3, [r7, r6]
.Lad62c:
	ldr	r3, =.Laf304
	lsl	r2, r5, #2
	ldr	r0, [r3, r2]
	bl	_CreateSprite
	mov	r5, r0
	cmp	r5, #0
	beq	.Lad642
	mov	r1, r8
	bl	_Sprite_SetAnim
.Lad642:
	str	r5, [r7, r6]
	mov	r0, #1
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80ad608
