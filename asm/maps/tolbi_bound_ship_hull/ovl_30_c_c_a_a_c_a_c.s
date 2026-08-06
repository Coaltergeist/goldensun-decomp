	.include "macros.inc"

.thumb_func_start OvlFunc_945_2008b84
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_bde
	bl	OvlFunc_945_20092dc
	mov	r5, r0
	bl	OvlFunc_945_2009190
	ldr	r0, =0x1ea1
	bl	__MessageID
	mov	r0, #0xc
	bl	OvlFunc_945_200c86c
	mov	r0, r5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_bcc
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__MapActor_TravelTo
.Lm945_bcc:
	mov	r0, r5
	bl	__MapActor_WaitMovement
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm945_c9a
.Lm945_bde:
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1e81
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xc
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm945_c84
	mov	r0, #0xc
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_c2c
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xc
	bl	__MapActor_TravelTo
.Lm945_c2c:
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_c56
	ldr	r0, =0x994
	bl	__SetFlag
	b	.Lm945_c9a
.Lm945_c56:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_c68
	ldr	r0, =0x91b
	bl	__SetFlag
	b	.Lm945_c9a
.Lm945_c68:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_c7a
	ldr	r0, =0x939
	bl	__SetFlag
	b	.Lm945_c9a
.Lm945_c7a:
	mov	r0, #0x93
	lsl	r0, #4
	bl	__SetFlag
	b	.Lm945_c9a
.Lm945_c84:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xc
	bl	OvlFunc_945_200c86c
.Lm945_c9a:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2008b84

.thumb_func_start OvlFunc_945_2008cc8
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_d22
	bl	OvlFunc_945_20092dc
	mov	r5, r0
	bl	OvlFunc_945_2009190
	ldr	r0, =0x1ea2
	bl	__MessageID
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r0, r5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_d10
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__MapActor_TravelTo
.Lm945_d10:
	mov	r0, r5
	bl	__MapActor_WaitMovement
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm945_de0
.Lm945_d22:
	ldr	r0, =0x1e84
	bl	__MessageID
	mov	r2, #0x3c
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #9
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm945_dca
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r0, #9
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_d74
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #9
	bl	__MapActor_TravelTo
.Lm945_d74:
	mov	r0, #9
	bl	__MapActor_WaitMovement
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_d9e
	ldr	r0, =0x991
	bl	__SetFlag
	b	.Lm945_de0
.Lm945_d9e:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_db0
	ldr	r0, =0x918
	bl	__SetFlag
	b	.Lm945_de0
.Lm945_db0:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_dc2
	ldr	r0, =0x936
	bl	__SetFlag
	b	.Lm945_de0
.Lm945_dc2:
	ldr	r0, =0x92d
	bl	__SetFlag
	b	.Lm945_de0
.Lm945_dca:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #9
	bl	OvlFunc_945_200c86c
.Lm945_de0:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2008cc8

.thumb_func_start OvlFunc_945_2008e14
	push	{r5, lr}
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_e74
	bl	OvlFunc_945_20092dc
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, r5
	bl	OvlFunc_945_2009190
	ldr	r0, =0x1ea3
	bl	__MessageID
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r0, r5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_e5e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__MapActor_TravelTo
.Lm945_e5e:
	mov	r0, r5
	bl	__MapActor_WaitMovement
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	b	.Lm945_eb4
.Lm945_e74:
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_e84
	ldr	r1, =0x1e88
	ldr	r2, =0x995
	b	.Lm945_ea2
.Lm945_e84:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_e94
	ldr	r1, =0x1e88
	ldr	r2, =0x91c
	b	.Lm945_ea2
.Lm945_e94:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_eaa
	ldr	r1, =0x1e88
	ldr	r2, =0x93a
.Lm945_ea2:
	mov	r0, #0xd
	bl	OvlFunc_945_2009804
	b	.Lm945_eb4
.Lm945_eaa:
	ldr	r1, =0x1e88
	ldr	r2, =0x931
	mov	r0, #0xd
	bl	OvlFunc_945_2009804
.Lm945_eb4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2008e14

.thumb_func_start OvlFunc_945_2008ee0
	push	{r5, lr}
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_f40
	bl	OvlFunc_945_20092dc
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, r5
	bl	OvlFunc_945_2009190
	ldr	r0, =0x1ea4
	bl	__MessageID
	mov	r0, #0xe
	bl	OvlFunc_945_200c86c
	mov	r0, r5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_f2a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__MapActor_TravelTo
.Lm945_f2a:
	mov	r0, r5
	bl	__MapActor_WaitMovement
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	b	.Lm945_f80
.Lm945_f40:
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_f50
	ldr	r1, =0x1e8b
	ldr	r2, =0x996
	b	.Lm945_f6e
.Lm945_f50:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_f60
	ldr	r1, =0x1e8b
	ldr	r2, =0x91d
	b	.Lm945_f6e
.Lm945_f60:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_f76
	ldr	r1, =0x1e8b
	ldr	r2, =0x93b
.Lm945_f6e:
	mov	r0, #0xe
	bl	OvlFunc_945_2009804
	b	.Lm945_f80
.Lm945_f76:
	ldr	r1, =0x1e8b
	ldr	r2, =0x932
	mov	r0, #0xe
	bl	OvlFunc_945_2009804
.Lm945_f80:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2008ee0

.thumb_func_start OvlFunc_945_2008fac
	push	{r5, lr}
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_100c
	bl	OvlFunc_945_20092dc
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, r5
	bl	OvlFunc_945_2009190
	ldr	r0, =0x1ea5
	bl	__MessageID
	mov	r0, #0xf
	bl	OvlFunc_945_200c86c
	mov	r0, r5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_ff6
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__MapActor_TravelTo
.Lm945_ff6:
	mov	r0, r5
	bl	__MapActor_WaitMovement
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	b	.Lm945_104c
.Lm945_100c:
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_101c
	ldr	r1, =0x1e8e
	ldr	r2, =0x997
	b	.Lm945_103a
.Lm945_101c:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_102c
	ldr	r1, =0x1e8e
	ldr	r2, =0x91e
	b	.Lm945_103a
.Lm945_102c:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_1042
	ldr	r1, =0x1e8e
	ldr	r2, =0x93c
.Lm945_103a:
	mov	r0, #0xf
	bl	OvlFunc_945_2009804
	b	.Lm945_104c
.Lm945_1042:
	ldr	r1, =0x1e8e
	ldr	r2, =0x933
	mov	r0, #0xf
	bl	OvlFunc_945_2009804
.Lm945_104c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2008fac

.thumb_func_start OvlFunc_945_2009078
	push	{r5, lr}
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_10d8
	bl	OvlFunc_945_20092dc
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, r5
	bl	OvlFunc_945_2009190
	ldr	r0, =0x1ea6
	bl	__MessageID
	mov	r0, #0x10
	bl	OvlFunc_945_200c86c
	mov	r0, r5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_10c2
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__MapActor_TravelTo
.Lm945_10c2:
	mov	r0, r5
	bl	__MapActor_WaitMovement
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	b	.Lm945_1118
.Lm945_10d8:
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_10e8
	ldr	r1, =0x1e91
	ldr	r2, =0x998
	b	.Lm945_1106
.Lm945_10e8:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_10f8
	ldr	r1, =0x1e91
	ldr	r2, =0x91f
	b	.Lm945_1106
.Lm945_10f8:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_110e
	ldr	r1, =0x1e91
	ldr	r2, =0x93d
.Lm945_1106:
	mov	r0, #0x10
	bl	OvlFunc_945_2009804
	b	.Lm945_1118
.Lm945_110e:
	ldr	r1, =0x1e91
	ldr	r2, =0x934
	mov	r0, #0x10
	bl	OvlFunc_945_2009804
.Lm945_1118:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009078

.thumb_func_start OvlFunc_945_2009144
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xc
	mov	r4, #0xc
	ldr	r3, [r3]
	neg	r2, r2
	neg	r4, r4
	add	r4, r1
	add	r2, r0
	mov	r6, r0
	mov	r5, #8
	mov	r14, r2
	add	r6, #0xc
	mov	r12, r4
	add	r1, #0xc
	add	r3, #0x34
.Lm945_1164:
	ldmia	r3!, {r0}
	mov	r7, #0xa
	ldrsh	r2, [r0, r7]
	mov	r7, #0x12
	ldrsh	r4, [r0, r7]
	cmp	r14, r2
	bge	.Lm945_117e
	cmp	r6, r2
	ble	.Lm945_117e
	cmp	r12, r4
	bge	.Lm945_117e
	cmp	r1, r4
	bgt	.Lm945_1186
.Lm945_117e:
	add	r5, #1
	cmp	r5, #0x41
	bls	.Lm945_1164
	mov	r0, #0
.Lm945_1186:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_2009144

.thumb_func_start OvlFunc_945_2009190
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #1
	mov	r10, r0
	mov	r1, #2
	mov	r0, r5
	mov	r8, r2
	bl	__Func_8092b08
	mov	r0, r5
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r2, r10
	ldrh	r3, [r2, #6]
	mov	r2, #0x80
	lsl	r2, #7
	mov	r7, #0xf0
	add	r3, r2
	lsl	r7, #8
	and	r3, r7
	asr	r6, r3, #12
	mov	r0, r6
	bl	OvlFunc_945_2009280
	cmp	r0, #0
	beq	.Lm945_11de
	mov	r3, #0
	mov	r8, r3
.Lm945_11de:
	mov	r2, r8
	cmp	r2, #0
	beq	.Lm945_1212
	mov	r2, r10
	ldrh	r3, [r2, #6]
	ldr	r2, =0xffffc000
	add	r3, r2
	and	r3, r7
	asr	r6, r3, #12
	mov	r0, r6
	bl	OvlFunc_945_2009280
	cmp	r0, #0
	beq	.Lm945_11fe
	mov	r3, #0
	mov	r8, r3
.Lm945_11fe:
	mov	r2, r8
	cmp	r2, #0
	beq	.Lm945_1212
	mov	r2, r10
	ldrh	r3, [r2, #6]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r2
	and	r3, r7
	asr	r6, r3, #12
.Lm945_1212:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_1226
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r5
	bl	__MapActor_SetPos
.Lm945_1226:
	mov	r0, r5
	ldr	r2, =0xcccc
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	mov	r0, r5
	mov	r1, #2
	bl	__MapActor_SetAnim
	ldr	r2, =.Lm945_6668
	lsl	r3, r6, #2
	ldr	r2, [r2, r3]
	asr	r1, r2, #16
	lsl	r2, #16
	asr	r2, #16
	mov	r0, r5
	bl	__MapActor_TravelBy
	mov	r0, r5
	bl	__MapActor_WaitMovement
	mov	r0, r5
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r3, r10
	ldrh	r1, [r3, #6]
	mov	r0, r5
	bl	OvlFunc_945_200c880
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009190

.thumb_func_start OvlFunc_945_2009280
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	ldr	r3, =.Lm945_6668
	lsl	r5, #2
	mov	r6, r0
	ldr	r3, [r3, r5]
	mov	r2, #0xa
	ldrsh	r1, [r6, r2]
	asr	r2, r3, #16
	add	r5, r1, r2
	lsl	r3, #16
	mov	r1, #0x12
	ldrsh	r2, [r6, r1]
	asr	r3, #16
	add	r7, r2, r3
	mov	r0, r5
	mov	r1, r7
	bl	OvlFunc_945_2009144
	cmp	r0, #0
	bne	.Lm945_12ca
	mov	r1, sp
	lsl	r3, r5, #16
	str	r3, [r1]
	ldr	r3, [r6, #0xc]
	str	r3, [r1, #4]
	lsl	r3, r7, #16
	str	r3, [r1, #8]
	mov	r0, r6
	bl	__TestCollision
	cmp	r0, #0
	beq	.Lm945_12ce
.Lm945_12ca:
	mov	r0, #0
	b	.Lm945_12d0
.Lm945_12ce:
	mov	r0, #1
.Lm945_12d0:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_2009280

