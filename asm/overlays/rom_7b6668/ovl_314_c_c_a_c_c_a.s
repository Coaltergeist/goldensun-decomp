	.include "macros.inc"

.thumb_func_start OvlFunc_928_20085f4
	push	{r5, r6, r7, lr}
	mov	r0, #0x14
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r6, r0
	bl	__CutsceneStart
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r7, #0
	str	r7, [r0, #0x6c]
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L628
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x13
	bgt	.L6a2
.L628:
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #0
	mov	r2, #0
	ldrh	r5, [r0, #6]
	mov	r0, #0x12
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x17fb
	bl	__MessageID
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L67e
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r1, #0
	mov	r0, #0x12
	bl	__ActorMessage
	mov	r0, #0x12
	bl	__MapActor_GetActor
	add	r0, #0x64
	strh	r7, [r0]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	strh	r5, [r0, #6]
	b	.L692
.L67e:
	mov	r0, #0x12
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
.L692:
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_928_2008500
	str	r3, [r0, #0x6c]
	bl	__CutsceneEnd
	b	.L916
.L6a2:
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #19
	cmp	r3, #0x1b
	ble	.L756
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #19
	cmp	r3, #0x1d
	bgt	.L756
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x1a
	beq	.L756
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r2, #0
	mov	r1, #0x12
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #5
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r2, [r5, #8]
	ldr	r3, [r0, #8]
	cmp	r2, r3
	bge	.L72a
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r1, [r0, #8]
	asr	r1, #20
	lsl	r1, #4
	sub	r1, #8
	mov	r0, #0
	mov	r2, #0xe8
	bl	__Func_809218c
	mov	r7, #1
	b	.L750
.L72a:
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r1, [r0, #8]
	asr	r1, #20
	lsl	r1, #4
	add	r1, #0x18
	mov	r0, #0
	mov	r2, #0xe8
	bl	__Func_809218c
.L750:
	mov	r0, #0
	bl	__MapActor_WaitMovement
.L756:
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r5, #0x80
	lsl	r5, #24
	str	r5, [r0, #0x38]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	str	r5, [r0, #0x3c]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #1
	str	r5, [r0, #0x40]
	mov	r0, #0x12
	bl	__MapActor_SetBehavior
	mov	r0, #0x12
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xe4
	bl	__PlaySound
	ldr	r3, =0x4ccc
	mov	r0, #0x12
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r2, [r0, #0x10]
	asr	r5, #20
	mov	r3, #0x80
	lsl	r3, #12
	asr	r2, #20
	lsl	r5, #20
	add	r5, r3
	lsl	r2, #20
	add	r2, r3
	mov	r1, r5
	mov	r0, #0x14
	bl	__MapActor_SetPos
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x10
	mov	r1, #0x10
	str	r5, [sp]
	bl	__Func_8010704
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_8092b08
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	ldr	r5, =0x1999
.L7fe:
	mov	r0, #3
	bl	__WaitFrames
	ldr	r3, [r6, #0x1c]
	ldr	r2, [r6, #0x18]
	add	r3, r5
	str	r3, [r6, #0x1c]
	ldr	r3, =0xffff
	add	r2, r5
	str	r2, [r6, #0x18]
	cmp	r2, r3
	ble	.L7fe
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x46
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x12
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0x12
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_809259c
	mov	r0, #0x46
	bl	__CutsceneWait
	ldr	r0, =0x17fa
	bl	__MessageID
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	bl	__Func_809202c
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x1a
	bne	.L87a
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0xd
	ble	.L87a
	mov	r7, #1
.L87a:
	cmp	r7, #0
	beq	.L8c4
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0xa
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r0, #0
	mov	r2, #0x10
	bl	__Func_809228c
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
.L8c4:
	mov	r0, #0x12
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0xe
	beq	.L8ee
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r2, #0xe8
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r0, #0x12
	bl	__Func_80921c4
.L8ee:
	mov	r1, #0x8c
	mov	r2, #0xe8
	lsl	r1, #1
	mov	r0, #0x12
	bl	__Func_80921c4
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	bl	__CutsceneEnd
.L916:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_20085f4

.thumb_func_start OvlFunc_928_200894c
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0xd
	bgt	.L964
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_8092b08
.L964:
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_200894c

.thumb_func_start OvlFunc_928_2008968
	push	{r5, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfd
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #3
	mov	r1, #0x11
	str	r5, [sp]
	bl	__Func_8010704
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_928_2008324
	bl	__StartTask
	ldr	r0, =0x201
	bl	__SetFlag
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_8092b08
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_2008968

.thumb_func_start OvlFunc_928_20089dc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x44
	bl	__CutsceneStart
	ldr	r0, =0x202
	bl	__GetFlag
	mov	r7, r0
	cmp	r7, #0
	beq	.La2a
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x17f4
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__CutsceneEnd
	b	.Lc9c
.La2a:
	ldr	r0, =0x17f2
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	add	r5, sp, #0x38
	and	r3, r2
	strb	r3, [r0]
	str	r7, [r5]
	str	r7, [r5, #4]
	str	r7, [r5, #8]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, r5
	ldrh	r1, [r0, #6]
	ldr	r0, =0xfff80000
	bl	__vec3_translate
	mov	r1, #2
	mov	r0, #0
	bl	__MapActor_SetAnim
	ldr	r1, [r5]
	cmp	r1, #0
	bge	.La7a
	ldr	r2, =0xffff
	add	r1, r2
.La7a:
	ldr	r2, [r5, #8]
	asr	r1, #16
	cmp	r2, #0
	bge	.La86
	ldr	r3, =0xffff
	add	r2, r3
.La86:
	asr	r2, #16
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_80925cc
	add	r2, sp, #0x10
	mov	r3, #1
	str	r3, [r2]
	mov	r3, #0x9c
	mov	r10, r2
	lsl	r3, #17
	ldr	r2, =0x3333
	mov	r5, #0xc0
	mov	r8, r3
	ldr	r6, =0x20001
	lsl	r5, #16
	str	r2, [sp]
	mov	r0, r5
	mov	r1, #0
	mov	r2, r8
	ldr	r3, =0x1999
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r3, =0x1999
	mov	r2, r8
	str	r3, [sp]
	mov	r0, r5
	ldr	r3, =0x3333
	mov	r1, #0
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, #0x84
	bl	__PlaySound
	ldr	r5, =OvlFunc_928_2008370
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__StartTask
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r0, #0x48]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0xc0
	mov	r2, #0xc0
	str	r7, [r0, #0x44]
	lsl	r1, #10
	mov	r0, #0xe
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r2, #0x9c
	lsl	r2, #1
	mov	r1, #0xa8
	mov	r0, #0xe
	bl	__MapActor_TravelTo
	mov	r0, #0xe
	bl	__MapActor_WaitMovement
	mov	r0, #0x86
	bl	__PlaySound
	ldr	r1, =gScript_928__020096a0
	mov	r0, #0x13
	bl	__MapActor_SetBehavior
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_928_2008358
	bl	__StartTask
	ldr	r3, =0x11b
	mov	r2, r10
	strh	r3, [r2, #0x18]
	ldr	r3, =.L1714
	str	r3, [r2, #0x1c]
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r2, #0x20]
	mov	r3, #0xa8
	lsl	r3, #16
	mov	r9, r3
	mov	r3, #0xe4
	lsl	r3, #15
	str	r3, [sp, #8]
	mov	r2, #0xa6
	mov	r3, r10
	str	r3, [sp, #0xc]
	lsl	r2, #17
	mov	r3, #0
	mov	r0, r9
	mov	r1, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_common0_10c
	mov	r2, #0x9c
	mov	r1, #0x92
	lsl	r2, #1
	mov	r0, #0xe
	bl	__MapActor_TravelTo
	mov	r0, #0xe
	bl	__MapActor_WaitMovement
	mov	r0, r5
	bl	__StopTask
	mov	r5, #0x90
	lsl	r5, #16
	mov	r0, r5
	mov	r1, #0
	mov	r2, r8
	mov	r3, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r2, =0xffffcccd
	ldr	r3, =0x1999
	mov	r11, r2
	str	r3, [sp]
	mov	r0, r5
	mov	r1, #0
	mov	r2, r8
	mov	r3, r11
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r2, =0xffff8000
	mov	r10, r2
	mov	r1, #0
	mov	r2, r8
	mov	r3, r10
	mov	r0, r5
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, #0x13
	bl	__MapActor_WaitScript
	mov	r0, #0x7c
	bl	__PlaySound
	mov	r5, #0x80
	lsl	r5, #12
	mov	r0, r9
	mov	r1, r5
	mov	r2, r8
	mov	r3, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, r9
	mov	r1, r5
	mov	r2, r8
	ldr	r3, =0x3333
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r1, r5
	mov	r2, r8
	mov	r3, r11
	mov	r0, r9
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r0, =OvlFunc_928_2008358
	bl	__StopTask
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	mov	r2, r10
	strh	r2, [r3, #0x1e]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r0, #0x44]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r0, #0x48]
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0xe
	bl	__Func_8093040
	ldr	r0, =0x202
	bl	__SetFlag
	bl	__Func_809202c
	bl	__CutsceneEnd
.Lc9c:
	add	sp, #0x44
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_20089dc

