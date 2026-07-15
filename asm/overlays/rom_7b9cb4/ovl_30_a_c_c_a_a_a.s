	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200820c
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4d
	cmp	r2, r3
	bne	.L224
	ldr	r0, =.L4940
	b	.L276
.L224:
	ldr	r3, =0x4f
	cmp	r2, r3
	bne	.L22e
	ldr	r0, =.L49a0
	b	.L276
.L22e:
	ldr	r3, =0x51
	cmp	r2, r3
	bne	.L238
	ldr	r0, =gScript_882__0200ca00
	b	.L276
.L238:
	ldr	r3, =0x52
	cmp	r2, r3
	bne	.L242
	ldr	r0, =.L4a60
	b	.L276
.L242:
	ldr	r3, =0x53
	cmp	r2, r3
	bne	.L24c
	ldr	r0, =.L4aa8
	b	.L276
.L24c:
	ldr	r3, =0x54
	cmp	r2, r3
	bne	.L256
	ldr	r0, =.L4b68
	b	.L276
.L256:
	ldr	r3, =0x55
	cmp	r2, r3
	bne	.L260
	ldr	r0, =.L4b98
	b	.L276
.L260:
	ldr	r3, =0x56
	cmp	r2, r3
	bne	.L26a
	ldr	r0, =.L4c40
	b	.L276
.L26a:
	ldr	r3, =0x57
	cmp	r2, r3
	bne	.L274
	ldr	r0, =.L4cd0
	b	.L276
.L274:
	ldr	r0, =.L4928
.L276:
	pop	{r1}
	bx	r1
.func_end OvlFunc_932_200820c
