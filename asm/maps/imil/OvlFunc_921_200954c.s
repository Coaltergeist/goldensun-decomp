	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_921_200954c
	push	{r5, r6, lr}
	mov	r6, r0
	sub	sp, #0xc
	cmp	r6, #0
	beq	.Lm921_15a6
	mov	r2, r6
	add	r2, #0x64
	ldrh	r3, [r2]
	sub	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r1, r3, #16
	cmp	r1, #0
	beq	.Lm921_15a0
	ldr	r2, =.Lm921_31f0
	ldr	r3, [r2]
	mov	r5, sp
	str	r3, [r5]
	mov	r0, #0x80
	ldr	r3, [r2, #4]
	lsl	r0, #12
	add	r3, r0
	str	r3, [r5, #4]
	ldr	r3, [r2, #8]
	str	r3, [r5, #8]
	mov	r3, r6
	add	r3, #0x66
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	lsl	r0, r1, #16
	lsl	r1, #11
	add	r1, r3
	mov	r2, r5
	bl	__vec3_translate
	ldr	r3, [r5]
	str	r3, [r6, #8]
	ldr	r3, [r5, #4]
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x10]
	b	.Lm921_15a6
.Lm921_15a0:
	mov	r0, r6
	bl	__DeleteActor
.Lm921_15a6:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_200954c

