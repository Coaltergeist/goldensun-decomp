	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_200832c
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r4, r0
	ldr	r2, [r3]
	ldr	r3, [r4]
	mov	r1, r2
	mov	r5, #8
	asr	r6, r3, #20
	add	r1, #0x34
.L33e:
	ldmia	r1!, {r0}
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, r3
	bne	.L360
	ldr	r2, [r4, #4]
	ldr	r3, [r0, #0xc]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L360
	ldr	r2, [r4, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	beq	.L368
.L360:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L33e
	mov	r0, #0
.L368:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_200832c
