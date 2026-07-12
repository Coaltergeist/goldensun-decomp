	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8016758  @ 0x08016758
	push	{r5, lr}
	ldr	r3, =iwram_3001e8c
	mov	r1, #0xc4
	ldr	r3, [r3]
	lsl	r1, #3
	add	r2, r3, r1
	mov	r5, #0
	mov	r1, #0
	b	.L1676e
.L1676a:
	add	r2, #0x28
	add	r1, #1
.L1676e:
	cmp	r1, #3
	beq	.L16780
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L1677e
	ldrh	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.L1676a
.L1677e:
	mov	r5, r2
.L16780:
	cmp	r5, #0
	beq	.L167a2
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L16792
	bl	Func_801671c
	mov	r3, #0
	strh	r3, [r5, #6]
.L16792:
	mov	r3, #0
	strh	r3, [r5, #4]
	strh	r3, [r5, #0x14]
	mov	r2, #0xf
	strh	r3, [r5, #0x18]
	mov	r3, #0xa
	strh	r2, [r5, #0x16]
	strh	r3, [r5, #0x1a]
.L167a2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8016758

.thumb_func_start Func_80167ac  @ 0x080167ac
	ldr	r3, =iwram_3001e8c
	ldr	r4, =0xeae
	ldr	r2, [r3]
	ldrh	r1, [r0, #0x16]
	add	r3, r2, r4
	strh	r1, [r3]
	sub	r4, #2
	ldrh	r1, [r0, #0x18]
	add	r3, r2, r4
	strh	r1, [r3]
	ldr	r1, =0xea8
	ldrh	r3, [r0, #0x1a]
	add	r2, r1
	strh	r3, [r2]
	bx	lr
.func_end Func_80167ac
