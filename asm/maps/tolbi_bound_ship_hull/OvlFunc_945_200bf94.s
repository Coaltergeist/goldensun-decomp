	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_200bf94
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x11
	bl	OvlFunc_945_200c8e8
	mov	r0, #0
	bl	OvlFunc_945_200c670
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #1
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0xdc
	mov	r1, #1
	mov	r2, #0xb0
	lsl	r2, #16
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #7
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x10
	bl	OvlFunc_945_200c670
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0
	bl	OvlFunc_945_200c670
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #7
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x10
	bl	OvlFunc_945_200c670
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0
	bl	OvlFunc_945_200c670
	mov	r0, #0x5a
	bl	__CutsceneWait
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x43
	str	r2, [r3]
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_408a
	mov	r0, #0x14
	bl	__Func_8091e9c
	b	.Lm945_40c6
.Lm945_408a:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_409c
	mov	r0, #0x12
	bl	__Func_8091e9c
	b	.Lm945_40c6
.Lm945_409c:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_40ae
	mov	r0, #0x11
	bl	__Func_8091e9c
	b	.Lm945_40c6
.Lm945_40ae:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_40c0
	mov	r0, #0x10
	bl	__Func_8091e9c
	b	.Lm945_40c6
.Lm945_40c0:
	mov	r0, #0xd
	bl	__Func_8091e9c
.Lm945_40c6:
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200bf94

