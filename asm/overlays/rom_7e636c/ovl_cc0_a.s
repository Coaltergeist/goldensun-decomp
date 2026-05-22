	.include "macros.inc"

.thumb_func_start OvlFunc_cc0
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x98
	cmp	r2, r3
	bne	.Lcd8
	ldr	r0, =.L17b4
	b	.Lcee
.Lcd8:
	ldr	r3, =0x9d
	cmp	r2, r3
	bne	.Lce2
	ldr	r0, =.L17fc
	b	.Lcee
.Lce2:
	ldr	r3, =0x9e
	cmp	r2, r3
	bne	.Lcec
	ldr	r0, =.L1874
	b	.Lcee
.Lcec:
	ldr	r0, =.L1784
.Lcee:
	pop	{r1}
	bx	r1
.func_end OvlFunc_cc0

