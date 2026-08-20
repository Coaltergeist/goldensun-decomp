	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_921_2009f24
	push	{r5, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	ldrh	r3, [r2]
	cmp	r1, #0
	beq	.Lm921_1f3c
	sub	r3, #1
	strh	r3, [r2]
	b	.Lm921_1f92
.Lm921_1f3c:
	mov	r3, r5
	add	r3, #0x5a
	strb	r1, [r3]
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	mov	r2, #0xf
	lsr	r3, #4
	and	r3, r2
	ldr	r1, =.Lm921_23f0
	lsl	r3, #1
	mov	r0, #1
	ldrsh	r3, [r1, r3]
	neg	r0, r0
	cmp	r3, r0
	bne	.Lm921_1f64
	mov	r0, r5
	mov	r1, #9
	bl	__Actor_SetAnim
	b	.Lm921_1f92
.Lm921_1f64:
	ldrh	r1, [r5, #6]
	sub	r3, r1
	lsl	r3, #16
	mov	r2, #0x80
	asr	r3, #16
	lsl	r2, #5
	cmp	r3, r2
	ble	.Lm921_1f76
	mov	r3, r2
.Lm921_1f76:
	ldr	r2, =0xfffff000
	cmp	r3, r2
	bge	.Lm921_1f7e
	mov	r3, r2
.Lm921_1f7e:
	add	r3, r1, r3
	mov	r0, r5
	mov	r1, #2
	strh	r3, [r5, #6]
	bl	__Actor_SetAnim
	mov	r0, r5
	mov	r1, #0x30
	bl	__Actor_SetAnimSpeed
.Lm921_1f92:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_2009f24

