	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_913_200806c
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
.Lm913_80:
	ldmia	r1!, {r0}
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r7, r3
	bne	.Lm913_ae
	ldr	r3, [r4, #4]
	cmp	r3, #0
	bge	.Lm913_92
	add	r3, r6
.Lm913_92:
	asr	r2, r3, #16
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bge	.Lm913_9c
	add	r3, r6
.Lm913_9c:
	asr	r3, #16
	cmp	r2, r3
	bne	.Lm913_ae
	ldr	r2, [r4, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	beq	.Lm913_b6
.Lm913_ae:
	add	r5, #1
	cmp	r5, #0x41
	bls	.Lm913_80
	mov	r0, #0
.Lm913_b6:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_913_200806c

