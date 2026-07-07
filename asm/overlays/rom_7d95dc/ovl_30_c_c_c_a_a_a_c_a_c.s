	.include "macros.inc"

.thumb_func_start OvlFunc_953_200850c
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x2118
	bl	__MessageID
	mov	r0, #0xf
	bl	OvlFunc_953_2009c48
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092848
	mov	r0, #0xf
	bl	OvlFunc_953_2009c48
	mov	r0, #0xf
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0
	mov	r0, #0xf
	bl	__MapActor_SetAnim
	mov	r0, #0xf
	bl	OvlFunc_953_2009c48
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #0xf
	bl	OvlFunc_953_2009c5c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_200850c

.thumb_func_start OvlFunc_953_200855c
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	ldr	r0, =0x211b
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	ldr	r0, =0x3c1
	bl	__GetFlag
	cmp	r0, #0
	beq	.L58c
	mov	r0, #0x14
	bl	__CutsceneWait
	b	.L5da
.L58c:
	mov	r0, #0x11
	mov	r1, #0
	bl	OvlFunc_953_2009c5c
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8092848
	mov	r1, #4
	mov	r0, #0x11
	bl	__MapActor_SetAnim
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	ldr	r1, =0x105
	mov	r2, #0x28
	mov	r0, #0x11
	bl	__MapActor_Emote
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r1, #0xa0
	mov	r0, #0x11
	lsl	r1, #7
	bl	OvlFunc_953_2009c5c
	ldr	r0, =0x3c1
	bl	__SetFlag
.L5da:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_200855c

