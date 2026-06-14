	.include "macros.inc"

.thumb_func_start OvlFunc_883_2008e54
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L755a
	mov	r1, #0x36
	mov	r2, #0x20
	bl	__Func_8010560
	mov	r1, #0xcb
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x2d7
	bl	__Func_809218c
	mov	r0, #5
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008e54

.thumb_func_start OvlFunc_883_2008e84
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L7570
	mov	r1, #0x2d
	mov	r2, #0x27
	bl	__Func_8010560
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x325
	bl	__Func_809218c
	mov	r0, #6
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008e84

.thumb_func_start OvlFunc_883_2008eb4
	push	{lr}
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lf20
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lf20
	bl	__CutsceneStart
	ldr	r0, =0x11b6
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lefc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_8093040
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
	b	.Lf1a
.Lefc:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	mov	r0, #0x28
	strh	r3, [r2]
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
.Lf1a:
	bl	__CutsceneEnd
	b	.Lf44
.Lf20:
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L755a
	mov	r1, #0x32
	mov	r2, #0x2c
	bl	__Func_8010560
	mov	r1, #0xaa
	mov	r2, #0xde
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_809218c
	mov	r0, #7
	bl	__Func_8091e9c
.Lf44:
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008eb4

.thumb_func_start OvlFunc_883_2008f5c
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L7570
	mov	r1, #0x31
	mov	r2, #0x45
	bl	__Func_8010560
	mov	r1, #0xa3
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x466
	bl	__Func_809218c
	mov	r0, #8
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008f5c

.thumb_func_start OvlFunc_883_2008f8c
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L7586
	mov	r1, #0x34
	mov	r2, #0x4c
	bl	__Func_8010560
	mov	r1, #0xbb
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x4d6
	bl	__Func_809218c
	mov	r0, #9
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008f8c

.thumb_func_start OvlFunc_883_2008fbc
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L755a
	mov	r1, #0x23
	mov	r2, #0x4a
	bl	__Func_8010560
	mov	r0, #0
	mov	r1, #0x66
	ldr	r2, =0x4b6
	bl	__Func_809218c
	mov	r0, #0xa
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008fbc

.thumb_func_start OvlFunc_883_2008fec
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #5
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	ldr	r3, [r6, #8]
	str	r3, [r5, #8]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #0xc]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x40]
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x28]
	str	r3, [r5, #0x2c]
	ldr	r3, [r6, #0xc]
	mov	r0, #1
	str	r3, [r5, #0x14]
	bl	__WaitFrames
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #5
	mov	r1, #0x6e
	ldr	r2, =0x11b
	bl	__Func_80921c4
	mov	r2, #2
	mov	r0, #0
	mov	r1, #5
	bl	__Func_8092848
	ldr	r0, =0xf39
	bl	__MessageID
	ldr	r2, [r6, #8]
	ldr	r3, [r5, #8]
	cmp	r2, r3
	bge	.L1066
	ldr	r0, =0xa005
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8093040
	b	.L1070
.L1066:
	ldr	r0, =0x8005
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8093040
.L1070:
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #2
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L109e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #5
	bl	__MapActor_TravelTo
.L109e:
	mov	r0, #5
	bl	__MapActor_WaitMovement
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0
	mov	r1, #0x6e
	ldr	r2, =0x12f
	bl	__Func_80921c4
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008fec

.thumb_func_start OvlFunc_883_20090d8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r0, =0x808
	sub	sp, #0xc
	bl	__GetFlag
	cmp	r0, #0
	bne	.L11b2
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r8, r3
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #0
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #2
	bl	__CutsceneWait
	ldr	r0, =0xf4d
	bl	__MessageID
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8093040
	mov	r2, #2
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r7, sp
	str	r3, [r7]
	ldr	r3, [r0, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r0, #0x10]
	mov	r2, r8
	ldr	r2, [r2]
	str	r3, [r7, #8]
	mov	r3, r8
	str	r7, [r3]
	mov	r10, r2
	mov	r6, #0
	mov	r5, r7
.L114e:
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #10
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, #1
	add	r6, #1
	bl	__CutsceneWait
	bl	__Func_800fe9c
	cmp	r6, #0x28
	bne	.L114e
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r0, =0xf4f
	mov	r1, #1
	bl	__Func_801776c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r6, #0
	mov	r5, r7
.L1180:
	ldr	r3, [r5, #8]
	ldr	r2, =0xfffe0000
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, #1
	add	r6, #1
	bl	__CutsceneWait
	bl	__Func_800fe9c
	cmp	r6, #0x28
	bne	.L1180
	mov	r3, r10
	mov	r2, r8
	str	r3, [r2]
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x46
	ldr	r2, =0x2e5
	bl	__Func_80921c4
	bl	__CutsceneEnd
.L11b2:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_20090d8

.thumb_func_start OvlFunc_883_20091d8
	push	{r5, lr}
	ldr	r0, =0x808
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1230
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0
	bl	__MapActor_SetSpeed
	ldr	r5, =0xf4d
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8093040
	add	r5, #2
	mov	r2, #2
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, r5
	bl	__Func_801776c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x45
	ldr	r2, =0x366
	bl	__Func_80921c4
	bl	__CutsceneEnd
.L1230:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_20091d8

.thumb_func_start OvlFunc_883_2009244
	push	{lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r3, #0x14
	mov	r2, #0x32
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x35
	mov	r2, #8
	mov	r3, #4
	bl	__Func_8010704
	mov	r1, #0xa
	mov	r2, #0xb
	mov	r3, #1
	mov	r0, #0
	bl	OvlFunc_883_200b2b0
	mov	r0, #0x81
	lsl	r0, #2
	bl	__SetFlag
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2009244

.thumb_func_start OvlFunc_883_2009280
	push	{lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r1, #0xd
	mov	r2, #0xa
	mov	r3, #1
	mov	r0, #0
	bl	OvlFunc_883_200b380
	mov	r0, #0x81
	lsl	r0, #2
	bl	__ClearFlag
	mov	r3, #0x14
	mov	r2, #0x32
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x2e
	mov	r2, #8
	mov	r3, #4
	bl	__Func_8010704
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2009280

.thumb_func_start OvlFunc_883_20092bc
	push	{r5, r6, lr}
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #5
	mov	r2, #0
	bl	__MapActor_Jump
	add	r5, #0x5a
	mov	r0, #0
	mov	r1, #0xd7
	ldr	r2, =0x193
	bl	__Func_809218c
	ldrb	r3, [r5]
	mov	r6, #1
	orr	r3, r6
	mov	r1, #0xa6
	strb	r3, [r5]
	mov	r0, #0x16
	lsl	r1, #16
	ldr	r2, =0x1770000
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #0x16
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	ldrb	r3, [r5]
	mov	r1, #0xa0
	eor	r3, r6
	mov	r2, #0xa0
	strb	r3, [r5]
	mov	r0, #0x16
	lsl	r1, #10
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	mov	r0, #0x16
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	ldr	r2, =0x18b
	mov	r0, #0x16
	mov	r1, #0xca
	bl	__Func_80921c4
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xb0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x16
	lsl	r1, #6
	mov	r2, #0x18
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	mov	r0, #0x16
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_883__0200f59c
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0x16
	ldr	r1, =0x103
	bl	__MapActor_Emote
	ldr	r1, =gScript_883__0200f5ec
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	mov	r0, #0
	bl	__MapActor_WaitScript
	mov	r1, #0x80
	mov	r2, #0xed
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x16
	bl	__MapActor_WaitScript
	mov	r1, #0x80
	mov	r2, #0xe4
	lsl	r2, #1
	mov	r0, #0x16
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0xfce
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_8093054
	mov	r0, #0x16
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_883_200d72c
	ldr	r1, =gScript_883__0200e248
	str	r3, [r0, #0x6c]
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	ldr	r0, =0x823
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_20092bc

