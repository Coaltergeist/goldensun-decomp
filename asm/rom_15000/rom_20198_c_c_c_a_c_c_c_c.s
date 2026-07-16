	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8021b80  @ 0x08021b80
	push	{r5, lr}
	sub	sp, #0x10
	mov	r5, r0
	str	r1, [sp, #0xc]
	cmp	r5, #7
	bls	.L21b8e
	mov	r5, #0
.L21b8e:
	mov	r0, #0x20
	bl	_GetFlag
	cmp	r0, #0
	beq	.L21ba8
	cmp	r5, #0
	beq	.L21ba2
	cmp	r5, #1
	beq	.L21ba6
	b	.L21ba8
.L21ba2:
	mov	r5, #0x38
	b	.L21ba8
.L21ba6:
	mov	r5, #0x39
.L21ba8:
	mov	r1, #0xe
	str	r1, [sp]
	mov	r1, #1
	add	r2, sp, #0xc
	add	r3, sp, #8
	str	r1, [sp, #4]
	mov	r0, r5
	mov	r1, #0
	bl	LoadPortrait
	ldr	r0, [sp, #8]
	add	sp, #0x10
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_8021b80

