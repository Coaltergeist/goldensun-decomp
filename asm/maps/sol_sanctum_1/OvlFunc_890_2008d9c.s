	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_890_2008d9c
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Random
	mov	r3, #3
	and	r0, r3
	cmp	r0, #0
	bne	.Lm890_dae
	b	.Lm890_eaa
.Lm890_dae:
	ldr	r6, =.Lm890_2de4
	ldrh	r5, [r6]
	cmp	r5, #2
	beq	.Lm890_e0c
	cmp	r5, #2
	bgt	.Lm890_dc4
	cmp	r5, #0
	beq	.Lm890_dd2
	cmp	r5, #1
	beq	.Lm890_dee
	b	.Lm890_e8c
.Lm890_dc4:
	cmp	r5, #4
	beq	.Lm890_e4c
	cmp	r5, #4
	blt	.Lm890_e2c
	cmp	r5, #0x50
	beq	.Lm890_e78
	b	.Lm890_e8c
.Lm890_dd2:
	mov	r0, #0xbb
	bl	__PlaySound
	mov	r3, #1
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x21
	bl	__CopyMapTiles
	b	.Lm890_e8c
.Lm890_dee:
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x21
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x22
	b	.Lm890_e70
.Lm890_e0c:
	mov	r5, #1
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x22
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x23
	b	.Lm890_e70
.Lm890_e2c:
	mov	r5, #1
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x23
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x24
	b	.Lm890_e70
.Lm890_e4c:
	ldr	r2, =.Lm890_2de8
	mov	r3, #2
	str	r3, [r2]
	mov	r5, #1
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x24
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x25
.Lm890_e70:
	str	r5, [sp]
	bl	__CopyMapTiles
	b	.Lm890_e8c
.Lm890_e78:
	mov	r3, #1
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x31
	mov	r2, #0x1e
	mov	r3, #0x21
	bl	__CopyMapTiles
.Lm890_e8c:
	ldrh	r3, [r6]
	add	r3, #1
	strh	r3, [r6]
	ldrh	r5, [r6]
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	add	r3, #0x5a
	cmp	r5, r3
	bls	.Lm890_eaa
	ldr	r3, .Lm890_ec8	@ 0
	strh	r3, [r6]
.Lm890_eaa:
	ldr	r5, =.Lm890_2de8
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lm890_eec
	cmp	r3, #2
	bne	.Lm890_ed4
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
	b	.Lm890_ee6

	.align	2, 0
.Lm890_ec8:
	.word	0
	.pool

.Lm890_ed4:
	cmp	r3, #1
	bne	.Lm890_ee6
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
.Lm890_ee6:
	ldr	r3, [r5]
	sub	r3, #1
	str	r3, [r5]
.Lm890_eec:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2008d9c

