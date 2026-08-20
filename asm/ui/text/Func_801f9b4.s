	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801f9b4  @ 0x0801f9b4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r7, =ewram_2002004
	mov	r3, #0
	mov	r8, r3
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L1fa20
	bl	Func_80056cc
	mov	r6, r0
	cmp	r6, #0
	beq	.L1f9e2
	ldr	r0, =_MSG_0a
	mov	r1, #1
	bl	Func_801776c
	mov	r3, #9
	b	.L1fa16
.L1f9e2:
	bl	PrepareSaveHeader
	ldr	r5, =ewram_2000000
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	mov	r1, r5
	bl	SomethingSaveHeader
	mov	r6, r0
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	mov	r3, #0x80
	lsl	r3, #5
	add	r5, r3
	add	r0, #3
	mov	r1, r5
	bl	SomethingSaveHeader
	orr	r6, r0
	cmp	r6, #0
	beq	.L1fa1a
	ldr	r0, =_MSG_0b
	mov	r1, #1
	bl	Func_801776c
	mov	r3, #3
.L1fa16:
	neg	r3, r3
	mov	r8, r3
.L1fa1a:
	bl	Func_8005cf8
	mov	r0, r8
.L1fa20:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801f9b4

