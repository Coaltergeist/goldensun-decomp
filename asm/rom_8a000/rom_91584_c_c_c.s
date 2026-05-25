	.include "macros.inc"

.thumb_func_start Func_8092560
	push	{r5, r6, lr}
	mov	r5, r1
	mov	r6, r2
	bl	Func_808ba1c
	cmp	r0, #0
	beq	.L92596
	mov	r1, r0
	add	r1, #0x55
	ldrb	r3, [r1]
	mov	r2, #2
	orr	r2, r3
	lsl	r3, r5, #16
	strb	r2, [r1]
	str	r3, [r0, #0x28]
	cmp	r5, #5
	ble	.L9258a
	mov	r0, #0x99
	bl	_Func_80f9080
	b	.L92590
.L9258a:
	mov	r0, #0x98
	bl	_Func_80f9080
.L92590:
	mov	r0, r6
	bl	Func_809163c
.L92596:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8092560

	.section .rodata
	.global .L9fbcc

.L9fbcc:
	.incrom 0x9fbcc, 0x9fbec
