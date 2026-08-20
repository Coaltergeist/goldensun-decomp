	.include "macros.inc"

.thumb_func_start MercuryLighthouse_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x39
	cmp	r2, r3
	bne	.Lm924_e38
	ldr	r0, =.Lm924_650c
	b	.Lm924_e4e
.Lm924_e38:
	ldr	r3, =0x38
	cmp	r2, r3
	bne	.Lm924_e42
	ldr	r0, =.Lm924_635c
	b	.Lm924_e4e
.Lm924_e42:
	ldr	r3, =0x37
	cmp	r2, r3
	bne	.Lm924_e4c
	ldr	r0, =.Lm924_623c
	b	.Lm924_e4e
.Lm924_e4c:
	ldr	r0, =.Lm924_60ec
.Lm924_e4e:
	pop	{r1}
	bx	r1
.func_end MercuryLighthouse_GetEntrances

