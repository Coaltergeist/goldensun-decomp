	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b9a70
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e74
	mov	r4, r0
	ldr	r3, [r3]
	cmp	r4, #7
	bhi	.Lb9a98
	mov	r5, #0x80
	mov	r0, #0
	lsl	r5, #1
	mov	r1, #0x58
.Lb9a84:
	ldrsh	r2, [r1, r3]
	cmp	r2, #0xff
	beq	.Lb9aa8
	cmp	r2, #0xfe
	beq	.Lb9a92
	cmp	r2, r4
	beq	.Lb9ab6
.Lb9a92:
	add	r1, #2
	add	r0, #1
	b	.Lb9a84
.Lb9a98:
	mov	r5, #0xc0
	mov	r0, #0
	add	r3, #2
	lsl	r5, #1
	mov	r1, #0x64
.Lb9aa2:
	ldrsh	r2, [r1, r3]
	cmp	r2, #0xff
	bne	.Lb9aae
.Lb9aa8:
	mov	r0, #1
	neg	r0, r0
	b	.Lb9ac0
.Lb9aae:
	cmp	r2, #0xfe
	beq	.Lb9aba
	cmp	r2, r4
	bne	.Lb9aba
.Lb9ab6:
	orr	r0, r5
	b	.Lb9ac0
.Lb9aba:
	add	r1, #2
	add	r0, #1
	b	.Lb9aa2
.Lb9ac0:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80b9a70

.thumb_func_start Func_80b9acc
	push	{lr}
	ldr	r3, =iwram_3001e80
	ldr	r0, =iwram_3001ae8
	ldr	r1, [r3]
	add	r3, #0x80
	ldr	r4, [r3]
	mov	r2, #0x80
	ldr	r3, [r0]
	lsl	r2, #2
	and	r3, r2
	sub	sp, #4
	cmp	r3, #0
	beq	.Lb9aec
	ldrh	r3, [r1, #0x36]
	add	r3, r2
	strh	r3, [r1, #0x36]
.Lb9aec:
	ldr	r3, [r0]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb9b00
	ldrh	r3, [r1, #0x36]
	ldr	r2, =0xfffffe00
	add	r3, r2
	strh	r3, [r1, #0x36]
.Lb9b00:
	ldr	r3, [r4, #0x14]
	cmp	r3, #0
	bne	.Lb9b1a
	mov	r1, #0xf0
	mov	r3, #0x80
	lsl	r3, #9
	lsl	r1, #15
	str	r3, [sp]
	mov	r0, r1
	mov	r2, #0
	mov	r3, #0
	bl	Func_80c0a24
.Lb9b1a:
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end Func_80b9acc

