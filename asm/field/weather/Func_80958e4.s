	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80958e4  @ 0x080958e4
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f30
	ldr	r0, =Func_8095884
	ldr	r5, [r3]
	bl	StopTask
	mov	r6, r5
	add	r6, #0x9d
	add	r5, #0x58
	mov	r7, #0x17
.L958f8:
	ldrb	r3, [r6]
	lsl	r3, #24
	add	r6, #0x48
	cmp	r3, #0
	beq	.L95908
	mov	r0, r5
	bl	Func_809bb34
.L95908:
	sub	r7, #1
	add	r5, #0x48
	cmp	r7, #0
	bge	.L958f8
	mov	r0, #0x38
	bl	gfree
	mov	r0, #1
	bl	WaitFrames
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80958e4

