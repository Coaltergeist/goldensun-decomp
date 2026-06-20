	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_20088c8
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x23
	add	r2, r5
	mov	r12, r2
	mov	r3, #2
	ldrb	r2, [r2]
	mov	r1, r3
	orr	r1, r2
	mov	r3, r12
	strb	r1, [r3]
	ldr	r2, [r0, #0x10]
	ldr	r3, [r5, #0x10]
	cmp	r2, r3
	bge	.L906
	sub	r3, r2
	mov	r2, #0x80
	lsl	r2, #11
	add	r3, r2
	ldr	r2, [r5, #0xc]
	add	r2, r3
	ldr	r3, [r0, #0xc]
	cmp	r3, r2
	bgt	.L906
	mov	r3, #0xfd
	and	r1, r3
	mov	r3, r12
	strb	r1, [r3]
.L906:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_20088c8

.thumb_func_start OvlFunc_968_2008910
	push	{r5, r6, lr}
	mov	r5, r1
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, r5
	bl	__MapActor_GetActor
	ldr	r2, [r6, #0x10]
	ldr	r3, [r0, #0x10]
	cmp	r2, r3
	bgt	.L946
	ldr	r3, [r0, #8]
	ldr	r2, [r6, #8]
	str	r3, [r6, #8]
	str	r2, [r0, #8]
	ldr	r3, [r0, #0xc]
	ldr	r2, [r6, #0xc]
	str	r3, [r6, #0xc]
	str	r2, [r0, #0xc]
	ldr	r3, [r0, #0x10]
	ldr	r2, [r6, #0x10]
	str	r3, [r6, #0x10]
	str	r2, [r0, #0x10]
	mov	r0, #1
	bl	__WaitFrames
.L946:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2008910

