	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801c46c  @ 0x0801c46c
	push	{lr}
	ldr	r2, =0x205
	ldr	r1, =gState
	add	r3, r1, r2
	ldrb	r2, [r3]
	mov	r3, #0x20
	and	r0, r3
	cmp	r0, #0
	beq	.L1c484
	mov	r3, r2
	add	r3, #0xff
	b	.L1c486
.L1c484:
	add	r3, r2, #1
.L1c486:
	lsl	r3, #24
	lsr	r2, r3, #24
	ldr	r0, =0x205
	add	r3, r1, r0
	strb	r2, [r3]
	pop	{r0}
	bx	r0
.func_end Func_801c46c

