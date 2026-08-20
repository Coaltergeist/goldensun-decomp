	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_921_2008abc
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0x5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe0000
	lsl	r3, #16
	cmp	r3, r2
	bhi	.Lm921_b00
	bl	__CutsceneStart
	ldr	r0, =0x82d
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm921_af4
	ldr	r0, =0x1553
	bl	__MessageID
	mov	r0, #0x13
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x82d
	bl	__SetFlag
.Lm921_af4:
	bl	__CutsceneEnd
	mov	r0, #0x13
	bl	__UI_Sanctum
	b	.Lm921_b4a
.Lm921_b00:
	bl	__CutsceneStart
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm921_b12
	ldr	r0, =0x1671
	b	.Lm921_b1e
.Lm921_b12:
	mov	r0, #3
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm921_b2c
	ldr	r0, =0x1572
.Lm921_b1e:
	bl	__MessageID
	mov	r0, #0x13
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm921_b46
.Lm921_b2c:
	ldr	r0, =0x1554
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_8093054
	mov	r1, #0xc0
	mov	r0, #0x13
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
.Lm921_b46:
	bl	__CutsceneEnd
.Lm921_b4a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_2008abc

