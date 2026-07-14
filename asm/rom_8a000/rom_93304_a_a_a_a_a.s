	.include "macros.inc"

	.section .text.before, "ax", %progbits

.thumb_func_start SetCameraTarget  @ 0x0809335c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r10, r1
	bl	GetFieldActor
	ldr	r1, =0xccc
	mov	r6, r0
	mov	r0, #0x1b
	bl	galloc_ewram
	mov	r3, #0xf0
	mov	r8, r0
	lsl	r3, #1
	add	r3, r8
	ldr	r5, [r3]
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	cmp	r6, #0
	beq	.L933be
	mov	r7, r5
	add	r7, #8
	str	r7, [r3]
	mov	r0, r5
	mov	r1, r6
	bl	_Camera_SetTarget
	mov	r2, r10
	cmp	r2, #0
	bne	.L933be
	ldr	r3, [r6, #8]
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #0xc]
	ldr	r3, [r6, #0x10]
	mov	r0, #1
	str	r3, [r5, #0x10]
	bl	WaitFrames
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	beq	.L933be
	bl	_Func_800fe9c
.L933be:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end SetCameraTarget

