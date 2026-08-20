	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801b398  @ 0x0801b398
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e98
	ldr	r5, [r3]
	mov	r6, r0
	mov	r1, #0
	mov	r0, r5
	bl	Func_801b9ec
	ldr	r7, =gKeyPress
.L1b3aa:
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #0xe8
	lsl	r2, #2
	add	r3, r5, r2
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L1b3aa
	ldr	r3, =0x3e7
	cmp	r6, r3
	beq	.L1b3fa
	ldr	r1, =gKeyRepeat
	ldr	r3, [r1]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L1b3d6
	mov	r0, r5
	bl	Func_801b664
	b	.L1b3fa
.L1b3d6:
	ldr	r3, [r1]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L1b3e8
	mov	r0, r5
	bl	Func_801b810
	b	.L1b3fa
.L1b3e8:
	ldr	r3, [r7]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L1b3fa
	mov	r0, r5
	bl	Func_801be80
	b	.L1b40c
.L1b3fa:
	cmp	r6, #0
	beq	.L1b3aa
	ldr	r3, [r7]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1b3aa
	mov	r0, #1
	neg	r0, r0
.L1b40c:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801b398

