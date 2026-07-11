	.include "macros.inc"

.thumb_func_start OvlFunc_926_2008388
	push	{r5, lr}
	ldr	r1, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x3c
	cmp	r2, r3
	bne	.L3a0
	ldr	r0, =.L48f0
	b	.L3f4
.L3a0:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #3
	bne	.L3b2
	ldr	r0, =.L4ae8
	b	.L3f4
.L3b2:
	ldr	r0, =0x895
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3ea
	ldr	r0, =.L4998
	ldr	r1, =0x895
	mov	r3, r0
	add	r3, #0x7a
	strh	r1, [r3]
	add	r3, #0x30
	strh	r1, [r3]
	mov	r2, r0
	mov	r3, #0x90
	add	r2, #0xc8
	lsl	r3, #17
	str	r3, [r2]
	mov	r3, #0xf8
	add	r2, #8
	lsl	r3, #16
	str	r3, [r2]
	mov	r2, #0x85
	lsl	r2, #1
	add	r3, r0, r2
	add	r2, #0x18
	strh	r1, [r3]
	add	r3, r0, r2
	strh	r1, [r3]
.L3ea:
	ldr	r5, =.L4998
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
.L3f4:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_926_2008388

