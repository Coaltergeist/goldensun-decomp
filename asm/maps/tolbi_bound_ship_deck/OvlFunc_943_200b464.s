	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_200b464
	push	{r5, r6, lr}
	mov	r6, #0
	cmp	r0, #1
	beq	.Lm943_347e
	cmp	r0, #1
	bcc	.Lm943_347a
	cmp	r0, #2
	beq	.Lm943_3482
	cmp	r0, #3
	beq	.Lm943_348e
	b	.Lm943_3492
.Lm943_347a:
	ldr	r6, =0x92c
	b	.Lm943_3492
.Lm943_347e:
	ldr	r6, =0x935
	b	.Lm943_3492
.Lm943_3482:
	ldr	r6, =0x917
	b	.Lm943_3492
.Lm943_3486:
	ldr	r3, =.Lm943_5b08
	lsl	r2, r5, #2
	ldr	r0, [r3, r2]
	b	.Lm943_34a6
.Lm943_348e:
	mov	r6, #0x99
	lsl	r6, #4
.Lm943_3492:
	mov	r5, #0
.Lm943_3494:
	add	r0, r6, r5
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm943_3486
	add	r5, #1
	cmp	r5, #8
	bls	.Lm943_3494
	mov	r0, #0
.Lm943_34a6:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_943_200b464

