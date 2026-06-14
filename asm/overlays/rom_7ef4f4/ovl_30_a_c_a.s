	.include "macros.inc"

.thumb_func_start OvlFunc_965_2008fdc
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb0
	cmp	r2, r3
	bne	.Lff4
	ldr	r0, =.L3694
	b	.L100a
.Lff4:
	ldr	r3, =0xaf
	cmp	r2, r3
	bne	.Lffe
	ldr	r0, =.L3754
	b	.L100a
.Lffe:
	ldr	r3, =0xae
	cmp	r2, r3
	bne	.L1008
	ldr	r0, =.L3784
	b	.L100a
.L1008:
	ldr	r0, =.L388c
.L100a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_965_2008fdc

.thumb_func_start OvlFunc_965_2009030
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #6
	beq	.L104a
	cmp	r3, #0x12
	bne	.L10d6
.L104a:
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x14
	bne	.L10d6
	mov	r3, #0x80
	lsl	r3, #24
	mov	r1, #0x80
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x40]
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	ldr	r1, =0x4fff
	ldrh	r0, [r5, #6]
	add	r3, r0, r1
	ldr	r1, =0x1fff0000
	lsl	r3, #16
	ldr	r2, =0x1fff
	cmp	r3, r1
	bls	.L109a
	ldr	r1, =0xffffcfff
	add	r3, r0, r1
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r2
	bhi	.L10b8
.L109a:
	mov	r1, #0x10
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	b	.L10d6
.L10b8:
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
.L10d6:
	bl	OvlFunc_965_200a820
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_2009030

