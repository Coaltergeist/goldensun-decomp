	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Kalay_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x63
	cmp	r2, r3
	bne	.Lm936_104
	ldr	r0, =.Lm936_42c8
	b	.Lm936_138
.Lm936_104:
	ldr	r3, =0x66
	cmp	r2, r3
	bne	.Lm936_10e
	ldr	r0, =.Lm936_4448
	b	.Lm936_138
.Lm936_10e:
	ldr	r3, =0x99
	cmp	r2, r3
	bne	.Lm936_118
	ldr	r0, =.Lm936_44a8
	b	.Lm936_138
.Lm936_118:
	ldr	r3, =0x9a
	cmp	r2, r3
	bne	.Lm936_122
	ldr	r0, =.Lm936_4520
	b	.Lm936_138
.Lm936_122:
	ldr	r3, =0x9b
	cmp	r2, r3
	bne	.Lm936_12c
	ldr	r0, =.Lm936_4580
	b	.Lm936_138
.Lm936_12c:
	ldr	r3, =0x9c
	cmp	r2, r3
	bne	.Lm936_136
	ldr	r0, =gScript_943__0200c628
	b	.Lm936_138
.Lm936_136:
	ldr	r0, =.Lm936_4298
.Lm936_138:
	pop	{r1}
	bx	r1
.func_end Kalay_GetEntrances

