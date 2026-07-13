	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2008ad0
	push	{lr}
	ldr	r0, =0x9c8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lb5e
	ldr	r0, =0x9c8
	bl	__SetFlag
	bl	__CutsceneStart
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r2, #0x14
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0xf
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0xf
	bl	__MapActor_SetSpeed
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #12
	mov	r1, #0x92
	mov	r2, #0xaa
	str	r3, [r0, #0x28]
	lsl	r1, #2
	mov	r0, #0xf
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	bl	__CutsceneEnd
.Lb5e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2008ad0

.thumb_func_start OvlFunc_948_2008b68
	push	{r5, r6, lr}
	ldr	r0, =0x9c8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lb76
	b	.Lcb4
.Lb76:
	ldr	r0, =0x9c9
	bl	__GetFlag
	mov	r6, r0
	cmp	r6, #0
	beq	.Lb84
	b	.Lcb4
.Lb84:
	ldr	r0, =0x9c9
	bl	__SetFlag
	bl	__CutsceneStart
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xf
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0xf
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0xf
	bl	__MapActor_SetSpeed
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r3, #0xa0
	lsl	r3, #12
	mov	r1, #0x92
	mov	r2, #0xa6
	str	r3, [r0, #0x28]
	lsl	r1, #2
	mov	r0, #0xf
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xf
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xf
	bl	__MapActor_Surprise
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xf
	lsl	r1, #12
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0xa6
	mov	r2, #0xa6
	mov	r0, #0xf
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xba
	mov	r2, #0xa6
	mov	r0, #0xf
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xce
	mov	r2, #0xa6
	lsl	r1, #2
	lsl	r2, #2
	mov	r0, #0xf
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xd0
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xde
	mov	r2, #0xa6
	lsl	r1, #18
	lsl	r2, #18
	mov	r0, #0xf
	bl	__MapActor_SetPos
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r2, [r5, #0x50]
	mov	r3, #0xf8
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r1, #0
	strh	r6, [r5, #6]
	bl	__Actor_SetAnimSpeed
	ldr	r1, =gScript_948__0200a6fc
	mov	r0, r5
	bl	__Actor_SetScript
	bl	__CutsceneEnd
.Lcb4:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2008b68

.thumb_func_start OvlFunc_948_2008ccc
	push	{r5, lr}
	ldr	r0, =0x9c9
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lcda
	b	.Le30
.Lcda:
	ldr	r0, =0x9ca
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.Lce8
	b	.Le30
.Lce8:
	ldr	r0, =0x9ca
	bl	__SetFlag
	bl	__CutsceneStart
	mov	r0, #0xf
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	mov	r1, #0x10
	strh	r5, [r3, #0x1e]
	bl	__Actor_SetAnimSpeed
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #12
	mov	r1, #0x80
	str	r3, [r0, #0x28]
	mov	r2, #0x1e
	mov	r0, #0xf
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0xf
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0xf
	bl	__MapActor_SetSpeed
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #11
	mov	r1, #0xdc
	mov	r2, #0xaa
	str	r3, [r0, #0x28]
	lsl	r2, #2
	lsl	r1, #2
	mov	r0, #0xf
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xf
	ldr	r1, =0x101
	bl	__MapActor_Surprise
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xf
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xdc
	mov	r2, #0xae
	mov	r0, #0xf
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0xb0
	mov	r0, #0xf
	ldr	r1, =0x372
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xdc
	mov	r2, #0xb2
	mov	r0, #0xf
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0xb4
	mov	r0, #0xf
	ldr	r1, =0x36e
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xdc
	mov	r2, #0xb6
	mov	r0, #0xf
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0xb8
	mov	r0, #0xf
	ldr	r1, =0x372
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xdc
	mov	r2, #0xba
	mov	r0, #0xf
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0xbc
	mov	r0, #0xf
	ldr	r1, =0x36e
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xdc
	mov	r2, #0xbe
	mov	r0, #0xf
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xd6
	mov	r2, #0xce
	lsl	r1, #18
	lsl	r2, #18
	mov	r0, #0xf
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0xf
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #0xf
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_948_2008aa8
	str	r3, [r0, #0x6c]
	bl	__CutsceneEnd
.Le30:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2008ccc
