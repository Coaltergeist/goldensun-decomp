	.include "macros.inc"

.thumb_func_start OvlFunc_930_2008870
	push	{lr}
	sub	sp, #8
	mov	r3, #0x15
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #0x55
	mov	r1, #9
	mov	r2, #1
	bl	__Func_8010704
	mov	r0, #0x64
	mov	r1, #0
	mov	r2, #0
	bl	__Func_808edac
	mov	r1, #0xac
	mov	r2, #0x98
	mov	r0, #0xe
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_2008870

.thumb_func_start OvlFunc_930_20088a8
	push	{lr}
	sub	sp, #8
	mov	r3, #0x15
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #0x15
	mov	r1, #0x49
	mov	r2, #1
	bl	__Func_8010704
	mov	r1, #1
	mov	r2, #1
	mov	r0, #0x64
	neg	r1, r1
	neg	r2, r2
	bl	__Func_808edac
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_20088a8

.thumb_func_start OvlFunc_930_20088e0
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L900
	mov	r0, #0xf
	bl	__UI_Sanctum
	b	.L90e
.L900:
	ldr	r0, =0x1a1e
	bl	__MessageID
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage
.L90e:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_20088e0

.thumb_func_start OvlFunc_930_2008924
	push	{r5, lr}
	ldr	r0, =0x89a
	bl	__GetFlag
	cmp	r0, #0
	bne	.L932
	b	.La9e
.L932:
	bl	__CutsceneStart
	mov	r1, #0x86
	mov	r2, #0xd8
	lsl	r1, #18
	lsl	r2, #16
	mov	r0, #0xa
	bl	__MapActor_SetPos
	ldr	r0, =0x18b5
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_930_2008054
	str	r3, [r0, #0x6c]
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0xd
	bne	.L986
	mov	r1, #0xdc
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xc8
	bl	__Func_80921c4
.L986:
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	mov	r0, #0xa
	lsl	r1, #10
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_8092b08
	mov	r1, #0xcc
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #0xa
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xa
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	ldr	r1, =gScript_930__0200962c
	mov	r0, #0xa
	bl	__MapActor_SetBehavior
	mov	r0, #0x94
	mov	r1, #1
	mov	r2, #0xac
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_80933f8
	mov	r0, #0x8b
	lsl	r0, #4
	bl	__SetFlag
	mov	r0, #0xa
	bl	__MapActor_WaitScript
	bl	__Func_8093530
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #0
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_930__020096b8
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0
	bl	__MapActor_WaitScript
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, #0
	str	r5, [r0, #0x6c]
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0x78
	bl	__Func_8092adc
	mov	r0, #0xa
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0x3c
	mov	r0, #0
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	bl	__CutsceneEnd
.La9e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_2008924

