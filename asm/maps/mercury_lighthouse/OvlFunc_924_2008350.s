	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_2008350
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	mov	r4, r0
	ldr	r2, [r3]
	ldr	r3, [r4]
	mov	r1, r2
	ldr	r6, =0xffff
	mov	r5, #8
	asr	r7, r3, #20
	add	r1, #0x34
.Lm924_364:
	ldmia	r1!, {r0}
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r7, r3
	bne	.Lm924_392
	ldr	r3, [r4, #4]
	cmp	r3, #0
	bge	.Lm924_376
	add	r3, r6
.Lm924_376:
	asr	r2, r3, #16
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bge	.Lm924_380
	add	r3, r6
.Lm924_380:
	asr	r3, #16
	cmp	r2, r3
	bne	.Lm924_392
	ldr	r2, [r4, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	beq	.Lm924_39a
.Lm924_392:
	add	r5, #1
	cmp	r5, #0x41
	bls	.Lm924_364
	mov	r0, #0
.Lm924_39a:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_924_2008350

