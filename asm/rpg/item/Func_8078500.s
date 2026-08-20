	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8078500  @ 0x08078500
	push	{r5, r6, r7, lr}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #0x14
	bl	FindEmptyInventorySlot
	cmp	r0, #0xf
	beq	.L7851a
.L78516:
	mov	r0, #1
	b	.L78542
.L7851a:
	mov	r5, sp
	mov	r0, r5
	bl	Func_80796c4
	mov	r7, r5
	mov	r6, r0
	mov	r5, #0
	cmp	r5, r6
	bge	.L78540
.L7852c:
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	add	r7, #2
	bl	FindEmptyInventorySlot
	cmp	r0, #0xf
	bne	.L78516
	add	r5, #1
	cmp	r5, r6
	blt	.L7852c
.L78540:
	mov	r0, #0
.L78542:
	add	sp, #0x14
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8078500

