	.include "macros.inc"

.thumb_func_start Func_80ae88c  @ 0x080ae88c
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r5, [r3]
	bl	AllocSpriteSlot
	ldr	r2, =0x392
	mov	r6, #1
	add	r3, r5, r2
	neg	r6, r6
	strh	r0, [r3]
	cmp	r0, r6
	beq	.Lae8ac
	ldr	r2, =.Laed4c
	mov	r1, #0x80
	bl	UploadSpriteGFX
.Lae8ac:
	bl	AllocSpriteSlot
	mov	r2, #0xe5
	lsl	r2, #2
	add	r3, r5, r2
	strh	r0, [r3]
	cmp	r0, r6
	beq	.Lae8c4
	ldr	r2, =.Laedcc
	mov	r1, #0x80
	bl	UploadSpriteGFX
.Lae8c4:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80ae88c

