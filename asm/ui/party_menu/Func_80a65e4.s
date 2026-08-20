	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a65e4  @ 0x080a65e4
	push	{lr}
	ldr	r3, =0x3fff
	lsl	r0, #10
	and	r3, r1
	orr	r0, r3
	cmp	r2, #0
	bne	.La65fa
	ldr	r3, =gState
	mov	r2, #0x88
	lsl	r2, #2
	b	.La65fe
.La65fa:
	ldr	r3, =gState
	ldr	r2, =0x222
.La65fe:
	add	r3, r2
	strh	r0, [r3]
	mov	r0, #1
	pop	{r1}
	bx	r1
.func_end Func_80a65e4

