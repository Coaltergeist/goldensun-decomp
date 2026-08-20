	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ply_fine  @ 0x080f9a50
	push	{r4, r5, lr}
	mov	r5, r1
	ldr	r4, [r5, #0x20]
	cmp	r4, #0
	beq	.Lf9a74
.Lf9a5a:
	ldrb	r1, [r4]
	mov	r0, #0xc7
	tst	r0, r1
	beq	.Lf9a68
	mov	r0, #0x40
	orr	r1, r0
	strb	r1, [r4]
.Lf9a68:
	mov	r0, r4
	bl	RealClearChain
	ldr	r4, [r4, #0x34]
	cmp	r4, #0
	bne	.Lf9a5a
.Lf9a74:
	mov	r0, #0
	strb	r0, [r5]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.func_end ply_fine

