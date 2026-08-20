	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f7db4  @ 0x080f7db4
	push	{lr}
	ldr	r3, =ewram_2004c00
	ldr	r3, [r3]
	ldr	r0, =0x3ff
	mov	r2, #0
	mov	r1, #0
	add	r3, #4
.Lf7dc2:
	str	r2, [r3, #4]
	add	r2, #1
	str	r1, [r3]
	add	r3, #0xc
	cmp	r2, r0
	ble	.Lf7dc2
	ldr	r3, =ewram_2004c00
	mov	r2, #0xc0
	ldr	r3, [r3]
	lsl	r2, #6
	add	r3, r2
	mov	r1, #0
	mov	r2, #0xff
.Lf7ddc:
	sub	r2, #1
	stmia	r3!, {r1}
	cmp	r2, #0
	bge	.Lf7ddc
	pop	{r0}
	bx	r0
.func_end Func_80f7db4

