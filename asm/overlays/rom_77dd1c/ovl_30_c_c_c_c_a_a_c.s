	.include "macros.inc"

.thumb_func_start OvlFunc_882_200be48
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	ldr	r0, =0x305
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3eca
	mov	r0, #8
	bl	__MapActor_SetIdle
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #6
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	blt	.L3e94
	mov	r0, #8
	mov	r1, #7
	bl	__MapActor_SetAnim
	b	.L3e9c
.L3e94:
	mov	r0, #8
	mov	r1, #8
	bl	__MapActor_SetAnim
.L3e9c:
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0xed2
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	ldr	r1, =gScript_882__0200cec8
	mov	r0, #8
	bl	__MapActor_SetBehavior
	mov	r0, #8
	mov	r1, #6
	bl	__MapActor_SetAnim
	b	.L3f96
.L3eca:
	mov	r0, #8
	bl	__MapActor_SetIdle
	mov	r3, #0x80
	lsl	r3, #9
	mov	r1, #0x80
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r2, #0
	mov	r0, #8
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r2, #6
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	blt	.L3ef6
	mov	r0, #8
	mov	r1, #7
	bl	__MapActor_SetAnim
	b	.L3efe
.L3ef6:
	mov	r0, #8
	mov	r1, #8
	bl	__MapActor_SetAnim
.L3efe:
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0xed1
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_Jump
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #6
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	blt	.L3f4c
	mov	r0, #8
	mov	r1, #7
	bl	__MapActor_SetAnim
	b	.L3f54
.L3f4c:
	mov	r0, #8
	mov	r1, #8
	bl	__MapActor_SetAnim
.L3f54:
	mov	r0, #2
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #2
	mov	r0, #8
	bl	__MapActor_Jump
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	ldr	r1, =gScript_882__0200cec8
	mov	r0, #8
	bl	__MapActor_SetBehavior
	mov	r0, #8
	mov	r1, #6
	bl	__MapActor_SetAnim
	ldr	r0, =0x305
	bl	__SetFlag
.L3f96:
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200be48

.thumb_func_start OvlFunc_882_200bfb0
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #0x16
	bl	__MapActor_SetIdle
	ldr	r0, =OvlFunc_882_200c5b8
	bl	__StopTask
	mov	r1, #0xf0
	mov	r2, #0xae
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0x14
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0xf9
	mov	r2, #0x9b
	strb	r3, [r0]
	lsl	r2, #19
	lsl	r1, #16
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0xed3
	bl	__MessageID
	ldr	r0, =0x1016
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xac
	ldr	r2, =0x4fe0000
	lsl	r1, #16
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r0, #0xa2
	mov	r3, #1
	ldr	r2, =0x5050000
	mov	r1, #0
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #4
	bl	__MapActor_DoAnim
	ldr	r0, =0x1016
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0x1016
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r0, #0x16
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x16
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0x16
	mov	r1, #0xa5
	ldr	r2, =0x514
	bl	__Func_80921c4
	mov	r2, #0xb3
	mov	r0, #0x16
	mov	r1, #0xc3
	lsl	r2, #3
	bl	__Func_80921c4
	ldr	r0, =0x842
	bl	__SetFlag
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200bfb0

.thumb_func_start OvlFunc_882_200c0f0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	mov	r2, #6
	mov	r3, #3
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r9, r2
	mov	r10, r3
	mov	r0, #0x10
	mov	r1, #0x60
	mov	r2, #0xb
	mov	r3, #0x49
	bl	__CopyMapTiles
	mov	r2, #0xa
	str	r2, [sp, #4]
	mov	r6, #0xe
	mov	r8, r2
	mov	r0, #0x10
	mov	r1, #0x60
	mov	r2, #0x22
	mov	r3, #0x44
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r5, #7
	mov	r0, #0x10
	mov	r1, #0x60
	mov	r2, #0x40
	mov	r3, #0x44
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, r9
	mov	r2, r10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #9
	mov	r1, #0x5f
	mov	r2, #0xb
	mov	r3, #0x49
	bl	__CopyMapTiles
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x28
	mov	r1, #0x5e
	mov	r2, #0x22
	mov	r3, #0x44
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r2, #8
	str	r2, [sp]
	mov	r8, r2
	mov	r0, #0x36
	mov	r1, #0x5e
	mov	r2, #0x40
	mov	r3, #0x44
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r5, #1
	mov	r0, #0x48
	mov	r1, #0x4b
	mov	r2, #0x48
	mov	r3, #0x4c
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x48
	mov	r1, #0x4b
	mov	r2, #0x4a
	mov	r3, #0x4c
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r2, r9
	mov	r3, #0x4b
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #7
	mov	r1, #0x4b
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r2, r8
	mov	r3, #0x47
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #8
	mov	r1, #0x46
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #0x48
	str	r3, [sp, #4]
	mov	r6, #9
	mov	r0, #8
	mov	r1, #0x46
	mov	r2, #2
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_8010704
	mov	r5, #0x49
	mov	r0, #8
	mov	r1, #0x46
	mov	r2, #2
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0xb
	mov	r1, #0x42
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xb
	str	r3, [sp]
	mov	r0, #0xc
	mov	r1, #0x42
	mov	r2, #1
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r2, r9
	mov	r3, #0x4a
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	bl	__Func_800fe9c
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200c0f0

