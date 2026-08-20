	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_200975c
	push	{r5, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xd8
	lsl	r2, #17
	mov	r3, #1
	ldr	r0, =0x1190000
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r0, =0x1528
	mov	r1, #1
	bl	__Func_801776c
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	bne	.Lm947_185c
	mov	r0, #0xe8
	bl	__PlaySound
	mov	r2, #0x18
	mov	r1, #0x54
	ldr	r0, =.Lm947_2da8
	bl	__Func_8010560
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xf0
	bl	__PlaySound
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_8092b08
	mov	r0, #0x10
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x10
	bl	__MapActor_GetActor
	ldr	r3, =0xffe00000
	mov	r1, #0x88
	mov	r2, #0xd0
	str	r3, [r0, #0xc]
	lsl	r2, #17
	mov	r0, #0x10
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r0, #0x10
	mov	r1, #1
	bl	__MapActor_SetAnim
	ldr	r0, =.Lm947_2dfc
	mov	r1, #0x50
	mov	r2, #0x18
	bl	__Func_8010560
	ldr	r0, =.Lm947_2e50
	mov	r1, #0x50
	mov	r2, #0x1c
	bl	__Func_8010560
	mov	r3, #2
	mov	r2, #4
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x28
	mov	r2, #0x10
	mov	r3, #0x1b
	mov	r0, #0x41
	bl	__CopyMapTiles
	bl	OvlFunc_947_20095fc
	mov	r0, #9
	bl	OvlFunc_947_2008ec8
	mov	r0, #0xa
	bl	OvlFunc_947_2008ec8
	mov	r0, #0xb
	bl	OvlFunc_947_2008ec8
	mov	r0, #0xc
	bl	OvlFunc_947_2008ec8
	mov	r0, #0xd
	bl	OvlFunc_947_2008ec8
	mov	r0, #0xe
	bl	OvlFunc_947_2008ec8
	mov	r0, #0xf
	bl	OvlFunc_947_2008ec8
	mov	r3, #0x18
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x18
	mov	r1, #3
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	b	.Lm947_190c
.Lm947_185c:
	mov	r0, #0xe8
	bl	__PlaySound
	mov	r1, #0x54
	mov	r2, #0x18
	ldr	r0, =.Lm947_2dd2
	bl	__Func_8010560
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xe6
	bl	__PlaySound
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0x10
	bl	__MapActor_GetActor
	ldr	r3, =0xffe00000
	mov	r1, #0x88
	mov	r2, #0xda
	str	r3, [r0, #0xc]
	lsl	r2, #17
	mov	r0, #0x10
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r0, #0x10
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r3, #2
	mov	r2, #4
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0x1b
	mov	r0, #0x41
	mov	r1, #0x2d
	mov	r2, #0x10
	bl	__CopyMapTiles
	mov	r1, #0x50
	mov	r2, #0x18
	ldr	r0, =.Lm947_2e26
	bl	__Func_8010560
	bl	OvlFunc_947_20095fc
	mov	r0, #9
	bl	OvlFunc_947_2008f58
	mov	r0, #0xa
	bl	OvlFunc_947_2008f58
	mov	r0, #0xb
	bl	OvlFunc_947_2008f58
	mov	r0, #0xc
	bl	OvlFunc_947_2008f58
	mov	r0, #0xd
	bl	OvlFunc_947_2008f58
	mov	r0, #0xe
	bl	OvlFunc_947_2008f58
	mov	r0, #0xf
	bl	OvlFunc_947_2008f58
	mov	r3, #0x18
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x18
	mov	r1, #4
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r0, #0x80
	lsl	r0, #2
	bl	__ClearFlag
.Lm947_190c:
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200975c

