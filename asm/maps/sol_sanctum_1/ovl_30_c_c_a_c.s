	.include "macros.inc"

.thumb_func_start OvlFunc_890_2008238
	push	{lr}
	ldr	r0, =0x80b
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_25a
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	bl	__CopyMapTiles
.Lm890_25a:
	ldr	r0, =0x80c
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_278
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1c
	mov	r2, #0x24
	mov	r3, #0xa
	bl	__CopyMapTiles
.Lm890_278:
	ldr	r0, =0x80d
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_296
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1d
	mov	r2, #0x22
	mov	r3, #0xb
	bl	__CopyMapTiles
.Lm890_296:
	ldr	r0, =0x80e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_2b4
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1d
	mov	r2, #0x24
	mov	r3, #0xb
	bl	__CopyMapTiles
.Lm890_2b4:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2008238

.thumb_func_start OvlFunc_890_20082cc
	push	{lr}
	ldr	r0, =0x826
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_2ee
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	bl	__CopyMapTiles
.Lm890_2ee:
	ldr	r0, =0x827
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_30c
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1c
	mov	r2, #0x24
	mov	r3, #0xa
	bl	__CopyMapTiles
.Lm890_30c:
	ldr	r0, =0x828
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_32a
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1d
	mov	r2, #0x22
	mov	r3, #0xb
	bl	__CopyMapTiles
.Lm890_32a:
	ldr	r0, =0x829
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_348
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1d
	mov	r2, #0x24
	mov	r3, #0xb
	bl	__CopyMapTiles
.Lm890_348:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_20082cc

.thumb_func_start OvlFunc_890_2008360
	push	{lr}
	ldr	r0, =0x80b
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_382
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1e
	mov	r2, #0x22
	mov	r3, #0xa
	bl	__CopyMapTiles
.Lm890_382:
	ldr	r0, =0x80c
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_3a0
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1e
	mov	r2, #0x24
	mov	r3, #0xa
	bl	__CopyMapTiles
.Lm890_3a0:
	ldr	r0, =0x80d
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_3be
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1f
	mov	r2, #0x22
	mov	r3, #0xb
	bl	__CopyMapTiles
.Lm890_3be:
	ldr	r0, =0x80e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_3dc
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1f
	mov	r2, #0x24
	mov	r3, #0xb
	bl	__CopyMapTiles
.Lm890_3dc:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2008360

.thumb_func_start OvlFunc_890_20083f4
	push	{lr}
	ldr	r0, =0x826
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_416
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1e
	mov	r2, #0x22
	mov	r3, #0xa
	bl	__CopyMapTiles
.Lm890_416:
	ldr	r0, =0x827
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_434
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1e
	mov	r2, #0x24
	mov	r3, #0xa
	bl	__CopyMapTiles
.Lm890_434:
	ldr	r0, =0x828
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_452
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1f
	mov	r2, #0x22
	mov	r3, #0xb
	bl	__CopyMapTiles
.Lm890_452:
	ldr	r0, =0x829
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_470
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1f
	mov	r2, #0x24
	mov	r3, #0xb
	bl	__CopyMapTiles
.Lm890_470:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_20083f4

.thumb_func_start OvlFunc_890_2008488
	push	{lr}
	ldr	r0, =0x814
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_498
	bl	OvlFunc_890_2008054
.Lm890_498:
	ldr     r0, =0x809
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_4a4
	b	.Lm890_9da
.Lm890_4a4:
	bl	__CutsceneStart
	ldr	r0, =0xfe3
	bl	__MessageID
	mov	r0, #0x11
	bl	__PlaySound
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x90
	mov	r2, #0xe8
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	bl	__PlaySound
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm890_502
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x10
	bl	__MapActor_SetPos
.Lm890_502:
	mov	r0, #0x10
	ldr	r1, =0x16666
	ldr	r2, =0xb333
	bl	__MapActor_SetSpeed
	mov	r1, #0x90
	lsl	r1, #1
	mov	r2, #0xce
	mov	r0, #0x10
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x10
	mov	r1, #4
	mov	r2, #0x3c
	bl	__MapActor_Jump
	mov	r0, #0x10
	mov	r1, #0x14
	bl	OvlFunc_890_200a5fc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm890_550
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lm890_550:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm890_564
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #5
	bl	__MapActor_SetPos
.Lm890_564:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0x8c
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__MapActor_TravelToAnim
	mov	r1, #0x94
	mov	r2, #0xf8
	mov	r0, #5
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0xd0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0x1e
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_80933d4
	mov	r0, #0x90
	mov	r1, #1
	mov	r2, #0xd5
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r0, #0x10
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r1, #0x90
	mov	r2, #0xb0
	lsl	r1, #1
	mov	r0, #0x10
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x10
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #0x10
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x10
	mov	r1, #0x14
	bl	OvlFunc_890_200a5fc
	mov	r2, #0x28
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x10
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x10
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x10
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x90
	mov	r2, #0xa
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #0xa
	bl	OvlFunc_890_200a5fc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xf0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #5
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, =0x2005
	mov	r1, #0xa
	bl	OvlFunc_890_200a5fc
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0x10
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x10
	bl	__MapActor_Surprise
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #1
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x10
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x10
	mov	r1, #0x14
	bl	OvlFunc_890_200a5fc
	mov	r2, #0x28
	mov	r0, #5
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r0, #5
	mov	r1, #0x3c
	bl	OvlFunc_890_200a5fc
	mov	r0, #0x10
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x10
	mov	r1, #0xa
	bl	OvlFunc_890_200a5fc
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x3c
	mov	r0, #5
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_890_200a5fc
	mov	r1, #3
	mov	r0, #0x10
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r2, #0x50
	mov	r0, #0x10
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xf0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x90
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x10
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x10
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm890_850
	ldr	r0, =_MSG_ff0
	bl	__MessageID
	b	.Lm890_860

	.pool_aligned

.Lm890_850:
	ldr	r0, =0xff1
	bl	__MessageID
	mov	r0, #0x10
	ldr	r1, =0x107
	mov	r2, #0x14
	bl	__MapActor_Emote
.Lm890_860:
	mov	r0, #0x10
	mov	r1, #4
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #6
	mov	r0, #0x10
	bl	OvlFunc_890_200a5fc
	ldr	r0, =0xff2
	bl	__MessageID
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #4
	bl	__MapActor_DoAnim
	ldr	r0, =0x2005
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_890_200a5fc
	mov	r0, #0x10
	mov	r1, #6
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r1, #0x82
	mov	r2, #0x14
	mov	r0, #0x10
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0x10
	mov	r1, #0x1e
	bl	OvlFunc_890_200a5fc
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x10
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0x10
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm890_958
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x10
	bl	__MapActor_TravelTo
.Lm890_958:
	mov	r0, #0x10
	bl	__MapActor_WaitMovement
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm890_988
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm890_988:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm890_9b8
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #5
	bl	__MapActor_TravelTo
.Lm890_9b8:
	mov	r0, #5
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #5
	bl	__MapActor_SetPos
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__SetFlag
	ldr	r0, =0x809
	bl	__SetFlag
	bl	__CutsceneEnd
.Lm890_9da:
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2008488

.thumb_func_start OvlFunc_890_20089f4
	push	{r5, r6, lr}
	ldr	r0, =0xff6
	bl	__MessageID
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xf4
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xb0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm890_a32
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x10
	bl	__MapActor_SetPos
.Lm890_a32:
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xec
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0xa8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #0x10
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xb5
	lsl	r2, #16
	mov	r3, #1
	neg	r1, r1
	ldr	r0, =0x23f0000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x78
	bl	__CutsceneWait
	ldr	r0, =0x1010
	mov	r1, #0x50
	bl	OvlFunc_890_200a5fc
	mov	r0, #0xf6
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r5, =0x4010
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x10
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, r5
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r2, #0x3c
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0x10
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xc0
	mov	r0, #0x10
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, r5
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm890_b08
	ldr	r0, =0xffa
	bl	__MessageID
	b	.Lm890_b0e
.Lm890_b08:
	ldr	r0, =0xffb
	bl	__MessageID
.Lm890_b0e:
	ldr	r5, =0x4010
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0xa
	mov	r0, r5
	bl	OvlFunc_890_200a5fc
	ldr	r6, =0xffc
	mov	r0, r6
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #0x10
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r0, #0x10
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0x10
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0x10
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r0, r5
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm890_b7e
	add	r0, r6, #1
	bl	__MessageID
	ldr	r0, =0x896
	bl	__SetFlag
	b	.Lm890_b84
.Lm890_b7e:
	add	r0, r6, #2
	bl	__MessageID
.Lm890_b84:
	ldr	r0, =0x4010
	mov	r1, #4
	bl	OvlFunc_890_200a5fc
	mov	r0, #0x10
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r1, #0xf3
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x83
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x90
	mov	r0, #0x10
	lsl	r1, #2
	mov	r2, #0x78
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r2, #2
	mov	r0, #0x10
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	ldr	r0, =0x80a
	bl	__SetFlag
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_20089f4

.thumb_func_start OvlFunc_890_2008c00
	push	{r5, lr}
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r0, =0x809
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_c16
	b	.Lm890_d80
.Lm890_c16:
	ldr	r0, =0x814
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_c26
	bl	OvlFunc_890_2008108
	b	.Lm890_d80
.Lm890_c26:
	ldr	r0, =0x819
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_c32
	b	.Lm890_d80
.Lm890_c32:
	bl	__CutsceneStart
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetAnim
	ldr	r0, =_MSG_1000
	bl	__MessageID
	mov	r0, #0x81
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_c5a
	ldr	r0, =0x80a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_c84
.Lm890_c5a:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm890_c6e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x10
	bl	__MapActor_SetPos
.Lm890_c6e:
	mov	r0, #4
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	b	.Lm890_cbc
.Lm890_c84:
	mov	r0, #0x81
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_c9a
	mov	r2, #0xaa
	ldr	r3, [r5, #8]
	lsl	r2, #17
	cmp	r3, r2
	ble	.Lm890_cbc
.Lm890_c9a:
	mov	r1, #0xc4
	mov	r2, #0xa8
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #0x10
	bl	__MapActor_SetPos
	mov	r0, #4
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
.Lm890_cbc:
	mov	r0, #0x81
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_cd2
	mov	r2, #0xaa
	ldr	r3, [r5, #8]
	lsl	r2, #17
	cmp	r3, r2
	ble	.Lm890_ce0
.Lm890_cd2:
	mov	r1, #0x90
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0xe8
	bl	__MapActor_TravelToAnimWait
	b	.Lm890_ce6
.Lm890_ce0:
	ldr	r0, =0x80a
	bl	__GetFlag
.Lm890_ce6:
	mov	r1, #0x90
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0xe8
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x81
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_d32
	ldr	r0, =0x80a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_d70
.Lm890_d32:
	mov	r0, #0x10
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm890_d52
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x10
	bl	__MapActor_TravelTo
.Lm890_d52:
	mov	r0, #0x10
	bl	__MapActor_WaitMovement
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0x90
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xe8
	bl	__MapActor_TravelToAnimWait
	b	.Lm890_d7c
.Lm890_d70:
	mov	r1, #0x90
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__MapActor_TravelToAnimWait
.Lm890_d7c:
	bl	__CutsceneEnd
.Lm890_d80:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2008c00

.thumb_func_start OvlFunc_890_2008d9c
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Random
	mov	r3, #3
	and	r0, r3
	cmp	r0, #0
	bne	.Lm890_dae
	b	.Lm890_eaa
.Lm890_dae:
	ldr	r6, =.Lm890_2de4
	ldrh	r5, [r6]
	cmp	r5, #2
	beq	.Lm890_e0c
	cmp	r5, #2
	bgt	.Lm890_dc4
	cmp	r5, #0
	beq	.Lm890_dd2
	cmp	r5, #1
	beq	.Lm890_dee
	b	.Lm890_e8c
.Lm890_dc4:
	cmp	r5, #4
	beq	.Lm890_e4c
	cmp	r5, #4
	blt	.Lm890_e2c
	cmp	r5, #0x50
	beq	.Lm890_e78
	b	.Lm890_e8c
.Lm890_dd2:
	mov	r0, #0xbb
	bl	__PlaySound
	mov	r3, #1
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x21
	bl	__CopyMapTiles
	b	.Lm890_e8c
.Lm890_dee:
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x21
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x22
	b	.Lm890_e70
.Lm890_e0c:
	mov	r5, #1
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x22
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x23
	b	.Lm890_e70
.Lm890_e2c:
	mov	r5, #1
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x23
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x24
	b	.Lm890_e70
.Lm890_e4c:
	ldr	r2, =.Lm890_2de8
	mov	r3, #2
	str	r3, [r2]
	mov	r5, #1
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x24
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x1e
	mov	r3, #0x25
.Lm890_e70:
	str	r5, [sp]
	bl	__CopyMapTiles
	b	.Lm890_e8c
.Lm890_e78:
	mov	r3, #1
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x31
	mov	r2, #0x1e
	mov	r3, #0x21
	bl	__CopyMapTiles
.Lm890_e8c:
	ldrh	r3, [r6]
	add	r3, #1
	strh	r3, [r6]
	ldrh	r5, [r6]
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	add	r3, #0x5a
	cmp	r5, r3
	bls	.Lm890_eaa
	ldr	r3, .Lm890_ec8	@ 0
	strh	r3, [r6]
.Lm890_eaa:
	ldr	r5, =.Lm890_2de8
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lm890_eec
	cmp	r3, #2
	bne	.Lm890_ed4
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
	b	.Lm890_ee6

	.align	2, 0
.Lm890_ec8:
	.word	0
	.pool

.Lm890_ed4:
	cmp	r3, #1
	bne	.Lm890_ee6
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
.Lm890_ee6:
	ldr	r3, [r5]
	sub	r3, #1
	str	r3, [r5]
.Lm890_eec:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2008d9c

.thumb_func_start OvlFunc_890_2008ef8
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Random
	mov	r3, #3
	and	r0, r3
	cmp	r0, #0
	bne	.Lm890_f0a
	b	.Lm890_1006
.Lm890_f0a:
	ldr	r6, =.Lm890_2ddc
	ldrh	r5, [r6]
	cmp	r5, #2
	beq	.Lm890_f68
	cmp	r5, #2
	bgt	.Lm890_f20
	cmp	r5, #0
	beq	.Lm890_f2e
	cmp	r5, #1
	beq	.Lm890_f4a
	b	.Lm890_fe8
.Lm890_f20:
	cmp	r5, #4
	beq	.Lm890_fa8
	cmp	r5, #4
	blt	.Lm890_f88
	cmp	r5, #0x5a
	beq	.Lm890_fd4
	b	.Lm890_fe8
.Lm890_f2e:
	mov	r0, #0xbb
	bl	__PlaySound
	mov	r3, #1
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x3b
	mov	r2, #0x2a
	mov	r3, #0x21
	bl	__CopyMapTiles
	b	.Lm890_fe8
.Lm890_f4a:
	mov	r0, #0x2f
	mov	r1, #0x3b
	mov	r2, #0x2a
	mov	r3, #0x21
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x3b
	mov	r2, #0x2a
	mov	r3, #0x22
	b	.Lm890_fcc
.Lm890_f68:
	mov	r5, #1
	mov	r0, #0x2f
	mov	r1, #0x3b
	mov	r2, #0x2a
	mov	r3, #0x22
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x3b
	mov	r2, #0x2a
	mov	r3, #0x23
	b	.Lm890_fcc
.Lm890_f88:
	mov	r5, #1
	mov	r0, #0x2f
	mov	r1, #0x3b
	mov	r2, #0x2a
	mov	r3, #0x23
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x3b
	mov	r2, #0x2a
	mov	r3, #0x24
	b	.Lm890_fcc
.Lm890_fa8:
	ldr	r2, =.Lm890_2de8
	mov	r3, #2
	str	r3, [r2]
	mov	r5, #1
	mov	r0, #0x2f
	mov	r1, #0x3b
	mov	r2, #0x2a
	mov	r3, #0x24
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x3b
	mov	r2, #0x2a
	mov	r3, #0x25
.Lm890_fcc:
	str	r5, [sp]
	bl	__CopyMapTiles
	b	.Lm890_fe8
.Lm890_fd4:
	mov	r3, #1
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x31
	mov	r2, #0x2a
	mov	r3, #0x21
	bl	__CopyMapTiles
.Lm890_fe8:
	ldrh	r3, [r6]
	add	r3, #1
	strh	r3, [r6]
	ldrh	r5, [r6]
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	add	r3, #0x64
	cmp	r5, r3
	bls	.Lm890_1006
	ldr	r3, .Lm890_1010	@ 0
	strh	r3, [r6]
.Lm890_1006:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0

	.align	2, 0
.Lm890_1010:
	.word	0
.func_end OvlFunc_890_2008ef8

.thumb_func_start OvlFunc_890_200901c
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Random
	mov	r3, #3
	and	r0, r3
	cmp	r0, #0
	bne	.Lm890_102e
	b	.Lm890_112a
.Lm890_102e:
	ldr	r6, =.Lm890_2de0
	ldrh	r5, [r6]
	cmp	r5, #2
	beq	.Lm890_108c
	cmp	r5, #2
	bgt	.Lm890_1044
	cmp	r5, #0
	beq	.Lm890_1052
	cmp	r5, #1
	beq	.Lm890_106e
	b	.Lm890_110c
.Lm890_1044:
	cmp	r5, #4
	beq	.Lm890_10cc
	cmp	r5, #4
	blt	.Lm890_10ac
	cmp	r5, #0x5f
	beq	.Lm890_10f8
	b	.Lm890_110c
.Lm890_1052:
	mov	r0, #0xbb
	bl	__PlaySound
	mov	r3, #1
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x3b
	mov	r2, #0x1f
	mov	r3, #0x24
	bl	__CopyMapTiles
	b	.Lm890_110c
.Lm890_106e:
	mov	r0, #0x30
	mov	r1, #0x3b
	mov	r2, #0x1f
	mov	r3, #0x24
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x3b
	mov	r2, #0x1f
	mov	r3, #0x25
	b	.Lm890_10f0
.Lm890_108c:
	mov	r5, #1
	mov	r0, #0x30
	mov	r1, #0x3b
	mov	r2, #0x1f
	mov	r3, #0x25
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x3b
	mov	r2, #0x1f
	mov	r3, #0x26
	b	.Lm890_10f0
.Lm890_10ac:
	mov	r5, #1
	mov	r0, #0x30
	mov	r1, #0x3b
	mov	r2, #0x1f
	mov	r3, #0x26
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x3b
	mov	r2, #0x1f
	mov	r3, #0x27
	b	.Lm890_10f0
.Lm890_10cc:
	ldr	r2, =.Lm890_2de8
	mov	r3, #2
	str	r3, [r2]
	mov	r5, #1
	mov	r0, #0x30
	mov	r1, #0x3b
	mov	r2, #0x1f
	mov	r3, #0x27
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x3b
	mov	r2, #0x1f
	mov	r3, #0x28
.Lm890_10f0:
	str	r5, [sp]
	bl	__CopyMapTiles
	b	.Lm890_110c
.Lm890_10f8:
	mov	r3, #1
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x31
	mov	r2, #0x1f
	mov	r3, #0x24
	bl	__CopyMapTiles
.Lm890_110c:
	ldrh	r3, [r6]
	add	r3, #1
	strh	r3, [r6]
	ldrh	r5, [r6]
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	add	r3, #0x69
	cmp	r5, r3
	bls	.Lm890_112a
	ldr	r3, .Lm890_1134	@ 0
	strh	r3, [r6]
.Lm890_112a:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0

	.align	2, 0
.Lm890_1134:
	.word	0
.func_end OvlFunc_890_200901c

.thumb_func_start OvlFunc_890_2009140
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Random
	mov	r3, #3
	and	r0, r3
	cmp	r0, #0
	bne	.Lm890_1152
	b	.Lm890_124e
.Lm890_1152:
	ldr	r6, =.Lm890_2dec
	ldrh	r5, [r6]
	cmp	r5, #2
	beq	.Lm890_11b0
	cmp	r5, #2
	bgt	.Lm890_1168
	cmp	r5, #0
	beq	.Lm890_1176
	cmp	r5, #1
	beq	.Lm890_1192
	b	.Lm890_1230
.Lm890_1168:
	cmp	r5, #4
	beq	.Lm890_11f0
	cmp	r5, #4
	blt	.Lm890_11d0
	cmp	r5, #0x55
	beq	.Lm890_121c
	b	.Lm890_1230
.Lm890_1176:
	mov	r0, #0xbb
	bl	__PlaySound
	mov	r3, #1
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x29
	mov	r3, #0x24
	bl	__CopyMapTiles
	b	.Lm890_1230
.Lm890_1192:
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x29
	mov	r3, #0x24
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x29
	mov	r3, #0x25
	b	.Lm890_1214
.Lm890_11b0:
	mov	r5, #1
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x29
	mov	r3, #0x25
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x29
	mov	r3, #0x26
	b	.Lm890_1214
.Lm890_11d0:
	mov	r5, #1
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x29
	mov	r3, #0x26
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x29
	mov	r3, #0x27
	b	.Lm890_1214
.Lm890_11f0:
	ldr	r2, =.Lm890_2de8
	mov	r3, #2
	str	r3, [r2]
	mov	r5, #1
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x29
	mov	r3, #0x27
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x3b
	mov	r2, #0x29
	mov	r3, #0x28
.Lm890_1214:
	str	r5, [sp]
	bl	__CopyMapTiles
	b	.Lm890_1230
.Lm890_121c:
	mov	r3, #1
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x31
	mov	r2, #0x29
	mov	r3, #0x24
	bl	__CopyMapTiles
.Lm890_1230:
	ldrh	r3, [r6]
	add	r3, #1
	strh	r3, [r6]
	ldrh	r5, [r6]
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	add	r3, #0x5f
	cmp	r5, r3
	bls	.Lm890_124e
	ldr	r3, .Lm890_1258	@ 0
	strh	r3, [r6]
.Lm890_124e:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0

	.align	2, 0
.Lm890_1258:
	.word	0
	.pool
.func_end OvlFunc_890_2009140

.thumb_func_start OvlFunc_890_2009264
	push	{r5, r6, lr}
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	sub	sp, #8
	bl	__Func_80933f8
	mov	r6, #8
	mov	r5, #3
	mov	r0, #0x1e
	mov	r1, #0x2b
	mov	r2, #0x20
	mov	r3, #0x28
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #1
	str	r3, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x2b
	mov	r2, #0x21
	mov	r3, #0x27
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x1e
	mov	r1, #0x2b
	mov	r2, #0x24
	mov	r3, #0x26
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #4
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x29
	mov	r2, #0x20
	mov	r3, #0x29
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r1, #1
	mov	r2, #0x9e
	mov	r3, #0
	ldr	r0, =0x23e0000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r2, #0xf0
	mov	r0, #0x10
	ldr	r1, =0x23e0000
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #1
	ldr	r0, =0x2051cc
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	ldr	r0, =0x201
	bl	__SetFlag
	mov	r0, #0x80
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x202
	bl	__ClearFlag
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xab
	bl	__PlaySound
	mov	r1, #1
	ldr	r0, =0x10005
	bl	__Func_8091200
	mov	r0, #8
	bl	__Func_8091254
	mov	r0, #0x20
	bl	__CutsceneWait
	mov	r1, #1
	ldr	r0, =0x2051cc
	bl	__Func_8091200
	mov	r0, #0x18
	bl	__Func_8091254
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2009264

.thumb_func_start OvlFunc_890_2009380
	push	{r5, lr}
	bl	__CutsceneStart
	bl	OvlFunc_890_2009264
	ldr	r0, =0x1018
	bl	__MessageID
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x10
	mov	r1, #6
	mov	r2, #0x1e
	bl	__MapActor_Jump
	mov	r1, #1
	mov	r2, #0xae
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	ldr	r0, =0x23e0000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x8010
	mov	r1, #0x14
	bl	OvlFunc_890_200a5fc
	mov	r5, #0
.Lm890_13d6:
	mov	r0, #0xf6
	bl	__PlaySound
	bl	OvlFunc_890_2008238
	mov	r0, #0xc
	bl	__CutsceneWait
	mov	r0, #0xf6
	bl	__PlaySound
	add	r5, #1
	bl	OvlFunc_890_2008360
	mov	r0, #0xc
	bl	__CutsceneWait
	cmp	r5, #4
	bne	.Lm890_13d6
	mov	r5, #0
.Lm890_13fe:
	mov	r0, #0xf6
	bl	__PlaySound
	bl	OvlFunc_890_2008238
	mov	r0, #8
	bl	__CutsceneWait
	mov	r0, #0xf6
	bl	__PlaySound
	add	r5, #1
	bl	OvlFunc_890_2008360
	mov	r0, #8
	bl	__CutsceneWait
	cmp	r5, #6
	bne	.Lm890_13fe
	mov	r5, #0
.Lm890_1426:
	mov	r0, #0xf6
	bl	__PlaySound
	bl	OvlFunc_890_2008238
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, #0xf6
	bl	__PlaySound
	add	r5, #1
	bl	OvlFunc_890_2008360
	mov	r0, #6
	bl	__CutsceneWait
	cmp	r5, #8
	bne	.Lm890_1426
	mov	r5, #0
.Lm890_144e:
	mov	r0, #0xf6
	bl	__PlaySound
	bl	OvlFunc_890_2008238
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #0xf6
	bl	__PlaySound
	add	r5, #1
	bl	OvlFunc_890_2008360
	mov	r0, #4
	bl	__CutsceneWait
	cmp	r5, #0xa
	bne	.Lm890_144e
	mov	r5, #0
.Lm890_1476:
	mov	r0, #0xf6
	bl	__PlaySound
	bl	OvlFunc_890_2008238
	mov	r0, #2
	bl	__CutsceneWait
	mov	r0, #0xf6
	bl	__PlaySound
	add	r5, #1
	bl	OvlFunc_890_2008360
	mov	r0, #2
	bl	__CutsceneWait
	cmp	r5, #0xc
	bne	.Lm890_1476
	bl	OvlFunc_890_2008238
	mov	r0, #6
	bl	__CutsceneWait
	ldr	r0, =0x8010
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0x90
	mov	r2, #0x8c
	mov	r0, #0x10
	lsl	r1, #2
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x813
	bl	__SetFlag
	mov	r0, #3
	bl	__Func_8091e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2009380

.thumb_func_start OvlFunc_890_2009510
	push	{r5, lr}
	sub	sp, #8
	bl	__CutsceneStart
	bl	OvlFunc_890_2009264
	ldr	r2, =0
	ldr	r3, =.Lm890_2de4
	strh	r2, [r3]
	ldr	r3, =.Lm890_2ddc
	strh	r2, [r3]
	ldr	r3, =.Lm890_2de0
	strh	r2, [r3]
	ldr	r3, =.Lm890_2dec
	ldr	r0, =0x1001
	strh	r2, [r3]
	bl	__MessageID
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x10
	mov	r1, #6
	mov	r2, #0x1e
	bl	__MapActor_Jump
	mov	r1, #1
	b	.Lm890_1574

	.pool_aligned

.Lm890_1574:
	mov	r2, #0xae
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	ldr	r0, =0x23e0000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x8010
	mov	r1, #0x14
	bl	OvlFunc_890_200a5fc
	mov	r5, #0
.Lm890_1596:
	mov	r0, #0xf6
	bl	__PlaySound
	bl	OvlFunc_890_2008238
	mov	r0, #0xc
	bl	__CutsceneWait
	mov	r0, #0xf6
	bl	__PlaySound
	add	r5, #1
	bl	OvlFunc_890_2008360
	mov	r0, #0xc
	bl	__CutsceneWait
	cmp	r5, #4
	bne	.Lm890_1596
	mov	r1, #6
	ldr	r0, =0x8010
	bl	OvlFunc_890_200a5fc
	ldr	r5, =.Lm890_2de4
	bl	__Random
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #2
	lsr	r3, #16
	add	r3, #0x14
	strh	r3, [r5]
	ldr	r5, =.Lm890_2ddc
	bl	__Random
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #2
	lsr	r3, #16
	add	r3, #0x14
	strh	r3, [r5]
	ldr	r5, =.Lm890_2de0
	bl	__Random
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #2
	lsr	r3, #16
	add	r3, #0x14
	strh	r3, [r5]
	ldr	r5, =.Lm890_2dec
	bl	__Random
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #2
	lsr	r3, #16
	ldr	r2, =.Lm890_2de8
	add	r3, #0x14
	strh	r3, [r5]
	mov	r1, #0xc8
	mov	r3, #0
	str	r3, [r2]
	lsl	r1, #4
	ldr	r0, =OvlFunc_890_2008d9c
	bl	__StartTask
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_890_2008ef8
	bl	__StartTask
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_890_200901c
	bl	__StartTask
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_890_2009140
	lsl	r1, #4
	bl	__StartTask
	mov	r5, #0
.Lm890_163c:
	mov	r0, #0xf6
	bl	__PlaySound
	bl	OvlFunc_890_2008238
	mov	r0, #5
	bl	__CutsceneWait
	mov	r0, #0xf6
	bl	__PlaySound
	add	r5, #1
	bl	OvlFunc_890_2008360
	mov	r0, #5
	bl	__CutsceneWait
	cmp	r5, #6
	bne	.Lm890_163c
	mov	r5, #0
.Lm890_1664:
	mov	r0, #0xf6
	bl	__PlaySound
	bl	OvlFunc_890_2008238
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #0xf6
	bl	__PlaySound
	add	r5, #1
	bl	OvlFunc_890_2008360
	mov	r0, #4
	bl	__CutsceneWait
	cmp	r5, #8
	bne	.Lm890_1664
	mov	r5, #0
.Lm890_168c:
	mov	r0, #0xf6
	bl	__PlaySound
	bl	OvlFunc_890_2008238
	mov	r0, #3
	bl	__CutsceneWait
	mov	r0, #0xf6
	bl	__PlaySound
	add	r5, #1
	bl	OvlFunc_890_2008360
	mov	r0, #3
	bl	__CutsceneWait
	cmp	r5, #0xa
	bne	.Lm890_168c
	mov	r5, #0
.Lm890_16b4:
	mov	r0, #0xf6
	bl	__PlaySound
	bl	OvlFunc_890_2008238
	mov	r0, #2
	bl	__CutsceneWait
	mov	r0, #0xf6
	bl	__PlaySound
	add	r5, #1
	bl	OvlFunc_890_2008360
	mov	r0, #2
	bl	__CutsceneWait
	cmp	r5, #0xc
	bne	.Lm890_16b4
	mov	r3, #4
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0xa
	mov	r0, #0x2d
	mov	r1, #0x1e
	mov	r2, #0x22
	bl	__CopyMapTiles
	mov	r2, #0x28
	mov	r0, #0x10
	mov	r1, #6
	bl	__MapActor_Jump
	ldr	r0, =0x8010
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0x90
	mov	r2, #0x8c
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #0x10
	bl	__MapActor_TravelToAnimWait
	ldr	r0, =OvlFunc_890_2008d9c
	bl	__StopTask
	ldr	r0, =OvlFunc_890_2008ef8
	bl	__StopTask
	ldr	r0, =OvlFunc_890_200901c
	bl	__StopTask
	ldr	r0, =OvlFunc_890_2009140
	bl	__StopTask
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #4
	bl	__Func_8091e9c
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2009510

.thumb_func_start OvlFunc_890_2009790
	push	{r5, lr}
	sub	sp, #8
	bl	__CutsceneStart
	ldr	r0, =0x80b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_17c8
	ldr	r0, =0x826
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_17c8
	ldr	r0, =0x826
	bl	__ClearFlag
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	bl	__CopyMapTiles
	b	.Lm890_17e2
.Lm890_17c8:
	ldr	r0, =0x80b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_17e2
	ldr	r0, =0x826
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_17e2
	ldr	r0, =0x826
	bl	__SetFlag
.Lm890_17e2:
	ldr	r0, =0x80c
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_1812
	ldr	r0, =0x827
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_1812
	ldr	r0, =0x827
	bl	__ClearFlag
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1c
	mov	r2, #0x24
	mov	r3, #0xa
	bl	__CopyMapTiles
	b	.Lm890_182c
.Lm890_1812:
	ldr	r0, =0x80c
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_182c
	ldr	r0, =0x827
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_182c
	ldr	r0, =0x827
	bl	__SetFlag
.Lm890_182c:
	ldr	r0, =0x80d
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_185c
	ldr	r0, =0x828
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_185c
	ldr	r0, =0x828
	bl	__ClearFlag
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1d
	mov	r2, #0x22
	mov	r3, #0xb
	bl	__CopyMapTiles
	b	.Lm890_1876
.Lm890_185c:
	ldr	r0, =0x80d
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_1876
	ldr	r0, =0x828
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_1876
	ldr	r0, =0x828
	bl	__SetFlag
.Lm890_1876:
	ldr	r0, =0x80e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_18a6
	ldr	r0, =0x829
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_18a6
	ldr	r0, =0x829
	bl	__ClearFlag
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1d
	mov	r2, #0x24
	mov	r3, #0xb
	bl	__CopyMapTiles
	b	.Lm890_18c0
.Lm890_18a6:
	ldr	r0, =0x80e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_18c0
	ldr	r0, =0x829
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_18c0
	ldr	r0, =0x829
	bl	__SetFlag
.Lm890_18c0:
	bl	OvlFunc_890_2009264
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x10
	mov	r1, #6
	mov	r2, #0x1e
	bl	__MapActor_Jump
	mov	r1, #1
	mov	r2, #0xae
	ldr	r0, =0x23e0000
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r5, #0
.Lm890_18f6:
	mov	r0, #0xf6
	bl	__PlaySound
	bl	OvlFunc_890_20082cc
	mov	r0, #0xc
	bl	__CutsceneWait
	mov	r0, #0xf6
	bl	__PlaySound
	add	r5, #1
	bl	OvlFunc_890_20083f4
	mov	r0, #0xc
	bl	__CutsceneWait
	cmp	r5, #4
	bne	.Lm890_18f6
	mov	r5, #0
.Lm890_191e:
	mov	r0, #0xf6
	bl	__PlaySound
	bl	OvlFunc_890_20082cc
	mov	r0, #8
	bl	__CutsceneWait
	mov	r0, #0xf6
	bl	__PlaySound
	add	r5, #1
	bl	OvlFunc_890_20083f4
	mov	r0, #8
	bl	__CutsceneWait
	cmp	r5, #6
	bne	.Lm890_191e
	mov	r5, #0
.Lm890_1946:
	mov	r0, #0xf6
	bl	__PlaySound
	bl	OvlFunc_890_20082cc
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, #0xf6
	bl	__PlaySound
	add	r5, #1
	bl	OvlFunc_890_20083f4
	mov	r0, #6
	bl	__CutsceneWait
	cmp	r5, #8
	bne	.Lm890_1946
	mov	r5, #0
.Lm890_196e:
	mov	r0, #0xf6
	bl	__PlaySound
	bl	OvlFunc_890_20082cc
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #0xf6
	bl	__PlaySound
	add	r5, #1
	bl	OvlFunc_890_20083f4
	mov	r0, #4
	bl	__CutsceneWait
	cmp	r5, #0xa
	bne	.Lm890_196e
	mov	r5, #0
.Lm890_1996:
	mov	r0, #0xf6
	bl	__PlaySound
	bl	OvlFunc_890_20082cc
	mov	r0, #2
	bl	__CutsceneWait
	mov	r0, #0xf6
	bl	__PlaySound
	add	r5, #1
	bl	OvlFunc_890_20083f4
	mov	r0, #2
	bl	__CutsceneWait
	cmp	r5, #0xc
	bne	.Lm890_1996
	mov	r0, #0xf6
	bl	__PlaySound
	bl	OvlFunc_890_20082cc
	mov	r0, #6
	bl	__CutsceneWait
	ldr	r0, =0x822
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_19f6
	ldr	r5, =0x8010
	ldr	r0, =0x1025
	bl	__MessageID
	mov	r0, r5
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r0, #0x10
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, r5
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
.Lm890_19f6:
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #5
	bl	__Func_8091e9c
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2009790

.thumb_func_start OvlFunc_890_2009a58
	push	{lr}
	mov	r0, #0x81
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_1a68
	b	.Lm890_1bd2
.Lm890_1a68:
	bl	OvlFunc_890_200a5b0
	cmp	r0, #0
	bne	.Lm890_1a72
	b	.Lm890_1bd2
.Lm890_1a72:
	bl	__CutsceneStart
	mov	r2, #0x93
	mov	r0, #0x10
	ldr	r1, =0x2410000
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #7
	mov	r2, #1
	bl	__Func_8092adc
	mov	r1, #1
	mov	r2, #0xb8
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	ldr	r0, =0x23e0000
	bl	__Func_80933f8
	ldr	r0, =0x1027
	bl	__MessageID
	mov	r1, #0x90
	mov	r2, #0xe8
	mov	r0, #0
	lsl	r1, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0
	mov	r0, #0
	bl	__MapActor_SetAnim
	bl	__Func_8093530
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x90
	lsl	r1, #2
	mov	r2, #0x98
	mov	r0, #0x10
	bl	__MapActor_TravelToAnimWait
	mov	r0, #6
	bl	__CutsceneWait
	mov	r2, #0x1e
	mov	r0, #0x10
	mov	r1, #6
	bl	__MapActor_Jump
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #2
	bl	__CutsceneWait
	mov	r0, #0x10
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x90
	mov	r2, #0xb8
	lsl	r1, #2
	mov	r0, #0x10
	bl	__MapActor_TravelToAnimWait
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x4010
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r1, #0x90
	mov	r2, #0xd0
	lsl	r1, #2
	mov	r0, #0x10
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r0, #0x10
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm890_1bb6
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x10
	bl	__MapActor_TravelTo
.Lm890_1bb6:
	mov	r0, #0x10
	bl	__MapActor_WaitMovement
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x81
	lsl	r0, #4
	bl	__SetFlag
	bl	__CutsceneEnd
.Lm890_1bd2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2009a58

.thumb_func_start OvlFunc_890_2009be8
	push	{lr}
	mov	r0, #0x15
	bl	__PlaySound
	mov	r1, #0xbc
	mov	r2, #0xb8
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0xbc
	mov	r2, #0xb8
	mov	r0, #0x10
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xc4
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0xa8
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0x10
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x10
	bl	__MapActor_SetAnim
	ldr	r0, =0x102b
	bl	__MessageID
	mov	r2, #0x1e
	mov	r0, #0x10
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, #0x10
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r1, #0xbc
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0xb8
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc9
	lsl	r1, #19
	mov	r2, r1
	mov	r0, #0x10
	bl	__MapActor_SetPos
	mov	r0, #4
	bl	__CutsceneWait
	ldr	r0, =0x811
	bl	__SetFlag
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2009be8

.thumb_func_start OvlFunc_890_2009ca8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, =0x811
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_1cbc
	b	.Lm890_20fc
.Lm890_1cbc:
	bl	__CutsceneStart
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0x94
	mov	r3, #1
	ldr	r0, =0x11f0000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r1, #0x90
	mov	r2, #0x78
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0x1e
	bl	__MapActor_Jump
	mov	r1, #0x90
	mov	r2, #0xf0
	mov	r0, #0x10
	lsl	r1, #17
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x8a
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x88
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x84
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x88
	bl	__MapActor_TravelToAnim
	mov	r1, #0x9c
	mov	r2, #0x88
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x10
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0xb0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0x10
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r0, =0x819
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_1d72
	mov	r0, #0xdc
	bl	__PlaySound
.Lm890_1d72:
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x819
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_1d84
	b	.Lm890_1eb2
.Lm890_1d84:
	mov	r2, #3
	str	r2, [sp, #4]
	mov	r5, #2
	mov	r8, r2
	mov	r0, #0x24
	mov	r1, #0x3e
	mov	r2, #0x11
	mov	r3, #0x24
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r6, #1
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x26
	mov	r0, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x26
	mov	r1, #0x3e
	mov	r2, #0x11
	mov	r3, #0x24
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x27
	mov	r0, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #0x28
	mov	r1, #0x3e
	mov	r2, #0x11
	mov	r3, #0x24
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x27
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #0x28
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r0, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x2a
	mov	r1, #0x3e
	mov	r2, #0x11
	mov	r3, #0x24
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x28
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x29
	mov	r0, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x29
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x2a
	mov	r0, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x2a
	mov	r0, #0
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #9
	bl	__Func_80118a8
	mov	r0, #0xa
	bl	__Func_80118a8
	ldr	r0, =0x819
	bl	__SetFlag
.Lm890_1eb2:
	mov	r2, #0x1e
	mov	r0, #0x10
	mov	r1, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x10
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x10
	mov	r1, #1
	bl	__MapActor_SetAnim
	ldr	r5, =0x8010
	mov	r1, #0
	mov	r0, #0
	bl	__MapActor_SetAnim
	ldr	r0, =0x102e
	bl	__MessageID
	mov	r0, r5
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r0, #0x10
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x10
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r1, =0x1333
	mov	r6, r0
	ldr	r0, =0x9999
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xe4
	mov	r3, #1
	ldr	r0, =0x11f0000
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_80933f8
	mov	r1, #0x90
	lsl	r1, #1
	mov	r2, #0x78
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__MapActor_SetSpeed
	mov	r1, r6
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	mov	r3, r6
	add	r3, #0x55
	mov	r7, #0
	strb	r7, [r3]
	mov	r0, #0xc9
	bl	__PlaySound
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_8092950
	ldr	r7, [r6, #0x50]
	mov	r3, r7
	mov	r5, #0
	add	r3, #0x26
	strb	r5, [r3]
.Lm890_1f88:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0x3333
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #1
	add	r5, #1
	bl	__WaitFrames
	cmp	r5, #0x78
	bne	.Lm890_1f88
	mov	r0, #0xbe
	bl	__PlaySound
	mov	r5, #0
.Lm890_1fa4:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0x1999
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0x18]
	ldr	r2, =0xfffffc00
	add	r3, r2
	str	r3, [r7, #0x18]
	mov	r0, #1
	add	r5, #1
	bl	__WaitFrames
	cmp	r5, #0x3c
	bne	.Lm890_1fa4
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r1, #0x90
	mov	r2, #0x78
	mov	r0, #0x10
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0x10
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	mov	r0, #0x10
	bl	__MapActor_SetSpeed
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r1, r6
	add	r1, #0x5a
	ldrb	r3, [r1]
	mov	r2, #0xfe
	and	r2, r3
	mov	r3, r6
	add	r3, #0x55
	mov	r5, #0
	strb	r2, [r1]
	mov	r0, #0xc9
	strb	r5, [r3]
	bl	__PlaySound
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #1
	bl	__Func_8092950
	ldr	r7, [r6, #0x50]
	mov	r3, r7
	add	r3, #0x26
	strb	r5, [r3]
.Lm890_2040:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0x3333
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #1
	add	r5, #1
	bl	__WaitFrames
	cmp	r5, #0x78
	bne	.Lm890_2040
	mov	r0, #0xbe
	bl	__PlaySound
	mov	r5, #0
.Lm890_205c:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0x1999
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0x18]
	ldr	r2, =0xfffffc00
	add	r3, r2
	str	r3, [r7, #0x18]
	mov	r0, #1
	add	r5, #1
	bl	__WaitFrames
	cmp	r5, #0x3c
	bne	.Lm890_205c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x10
	bl	__MapActor_SetPos
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	b	.Lm890_20c8

	.pool_aligned

.Lm890_20c8:
	add	r2, r1, r3
	add	r3, #0x43
	str	r3, [r2]
	sub	r3, #0x3b
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #7
	bl	__Func_8091e9c
	bl	__CutsceneEnd
.Lm890_20fc:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2009ca8

.thumb_func_start SolSanctum1_MapInit
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #1
	sub	sp, #8
	bl	__WaitFrames
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	ldr	r0, =0x809
	mov	r5, #0
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_214c
	ldr	r0, =0x814
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_214c
	ldr	r0, =0x819
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_214c
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__SetFlag
.Lm890_214c:
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091220
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_218e
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_216e
	ldr	r0, =0x2051cc
	b	.Lm890_217a
.Lm890_216e:
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_21ae
	ldr	r0, =0x202db1
.Lm890_217a:
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__WaitFrames
	b	.Lm890_21ae
.Lm890_218e:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x80a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_21ae
	mov	r1, #0x90
	mov	r2, #0xf0
	mov	r0, #0x10
	lsl	r1, #18
	lsl	r2, #15
	bl	__MapActor_SetPos
.Lm890_21ae:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #4
	bne	.Lm890_21d4
	ldr	r0, =0x813
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_2220
	bl	OvlFunc_890_2009380
	ldr	r0, =0x813
	bl	__SetFlag
	b	.Lm890_221e
.Lm890_21d4:
	cmp	r3, #5
	bne	.Lm890_2206
	ldr	r0, =0x812
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_2220
	bl	OvlFunc_890_2009510
	ldr	r0, =0x812
	bl	__SetFlag
	ldr	r0, =0x80b
	bl	__ClearFlag
	ldr	r0, =0x80c
	bl	__ClearFlag
	ldr	r0, =0x80d
	bl	__ClearFlag
	ldr	r0, =0x80e
	bl	__ClearFlag
	b	.Lm890_221e
.Lm890_2206:
	cmp	r3, #6
	bne	.Lm890_2220
	ldr	r0, =0x812
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_221e
	bl	OvlFunc_890_2009790
	ldr	r0, =0x822
	bl	__SetFlag
.Lm890_221e:
	mov	r5, #1
.Lm890_2220:
	ldr	r0, =0x80b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_2230
	ldr	r0, =0x826
	bl	__SetFlag
.Lm890_2230:
	ldr	r0, =0x80c
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_2240
	ldr	r0, =0x827
	bl	__SetFlag
.Lm890_2240:
	ldr	r0, =0x80d
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_2250
	ldr	r0, =0x828
	bl	__SetFlag
.Lm890_2250:
	ldr	r0, =0x80e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_2260
	ldr	r0, =0x829
	bl	__SetFlag
.Lm890_2260:
	mov	r0, #4
	bl	__WaitFrames
	cmp	r5, #0
	beq	.Lm890_226c
	b	.Lm890_2510
.Lm890_226c:
	bl	OvlFunc_890_200a5b0
	cmp	r0, #0
	bne	.Lm890_2276
	b	.Lm890_23e4
.Lm890_2276:
	mov	r3, #0xc
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x2c
	mov	r2, #0x1e
	mov	r3, #0x26
	bl	__CopyMapTiles
	mov	r3, #1
	str	r3, [sp, #4]
	mov	r5, #4
	mov	r0, #0x1e
	mov	r1, #0x2c
	mov	r2, #0x22
	mov	r8, r3
	mov	r3, #0x25
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r6, #8
	mov	r0, #0xe
	mov	r1, #0x29
	mov	r2, #0x20
	mov	r3, #0x29
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r7, #2
	mov	r0, #0x2d
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	str	r5, [sp]
	str	r7, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x2d
	mov	r1, #0x1e
	mov	r2, #0x10
	mov	r3, #0xa
	str	r5, [sp]
	str	r7, [sp, #4]
	bl	__CopyMapTiles
	mov	r2, #0xe
	mov	r3, #0x29
	mov	r0, #0xe
	mov	r1, #0x2d
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #8
	beq	.Lm890_2380
	ldr	r0, =0x814
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_2380
	ldr	r0, =0x819
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_2362
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x27
	str	r7, [sp]
	bl	__CopyMapTiles
	mov	r5, #3
	mov	r0, #0x2a
	mov	r1, #0x3e
	mov	r2, #0x11
	mov	r3, #0x24
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x28
	str	r7, [sp]
	bl	__CopyMapTiles
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x29
	str	r7, [sp]
	bl	__CopyMapTiles
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x2a
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	b	.Lm890_2374
.Lm890_2362:
	mov	r3, #6
	str	r3, [sp, #4]
	mov	r0, #0x2c
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x25
	str	r7, [sp]
	bl	__CopyMapTiles
.Lm890_2374:
	mov	r0, #9
	bl	__Func_80118a8
	mov	r0, #0xa
	bl	__Func_80118a8
.Lm890_2380:
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm890_2510

	.pool_aligned

.Lm890_23e4:
	ldr	r0, =0x80b
	mov	r5, #0
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_2416
	mov	r5, #2
	mov	r6, #1
	mov	r0, #0x2d
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x2d
	mov	r1, #0x1e
	mov	r2, #0x10
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r5, #1
.Lm890_2416:
	ldr	r0, =0x80c
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_2446
	mov	r5, #2
	mov	r6, #1
	mov	r0, #0x2f
	mov	r1, #0x1c
	mov	r2, #0x24
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x2f
	mov	r1, #0x1e
	mov	r2, #0x12
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r5, #1
.Lm890_2446:
	ldr	r0, =0x80d
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_2476
	mov	r5, #2
	mov	r6, #1
	mov	r0, #0x2d
	mov	r1, #0x1d
	mov	r2, #0x22
	mov	r3, #0xb
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x2d
	mov	r1, #0x1f
	mov	r2, #0x10
	mov	r3, #0xb
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r5, #1
.Lm890_2476:
	ldr	r0, =0x80e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_24a6
	mov	r5, #2
	mov	r6, #1
	mov	r0, #0x2f
	mov	r1, #0x1d
	mov	r2, #0x24
	mov	r3, #0xb
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x2f
	mov	r1, #0x1f
	mov	r2, #0x12
	mov	r3, #0xb
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r5, #1
.Lm890_24a6:
	ldr	r0, =0x812
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_24b4
	cmp	r5, #0
	beq	.Lm890_24fc
.Lm890_24b4:
	mov	r6, #8
	mov	r5, #3
	mov	r0, #0x1e
	mov	r1, #0x2b
	mov	r2, #0x20
	mov	r3, #0x28
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #1
	str	r3, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x2b
	mov	r2, #0x21
	mov	r3, #0x27
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x1e
	mov	r1, #0x2b
	mov	r2, #0x24
	mov	r3, #0x26
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #4
	str	r3, [sp, #4]
	mov	r0, #0x24
	mov	r1, #0x3a
	mov	r2, #0x20
	mov	r3, #0x29
	str	r6, [sp]
	bl	__CopyMapTiles
.Lm890_24fc:
	mov	r3, #0x11
	mov	r2, #6
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xf
	mov	r1, #6
	mov	r2, #2
	mov	r3, #1
	bl	__Func_8010704
.Lm890_2510:
	ldr	r0, =0x309
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_254a
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #8
	bne	.Lm890_254a
	bl	OvlFunc_890_200a614
	ldr	r0, =0x309
	bl	__SetFlag
	mov	r3, #0x11
	mov	r2, #6
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xf
	mov	r1, #6
	mov	r2, #2
	mov	r3, #1
	bl	__Func_8010704
	b	.Lm890_2582
.Lm890_254a:
	ldr	r0, =0x814
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_2582
	mov	r0, #0x8d
	bl	__Func_8091ff0
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
	bl	__StartEarthquake
	mov	r3, #0x11
	mov	r2, #6
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xf
	mov	r1, #6
	mov	r2, #2
	mov	r3, #1
	bl	__Func_8010704
.Lm890_2582:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end SolSanctum1_MapInit

