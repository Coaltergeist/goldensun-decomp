	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808e118  @ 0x0808e118
	push	{lr}
	ldr	r3, =iwram_3001ebc
	ldr	r2, =0xcb6
	ldr	r3, [r3]
	add	r1, r3, r2
	mov	r2, #0
	strh	r2, [r1]
	ldr	r2, =0xcb8
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L8e138
	ldr	r0, =0x2090
	bl	Func_808e5d8
.L8e138:
	pop	{r0}
	bx	r0
.func_end Func_808e118

