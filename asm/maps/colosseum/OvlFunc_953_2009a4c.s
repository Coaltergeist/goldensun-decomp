	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_953_2009a4c
	push	{lr}
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #5
	cmp	r3, #0x41
	bls	.Lm953_1a68
	b	.Lm953_1c2e
.Lm953_1a68:
	ldr	r2, =.Lm953_1a70
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm953_1a70:
	.word	.Lm953_1b78
	.word	.Lm953_1c2e
	.word	.Lm953_1baa
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1bcc
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1be8
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c12
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1c2e
	.word	.Lm953_1bb6
	.word	.Lm953_1bc0
	.word	.Lm953_1bc6
	.word	.Lm953_1c06
	.word	.Lm953_1c0c
	.word	.Lm953_1b8a
	.word	.Lm953_1bb0
.Lm953_1b78:
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #2
	bl	__MapActor_SetAnim
	b	.Lm953_1c2e
.Lm953_1b8a:
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #2
	bl	__MapActor_SetAnim
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm953_1c2e
	bl	OvlFunc_953_200960c
	b	.Lm953_1c2e
.Lm953_1baa:
	bl	OvlFunc_953_2009298
	b	.Lm953_1c2e
.Lm953_1bb0:
	bl	OvlFunc_953_2009688
	b	.Lm953_1c2e
.Lm953_1bb6:
	bl	OvlFunc_953_2009cd4
	bl	__Func_807a664
	b	.Lm953_1c2e
.Lm953_1bc0:
	bl	OvlFunc_953_200a3e0
	b	.Lm953_1c2e
.Lm953_1bc6:
	bl	OvlFunc_953_200a5f0
	b	.Lm953_1c2e
.Lm953_1bcc:
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__SetFlag
	bl	OvlFunc_953_200ab1c
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm953_1c2e
	bl	OvlFunc_953_200a4d8
	b	.Lm953_1c2e
.Lm953_1be8:
	mov	r0, #1
	bl	__AddPartyMember
	mov	r0, #2
	bl	__AddPartyMember
	mov	r0, #3
	bl	__AddPartyMember
	ldr	r0, =0x90e
	bl	__SetFlag
	bl	OvlFunc_953_200a668
	b	.Lm953_1c2e
.Lm953_1c06:
	bl	OvlFunc_953_200a820
	b	.Lm953_1c2e
.Lm953_1c0c:
	bl	OvlFunc_953_200a904
	b	.Lm953_1c2e
.Lm953_1c12:
	mov	r0, #1
	bl	__AddPartyMember
	mov	r0, #2
	bl	__AddPartyMember
	mov	r0, #3
	bl	__AddPartyMember
	ldr	r0, =0x90f
	bl	__SetFlag
	bl	OvlFunc_953_200a964
.Lm953_1c2e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2009a4c

