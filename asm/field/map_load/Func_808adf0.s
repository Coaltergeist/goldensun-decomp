	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808adf0  @ 0x0808adf0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	mov	r1, sp
	ldr	r5, =gWorldMapEncounters
	bl	_Func_80122c8
	mov	r1, #0
	mov	r10, r1
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldr	r1, =0xffff0000
	mov	r6, r0
	asr	r0, r1, #16
	ldrh	r2, [r5]
	cmp	r3, r0
	beq	.L8ae56
	mov	r7, r1
	mov	r8, r0
.L8ae1a:
	lsl	r3, r2, #16
	ldr	r2, [sp]
	asr	r3, #16
	cmp	r3, r2
	bne	.L8ae4a
	mov	r2, #2
	ldrsh	r3, [r5, r2]
	asr	r2, r7, #16
	cmp	r3, r2
	beq	.L8ae32
	cmp	r3, r6
	bne	.L8ae4a
.L8ae32:
	mov	r3, #4
	ldrsh	r0, [r5, r3]
	cmp	r0, r2
	beq	.L8ae42
	bl	_GetFlag
	cmp	r0, #0
	bne	.L8ae4a
.L8ae42:
	mov	r2, #6
	ldrsh	r1, [r5, r2]
	mov	r10, r1
	b	.L8ae56
.L8ae4a:
	add	r5, #8
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, r8
	bne	.L8ae1a
.L8ae56:
	mov	r0, r6
	bl	Func_808b2b0
	mov	r0, r10
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808adf0

