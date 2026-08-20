	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b5b18  @ 0x080b5b18
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0x14
	mov	r8, sp
	mov	r0, r8
	bl	Func_80b6a60
	mov	r7, #0
	mov	r10, r0
	cmp	r7, r10
	bge	.Lb5bee
	mov	r0, #0
	mov	r5, #0
	mov	r6, #0
	mov	r9, r0
.Lb5b3c:
	mov	r1, r8
	ldrh	r0, [r6, r1]
	bl	_GetUnit
	mov	r2, r0
	ldr	r0, =0x12f
	mov	r1, #3
	add	r3, r2, r0
.Lb5b4c:
	mov	r0, r9
	sub	r1, #1
	strb	r0, [r3]
	sub	r3, #1
	cmp	r1, #0
	bge	.Lb5b4c
	mov	r1, #0x99
	lsl	r1, #1
	ldr	r0, =0x133
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #3
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #3
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	add	r1, #2
	add	r3, r2, r0
	strb	r5, [r3]
	add	r0, #2
	add	r3, r2, r1
	strb	r5, [r3]
	mov	r1, r8
	add	r3, r2, r0
	strb	r5, [r3]
	ldrh	r0, [r6, r1]
	add	r7, #1
	bl	_CalcStats
	add	r6, #2
	cmp	r7, r10
	blt	.Lb5b3c
.Lb5bee:
	add	sp, #0x14
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b5b18

