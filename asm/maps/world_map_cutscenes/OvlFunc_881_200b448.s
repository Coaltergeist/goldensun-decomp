	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200b448
	push	{r5, r6, lr}
	mov	r6, #0
	cmp	r0, #1
	beq	.Lm881_3462
	cmp	r0, #1
	bcc	.Lm881_345e
	cmp	r0, #2
	beq	.Lm881_3466
	cmp	r0, #3
	beq	.Lm881_3472
	b	.Lm881_3476
.Lm881_345e:
	ldr	r6, =0x92c
	b	.Lm881_3476
.Lm881_3462:
	ldr	r6, =0x935
	b	.Lm881_3476
.Lm881_3466:
	ldr	r6, =0x917
	b	.Lm881_3476
.Lm881_346a:
	ldr	r3, =.Lm881_6718
	lsl	r2, r5, #2
	ldr	r0, [r3, r2]
	b	.Lm881_348a
.Lm881_3472:
	mov	r6, #0x99
	lsl	r6, #4
.Lm881_3476:
	mov	r5, #0
.Lm881_3478:
	add	r0, r6, r5
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm881_346a
	add	r5, #1
	cmp	r5, #8
	bls	.Lm881_3478
	mov	r0, #0
.Lm881_348a:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_881_200b448

