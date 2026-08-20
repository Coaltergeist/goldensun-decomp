	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_909_200a1bc
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_80933f8
	bl	__Func_8093554
	mov	r6, #0
	add	r0, #0x55
	strb	r6, [r0]
	mov	r1, #1
	mov	r0, #0x9d
	mov	r2, #0xbb
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #0
	bl	__Func_80933f8
	mov	r3, #0x2d
	str	r3, [sp, #4]
	mov	r5, #0x26
	mov	r0, #0x26
	mov	r1, #0x37
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x2e
	str	r3, [sp, #4]
	mov	r1, #0x37
	mov	r3, #1
	mov	r2, #4
	mov	r0, #0x2a
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xbe
	strh	r6, [r0, #6]
	ldr	r1, =0x2410000
	lsl	r2, #18
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #0x94
	mov	r2, #0xbe
	strh	r6, [r0, #6]
	lsl	r1, #18
	lsl	r2, #18
	mov	r0, #0x13
	bl	__MapActor_SetPos
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r3, #0x90
	lsl	r3, #8
	mov	r2, #0xbf
	strh	r3, [r0, #6]
	ldr	r1, =0x2960000
	mov	r0, #0x11
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x9a
	mov	r2, #0xb6
	mov	r0, #0x15
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x9e
	mov	r2, #0xb6
	mov	r0, #0x16
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xa2
	mov	r2, #0xb6
	mov	r0, #0x17
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xa6
	mov	r2, #0xb6
	lsl	r2, #18
	lsl	r1, #18
	mov	r0, #0x18
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x15
	bl	__MapActor_GetActor
	ldr	r5, .Lm909_2308	@ 0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x17
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x18
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	ldr	r5, =0xfffc0000
	str	r5, [r0, #0xc]
	mov	r0, #0x16
	bl	__MapActor_GetActor
	str	r5, [r0, #0xc]
	mov	r0, #0x17
	bl	__MapActor_GetActor
	b	.Lm909_2318

	.align	2, 0
.Lm909_2308:
	.word	0
	.pool

.Lm909_2318:
	str	r5, [r0, #0xc]
	mov	r0, #0x18
	bl	__MapActor_GetActor
	str	r5, [r0, #0xc]
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	sub	r3, #0x39
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x13
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r1, #0x9d
	mov	r2, #0xbf
	mov	r0, #0x13
	lsl	r1, #2
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r1, #0x99
	mov	r2, #0xbf
	lsl	r2, #2
	mov	r0, #0
	lsl	r1, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #1
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_80925cc
	ldr	r0, =0x1746
	bl	__MessageID
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r2, #0xc3
	mov	r0, #0x13
	ldr	r1, =0x26e
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0x13
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x11
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #0x11
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	ldr	r0, =0x12f
	bl	__ClearFlag
	ldr	r0, =0x202
	bl	__SetFlag
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_200a1bc

	.section .data
	.global .Lm909_299c
	.global .Lm909_29b4
	.global .Lm909_2c9c
	.global .Lm909_2ca8
	.global gOvl_0200a638

	.global gOvl_0200a5c0
	.global ActorCmd_ARRAY_909__0200a5c0
gOvl_0200a5c0:
ActorCmd_ARRAY_909__0200a5c0:
	.incbin "overlays/rom_79c738/orig.bin", 0x25c0, (0x25d4-0x25c0)
	.global gScript_909__0200a5d4
gScript_909__0200a5d4:
	.incbin "overlays/rom_79c738/orig.bin", 0x25d4, (0x2638-0x25d4)
gOvl_0200a638:
	.incbin "overlays/rom_79c738/orig.bin", 0x2638, (0x2920-0x2638)
	.global gOvl_0200a920
gOvl_0200a920:
	.incbin "overlays/rom_79c738/orig.bin", 0x2920, (0x299c-0x2920)
.Lm909_299c:
	.incbin "overlays/rom_79c738/orig.bin", 0x299c, (0x29b4-0x299c)
.Lm909_29b4:
	.incbin "overlays/rom_79c738/orig.bin", 0x29b4, (0x2c9c-0x29b4)
.Lm909_2c9c:
	.incbin "overlays/rom_79c738/orig.bin", 0x2c9c, (0x2ca8-0x2c9c)
.Lm909_2ca8:
	.incbin "overlays/rom_79c738/orig.bin", 0x2ca8
