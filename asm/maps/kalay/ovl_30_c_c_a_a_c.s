	.include "macros.inc"

.thumb_func_start Kalay_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x63
	cmp	r2, r3
	bne	.Lm936_258
	ldr	r0, =.Lm936_4bf4
	b	.Lm936_28c
.Lm936_258:
	ldr	r3, =0x66
	cmp	r2, r3
	bne	.Lm936_262
	ldr	r0, =gScript_882__0200ce88
	b	.Lm936_28c
.Lm936_262:
	ldr	r3, =0x99
	cmp	r2, r3
	bne	.Lm936_26c
	ldr	r0, =gScript_882__0200cedc
	b	.Lm936_28c
.Lm936_26c:
	ldr	r3, =0x9a
	cmp	r2, r3
	bne	.Lm936_276
	ldr	r0, =.Lm936_4f24
	b	.Lm936_28c
.Lm936_276:
	ldr	r3, =0x9b
	cmp	r2, r3
	bne	.Lm936_280
	ldr	r0, =.Lm936_4f54
	b	.Lm936_28c
.Lm936_280:
	ldr	r3, =0x9c
	cmp	r2, r3
	bne	.Lm936_28a
	ldr	r0, =.Lm936_4f9c
	b	.Lm936_28c
.Lm936_28a:
	ldr	r0, =.Lm936_4be8
.Lm936_28c:
	pop	{r1}
	bx	r1
.func_end Kalay_GetEvents

