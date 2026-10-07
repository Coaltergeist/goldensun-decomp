	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_880_20082f4
	push	{lr}
	mov	r3, #0
	strb	r3, [r1, #1]
	strb	r3, [r1, #2]
	cmp	r0, #7
	bgt	.L306
	mov	r3, r0
	add	r3, #0x41
	b	.L37c
.L306:
	cmp	r0, #0xc
	bgt	.L310
	mov	r3, r0
	add	r3, #0x42
	b	.L37c
.L310:
	cmp	r0, #0x17
	bgt	.L31a
	mov	r3, r0
	add	r3, #0x43
	b	.L37c
.L31a:
	cmp	r0, #0x1f
	bgt	.L324
	mov	r3, r0
	add	r3, #0x1a
	b	.L37c
.L324:
	cmp	r0, #0x2a
	bgt	.L32e
	mov	r3, r0
	add	r3, #0x41
	b	.L37c
.L32e:
	cmp	r0, #0x2c
	bgt	.L338
	mov	r3, r0
	add	r3, #0x42
	b	.L37c
.L338:
	cmp	r0, #0x37
	bgt	.L342
	mov	r3, r0
	add	r3, #0x43
	b	.L37c
.L342:
	cmp	r0, #0x38
	bne	.L34a
	mov	r3, #0x21
	b	.L37c
.L34a:
	cmp	r0, #0x39
	bne	.L352
	mov	r3, #0x3f
	b	.L37c
.L352:
	cmp	r0, #0x3a
	bne	.L35a
	mov	r3, #0x23
	b	.L37c
.L35a:
	cmp	r0, #0x3b
	bne	.L362
	mov	r3, #0x26
	b	.L37c
.L362:
	cmp	r0, #0x3c
	bne	.L36a
	mov	r3, #0x24
	b	.L37c
.L36a:
	cmp	r0, #0x3d
	bne	.L372
	mov	r3, #0x25
	b	.L37c
.L372:
	cmp	r0, #0x3e
	bne	.L37a
	mov	r3, #0x2b
	b	.L37c
.L37a:
	mov	r3, #0x3d
.L37c:
	strb	r3, [r1]
	pop	{r0}
	bx	r0
.func_end OvlFunc_880_20082f4

