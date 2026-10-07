	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Actor_IsNotMoving  @ 0x0800ca98
	push	{lr}
	mov	r3, r0
	add	r3, #0x55
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lcab2
	mov	r2, #0x80
	ldr	r3, [r0, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.Lcac4
	ldr	r2, [r0, #0x3c]
	b	.Lcab8
.Lcab2:
	mov	r3, #0x80
	ldr	r2, [r0, #0x38]
	lsl	r3, #24
.Lcab8:
	cmp	r2, r3
	bne	.Lcac4
	ldr	r3, [r0, #0x40]
	mov	r0, #1
	cmp	r3, r2
	beq	.Lcac6
.Lcac4:
	mov	r0, #0
.Lcac6:
	pop	{r1}
	bx	r1
.func_end Actor_IsNotMoving
