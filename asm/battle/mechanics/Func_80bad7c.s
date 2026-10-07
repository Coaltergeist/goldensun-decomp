	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bad7c  @ 0x080bad7c
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e74
	sub	sp, #0x10
	mov	r4, #0
	ldr	r1, [r3]
	cmp	r0, #0
	beq	.Lbadd4
	mov	r3, #0x58
	ldrsh	r3, [r1, r3]
	mov	r7, #0
	cmp	r3, #0xff
	beq	.Lbae1c
	mov	r5, r1
	add	r5, #0x58
	add	r6, sp, #4
.Lbad9a:
	mov	r1, #0
	ldrsh	r0, [r5, r1]
	cmp	r0, #0xfe
	beq	.Lbadbe
	str	r4, [sp]
	bl	_GetUnit
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	ldr	r4, [sp]
	cmp	r3, #0
	beq	.Lbadbe
	ldr	r2, .Lbadcc	@ 0x100
	mov	r3, r7
	orr	r3, r2
	strh	r3, [r6]
	add	r4, #1
	add	r6, #2
.Lbadbe:
	add	r5, #2
	mov	r0, #0
	ldrsh	r3, [r5, r0]
	add	r7, #1
	cmp	r3, #0xff
	bne	.Lbad9a
	b	.Lbae1c

	.align	2, 0
.Lbadcc:
	.word	0x100
	.pool

.Lbadd4:
	mov	r3, #0x64
	add	r2, r1, #2
	ldrsh	r3, [r2, r3]
	mov	r7, #0
	cmp	r3, #0xff
	beq	.Lbae1c
	mov	r0, r1
	lsl	r3, r4, #1
	add	r1, sp, #0x10
	add	r3, r1
	add	r0, #0x66
	mov	r1, r3
	ldr	r5, =0x180
	mov	r2, r0
	sub	r1, #0xc
.Lbadf2:
	ldrh	r3, [r2]
	mov	r6, #0xfe
	lsl	r3, #16
	lsl	r6, #16
	add	r2, #2
	cmp	r3, r6
	beq	.Lbae0a
	mov	r3, r7
	orr	r3, r5
	strh	r3, [r1]
	add	r4, #1
	add	r1, #2
.Lbae0a:
	add	r0, #2
	mov	r6, #0
	ldrsh	r3, [r0, r6]
	add	r7, #1
	cmp	r3, #0xff
	bne	.Lbadf2
	b	.Lbae1c

	.pool_aligned

.Lbae1c:
	mov	r0, #0
	cmp	r4, #0
	beq	.Lbae36
	add	r5, sp, #4
	str	r4, [sp]
	bl	Random
	ldr	r4, [sp]
	mov	r3, r4
	mul	r3, r0
	lsr	r3, #16
	lsl	r3, #1
	ldrh	r0, [r5, r3]
.Lbae36:
	add	sp, #0x10
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80bad7c
