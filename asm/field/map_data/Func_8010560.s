	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8010560  @ 0x08010560
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	ldrh	r0, [r7]
	ldr	r3, =0xffff
	mov	r12, r0
	sub	sp, #8
	mov	r10, r1
	mov	r8, r2
	cmp	r12, r3
	beq	.L105be
	mov	r9, r3
	add	r6, r7, #2
.L10580:
	mov	r2, #0
	ldrsh	r1, [r6, r2]
	mov	r4, #2
	ldrsh	r3, [r6, r4]
	mov	r4, #4
	ldrsh	r2, [r6, r4]
	mov	r4, #6
	ldrsh	r5, [r6, r4]
	lsl	r3, #16
	lsl	r2, #16
	lsr	r3, #16
	lsr	r2, #16
	lsl	r1, #16
	lsl	r5, #16
	str	r3, [sp]
	str	r2, [sp, #4]
	lsr	r1, #16
	mov	r2, r10
	mov	r3, r8
	lsr	r5, #16
	bl	CopyMapTiles
	add	r7, #0xa
	mov	r0, r5
	bl	WaitFrames
	ldrh	r0, [r7]
	mov	r12, r0
	add	r6, #0xa
	cmp	r12, r9
	bne	.L10580
.L105be:
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8010560
