	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LoadUIBanner  @ 0x0801a32c
	push	{lr}
	mov	r3, r2
	cmp	r0, #1
	beq	.L1a342
	cmp	r0, #1
	bcc	.L1a34e
	cmp	r0, #2
	beq	.L1a346
	cmp	r0, #3
	beq	.L1a34a
	b	.L1a34e
.L1a342:
	ldr	r2, .L1a360
	b	.L1a350
.L1a346:
	ldr	r2, .L1a364
	b	.L1a350
.L1a34a:
	ldr	r2, .L1a368
	b	.L1a350
.L1a34e:
	ldr	r2, .L1a36c
.L1a350:
	mov	r0, r3
	mov	r1, #0x20
	bl	UploadSpriteGFX
	mov	r0, #1
	pop	{r1}
	bx	r1
	.align	2, 0
.L1a360:
	.word	Data_31864
.L1a364:
	.word	Data_31864
.L1a368:
	.word	Data_31864
.L1a36c:
	.word	Data_31864
.func_end LoadUIBanner

