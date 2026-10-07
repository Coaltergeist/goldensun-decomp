	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80919d8  @ 0x080919d8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r2, #0
	mov	r8, r0
	mov	r10, r2
	bl	_GetPartySize
	mov	r6, r0
	cmp	r10, r6
	bge	.L91a0c
	ldr	r3, =gState
	mov	r2, #0xfc
	lsl	r2, #1
	add	r7, r3, r2
	mov	r5, r6
.L919fa:
	ldrb	r0, [r7]
	mov	r1, r8
	bl	_Func_8078af8
	sub	r5, #1
	add	r7, #1
	add	r10, r0
	cmp	r5, #0
	bne	.L919fa
.L91a0c:
	lsl	r3, r6, #4
	sub	r3, r6
	lsl	r3, #1
	cmp	r10, r3
	blt	.L91a40
	mov	r0, r8
	mov	r1, #2
	bl	_Func_8019908
	ldr	r5, =0x97d
	mov	r1, #1
	mov	r0, r5
	bl	_Func_801776c
	add	r5, #1
	mov	r0, r8
	mov	r1, #2
	bl	_Func_8019908
	mov	r0, r5
	mov	r1, #1
	bl	_Func_801776c
	mov	r0, #1
	neg	r0, r0
	b	.L91a42
.L91a40:
	mov	r0, #0
.L91a42:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80919d8

