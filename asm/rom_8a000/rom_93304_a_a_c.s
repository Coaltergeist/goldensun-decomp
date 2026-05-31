	.include "macros.inc"

.thumb_func_start Func_8093570
	push	{r5, r6, r7, lr}
	mov	r6, r0
	mov	r7, r1
	mov	r0, #0x1b
	ldr	r1, =0xccc
	bl	Func_80048f4
	mov	r3, #0xf0
	lsl	r3, #1
	add	r0, r3
	ldr	r5, [r0]
	cmp	r6, #0
	beq	.L935a4
	mov	r0, r5
	mov	r1, #0
	bl	_Func_800c4bc
	str	r6, [r5, #0x68]
	cmp	r7, #0
	bne	.L935a4
	ldr	r3, [r6, #8]
	str	r3, [r5, #8]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #0xc]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #0x10]
.L935a4:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8093570

