	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start AltinPeak_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4d
	cmp	r2, r3
	bne	.Lm932_224
	ldr	r0, =.Lm932_4940
	b	.Lm932_276
.Lm932_224:
	ldr	r3, =0x4f
	cmp	r2, r3
	bne	.Lm932_22e
	ldr	r0, =.Lm932_49a0
	b	.Lm932_276
.Lm932_22e:
	ldr	r3, =0x51
	cmp	r2, r3
	bne	.Lm932_238
	ldr	r0, =gScript_882__0200ca00
	b	.Lm932_276
.Lm932_238:
	ldr	r3, =0x52
	cmp	r2, r3
	bne	.Lm932_242
	ldr	r0, =.Lm932_4a60
	b	.Lm932_276
.Lm932_242:
	ldr	r3, =0x53
	cmp	r2, r3
	bne	.Lm932_24c
	ldr	r0, =.Lm932_4aa8
	b	.Lm932_276
.Lm932_24c:
	ldr	r3, =0x54
	cmp	r2, r3
	bne	.Lm932_256
	ldr	r0, =.Lm932_4b68
	b	.Lm932_276
.Lm932_256:
	ldr	r3, =0x55
	cmp	r2, r3
	bne	.Lm932_260
	ldr	r0, =.Lm932_4b98
	b	.Lm932_276
.Lm932_260:
	ldr	r3, =0x56
	cmp	r2, r3
	bne	.Lm932_26a
	ldr	r0, =.Lm932_4c40
	b	.Lm932_276
.Lm932_26a:
	ldr	r3, =0x57
	cmp	r2, r3
	bne	.Lm932_274
	ldr	r0, =.Lm932_4cd0
	b	.Lm932_276
.Lm932_274:
	ldr	r0, =.Lm932_4928
.Lm932_276:
	pop	{r1}
	bx	r1
.func_end AltinPeak_GetActors

