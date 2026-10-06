	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_897_200aba0
	push	{r5, r6, r7, lr}
	ldr	r2, =.Lm897_3b40
	ldr	r3, =.Lm897_3b10
	mov	r14, r2
	mov	r5, #0xa0
	ldr	r6, =0x4ccc
	mov	r4, #0
	lsl	r5, #13
	mov	r0, r14
	mov	r12, r3
	mov	r1, #0
.Lm897_2bb6:
	mov	r7, r14
	ldr	r3, [r1, r7]
	cmp	r3, #0
	beq	.Lm897_2bfe
	mov	r7, r12
	ldr	r2, [r7, r1]
	cmp	r3, #8
	bhi	.Lm897_2be4
	ldr	r3, [r2, #0x18]
	ldr	r7, =0xffffe334
	add	r3, r7
	str	r3, [r2, #0x18]
	mov	r7, #0x80
	ldr	r3, [r2, #0x1c]
	lsl	r7, #8
	add	r3, r7
	str	r3, [r2, #0x1c]
	ldr	r3, [r2, #0xc]
	add	r3, r6
	str	r3, [r2, #0xc]
	ldr	r3, [r2, #0x3c]
	add	r3, r6
	b	.Lm897_2bee
.Lm897_2be4:
	ldr	r3, [r2, #0xc]
	add	r3, r5
	str	r3, [r2, #0xc]
	ldr	r3, [r2, #0x3c]
	add	r3, r5
.Lm897_2bee:
	str	r3, [r2, #0x3c]
	ldr	r3, [r0, r1]
	add	r3, #1
	str	r3, [r0, r1]
	cmp	r3, #0xe
	bls	.Lm897_2bfe
	mov	r3, #0
	str	r3, [r0, r1]
.Lm897_2bfe:
	add	r4, #1
	add	r1, #4
	cmp	r4, #9
	bls	.Lm897_2bb6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200aba0

