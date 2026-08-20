	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801e3c8  @ 0x0801e3c8
	push	{lr}
	ldr	r3, =iwram_3001e8c
	ldr	r1, [r3]
	cmp	r0, #0
	beq	.L1e3f0
	ldr	r3, =0xea2
	mov	r4, #0xe2
	add	r2, r1, r3
	lsl	r4, #4
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, #0
	mov	r3, #0x80
	add	r2, r1, r4
.L1e3e4:
	add	r3, #1
	strb	r0, [r2]
	add	r2, #1
	cmp	r3, #0xff
	ble	.L1e3e4
	b	.L1e40c
.L1e3f0:
	ldr	r3, =0xea2
	mov	r4, #0xe2
	add	r2, r1, r3
	lsl	r4, #4
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, #0
	add	r2, r1, r4
	mov	r3, #0x7f
.L1e402:
	sub	r3, #1
	strb	r0, [r2]
	add	r2, #1
	cmp	r3, #0
	bge	.L1e402
.L1e40c:
	pop	{r0}
	bx	r0
.func_end Func_801e3c8

