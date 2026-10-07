	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80175c0  @ 0x080175c0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e8c
	ldr	r2, =0x12f4
	ldr	r5, [r3]
	mov	r6, #0
	add	r3, r5, r2
	add	r2, #2
	strh	r6, [r3]
	add	r3, r5, r2
	strh	r6, [r3]
	mov	r7, r0
	mov	r0, r1
	mov	r1, #1
	sub	sp, #0x10
	bl	BufferString
	mov	r2, #0xeb
	mov	r1, r0
	lsl	r3, r1, #1
	lsl	r2, #4
	add	r3, r2
	ldrh	r3, [r5, r3]
	mov	r0, #0
	cmp	r3, #0
	beq	.L17610
	cmp	r7, #0
	beq	.L17610
	mov	r3, #1
	str	r3, [sp, #4]
	mov	r0, r7
	mov	r2, #0
	mov	r3, #0
	str	r6, [sp]
	bl	Func_80165d8
	mov	r6, r0
	mov	r0, #0
	cmp	r6, #0
	beq	.L17610
	mov	r0, r6
.L17610:
	add	sp, #0x10
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80175c0

