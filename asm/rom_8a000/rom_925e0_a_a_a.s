	.include "macros.inc"

	.section .text.after_25e0, "ax", %progbits

	.section .text.after_92624, "ax", %progbits

.thumb_func_start Func_8092708  @ 0x08092708
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r2
	mov	r10, r0
	mov	r5, r1
	bl	MapActor_GetActor
	mov	r6, r0
	ldr	r2, [r6, #0x10]
	mov	r9, r2
	cmp	r6, #0
	beq	.L927f6
	ldr	r0, =0x121
	bl	_PlaySound
	mov	r1, r5
	mov	r0, r6
	bl	_Actor_SetAnim
	mov	r7, r6
	mov	r0, #0xa
	bl	WaitFrames
	add	r7, #0x55
	mov	r0, r6
	mov	r1, #1
	bl	_Actor_SetAnim
	ldrb	r2, [r7]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r7]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r6, #0x28]
	mov	r3, #0xc0
	lsl	r3, #12
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0xc]
	add	r3, r9
	mov	r0, r6
	bl	_Actor_TravelTo
	mov	r0, #6
	bl	WaitFrames
	mov	r0, #0xd9
	bl	_PlaySound
	mov	r1, #0xa0
	mov	r5, #0
	lsl	r1, #7
	mov	r0, r10
	mov	r2, #0
	bl	Func_8092adc
	strb	r5, [r7]
.L92780:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xfffe0000
	add	r3, r2
	str	r3, [r6, #0xc]
	str	r3, [r6, #0x3c]
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #1
	neg	r3, r3
	cmp	r8, r3
	beq	.L927a8
	mov	r3, #1
	and	r3, r5
	cmp	r3, #0
	beq	.L927a8
	mov	r0, r6
	mov	r1, r8
	bl	Func_8092624
.L927a8:
	add	r5, #1
	cmp	r5, #0xd
	bls	.L92780
	mov	r3, #3
	strb	r3, [r7]
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r6, #0x28]
	mov	r3, #0x80
	lsl	r3, #13
	ldr	r2, [r6, #0xc]
	add	r3, r9
	ldr	r1, [r6, #8]
	mov	r0, r6
	bl	_Actor_TravelTo
	mov	r0, r6
	bl	_Actor_WaitMovement
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	mov	r5, #0
	cmp	r2, r3
	ble	.L927ec
.L927d8:
	mov	r0, #1
	add	r5, #1
	bl	WaitFrames
	cmp	r5, #0xb3
	bhi	.L927ec
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	cmp	r2, r3
	bgt	.L927d8
.L927ec:
	mov	r0, #2
	bl	WaitFrames
	bl	Func_809202c
.L927f6:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8092708
