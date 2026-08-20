	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_200ac84
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x34
	mov	r1, #4
	mov	r6, #0
	add	r1, sp
	mov	r7, #0
	add	r4, sp, #0x24
	mov	r8, r1
	mov	r10, r6
	mov	r5, #0
.Lm943_2c9e:
	mov	r0, r6
	str	r4, [sp]
	bl	OvlFunc_943_200b150
	ldr	r4, [sp]
	mov	r3, r10
	mov	r2, r8
	add	r6, #1
	str	r0, [r5, r4]
	str	r3, [r5, r2]
	add	r5, #4
	cmp	r6, #3
	bls	.Lm943_2c9e
	ldr	r3, [r4]
	mov	r1, #0x17
	mov	r6, #0
	cmp	r3, #0x17
	bne	.Lm943_2cca
	add	r2, sp, #0x14
	mov	r3, r8
	str	r1, [r2, r6]
	b	.Lm943_2cde
.Lm943_2cca:
	add	r6, #1
	cmp	r6, #3
	bhi	.Lm943_2ce6
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.Lm943_2cca
	add	r2, sp, #0x14
	mov	r3, r8
	str	r1, [r2]
.Lm943_2cde:
	mov	r10, r2
	str	r7, [r3]
	mov	r7, #1
	b	.Lm943_2cea
.Lm943_2ce6:
	add	r1, sp, #0x14
	mov	r10, r1
.Lm943_2cea:
	ldr	r3, [r4]
	mov	r1, #0x18
	mov	r6, #0
	cmp	r3, #0x18
	beq	.Lm943_2d02
.Lm943_2cf4:
	add	r6, #1
	cmp	r6, #3
	bhi	.Lm943_2d0e
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.Lm943_2cf4
.Lm943_2d02:
	lsl	r3, r7, #2
	mov	r2, r10
	str	r1, [r2, r3]
	mov	r1, r8
	str	r7, [r1, r3]
	add	r7, #1
.Lm943_2d0e:
	ldr	r3, [r4]
	mov	r1, #0x19
	mov	r6, #0
	cmp	r3, #0x19
	beq	.Lm943_2d26
.Lm943_2d18:
	add	r6, #1
	cmp	r6, #3
	bhi	.Lm943_2d32
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.Lm943_2d18
.Lm943_2d26:
	lsl	r3, r7, #2
	mov	r2, r10
	str	r1, [r2, r3]
	mov	r1, r8
	str	r7, [r1, r3]
	add	r7, #1
.Lm943_2d32:
	ldr	r3, [r4]
	mov	r1, #0x1b
	mov	r6, #0
	cmp	r3, #0x1b
	beq	.Lm943_2d4a
.Lm943_2d3c:
	add	r6, #1
	cmp	r6, #3
	bhi	.Lm943_2d56
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.Lm943_2d3c
.Lm943_2d4a:
	lsl	r3, r7, #2
	mov	r2, r10
	str	r1, [r2, r3]
	mov	r1, r8
	str	r7, [r1, r3]
	add	r7, #1
.Lm943_2d56:
	cmp	r7, #4
	beq	.Lm943_2e22
	ldr	r3, [r4]
	mov	r1, #0x1c
	mov	r6, #0
	cmp	r3, #0x1c
	beq	.Lm943_2d72
.Lm943_2d64:
	add	r6, #1
	cmp	r6, #3
	bhi	.Lm943_2d7e
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.Lm943_2d64
.Lm943_2d72:
	lsl	r3, r7, #2
	mov	r2, r10
	str	r1, [r2, r3]
	mov	r1, r8
	str	r7, [r1, r3]
	add	r7, #1
.Lm943_2d7e:
	cmp	r7, #4
	beq	.Lm943_2e22
	ldr	r3, [r4]
	mov	r1, #0x1d
	mov	r6, #0
	cmp	r3, #0x1d
	beq	.Lm943_2d9a
.Lm943_2d8c:
	add	r6, #1
	cmp	r6, #3
	bhi	.Lm943_2da6
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.Lm943_2d8c
.Lm943_2d9a:
	lsl	r3, r7, #2
	mov	r2, r10
	str	r1, [r2, r3]
	mov	r1, r8
	str	r7, [r1, r3]
	add	r7, #1
.Lm943_2da6:
	cmp	r7, #4
	beq	.Lm943_2e22
	ldr	r3, [r4]
	mov	r1, #0x1a
	mov	r6, #0
	cmp	r3, #0x1a
	beq	.Lm943_2dc2
.Lm943_2db4:
	add	r6, #1
	cmp	r6, #3
	bhi	.Lm943_2dd0
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.Lm943_2db4
.Lm943_2dc2:
	lsl	r2, r7, #2
	mov	r3, r10
	str	r1, [r3, r2]
	mov	r3, #0xa
	mov	r1, r8
	str	r3, [r1, r2]
	add	r7, #1
.Lm943_2dd0:
	cmp	r7, #4
	beq	.Lm943_2e22
	ldr	r3, [r4]
	mov	r1, #0x1e
	mov	r6, #0
	cmp	r3, #0x1e
	beq	.Lm943_2dec
.Lm943_2dde:
	add	r6, #1
	cmp	r6, #3
	bhi	.Lm943_2dfa
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.Lm943_2dde
.Lm943_2dec:
	lsl	r2, r7, #2
	mov	r3, r10
	str	r1, [r3, r2]
	mov	r3, #0xb
	mov	r1, r8
	str	r3, [r1, r2]
	add	r7, #1
.Lm943_2dfa:
	cmp	r7, #4
	beq	.Lm943_2e22
	ldr	r3, [r4]
	mov	r1, #0x1f
	mov	r6, #0
	cmp	r3, #0x1f
	beq	.Lm943_2e16
.Lm943_2e08:
	add	r6, #1
	cmp	r6, #3
	bhi	.Lm943_2e22
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.Lm943_2e08
.Lm943_2e16:
	lsl	r2, r7, #2
	mov	r3, r10
	str	r1, [r3, r2]
	mov	r3, #0x14
	mov	r1, r8
	str	r3, [r1, r2]
.Lm943_2e22:
	bl	__CutsceneStart
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm943_2e4e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x20
	bl	__MapActor_SetPos
.Lm943_2e4e:
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x20
	mov	r1, #1
	bl	__SetCameraTarget
	bl	OvlFunc_943_2008bb8
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r6, #0
.Lm943_2e70:
	lsl	r7, r6, #2
	mov	r2, r10
	ldr	r5, [r2, r7]
	mov	r1, #0xd8
	mov	r2, #0x92
	lsl	r1, #16
	mov	r0, r5
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, r8
	ldr	r3, [r1, r7]
	cmp	r3, #0x14
	bne	.Lm943_2e98
	mov	r0, r5
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	b	.Lm943_2ea6
.Lm943_2e98:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r5
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
.Lm943_2ea6:
	mov	r2, #0x96
	mov	r0, r5
	mov	r1, #0xd8
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r0, r5
	mov	r1, #0xc0
	ldr	r2, =0x26a
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xa4
	lsl	r2, #2
	mov	r0, r5
	mov	r1, #0xc0
	bl	__MapActor_TravelToAnimWait
	mov	r2, r8
	ldr	r3, [r2, r7]
	cmp	r3, #0x14
	bhi	.Lm943_2fb8
	ldr	r2, =.Lm943_2ed8
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm943_2ed8:
	.word	.Lm943_2f2c
	.word	.Lm943_2f40
	.word	.Lm943_2f5e
	.word	.Lm943_2f70
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2f80
	.word	.Lm943_2f90
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fa0
.Lm943_2f2c:
	mov	r1, #0x81
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	ldr	r0, =0x1ee7
	bl	__MessageID
	b	.Lm943_2fb8
.Lm943_2f40:
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, r5
	bl	OvlFunc_943_200ba00
	mov	r1, #0x81
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	ldr	r0, =0x1ee8
	bl	__MessageID
	b	.Lm943_2fb8
.Lm943_2f5e:
	mov	r0, r5
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	ldr	r0, =0x1ee9
	bl	__MessageID
	b	.Lm943_2fb8
.Lm943_2f70:
	mov	r0, r5
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, =0x1eea
	bl	__MessageID
	b	.Lm943_2fb8
.Lm943_2f80:
	mov	r0, r5
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x1eeb
	bl	__MessageID
	b	.Lm943_2fb8
.Lm943_2f90:
	mov	r0, r5
	mov	r1, #4
	bl	__MapActor_SetAnim
	ldr	r0, =0x1eec
	bl	__MessageID
	b	.Lm943_2fb8
.Lm943_2fa0:
	mov	r0, r5
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, r5
	ldr	r1, =0x107
	mov	r2, #0x28
	bl	__MapActor_Emote
	ldr	r0, =0x1eed
	bl	__MessageID
.Lm943_2fb8:
	mov	r0, r5
	bl	OvlFunc_943_200b9ec
	add	r6, #1
	ldr	r1, =gScript_943__0200c8e0
	mov	r0, r5
	bl	__MapActor_SetBehavior
	cmp	r6, #3
	bhi	.Lm943_2fce
	b	.Lm943_2e70
.Lm943_2fce:
	mov	r0, r5
	bl	__MapActor_WaitScript
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xd8
	mov	r2, #0x92
	lsl	r2, #18
	lsl	r1, #16
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0x96
	mov	r0, #0
	mov	r1, #0xd8
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x99
	mov	r1, #0xbe
	lsl	r2, #2
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	ldr	r0, =0x1eee
	bl	__MessageID
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x20
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r3, [r0]
	lsl	r1, #10
	mov	r0, #0x20
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r2, #0x8d
	mov	r0, #0x20
	mov	r1, #0xc4
	lsl	r2, #2
	bl	__MapActor_TravelTo
	mov	r0, #0x14
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0x14
	mov	r1, #0xb6
	ldr	r2, =0x22b
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x14
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r1, #0x80
	mov	r2, #0x28
	lsl	r1, #8
	mov	r0, #0x14
	mov	r5, #0xc0
	bl	__Func_8092adc
	lsl	r5, #6
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r1, r5
	mov	r0, #0x14
	bl	OvlFunc_943_200ba00
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r2, #0x80
	mov	r0, #0x14
	mov	r1, #0xbc
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, r5
	mov	r0, #0x14
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x20
	bl	__MapActor_SetPos
	ldr	r0, =0x12f
	bl	__ClearFlag
	bl	__CutsceneEnd
	add	sp, #0x34
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200ac84

