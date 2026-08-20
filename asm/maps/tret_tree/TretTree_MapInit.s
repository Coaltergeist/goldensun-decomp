	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start TretTree_MapInit
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r2, =.Lm918_2dd0
	ldr	r3, =ewram_2001000
	mov	r8, r0
	str	r3, [r2]
	bl	OvlFunc_918_2009224
	ldr	r5, =0xfff60000
	mov	r3, r8
	mov	r1, r8
	add	r3, #0x55
	mov	r6, #0
	strb	r6, [r3]
	mov	r0, #9
	str	r5, [r1, #0xc]
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
	mov	r1, #0xf
	str	r5, [r0, #0xc]
	mov	r0, #9
	bl	__Func_8092950
	mov	r0, #0
	bl	OvlFunc_918_2009424
	ldr	r7, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r2, r7
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	mov	r8, r2
	cmp	r3, #0x13
	beq	.Lm918_1062
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_918_2009244
	lsl	r1, #4
	bl	__StartTask
.Lm918_1062:
	ldr	r0, =0x844
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm918_1080
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm918_1080:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm918_108e
	bl	OvlFunc_918_20097ec
.Lm918_108e:
	ldr	r6, =iwram_3001e70
	ldr	r2, [r6]
	mov	r14, r2
	mov	r3, r14
	add	r3, #0xec
	ldr	r0, [r3]
	mov	r5, #0x82
	mov	r3, #0xa0
	lsl	r3, #16
	lsl	r5, #1
	add	r5, r14
	ldr	r4, =Func_8000888
	add	r0, r3
	ldr	r1, =0x1999
	.call_via r4
	ldr	r3, [r5, #8]
	add	r3, r0
	str	r3, [r5, #8]
	mov	r3, r14
	add	r3, #0xf0
	ldr	r0, [r3]
	mov	r1, #0x88
	lsl	r1, #16
	add	r0, r1
	ldr	r1, =0x1999
	.call_via r4
	ldr	r3, [r5, #0xc]
	add	r3, r0
	str	r3, [r5, #0xc]
	ldr	r3, =0xe666
	ldr	r0, =0x201
	str	r3, [r5, #0x10]
	str	r3, [r5, #0x14]
	bl	__SetFlag
	ldr	r0, =0x20d
	bl	__SetFlag
	ldr	r0, =0x20f
	bl	__SetFlag
	ldr	r0, =0x213
	bl	__SetFlag
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	bl	OvlFunc_918_2008f58
	ldr	r3, [r6, #0x4c]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	mov	r1, r8
	sub	r2, #0xe
	mov	r3, #0
	ldrsh	r6, [r1, r3]
	add	r3, r7, r2
	ldr	r3, [r3]
	mov	r8, r3
	mov	r0, r8
	bl	__MapActor_GetActor
	mov	r7, r0
	cmp	r6, #0x32
	beq	.Lm918_112a
	cmp	r6, #0x28
	beq	.Lm918_112a
	cmp	r6, #0x1e
	beq	.Lm918_112a
	cmp	r6, #0x14
	bne	.Lm918_11b0
.Lm918_112a:
	bl	__MapTransitionIn
	mov	r1, #0x1b
	mov	r0, r8
	bl	__MapActor_SetAnim
	mov	r0, r8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r8
	ldr	r1, =0x101
	bl	__MapActor_Surprise
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	neg	r1, r1
	neg	r0, r0
	mov	r3, #0
	bl	__Func_80933f8
	mov	r3, r7
	add	r3, #0x55
	mov	r5, #2
	strb	r5, [r3]
	mov	r3, #0xc8
	lsl	r3, #15
	str	r3, [r7, #0xc]
	ldr	r3, =0xff600000
	str	r3, [r7, #0x14]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r7, #0x48]
	mov	r0, #0xcc
	bl	__PlaySound
	mov	r1, r6
	sub	r1, #0xa
	ldr	r0, =0x2d
	bl	__SetDestMap
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r3, r7
	add	r3, #0x22
	strb	r5, [r3]
	mov	r1, #3
	mov	r0, r8
	bl	__Func_8092b08
	mov	r0, #2
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, r8
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #8
	bl	__CutsceneWait
	b	.Lm918_11ce
.Lm918_11b0:
	cmp	r6, #0xa
	bne	.Lm918_11c4
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm918_11ce
	bl	OvlFunc_918_20098b8
	b	.Lm918_11ce
.Lm918_11c4:
	cmp	r6, #0x13
	bne	.Lm918_11ce
	mov	r0, #1
	bl	OvlFunc_918_2008f58
.Lm918_11ce:
	mov	r0, #0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end TretTree_MapInit

