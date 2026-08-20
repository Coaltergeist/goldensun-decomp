	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80ad5b4  @ 0x080ad5b4
	push	{r5, r6, lr}
	mov	r5, r3
	ldr	r3, =iwram_3001f2c
	mov	r6, #0x89
	ldr	r4, [r3]
	lsl	r6, #2
	lsl	r3, r0, #2
	add	r3, r6
	ldr	r3, [r4, r3]
	cmp	r3, #0
	beq	.Lad5e4
	lsl	r0, #1
	add	r6, #0x10
	add	r3, r0, r6
	strh	r1, [r4, r3]
	mov	r3, #0x8f
	lsl	r3, #2
	add	r0, r3
	mov	r3, r2
	cmp	r5, #0
	beq	.Lad5e2
	ldr	r3, .Lad5ec	@ 0xffff8000
	orr	r3, r2
.Lad5e2:
	strh	r3, [r4, r0]
.Lad5e4:
	pop	{r5, r6}
	pop	{r1}
	bx	r1

	.align	2, 0
.Lad5ec:
	.word	0xffff8000
.func_end Func_80ad5b4

