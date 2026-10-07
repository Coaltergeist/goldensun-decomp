	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b6c08  @ 0x080b6c08
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e74
	mov	r6, r0
	ldr	r0, [r3]
	mov	r3, #1
	and	r3, r6
	mov	r5, #0
	cmp	r3, #0
	beq	.Lb6c44
	mov	r3, #0x58
	ldrsh	r3, [r0, r3]
	cmp	r3, #0xff
	beq	.Lb6c44
	mov	r2, r0
	add	r2, #0x58
.Lb6c26:
	mov	r7, #0
	ldrsh	r3, [r2, r7]
	ldrh	r4, [r2]
	cmp	r3, #0xfe
	beq	.Lb6c3a
	cmp	r1, #0
	beq	.Lb6c38
	strh	r4, [r1]
	add	r1, #2
.Lb6c38:
	add	r5, #1
.Lb6c3a:
	add	r2, #2
	mov	r4, #0
	ldrsh	r3, [r2, r4]
	cmp	r3, #0xff
	bne	.Lb6c26
.Lb6c44:
	mov	r3, #2
	and	r3, r6
	cmp	r3, #0
	beq	.Lb6c76
	add	r2, r0, #2
	mov	r3, #0x64
	ldrsh	r3, [r2, r3]
	mov	r12, r2
	cmp	r3, #0xff
	beq	.Lb6c76
	mov	r0, #0x64
.Lb6c5a:
	ldrsh	r3, [r2, r0]
	ldrh	r4, [r2, r0]
	cmp	r3, #0xfe
	beq	.Lb6c6c
	cmp	r1, #0
	beq	.Lb6c6a
	strh	r4, [r1]
	add	r1, #2
.Lb6c6a:
	add	r5, #1
.Lb6c6c:
	add	r0, #2
	mov	r2, r12
	ldrsh	r3, [r2, r0]
	cmp	r3, #0xff
	bne	.Lb6c5a
.Lb6c76:
	cmp	r1, #0
	beq	.Lb6c7e
	ldr	r3, .Lb6c88	@ 0xff
	strh	r3, [r1]
.Lb6c7e:
	mov	r0, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1

	.align	2, 0
.Lb6c88:
	.word	0xff
.func_end Func_80b6c08

