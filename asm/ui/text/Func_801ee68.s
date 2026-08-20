	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801ee68  @ 0x0801ee68
	push	{r5, r6, lr}
	mov	r5, r3
	mov	r4, #0
	ldr	r6, [sp, #0xc]
	ldr	r0, =0x6002000
	cmp	r4, r5
	bcs	.L1ee94
	mov	r3, #0x20
	sub	r3, r2
	lsl	r3, #1
.L1ee7c:
	mov	r1, #0
	cmp	r1, r2
	bcs	.L1ee8c
.L1ee82:
	add	r1, #1
	strh	r6, [r0]
	add	r0, #2
	cmp	r1, r2
	bcc	.L1ee82
.L1ee8c:
	add	r4, #1
	add	r0, r3
	cmp	r4, r5
	bcc	.L1ee7c
.L1ee94:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_801ee68

