	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8019854  @ 0x08019854
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	ldr	r3, [r5]
	ldrh	r1, [r3, #0xc]
	mov	r9, r1
	ldrh	r1, [r3, #0xe]
	mov	r11, r1
	ldrh	r1, [r3, #8]
	sub	sp, #8
	ldrh	r2, [r3, #0x12]
	str	r1, [sp, #4]
	ldrh	r3, [r3, #0xa]
	str	r3, [sp]
	cmp	r2, #4
	bne	.L198c4
	add	r1, #2
	mov	r6, r9
	mov	r7, r11
	mov	r8, r1
	sub	r6, #1
	sub	r7, #1
	add	r3, #2
	mov	r2, r8
	mov	r0, r6
	mov	r1, r7
	mov	r10, r3
	bl	FillUIRegion
	ldrh	r3, [r5, #0x14]
	ldr	r2, =0xffff
	add	r3, r2
	strh	r3, [r5, #0x14]
	lsl	r3, #16
	lsr	r2, r3, #16
	cmp	r2, #0
	bne	.L198c4
	ldr	r3, [r5]
	mov	r0, r6
	strh	r2, [r3, #0x12]
	mov	r1, r7
	mov	r2, r8
	mov	r3, r10
	bl	ClearUIRegion
	mov	r0, r9
	mov	r1, r11
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	bl	FillUIRegion
.L198c4:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8019854

