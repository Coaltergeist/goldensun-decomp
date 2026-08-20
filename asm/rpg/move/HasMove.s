	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start HasMove  @ 0x08078bc0
	push	{r5, lr}
	mov	r5, r1
	bl	GetUnit
	ldr	r1, =0x3fff
	mov	r2, #0
	add	r0, #0x58
.L78bce:
	ldrh	r3, [r0]
	and	r3, r1
	add	r0, #4
	cmp	r3, r5
	bne	.L78bdc
	mov	r0, #1
	b	.L78be4
.L78bdc:
	add	r2, #1
	cmp	r2, #0x1f
	ble	.L78bce
	mov	r0, #0
.L78be4:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end HasMove

