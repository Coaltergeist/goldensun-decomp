	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8028ef0  @ 0x08028ef0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r5, r1
	lsl	r5, #16
	asr	r5, #16
	mov	r6, r0
	mov	r3, #0
	ldrsh	r1, [r2, r3]
	mov	r0, r5
	sub	sp, #4
	mov	r9, r2
	bl	_GetLocationName
	ldr	r3, =0x99b
	mov	r10, r0
	mov	r0, r6
	add	r10, r3
	bl	Func_8016478
	mov	r2, #0xe
	str	r2, [sp]
	mov	r8, r2
	mov	r0, r5
	mov	r2, r6
	mov	r3, #0
	mov	r1, #3
	bl	Func_801e9a0
	mov	r2, r9
	mov	r3, #0
	ldrsh	r0, [r2, r3]
	mov	r3, r8
	str	r3, [sp]
	mov	r2, r6
	mov	r1, #3
	mov	r3, #0x52
	bl	Func_801e9a0
	ldr	r2, =.L37428
	mov	r8, r2
	mov	r0, r8
	mov	r1, r6
	mov	r2, #0x4a
	mov	r3, #0
	bl	Func_801e858
	ldr	r3, =0xa07
	add	r5, r3
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0
	bl	DrawSmallText
	mov	r0, r8
	mov	r1, r6
	mov	r2, #0x4a
	mov	r3, #0xe
	bl	Func_801e858
	mov	r0, r10
	mov	r1, r6
	mov	r2, #0x52
	mov	r3, #0
	bl	DrawSmallText
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8028ef0
