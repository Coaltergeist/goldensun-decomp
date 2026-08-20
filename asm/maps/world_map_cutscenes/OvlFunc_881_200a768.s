	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200a768
	push	{r5, r6, r7, lr}
	ldr	r4, =gOvl_0200e3f4
	mov	r3, #1
	neg	r3, r3
	ldr	r6, =OvlFunc_881_200a858
	mov	r0, r4
	mov	r7, #2
	mov	r12, r4
	mov	r1, #4
	mov	r2, #0
	mov	r14, r3
.Lm881_277e:
	ldr	r3, [r2, r4]
	cmp	r3, #1
	bne	.Lm881_2792
	ldrsh	r3, [r0, r1]
	cmp	r3, #0x8a
	bne	.Lm881_2792
	add	r3, r1, #4
	str	r7, [r0, r2]
	str	r6, [r0, r3]
	mov	r0, r12
.Lm881_2792:
	ldr	r3, [r2, r4]
	cmp	r3, r14
	beq	.Lm881_279e
	add	r1, #0xc
	add	r2, #0xc
	b	.Lm881_277e
.Lm881_279e:
	ldr	r0, =.Lm881_5b84
	mov	r6, #0xc0
	mov	r2, r0
	ldr	r4, =0x17940000
	ldr	r5, =0xd480000
	lsl	r6, #6
	add	r2, #8
	mov	r1, #0
.Lm881_27ae:
	ldrsh	r3, [r1, r0]
	cmp	r3, #0x39
	bne	.Lm881_27c0
	str	r4, [r2]
	str	r5, [r2, #8]
	strh	r6, [r2, #0xc]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.Lm881_27c0:
	add	r2, #0x18
	add	r1, #0x18
	b	.Lm881_27ae
.func_end OvlFunc_881_200a768

