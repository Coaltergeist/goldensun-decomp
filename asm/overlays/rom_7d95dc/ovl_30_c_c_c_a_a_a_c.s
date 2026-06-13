	.include "macros.inc"

.thumb_func_start OvlFunc_953_200839c
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.L43a
	mov	r0, #0xf0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3c0
	ldr	r0, =0x225e
	bl	__MessageID
	b	.L430
.L3c0:
	ldr	r0, =0x225a
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L430
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xec
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	ldrh	r2, [r3]
	mov	r1, #0x80
	add	r2, #1
	strh	r2, [r3]
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L418
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L418:
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x10
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xf0
	lsl	r0, #2
	bl	__SetFlag
	b	.L448
.L430:
	mov	r0, #0x10
	mov	r1, #0
	bl	__ActorMessage
	b	.L448
.L43a:
	ldr	r0, =0x205e
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093054
.L448:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_200839c

.thumb_func_start OvlFunc_953_2008468
	push	{r5, lr}
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0xd
	bl	__MapActor_SetIdle
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092848
	ldr	r0, =0x2114
	bl	__MessageID
	mov	r0, #0xd
	bl	OvlFunc_953_2009c48
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, r5
	mov	r3, #0xb4
	add	r2, #0x64
	lsl	r3, #2
	strh	r3, [r2]
	add	r5, #0x66
	mov	r3, #0x70
	strh	r3, [r5]
	mov	r0, #0xd
	mov	r1, #2
	bl	__MapActor_SetBehavior
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2008468

.thumb_func_start OvlFunc_953_20084c8
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #0x81
	mov	r0, #0xe
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	ldr	r0, =0x2116
	bl	__MessageID
	mov	r0, #0xe
	bl	OvlFunc_953_2009c48
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xe
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_20084c8

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

.thumb_func_start OvlFunc_953_20085f0
	push	{lr}
	bl	__CutsceneStart
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_8092848
	ldr	r0, =0x211f
	bl	__MessageID
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #3
	mov	r0, #0x11
	bl	__MapActor_DoAnim
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #0x11
	bl	OvlFunc_953_2009c5c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_20085f0

.thumb_func_start OvlFunc_953_2008648
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0x12
	bl	__Func_8092848
	ldr	r0, =0x2122
	bl	__MessageID
	mov	r0, #0x12
	bl	OvlFunc_953_2009c48
	mov	r1, #0xd0
	mov	r0, #0x12
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0x12
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8092848
	mov	r0, #0x12
	bl	OvlFunc_953_2009c48
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x12
	bl	OvlFunc_953_2009c48
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #0x12
	bl	OvlFunc_953_2009c5c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2008648

.thumb_func_start OvlFunc_953_20086bc
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #8
	bl	__Func_8092848
	ldr	r0, =0x2125
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L6f6
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L6f6:
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_20086bc

.thumb_func_start OvlFunc_953_2008710
	push	{r5, r6, r7, lr}
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	bne	.L71e
	b	.Lda8
.L71e:
	bl	__CutsceneStart
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xc0
	mov	r0, #0x11
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r5, #0xc0
	mov	r1, #0x80
	lsl	r5, #6
	mov	r2, #0x28
	mov	r0, #0x11
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, r5
	mov	r0, #0x11
	bl	OvlFunc_953_2009c5c
	ldr	r0, =0x2267
	bl	__MessageID
	mov	r1, #2
	mov	r0, #0x11
	bl	__Func_809259c
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r0, #0x12
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r1, r5
	mov	r0, #0x14
	bl	__Func_8092adc
	bl	__Func_8093554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r1, =0x3333
	ldr	r0, =0x19999
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xac
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #0x12
	bl	__MapActor_Emote
	mov	r0, #0x12
	bl	OvlFunc_953_2009c48
	mov	r1, #3
	mov	r0, #0x11
	bl	__MapActor_DoAnim
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x13
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x13
	bl	OvlFunc_953_2009c5c
	mov	r0, #0x13
	bl	OvlFunc_953_2009c48
	mov	r2, #0x28
	mov	r0, #0x14
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r0, #0x14
	mov	r1, #0
	bl	OvlFunc_953_2009c5c
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xb0
	mov	r0, #0x11
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_80925cc
	mov	r6, #0x80
	mov	r1, #4
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	lsl	r6, #8
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x11
	mov	r1, r6
	bl	OvlFunc_953_2009c5c
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x13
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x11
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x12
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x13
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x11
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #0x13
	mov	r1, r5
	bl	__Func_8092adc
	mov	r0, #0x14
	mov	r1, r5
	bl	OvlFunc_953_2009c5c
	mov	r0, #0x11
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r1, #0x81
	mov	r0, #0x11
	lsl	r1, #1
	mov	r2, #0xac
	bl	__Func_80921c4
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xbc
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L938
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.L938:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L94c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.L94c:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L960
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.L960:
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #0xf6
	mov	r2, #0xc8
	bl	__Func_809218c
	mov	r1, #0x83
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xc8
	bl	__Func_809218c
	mov	r1, #0x8b
	mov	r2, #0xc8
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x11
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_8092c40
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Laec
	mov	r1, #3
	mov	r0, #0x11
	bl	__MapActor_DoAnim
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	ldr	r5, =ActorCmd_ARRAY_953__0200ad3c
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_RunScript
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0x11
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_953__0200ade4
	mov	r0, #0x11
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, r5
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	b	.Lc90

	.pool_aligned

.Laec:
	ldr	r7, =iwram_3001ebc
	mov	r3, #0xec
	ldr	r2, [r7]
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	mov	r1, #0x81
	add	r3, #1
	strh	r3, [r2]
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0x11
	bl	__MapActor_Emote
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0x12
	bl	__MapActor_Emote
	mov	r0, #0x12
	bl	OvlFunc_953_2009c48
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0x13
	bl	__MapActor_Emote
	mov	r0, #0x13
	bl	OvlFunc_953_2009c48
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #0x14
	bl	__MapActor_Emote
	mov	r0, #0x13
	bl	OvlFunc_953_2009c48
	mov	r1, #4
	mov	r0, #0x11
	bl	__MapActor_DoAnim
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	bl	OvlFunc_953_2009c48
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #3
	bl	OvlFunc_953_2009c48
	mov	r1, #0xb0
	mov	r0, #0x11
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r0, #0x11
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, r5
	bl	__Func_8092adc
	mov	r0, #0x11
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x12
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x13
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r0, #3
	bl	OvlFunc_953_2009c5c
	mov	r0, #3
	bl	OvlFunc_953_2009c48
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lca2
	mov	r1, #3
	mov	r0, #0x11
	bl	__MapActor_DoAnim
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	ldr	r5, =ActorCmd_ARRAY_953__0200ad3c
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_RunScript
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0x11
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_953__0200ade4
	mov	r0, #0x11
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, r5
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r3, [r7]
	mov	r2, #0xe4
.Lc90:
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x28
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	b	.Ld98
.Lca2:
	ldr	r2, [r7]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #2
	bl	OvlFunc_953_2009c48
	mov	r0, #3
	mov	r1, r6
	bl	OvlFunc_953_2009c5c
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	bl	OvlFunc_953_2009c48
	ldr	r5, =gScript_884__0200ad74
	mov	r0, #2
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_RunScript
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0
	bl	__MapActor_RunScript
	mov	r1, #0x83
	mov	r2, #0xbc
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r0, #1
	bl	OvlFunc_953_2009c5c
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #1
	bl	OvlFunc_953_2009c48
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0x11
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_953__0200ade4
	mov	r0, #0x11
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #1
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, r5
	mov	r0, #1
	bl	__MapActor_SetBehavior
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r3, [r7]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x28
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
.Ld98:
	mov	r0, #2
	bl	__Func_8091e9c
	ldr	r0, =0x93f
	bl	__SetFlag
	bl	__CutsceneEnd
.Lda8:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2008710

.thumb_func_start OvlFunc_953_2008dcc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lde2
	b	.L1160
.Lde2:
	ldr	r0, =0x235
	bl	__SetFlag
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xda
	mov	r2, #0x78
	mov	r0, #0
	lsl	r1, #2
	bl	__Func_80921c4
	mov	r3, #0xa0
	lsl	r3, #8
	mov	r10, r3
	mov	r0, #0
	mov	r1, r10
	bl	OvlFunc_953_2009c5c
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_80933d4
	mov	r0, #0xcc
	mov	r1, #1
	mov	r2, #0xe0
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	ldr	r0, =0x2125
	bl	__MessageID
	mov	r1, #0
	ldr	r0, =0x8008
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	mov	r7, r0
	cmp	r7, #0
	beq	.Le64
	b	.L1144
.Le64:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r3, #0xd0
	lsl	r3, #8
	mov	r8, r3
	mov	r0, #0xc
	mov	r1, r8
	bl	OvlFunc_953_2009c5c
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80925cc
	ldr	r0, =0x212b
	bl	__MessageID
	mov	r6, #0x80
	ldr	r0, =0x400c
	bl	OvlFunc_953_2009c48
	lsl	r6, #8
	mov	r0, #0x11
	mov	r1, #0
	bl	OvlFunc_953_2009c5c
	mov	r0, #0
	mov	r1, r6
	bl	OvlFunc_953_2009c5c
	mov	r0, #0x11
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xf
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0x14
	mov	r0, #0xf
	mov	r1, r8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0xf
	bl	__Func_80925cc
	mov	r0, #0xf
	bl	OvlFunc_953_2009c48
	mov	r0, #0x10
	mov	r1, r6
	bl	OvlFunc_953_2009c5c
	mov	r0, #0x10
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x11
	mov	r1, #2
	bl	__Func_80925cc
	mov	r5, #0xb0
	mov	r1, r10
	mov	r0, #0x11
	bl	OvlFunc_953_2009c5c
	lsl	r5, #8
	ldr	r0, =0x4011
	bl	OvlFunc_953_2009c48
	mov	r1, r5
	mov	r0, #0x12
	bl	OvlFunc_953_2009c5c
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_809259c
	ldr	r0, =0x4012
	bl	OvlFunc_953_2009c48
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #0xb
	bl	OvlFunc_953_2009c5c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xb
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_809259c
	ldr	r0, =0x800b
	bl	OvlFunc_953_2009c48
	mov	r0, #0xd
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xe
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r1, r5
	mov	r0, #0x10
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x10
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xd
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r0, #0xe
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r2, =0xcccc
	mov	r0, #0x10
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_911__0200ae20
	mov	r0, #0xd
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_953__0200aed4
	mov	r0, #0x10
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xf
	mov	r1, r8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #0x11
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, r10
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xc
	mov	r1, r8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r1, r5
	mov	r0, #0x12
	bl	__Func_8092adc
	ldr	r1, =gScript_953__0200ae5c
	mov	r0, #0xe
	bl	__MapActor_RunScript
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #0xb
	mov	r1, r6
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xca
	mov	r1, #1
	mov	r2, #0xac
	mov	r3, #1
	lsl	r2, #15
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #8
	bl	OvlFunc_953_2009c48
	mov	r1, #0x80
	lsl	r1, #9
	mov	r2, r6
	mov	r0, #8
	bl	__MapActor_SetSpeed
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0xc6
	strb	r3, [r0]
	lsl	r1, #2
	mov	r2, #0x48
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, #8
	bl	OvlFunc_953_2009c5c
	mov	r0, #0xd
	bl	__MapActor_SetIdle
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r2, r0
	mov	r3, r2
	add	r3, #0x64
	str	r7, [r2, #0x6c]
	strh	r7, [r3]
	add	r3, #2
	strh	r7, [r3]
	mov	r3, #0x80
	lsl	r3, #24
	str	r7, [r2, #0x24]
	str	r7, [r2, #0x28]
	str	r7, [r2, #0x2c]
	str	r3, [r2, #0x38]
	str	r3, [r2, #0x3c]
	str	r3, [r2, #0x40]
	mov	r0, #1
	bl	__WaitFrames
	ldr	r5, =gScript_953__0200af24
	mov	r0, #0xf
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0xd
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0x11
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0xe
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0x10
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0x12
	bl	__MapActor_SetBehavior
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0x42
	bl	__Func_8091e9c
	b	.L115c
.L1144:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__ActorMessage
.L115c:
	bl	__CutsceneEnd
.L1160:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2008dcc

