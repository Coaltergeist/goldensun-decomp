	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8096af0  @ 0x08096af0
	push	{lr}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	mov	r2, #0x1e
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	beq	.L96b14
	cmp	r3, #0xa
	bhi	.L96b08
	cmp	r3, #8
	beq	.L96b0e
	b	.L96b1e
.L96b08:
	cmp	r3, #0x10
	beq	.L96b1a
	b	.L96b1e
.L96b0e:
	bl	Func_80984c0
	b	.L96b1e
.L96b14:
	bl	Func_8099738
	b	.L96b1e
.L96b1a:
	bl	Func_809b648
.L96b1e:
	pop	{r0}
	bx	r0
.func_end Func_8096af0

