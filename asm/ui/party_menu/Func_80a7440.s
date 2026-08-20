	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a7440  @ 0x080a7440
	push	{r5, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r5, [r3]
	mov	r2, #0
	mov	r1, #0xba
	lsl	r1, #1
	add	r3, r5, r1
	strh	r2, [r3]
	mov	r0, #0
	bl	Func_80a77a4
	mov	r3, #1
	neg	r3, r3
	mov	r2, r0
	cmp	r0, r3
	beq	.La7466
	ldr	r1, =0x21a
	add	r3, r5, r1
	ldrb	r2, [r3]
.La7466:
	mov	r0, r2
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80a7440

