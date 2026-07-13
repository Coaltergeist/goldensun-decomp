	.include "macros.inc"

.thumb_func_start Func_80a172c  @ 0x080a172c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	mov	r8, r0
	mov	r10, r2
	mov	r7, r3
	bl	AllocSpriteSlot
	mov	r5, r0
	mov	r6, #0
	cmp	r5, #0
	beq	.La1762
	ldr	r2, =.Laea4c
	mov	r1, #0x80
	bl	UploadSpriteGFX
	mov	r1, #0x80
	lsl	r1, #23
	mov	r0, r5
	mov	r2, r8
	mov	r3, r10
	str	r7, [sp]
	bl	_Func_801eadc
	mov	r6, r0
.La1762:
	mov	r0, r6
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a172c

.thumb_func_start Func_80a1778  @ 0x080a1778
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	mov	r8, r0
	mov	r10, r1
	mov	r7, r2
	bl	AllocSpriteSlot
	mov	r5, r0
	mov	r6, #0
	cmp	r5, #0
	beq	.La17ae
	ldr	r2, =.Laea4c
	mov	r1, #0x80
	bl	UploadSpriteGFX
	mov	r1, #0x80
	lsl	r1, #23
	mov	r0, r5
	mov	r2, r8
	mov	r3, r10
	str	r7, [sp]
	bl	_Func_801eadc
	mov	r6, r0
.La17ae:
	mov	r0, r6
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a1778
