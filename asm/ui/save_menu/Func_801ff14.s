	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801ff14  @ 0x0801ff14
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r0, =Func_801ff58
	ldr	r7, [r3]
	mov	r5, #0x8a
	bl	StopTask
	mov	r3, #0
	mov	r8, r3
	lsl	r5, #1
	mov	r6, #3
.L1ff2e:
	ldr	r0, [r5, r7]
	cmp	r0, #0
	beq	.L1ff3c
	bl	_DeleteSprite
	mov	r3, r8
	str	r3, [r5, r7]
.L1ff3c:
	sub	r6, #1
	add	r5, #4
	cmp	r6, #0
	bge	.L1ff2e
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801ff14
