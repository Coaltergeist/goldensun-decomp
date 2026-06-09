	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b0070  @ 0x080b0070
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r7, #0x9b
	mov	r8, r3
	mov	r1, #0
	lsl	r7, #2
	mov	r10, r1
	mov	r6, #0
	add	r7, r8
.Lb008a:
	ldr	r3, =0x3a9
	mov	r0, r6
	add	r3, r8
	mov	r5, #0
	ldrsb	r5, [r3, r5]
	bl	_Func_8078480
	cmp	r5, r0
	bne	.Lb00b0
	mov	r0, r6
	mov	r1, #0
	bl	_Func_8078ad0
	cmp	r0, #0
	beq	.Lb00b0
	mov	r2, #1
	strh	r6, [r7]
	add	r10, r2
	add	r7, #2
.Lb00b0:
	ldr	r3, =0x1ff
	add	r6, #1
	cmp	r6, r3
	ble	.Lb008a
	mov	r1, r10
	mov	r2, #0x9b
	lsl	r3, r1, #1
	lsl	r2, #2
	add	r3, r2
	ldr	r2, .Lb00e0	@ 0
	mov	r1, r8
	strh	r2, [r1, r3]
	ldr	r3, =0x3a6
	mov	r2, r10
	add	r3, r8
	strb	r2, [r3]
	mov	r0, r10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1

	.align	2, 0
.Lb00e0:
	.word	0
.func_end Func_80b0070

