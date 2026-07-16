	.include "macros.inc"

	.section .text.after_9150, "ax", %progbits

.thumb_func_start OvlFunc_927_2009244
	push	{r5, lr}
	mov	r0, #0xb
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0xb
	mov	r1, #0
	bl	OvlFunc_927_2008ea8
	mov	r1, #0xcc
	mov	r2, #0xe4
	mov	r3, #0xc0
	lsl	r1, #1
	lsl	r2, #1
	lsl	r3, #11
	mov	r0, #0xb
	bl	OvlFunc_927_2008d90
	ldr	r2, [r5, #0x10]
	mov	r3, #0xc0
	lsl	r3, #13
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_927_2008ae8
	mov	r0, #0xb
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092848
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #0xb
	bl	__MapActor_Emote
	mov	r0, #0x93
	bl	__PlaySound
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xa
	ldrsh	r5, [r0, r2]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r3, #0x80
	lsl	r3, #11
	mov	r1, r5
	mov	r0, #0xb
	bl	OvlFunc_927_2008d90
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x301
	bl	__SetFlag
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x35
	mov	r1, #0
	bl	__Func_8091eb0
	bl	__CutsceneEnd
	add	sp, #0x10
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009244
