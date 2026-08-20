	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_200b66c
	push	{lr}
	mov	r0, #1
	bl	__WaitFrames
	bl	OvlFunc_945_200b7b4
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_36ae
	mov	r0, #4
	mov	r1, #4
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xce
	mov	r3, #0xc0
	lsl	r1, #1
	lsl	r3, #6
	mov	r0, #8
	mov	r2, #0xde
	bl	OvlFunc_945_200c890
	mov	r1, #0xe5
	mov	r3, #0x80
	lsl	r1, #1
	lsl	r3, #8
	mov	r0, #9
	mov	r2, #0xa1
	bl	OvlFunc_945_200c890
	b	.Lm945_3794
.Lm945_36ae:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_36dc
	mov	r1, #0xec
	mov	r2, #0x98
	lsl	r2, #16
	mov	r0, #8
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #4
	mov	r1, #4
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	b	.Lm945_3794
.Lm945_36dc:
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_3702
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #4
	mov	r1, #4
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #3
	bl	OvlFunc_945_200c254
	b	.Lm945_3794
.Lm945_3702:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_3728
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #4
	mov	r1, #3
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #2
	bl	OvlFunc_945_200c254
	b	.Lm945_3794
.Lm945_3728:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_374e
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #4
	mov	r1, #2
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #1
	bl	OvlFunc_945_200c254
	b	.Lm945_3794
.Lm945_374e:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_3774
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0
	bl	OvlFunc_945_200c254
	b	.Lm945_3794
.Lm945_3774:
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_3794
	ldr	r0, =0x926
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm945_3794
	bl	OvlFunc_945_200b8ac
.Lm945_3794:
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200b66c

