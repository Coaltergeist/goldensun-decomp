	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Colosseum_GetEvents
	push	{lr}
	ldr	r1, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x8d
	cmp	r2, r3
	bne	.Lm953_250
	ldr	r0, =.Lm953_3e70
	b	.Lm953_278
.Lm953_250:
	ldr	r3, =0x8c
	cmp	r2, r3
	bne	.Lm953_26c
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0xc
	bne	.Lm953_268
	ldr	r0, =.Lm953_4110
	b	.Lm953_278
.Lm953_268:
	ldr	r0, =.Lm953_3e94
	b	.Lm953_278
.Lm953_26c:
	ldr	r3, =0x8e
	cmp	r2, r3
	bne	.Lm953_276
	ldr	r0, =.Lm953_3f60
	b	.Lm953_278
.Lm953_276:
	ldr	r0, =.Lm953_3e64
.Lm953_278:
	pop	{r1}
	bx	r1
.func_end Colosseum_GetEvents

