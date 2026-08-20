	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start KalayDocks_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6b
	cmp	r2, r3
	bne	.Lm942_1c2
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm942_1be
	ldr	r0, =GFX_Thermometer
	b	.Lm942_206
.Lm942_1be:
	ldr	r0, =.Lm942_1e80
	b	.Lm942_206
.Lm942_1c2:
	ldr	r3, =0x70
	cmp	r2, r3
	bne	.Lm942_1dc
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm942_1d8
	ldr	r0, =.Lm942_2120
	b	.Lm942_206
.Lm942_1d8:
	ldr	r0, =.Lm942_2018
	b	.Lm942_206
.Lm942_1dc:
	ldr	r3, =0x6c
	cmp	r2, r3
	bne	.Lm942_204
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm942_1f2
	ldr	r0, =.Lm942_2390
	b	.Lm942_206
.Lm942_1f2:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm942_200
	ldr	r0, =.Lm942_230c
	b	.Lm942_206
.Lm942_200:
	ldr	r0, =.Lm942_224c
	b	.Lm942_206
.Lm942_204:
	ldr	r0, =.Lm942_1e74
.Lm942_206:
	pop	{r1}
	bx	r1
.func_end KalayDocks_GetEvents

