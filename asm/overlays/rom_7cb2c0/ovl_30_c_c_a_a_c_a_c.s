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
