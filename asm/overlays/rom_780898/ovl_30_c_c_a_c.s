	.include "macros.inc"

	.section .text.after_8b28, "ax", %progbits

.thumb_func_start OvlFunc_883_2008ba8
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x807
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lc2e
	ldr	r0, =0x807
	bl	__SetFlag
	ldr	r0, =0xf63
	bl	__MessageID
	mov	r0, #0x12
	ldr	r1, =0x103
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0
	mov	r1, #0x12
	mov	r2, #0x14
	bl	__Func_8092848
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #6
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #2
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #6
	bl	__Func_8093040
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092848
	mov	r0, #0x12
	ldr	r1, =0x103
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	b	.Lc48
.Lc2e:
	ldr	r1, =0x103
	mov	r2, #0
	mov	r0, #0x12
	bl	__MapActor_Emote
	ldr	r0, =0xf66
	bl	__MessageID
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
.Lc48:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008ba8
