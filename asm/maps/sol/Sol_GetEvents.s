	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Sol_GetEvents
	push	{lr}
	ldr	r1, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x13
	cmp	r2, r3
	bne	.Lm895_104
	ldr	r0, =.Lm895_22e4
	b	.Lm895_12e
.Lm895_104:
	ldr	r3, =0x10
	cmp	r2, r3
	bne	.Lm895_12c
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0xb
	blt	.Lm895_128
	cmp	r3, #0xd
	ble	.Lm895_124
	cmp	r3, #0x10
	bgt	.Lm895_128
	ldr	r0, =.Lm895_2524
	b	.Lm895_12e
.Lm895_124:
	ldr	r0, =.Lm895_241c
	b	.Lm895_12e
.Lm895_128:
	ldr	r0, =.Lm895_232c
	b	.Lm895_12e
.Lm895_12c:
	ldr	r0, =.Lm895_22d8
.Lm895_12e:
	pop	{r1}
	bx	r1
.func_end Sol_GetEvents

