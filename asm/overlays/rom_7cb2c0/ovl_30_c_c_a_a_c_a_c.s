	.include "macros.inc"

.thumb_func_start OvlFunc_945_2008b84
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lbde
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
	beq	.Lbcc
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__MapActor_TravelTo
.Lbcc:
	mov	r0, r5
	bl	__MapActor_WaitMovement
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lc9a
.Lbde:
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1e81
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lc84
	mov	r0, #0xc
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lc2c
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xc
	bl	__MapActor_TravelTo
.Lc2c:
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
	beq	.Lc56
	ldr	r0, =0x994
	bl	__SetFlag
	b	.Lc9a
.Lc56:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lc68
	ldr	r0, =0x91b
	bl	__SetFlag
	b	.Lc9a
.Lc68:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lc7a
	ldr	r0, =0x939
	bl	__SetFlag
	b	.Lc9a
.Lc7a:
	mov	r0, #0x93
	lsl	r0, #4
	bl	__SetFlag
	b	.Lc9a
.Lc84:
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
.Lc9a:
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
	beq	.Ld22
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
	beq	.Ld10
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__MapActor_TravelTo
.Ld10:
	mov	r0, r5
	bl	__MapActor_WaitMovement
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lde0
.Ld22:
	ldr	r0, =0x1e84
	bl	__MessageID
	mov	r2, #0x3c
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Ldca
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r0, #9
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Ld74
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #9
	bl	__MapActor_TravelTo
.Ld74:
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
	beq	.Ld9e
	ldr	r0, =0x991
	bl	__SetFlag
	b	.Lde0
.Ld9e:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ldb0
	ldr	r0, =0x918
	bl	__SetFlag
	b	.Lde0
.Ldb0:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ldc2
	ldr	r0, =0x936
	bl	__SetFlag
	b	.Lde0
.Ldc2:
	ldr	r0, =0x92d
	bl	__SetFlag
	b	.Lde0
.Ldca:
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
.Lde0:
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
	beq	.Le74
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
	beq	.Le5e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__MapActor_TravelTo
.Le5e:
	mov	r0, r5
	bl	__MapActor_WaitMovement
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	b	.Leb4
.Le74:
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Le84
	ldr	r1, =0x1e88
	ldr	r2, =0x995
	b	.Lea2
.Le84:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Le94
	ldr	r1, =0x1e88
	ldr	r2, =0x91c
	b	.Lea2
.Le94:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.Leaa
	ldr	r1, =0x1e88
	ldr	r2, =0x93a
.Lea2:
	mov	r0, #0xd
	bl	OvlFunc_945_2009804
	b	.Leb4
.Leaa:
	ldr	r1, =0x1e88
	ldr	r2, =0x931
	mov	r0, #0xd
	bl	OvlFunc_945_2009804
.Leb4:
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
	beq	.Lf40
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
	beq	.Lf2a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__MapActor_TravelTo
.Lf2a:
	mov	r0, r5
	bl	__MapActor_WaitMovement
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	b	.Lf80
.Lf40:
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lf50
	ldr	r1, =0x1e8b
	ldr	r2, =0x996
	b	.Lf6e
.Lf50:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lf60
	ldr	r1, =0x1e8b
	ldr	r2, =0x91d
	b	.Lf6e
.Lf60:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lf76
	ldr	r1, =0x1e8b
	ldr	r2, =0x93b
.Lf6e:
	mov	r0, #0xe
	bl	OvlFunc_945_2009804
	b	.Lf80
.Lf76:
	ldr	r1, =0x1e8b
	ldr	r2, =0x932
	mov	r0, #0xe
	bl	OvlFunc_945_2009804
.Lf80:
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
	beq	.L100c
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
	beq	.Lff6
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__MapActor_TravelTo
.Lff6:
	mov	r0, r5
	bl	__MapActor_WaitMovement
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	b	.L104c
.L100c:
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.L101c
	ldr	r1, =0x1e8e
	ldr	r2, =0x997
	b	.L103a
.L101c:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L102c
	ldr	r1, =0x1e8e
	ldr	r2, =0x91e
	b	.L103a
.L102c:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1042
	ldr	r1, =0x1e8e
	ldr	r2, =0x93c
.L103a:
	mov	r0, #0xf
	bl	OvlFunc_945_2009804
	b	.L104c
.L1042:
	ldr	r1, =0x1e8e
	ldr	r2, =0x933
	mov	r0, #0xf
	bl	OvlFunc_945_2009804
.L104c:
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
	beq	.L10d8
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
	beq	.L10c2
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__MapActor_TravelTo
.L10c2:
	mov	r0, r5
	bl	__MapActor_WaitMovement
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	b	.L1118
.L10d8:
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.L10e8
	ldr	r1, =0x1e91
	ldr	r2, =0x998
	b	.L1106
.L10e8:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L10f8
	ldr	r1, =0x1e91
	ldr	r2, =0x91f
	b	.L1106
.L10f8:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.L110e
	ldr	r1, =0x1e91
	ldr	r2, =0x93d
.L1106:
	mov	r0, #0x10
	bl	OvlFunc_945_2009804
	b	.L1118
.L110e:
	ldr	r1, =0x1e91
	ldr	r2, =0x934
	mov	r0, #0x10
	bl	OvlFunc_945_2009804
.L1118:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009078

.section .text.after_9144
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
	beq	.L11de
	mov	r3, #0
	mov	r8, r3
.L11de:
	mov	r2, r8
	cmp	r2, #0
	beq	.L1212
	mov	r2, r10
	ldrh	r3, [r2, #6]
	ldr	r2, =0xffffc000
	add	r3, r2
	and	r3, r7
	asr	r6, r3, #12
	mov	r0, r6
	bl	OvlFunc_945_2009280
	cmp	r0, #0
	beq	.L11fe
	mov	r3, #0
	mov	r8, r3
.L11fe:
	mov	r2, r8
	cmp	r2, #0
	beq	.L1212
	mov	r2, r10
	ldrh	r3, [r2, #6]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r2
	and	r3, r7
	asr	r6, r3, #12
.L1212:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1226
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r5
	bl	__MapActor_SetPos
.L1226:
	mov	r0, r5
	ldr	r2, =0xcccc
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	mov	r0, r5
	mov	r1, #2
	bl	__MapActor_SetAnim
	ldr	r2, =.L6668
	lsl	r3, r6, #2
	ldr	r2, [r2, r3]
	asr	r1, r2, #16
	lsl	r2, #16
	asr	r2, #16
	mov	r0, r5
	bl	__Func_809228c
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
	ldr	r3, =.L6668
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
	bne	.L12ca
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
	beq	.L12ce
.L12ca:
	mov	r0, #0
	b	.L12d0
.L12ce:
	mov	r0, #1
.L12d0:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_2009280
