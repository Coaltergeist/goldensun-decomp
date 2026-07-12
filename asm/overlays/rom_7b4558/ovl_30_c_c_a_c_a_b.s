	.include "macros.inc"

.thumb_func_start OvlFunc_927_2009150
	push	{r5, lr}
	mov	r0, #0xa
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0xa
	mov	r1, #1
	bl	OvlFunc_927_2008ea8
	mov	r3, #0xc0
	lsl	r3, #11
	mov	r0, #0xa
	mov	r1, #0x58
	mov	r2, #0x78
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
	mov	r0, #0xa
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xa
	mov	r5, #0xc0
	bl	__MapActor_Surprise
	lsl	r5, #10
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r3, r5
	mov	r0, #0xa
	mov	r1, #0x58
	mov	r2, #0x98
	bl	OvlFunc_927_2008d90
	mov	r1, #0xa
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r3, r5
	mov	r0, #0xa
	mov	r1, #0x78
	mov	r2, #0xc0
	bl	OvlFunc_927_2008d90
	mov	r1, #0xa
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r3, r5
	mov	r0, #0xa
	mov	r1, #0x78
	mov	r2, #0xf0
	bl	OvlFunc_927_2008d90
	mov	r1, #0xa
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	add	sp, #0x10
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009150

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

.thumb_func_start OvlFunc_927_2009328
	push	{r5, r6, lr}
	mov	r0, #0xc
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r6, #0xac
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0xc
	mov	r1, #1
	bl	OvlFunc_927_2008ea8
	lsl	r6, #1
	mov	r1, #0x86
	mov	r3, #0xe0
	mov	r2, r6
	lsl	r1, #2
	lsl	r3, #11
	mov	r0, #0xc
	bl	OvlFunc_927_2008d90
	ldr	r2, [r5, #0x10]
	mov	r3, #0x80
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
	mov	r0, #0xc
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Surprise
	mov	r5, #0xc0
	mov	r0, #0x3c
	bl	__CutsceneWait
	lsl	r5, #10
	mov	r1, #0x92
	mov	r3, r5
	mov	r2, r6
	lsl	r1, #2
	mov	r0, #0xc
	bl	OvlFunc_927_2008d90
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0x9e
	mov	r3, r5
	mov	r2, r6
	lsl	r1, #2
	mov	r0, #0xc
	bl	OvlFunc_927_2008d90
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0xaa
	mov	r3, r5
	mov	r2, r6
	lsl	r1, #2
	mov	r0, #0xc
	bl	OvlFunc_927_2008d90
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	ldr	r0, =0x302
	bl	__SetFlag
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009328
