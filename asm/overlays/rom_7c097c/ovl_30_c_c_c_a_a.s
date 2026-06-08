	.include "macros.inc"

.thumb_func_start OvlFunc_936_20083d8
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xffff9fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x7ffe0000
	lsl	r3, #16
	cmp	r3, r2
	bhi	.L3f8
	mov	r0, #0x17
	mov	r1, #0x17
	bl	__Func_80b0278
	b	.L40e
.L3f8:
	bl	__CutsceneStart
	ldr	r0, =0x1ad1
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x17
	bl	__Func_8093054
	bl	__CutsceneEnd
.L40e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_20083d8

.thumb_func_start OvlFunc_936_2008420
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xffffe000
	ldrh	r3, [r0, #6]
	add	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bls	.L442
	mov	r0, #0x18
	mov	r1, #0x18
	bl	__Func_80b0278
	b	.L458
.L442:
	bl	__CutsceneStart
	ldr	r0, =0x1ad5
	bl	__MessageID
	mov	r0, #0x18
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
.L458:
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_2008420

.thumb_func_start OvlFunc_936_2008464
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r7, [r3]
	bl	__CutsceneStart
	mov	r5, #8
	mov	r6, #0
.L472:
	mov	r0, r5
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L482
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
.L482:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L472
	mov	r3, #0xb6
	lsl	r3, #1
	add	r6, r7, r3
	mov	r3, #0
	ldrsh	r5, [r6, r3]
	mov	r0, #0x9e
	sub	r5, #1
	bl	__PlaySound
	lsl	r5, #3
	ldr	r0, =.L50e0
	add	r3, r5, #4
	ldrh	r1, [r0, r3]
	add	r3, r0
	ldrh	r2, [r3, #2]
	ldr	r0, [r0, r5]
	bl	__Func_8010560
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	lsl	r1, #8
	mov	r0, #0
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r2, #8
	mov	r1, #2
	neg	r2, r2
	mov	r0, #0
	bl	__Func_8092208
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	bl	__Func_8091e9c
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	bl	__CutsceneEnd
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_2008464

.thumb_func_start OvlFunc_936_2008504
	push	{r5, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r5, #2
	mov	r1, #0x17
	mov	r2, #0x2b
	mov	r3, #0xc
	mov	r0, #0x24
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #5
	bl	__WaitFrames
	mov	r3, #0xc
	mov	r1, #0x17
	mov	r2, #0x2b
	mov	r0, #0x27
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #5
	bl	__WaitFrames
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	lsl	r1, #8
	mov	r0, #0
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r2, #8
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #2
	bl	__Func_8091e9c
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_2008504

.thumb_func_start OvlFunc_936_2008590
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	ldr	r7, [r3]
	bl	__CutsceneStart
	mov	r0, #0x91
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.L5ae
	bl	.L151c
.L5ae:
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5bc
	bl	.L151c
.L5bc:
	ldr	r0, =.L4948
	bl	__LoadFieldActors
	mov	r1, #0xfc
	mov	r2, #0x88
	mov	r0, #0x14
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0x8e
	mov	r2, #0x84
	mov	r0, #0x1b
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0x8e
	mov	r2, #0x8c
	mov	r0, #0x1c
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0x96
	mov	r2, #0x84
	mov	r0, #0x1d
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0x96
	mov	r2, #0x8c
	mov	r0, #0x1e
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0x9e
	mov	r2, #0x84
	mov	r0, #0x20
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0x9e
	mov	r2, #0x8c
	mov	r0, #0x1f
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xa6
	mov	r2, #0x84
	mov	r0, #0x21
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xa6
	mov	r2, #0x8c
	mov	r0, #0x22
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xb6
	mov	r2, #0x88
	lsl	r1, #17
	lsl	r2, #17
	mov	r0, #0x15
	bl	__MapActor_SetPos
	mov	r0, #0x11
	bl	__PlaySound
	mov	r0, #0x14
	bl	__Func_8093304
	mov	r2, #0
	mov	r1, #1
	ldr	r0, =0x1a91
	bl	__Func_8019aa0
	mov	r0, #9
	bl	__PlaySound
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #9
	bne	.L6b4
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	b	.L6c6

	.pool_aligned

.L6b4:
	ldr	r0, =0x13333
	ldr	r1, =0x2666
	bl	__Func_80933d4
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
.L6c6:
	mov	r0, #0x14
	ldr	r1, =0x11999
	ldr	r2, =0x8ccc
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1b
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1c
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0x1d
	ldr	r1, =0xe666
	ldr	r2, =0x7333
	bl	__MapActor_SetSpeed
	mov	r0, #0x1e
	ldr	r1, =0xe666
	ldr	r2, =0x7333
	bl	__MapActor_SetSpeed
	mov	r0, #0x20
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0x1f
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0x21
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__MapActor_SetSpeed
	mov	r0, #0x22
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__MapActor_SetSpeed
	ldr	r2, =0x4ccc
	mov	r0, #0x15
	ldr	r1, =0x9999
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_936__0200bdc4
	mov	r0, #0x14
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x1b
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x1c
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x1d
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x1e
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x20
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x1f
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x21
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x22
	bl	__MapActor_SetBehavior
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r3, #0
	add	r6, #0x64
	strh	r3, [r6]
	mov	r0, #0x15
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0xba
	mov	r1, #1
	mov	r2, #0x88
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #16
	mov	r3, #1
	bl	__Func_80933f8
	mov	r0, #0x14
	bl	__MapActor_WaitScript
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
.L7b4:
	mov	r0, #1
	bl	__WaitFrames
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L7b4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x1b
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0x14
	mov	r0, #0x1b
	bl	__Func_8092adc
	ldr	r0, =0x1a92
	bl	__MessageID
	mov	r2, #0xa
	mov	r0, #0x1b
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x1c
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xb0
	mov	r2, #0xa
	mov	r0, #0x1c
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x1c
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r2, #0xa
	mov	r0, #0x1c
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x20
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x20
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0x1f
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0xb0
	mov	r0, #0x1f
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0x1f
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x1f
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x1f
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x1f
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #0x1f
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xb0
	mov	r0, #0x1f
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0x20
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x1f
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x20
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x14
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r2, #0
	mov	r8, r2
	mov	r2, #0x84
	strb	r3, [r0]
	mov	r1, #0xac
	lsl	r2, #1
	mov	r0, #0x14
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	mov	r1, #0x80
	strb	r3, [r0]
	lsl	r1, #8
	mov	r0, #0x1b
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x1c
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x20
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x1f
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #0x88
	and	r5, r3
	mov	r1, #0xac
	lsl	r2, #1
	strb	r5, [r0]
	mov	r0, #0x14
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #0x88
	orr	r6, r3
	strb	r6, [r0]
	mov	r1, #0xb4
	mov	r0, #0x14
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r2, #0
	mov	r0, #0x22
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r0, #0x22
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0x22
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	mov	r0, #0x22
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x21
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #0x21
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x21
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r2, #0xa
	mov	r0, #0x21
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x81
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0x14
	mov	r1, #2
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r2, #0x28
	mov	r0, #0x14
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0x15
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0x8d
	mov	r0, #0x15
	ldr	r1, =0x109
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r2, #0x8e
	mov	r0, #0x15
	mov	r1, #0xfb
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r2, #0x94
	mov	r0, #0x15
	mov	r1, #0xf6
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_8092adc
	bl	OvlFunc_936_2009e6c
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x15
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0x94
	mov	r0, #0x15
	mov	r1, #0xe4
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x94
	mov	r0, #0x15
	mov	r1, #0xd4
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x94
	mov	r0, #0x15
	mov	r1, #0xc0
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0x15
	lsl	r1, #8
	b	.Laf0

	.pool_aligned

.Laf0:
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #0x14
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x8f
	mov	r0, #0x15
	mov	r1, #0xb8
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xb0
	mov	r2, #0xa
	mov	r0, #0x15
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x15
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r2, #0x28
	mov	r0, #0x14
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x14
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0xa
	mov	r0, #0x15
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x15
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r2, =0xcccc
	mov	r0, #0x14
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_936__0200bfb0
	mov	r0, #0x14
	bl	__MapActor_RunScript
	mov	r2, #0x94
	mov	r0, #0x14
	mov	r1, #0xe4
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0x14
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x94
	mov	r0, #0x14
	mov	r1, #0xd4
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0x14
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x94
	mov	r0, #0x14
	mov	r1, #0xc0
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0x14
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0x14
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0x15
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x14
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	ldr	r5, =0x1a9e
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	bl	OvlFunc_936_2009ed8
	mov	r2, #0x88
	mov	r0, #0x14
	mov	r1, #0xb2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r0, #0xf0
	bl	__CutsceneWait
	mov	r0, #0x1b
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0x80
	mov	r0, #0x1b
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0x1b
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0x1b
	bl	__Func_8093040
	mov	r0, #0x1b
	bl	OvlFunc_936_2009ea4
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0x1c
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0x1c
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x1c
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0x1c
	bl	__Func_8093040
	mov	r0, #0x1c
	bl	OvlFunc_936_2009ea4
	mov	r0, #0xa0
	bl	__CutsceneWait
	mov	r0, #0x20
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xa0
	mov	r0, #0x20
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0x20
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0x20
	bl	__Func_8093040
	mov	r0, #0x20
	bl	OvlFunc_936_2009ea4
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0x1e
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xb0
	mov	r2, #0xa
	mov	r0, #0x1e
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x1e
	bl	__Func_80925cc
	add	r0, r5, #6
	bl	__MessageID
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0x1e
	bl	__Func_8093040
	ldr	r0, =OvlFunc_936_2009f14
	bl	__StopTask
	mov	r0, #0x14
	bl	__MapActor_SetIdle
	mov	r0, #0x15
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r3, r8
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r2, r8
	add	r0, #0x64
	strh	r2, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0x14
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	ldr	r2, =0x6666
	mov	r0, #0x15
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_936__0200c034
	mov	r0, #0x14
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_936__0200c0cc
	mov	r0, #0x15
	bl	__MapActor_SetBehavior
	mov	r0, #0x1d
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0x1d
	lsl	r1, #7
	bl	__Func_8092adc
	add	r5, #5
	mov	r1, #2
	mov	r0, #0x1d
	bl	__Func_80925cc
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0x1d
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0x1d
	bl	OvlFunc_936_2009ea4
	mov	r0, #0x1e
	bl	OvlFunc_936_2009ea4
.Ldc8:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.Ldc8
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #1
	bne	.Ldc8
	ldr	r1, =gScript_936__0200c164
	mov	r0, #0x14
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_936__0200c1ac
	mov	r0, #0x15
	bl	__MapActor_SetBehavior
	mov	r0, #0x1f
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0x1f
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x1f
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #4
	mov	r0, #0x1f
	bl	__MapActor_DoAnim
	ldr	r5, =0x1aa2
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0x1f
	bl	__Func_8093040
	mov	r0, #0x1f
	bl	OvlFunc_936_2009ea4
	mov	r0, #0x22
	bl	__MapActor_SetIdle
	mov	r0, #0x21
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x22
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #0x21
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xb0
	mov	r0, #0x22
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0x21
	lsl	r1, #7
	bl	__Func_8092adc
	add	r5, #3
	mov	r1, #4
	mov	r0, #0x22
	bl	__MapActor_DoAnim
	mov	r0, r5
	bl	__MessageID
	mov	r2, #0xa
	mov	r0, #0x22
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x21
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0x21
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #0x21
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0x22
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0
	mov	r0, #0x14
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	ldr	r0, =0x1ab2
	bl	__MessageID
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0x14
	bl	__Func_8093040
	mov	r0, #0x1b
	bl	__MapActor_SetIdle
	mov	r0, #0x1c
	bl	__MapActor_SetIdle
	mov	r0, #0x1d
	bl	__MapActor_SetIdle
	mov	r0, #0x1e
	bl	__MapActor_SetIdle
	mov	r0, #0x20
	bl	__MapActor_SetIdle
	mov	r0, #0x1f
	bl	__MapActor_SetIdle
	mov	r0, #0x21
	bl	__MapActor_SetIdle
	mov	r0, #0x22
	bl	__MapActor_SetIdle
	mov	r0, #0x14
	bl	__MapActor_SetIdle
	mov	r0, #0x15
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x1b
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #0x1c
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #0x1d
	mov	r1, #2
	mov	r2, #0
	b	.Lf78

	.pool_aligned

.Lf78:
	bl	__MapActor_Jump
	mov	r0, #0x1e
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #0x20
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #0x1f
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #0x21
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #0x22
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #0x15
	mov	r1, #2
	mov	r2, #0x28
	bl	__MapActor_Jump
	mov	r1, #0x80
	mov	r0, #0x1b
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x1c
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x1d
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x1e
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x20
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x1f
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x21
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x22
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #4
	mov	r2, #0x28
	bl	__MapActor_Jump
	mov	r2, #0xa
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x15
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x1b
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0x1b
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0x1b
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0x1c
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r2, #0xa
	mov	r0, #0x1c
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #0x1b
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0x1c
	lsl	r1, #8
	mov	r2, #4
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0x1d
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0x1e
	lsl	r1, #8
	mov	r2, #4
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0x20
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0x1f
	lsl	r1, #8
	mov	r2, #4
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0x21
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #4
	mov	r0, #0x22
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x1b
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x1c
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1d
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x20
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x1f
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x21
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x22
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	mov	r1, #2
	mov	r2, #0x28
	bl	__MapActor_Jump
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0x1b
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x1c
	lsl	r1, #8
	mov	r2, #4
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x1d
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x1e
	lsl	r1, #8
	mov	r2, #4
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x20
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x1f
	lsl	r1, #8
	mov	r2, #4
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x21
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x22
	lsl	r1, #8
	mov	r2, #4
	bl	__Func_8092adc
	mov	r0, #0x14
	ldr	r1, =0x11999
	ldr	r2, =0x8ccc
	bl	__MapActor_SetSpeed
	mov	r0, #0x1b
	ldr	r1, =0x10ccc
	ldr	r2, =0x8666
	bl	__MapActor_SetSpeed
	mov	r0, #0x1c
	ldr	r1, =0x10ccc
	ldr	r2, =0x8666
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1d
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1e
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0x20
	ldr	r1, =0xf333
	ldr	r2, =0x7999
	bl	__MapActor_SetSpeed
	mov	r0, #0x1f
	ldr	r1, =0xf333
	ldr	r2, =0x7999
	bl	__MapActor_SetSpeed
	mov	r0, #0x21
	ldr	r1, =0xe666
	ldr	r2, =0x7333
	bl	__MapActor_SetSpeed
	mov	r0, #0x22
	ldr	r1, =0xe666
	ldr	r2, =0x7333
	bl	__MapActor_SetSpeed
	ldr	r2, =0x6ccc
	mov	r0, #0x15
	ldr	r1, =0xd999
	bl	__MapActor_SetSpeed
	mov	r0, #0x1b
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x1c
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x1d
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x1e
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x20
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x1f
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x21
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x22
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_8092b08
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_8092b08
	mov	r0, #0x1b
	bl	__MapActor_SetIdle
	mov	r0, #0x1c
	bl	__MapActor_SetIdle
	mov	r0, #0x1d
	bl	__MapActor_SetIdle
	mov	r0, #0x1e
	bl	__MapActor_SetIdle
	mov	r0, #0x20
	bl	__MapActor_SetIdle
	mov	r0, #0x1f
	bl	__MapActor_SetIdle
	mov	r0, #0x21
	bl	__MapActor_SetIdle
	mov	r0, #0x22
	bl	__MapActor_SetIdle
	mov	r0, #0x14
	bl	__MapActor_SetIdle
	mov	r0, #0x15
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	ldr	r5, =gScript_936__0200be00
	mov	r0, #0x14
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x1b
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x1c
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x1d
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x1e
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x20
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x1f
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x21
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x22
	bl	__MapActor_SetBehavior
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r2, r0
	add	r2, #0x64
	mov	r3, #0
	strh	r3, [r2]
	mov	r0, #0x15
	mov	r1, r5
	bl	__MapActor_SetBehavior
.L133a:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #1
	bne	.L133a
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0xaa
	mov	r2, #0x89
	lsl	r1, #17
	lsl	r2, #17
	mov	r0, #0xe
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xe
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0x89
	mov	r0, #0xe
	mov	r1, #0xe0
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xe
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #0xe
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0xe
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0xe
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #0xe
	mov	r1, #4
	mov	r2, #0x28
	bl	__MapActor_Jump
	mov	r2, #0x14
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0xe
	mov	r1, #4
	mov	r2, #0x28
	bl	__MapActor_Jump
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	mov	r0, #0xe
	bl	__MapActor_SetSpeed
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x64
	mov	r2, #0
	strh	r2, [r3]
	ldr	r1, =gScript_936__0200be00
	mov	r0, #0xe
	bl	__MapActor_SetBehavior
.L1442:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #1
	bne	.L1442
	mov	r2, #0x9d
	ldr	r1, =0x1670000
	lsl	r2, #17
	mov	r0, #0xe
	bl	__MapActor_SetPos
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r5, #0xd0
	lsl	r5, #8
	mov	r2, #0xd9
	ldr	r1, =0x1c70000
	lsl	r2, #17
	strh	r5, [r0, #6]
	mov	r0, #0x14
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r1, #0xe8
	mov	r2, #0xd0
	lsl	r2, #17
	lsl	r1, #17
	strh	r5, [r0, #6]
	mov	r0, #0x15
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r0, #0x1b
	bl	__DeleteFieldActor
	mov	r0, #0x1c
	bl	__DeleteFieldActor
	mov	r0, #0x1d
	bl	__DeleteFieldActor
	mov	r0, #0x1e
	bl	__DeleteFieldActor
	mov	r0, #0x1f
	bl	__DeleteFieldActor
	mov	r0, #0x20
	bl	__DeleteFieldActor
	mov	r0, #0x21
	bl	__DeleteFieldActor
	mov	r0, #0x22
	bl	__DeleteFieldActor
	mov	r0, #0x11
	bl	__PlaySound
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #9
	bne	.L14fa
	mov	r2, #0xe5
	mov	r0, #0
	mov	r1, #0xe0
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #8
	b	.L150e
.L14fa:
	mov	r0, #0
	mov	r1, #0x28
	mov	r2, #0xf8
	bl	__Func_80921c4
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #7
.L150e:
	strh	r3, [r0, #6]
	bl	__PlayMapMusic
	ldr	r0, =0x911
	bl	__SetFlag
	b	.L1538
.L151c:
	mov	r0, #0x7b
	bl	__PlaySound
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_8091e9c
	bl	__MapTransitionOut
	bl	__WaitMapTransition
.L1538:
	bl	__CutsceneEnd
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_2008590

.thumb_func_start OvlFunc_936_200958c
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L15aa
	ldr	r3, =iwram_3001ee0
	ldr	r2, [r3]
	mov	r0, #0x80
	mov	r3, #0
	str	r3, [r2, #0x18]
	lsl	r0, #2
	bl	__ClearFlag
.L15aa:
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200958c

.thumb_func_start OvlFunc_936_20095b4
	push	{r5, lr}
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L15d6
	ldr	r3, =iwram_3001ee0
	mov	r0, #0
	ldr	r5, [r3]
	bl	__MapActor_GetActor
	str	r0, [r5, #0x18]
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
.L15d6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_20095b4

.thumb_func_start OvlFunc_936_20095e0
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_20095e0

