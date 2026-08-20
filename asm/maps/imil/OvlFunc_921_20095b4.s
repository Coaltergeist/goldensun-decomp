	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_921_20095b4
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r5, r6
	add	r5, #0x64
	mov	r2, #0
	ldrsh	r0, [r5, r2]
	lsl	r0, #10
	sub	sp, #0xc
	bl	__sin
	mov	r1, r0
	mov	r0, #0xc0
	ldr	r3, =Func_8000888
	lsl	r0, #11
	.call_via r3
	ldr	r3, =.Lm921_31f0
	ldr	r3, [r3]
	add	r3, r0
	str	r3, [r6, #8]
	ldrh	r3, [r5]
	add	r3, #1
	strh	r3, [r5]
	lsl	r3, #16
	asr	r1, r3, #16
	mov	r2, r1
	add	r2, #0x40
	mov	r3, r2
	cmp	r2, #0
	bge	.Lm921_15f4
	mov	r3, r1
	add	r3, #0x7f
.Lm921_15f4:
	asr	r3, #6
	lsl	r3, #6
	sub	r3, r2, r3
	strh	r3, [r5]
	ldr	r3, =iwram_3001e40
	mov	r1, #3
	ldr	r0, [r3]
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.Lm921_16a4
	ldr	r3, [r6, #8]
	mov	r5, sp
	str	r3, [r5]
	mov	r2, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r2, #10
	add	r3, r2
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	bl	__Random
	mov	r6, r0
	bl	__Random
	mov	r1, r0
	lsl	r0, r6, #1
	add	r0, r6
	mov	r2, r5
	lsl	r0, #1
	bl	__vec3_translate
	ldr	r1, [r5]
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #8]
	ldr	r0, =0x11d
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm921_16a4
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	strb	r3, [r1, #9]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetAnim
	ldr	r3, =0x9999
	mov	r2, r5
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	ldr	r3, .Lm921_1688	@ 0
	add	r2, #0x32
	mov	r0, r5
	mov	r1, #9
	strb	r3, [r2]
	bl	__Func_80929d8
	ldr	r1, =gScript_921__0200a64c
	mov	r0, r5
	bl	__Actor_SetScript
	b	.Lm921_16a4

	.align	2, 0
.Lm921_1688:
	.word	0
	.pool

.Lm921_16a4:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_20095b4

