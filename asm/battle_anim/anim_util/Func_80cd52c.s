	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80cd52c  @ 0x080cd52c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001eec
	mov	r1, #1
	ldr	r6, [r3]
	ldr	r3, =0x7818
	neg	r1, r1
	sub	sp, #8
	mov	r4, #0
	mov	r8, r1
	mov	r7, #0x24
	add	r5, r6, r3
.Lcd546:
	ldrb	r2, [r5]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lcd572
	add	r3, #0xff
	strb	r3, [r5]
	lsl	r3, #24
	lsr	r2, r3, #24
	cmp	r2, #0
	bne	.Lcd572
	ldr	r1, =0x7828
	add	r3, r6, r1
	ldr	r3, [r3]
	ldrsh	r0, [r3, r7]
	str	r2, [sp]
	mov	r1, #0
	mov	r2, r8
	mov	r3, r8
	str	r4, [sp, #4]
	bl	SetBattleActorState
	ldr	r4, [sp, #4]
.Lcd572:
	add	r4, #1
	add	r7, #2
	add	r5, #1
	cmp	r4, #8
	bne	.Lcd546
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80cd52c

