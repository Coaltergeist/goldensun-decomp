	.include "macros.inc"

.thumb_func_start OvlFunc_930_2008180
	push	{lr}
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r1, #0x43
	mov	r2, #6
	ldr	r0, =.L1788
	bl	__Func_8010560
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0x10
	bl	__CutsceneWait
	mov	r0, #2
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_2008180

.thumb_func_start OvlFunc_930_20081ec
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r1, #0x88
	mov	r2, #0xa8
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x90
	mov	r2, #0xc8
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xa0
	mov	r2, #0xc0
	mov	r0, #1
	lsl	r1, #16
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0xc8
	mov	r0, #2
	lsl	r1, #16
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xe0
	mov	r2, #0xc0
	mov	r0, #3
	lsl	r1, #15
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #3
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x41
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x19e9
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L400
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	b	.L464

	.pool_aligned

.L400:
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
.L464:
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0x1e
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0xbc
	bl	__PlaySound
	ldr	r0, =.L1788
	mov	r1, #0x43
	mov	r2, #6
	bl	__Func_8010560
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #8
	mov	r1, #0x88
	mov	r2, #0x88
	bl	__Func_80921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r2, #6
	mov	r1, #0x43
	ldr	r0, =.L179e
	bl	__Func_8010560
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	__Func_809202c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8093054
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r0, #2
	mov	r1, #0x80
	mov	r2, #0xb8
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #0x90
	mov	r2, #0xc8
	bl	__Func_809218c
	mov	r0, #2
	mov	r1, #0x90
	mov	r2, #0xc8
	bl	__Func_809218c
	mov	r1, #0x90
	mov	r2, #0xc8
	mov	r0, #3
	bl	__Func_809218c
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_SetPos
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_SetPos
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_20081ec

.thumb_func_start OvlFunc_930_200884c
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	ldr	r0, =0x1956
	mov	r1, #1
	bl	__Func_801776c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_200884c

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

