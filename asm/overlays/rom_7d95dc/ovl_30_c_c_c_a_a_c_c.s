.include "macros.inc"

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
	bls	.L1a68
	b	.L1c2e
.L1a68:
	ldr	r2, =.L1a70
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1a70:
	.word	.L1b78
	.word	.L1c2e
	.word	.L1baa
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1bcc
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1be8
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c12
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1bb6
	.word	.L1bc0
	.word	.L1bc6
	.word	.L1c06
	.word	.L1c0c
	.word	.L1b8a
	.word	.L1bb0
.L1b78:
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #2
	bl	__MapActor_SetAnim
	b	.L1c2e
.L1b8a:
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #2
	bl	__MapActor_SetAnim
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1c2e
	bl	OvlFunc_953_200960c
	b	.L1c2e
.L1baa:
	bl	OvlFunc_953_2009298
	b	.L1c2e
.L1bb0:
	bl	OvlFunc_953_2009688
	b	.L1c2e
.L1bb6:
	bl	OvlFunc_953_2009cd4
	bl	__Func_807a664
	b	.L1c2e
.L1bc0:
	bl	OvlFunc_953_200a3e0
	b	.L1c2e
.L1bc6:
	bl	OvlFunc_953_200a5f0
	b	.L1c2e
.L1bcc:
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__SetFlag
	bl	OvlFunc_953_200ab1c
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1c2e
	bl	OvlFunc_953_200a4d8
	b	.L1c2e
.L1be8:
	mov	r0, #1
	bl	__AddPartyMember
	mov	r0, #2
	bl	__AddPartyMember
	mov	r0, #3
	bl	__AddPartyMember
	ldr	r0, =0x90e
	bl	__SetFlag
	bl	OvlFunc_953_200a668
	b	.L1c2e
.L1c06:
	bl	OvlFunc_953_200a820
	b	.L1c2e
.L1c0c:
	bl	OvlFunc_953_200a904
	b	.L1c2e
.L1c12:
	mov	r0, #1
	bl	__AddPartyMember
	mov	r0, #2
	bl	__AddPartyMember
	mov	r0, #3
	bl	__AddPartyMember
	ldr	r0, =0x90f
	bl	__SetFlag
	bl	OvlFunc_953_200a964
.L1c2e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2009a4c
