	.include "macros.inc"

.thumb_func_start Func_8092208
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r8, r1
	mov	r10, r2
	bl	GetFieldActor
	mov	r6, r0
	cmp	r6, #0
	beq	.L92280
	mov	r2, #0xa
	ldrsh	r3, [r6, r2]
	mov	r5, r3
	cmp	r3, #0
	bge	.L9222c
	add	r5, #0xf
.L9222c:
	asr	r5, #4
	lsl	r5, #4
	mov	r2, r6
	add	r2, #0x5b
	sub	r5, r3, r5
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, r6
	bl	_Actor_Stop
	lsl	r5, #16
	mov	r0, r6
	mov	r1, #2
	bl	_Actor_SetAnim
	asr	r5, #16
	mov	r3, #8
	ldr	r1, [r6, #8]
	sub	r3, r5
	lsl	r3, #16
	add	r1, r3
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	mov	r0, r6
	bl	_Actor_TravelTo
	mov	r0, r6
	bl	_Actor_WaitMovement
	mov	r0, r7
	mov	r1, r8
	bl	Func_8092b08
	mov	r3, r10
	lsl	r0, r3, #16
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	add	r3, r0
	ldr	r2, [r6, #0xc]
	mov	r0, r6
	bl	_Actor_TravelTo
.L92280:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8092208

