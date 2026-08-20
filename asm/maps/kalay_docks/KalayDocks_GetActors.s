	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start KalayDocks_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6b
	cmp	r2, r3
	bne	.Lm942_c6
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm942_c2
	ldr	r0, =gOvl_02009ba4
	b	.Lm942_10a
.Lm942_c2:
	ldr	r0, =.Lm942_1acc
	b	.Lm942_10a
.Lm942_c6:
	ldr	r3, =0x70
	cmp	r2, r3
	bne	.Lm942_e0
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm942_dc
	ldr	r0, =.Lm942_19c4
	b	.Lm942_10a
.Lm942_dc:
	ldr	r0, =gOvl_020098ec
	b	.Lm942_10a
.Lm942_e0:
	ldr	r3, =0x6c
	cmp	r2, r3
	bne	.Lm942_108
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm942_f6
	ldr	r0, =.Lm942_1dcc
	b	.Lm942_10a
.Lm942_f6:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm942_104
	ldr	r0, =.Lm942_1d24
	b	.Lm942_10a
.Lm942_104:
	ldr	r0, =.Lm942_1c7c
	b	.Lm942_10a
.Lm942_108:
	ldr	r0, =.Lm942_18d4
.Lm942_10a:
	pop	{r1}
	bx	r1
.func_end KalayDocks_GetActors

