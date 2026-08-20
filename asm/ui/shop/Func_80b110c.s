	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b110c  @ 0x080b110c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	sub	sp, #4
	mov	r5, r1
	mov	r8, r2
	mov	r7, r3
	cmp	r6, #0
	bne	.Lb1158
	b	.Lb1186
.Lb1122:
	ldr	r0, =0xc92
	mov	r1, r6
	mov	r2, #0
	b	.Lb1150
.Lb112a:
	ldr	r5, =0xc8b
	mov	r1, r6
	mov	r0, r5
	mov	r2, #0
	mov	r3, #8
	bl	_Func_801e7c0
	mov	r3, #8
	str	r3, [sp]
	mov	r0, r8
	mov	r1, #5
	mov	r2, r6
	mov	r3, #0x20
	sub	r5, #3
	bl	_Func_801ea08
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0x48
.Lb1150:
	mov	r3, #8
	bl	_Func_801e7c0
	b	.Lb1186
.Lb1158:
	mov	r0, r6
	bl	_Func_8016498
	ldr	r0, =0x182
	mov	r3, #0
	add	r0, r5, r0
	mov	r1, r6
	mov	r2, #0
	bl	_Func_801e7c0
	mov	r3, r8
	cmp	r3, #0
	bne	.Lb112a
	cmp	r7, #1
	beq	.Lb1122
	cmp	r7, #2
	bne	.Lb112a
	ldr	r0, =0xc93
	mov	r1, r6
	mov	r2, #0
	mov	r3, #8
	bl	_Func_801e7c0
.Lb1186:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b110c

