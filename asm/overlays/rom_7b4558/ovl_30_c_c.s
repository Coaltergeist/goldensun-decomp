	.include "macros.inc"

.thumb_func_start OvlFunc_927_2008f40
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x44
	cmp	r2, r3
	bne	.Lf58
	ldr	r0, =.L36a0
	b	.Lf6e
.Lf58:
	ldr	r3, =0x45
	cmp	r2, r3
	bne	.Lf62
	ldr	r0, =.L3790
	b	.Lf6e
.Lf62:
	ldr	r3, =0x46
	cmp	r2, r3
	bne	.Lf6c
	ldr	r0, =.L38b0
	b	.Lf6e
.Lf6c:
	ldr	r0, =.L3a30
.Lf6e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_927_2008f40

.thumb_func_start OvlFunc_927_2008f94
	push	{r5, lr}
	sub	sp, #0x20
	bl	__CutsceneStart
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_927_2008474
	cmp	r0, #0
	beq	.L1030
	mov	r3, sp
	add	r2, sp, #0x18
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	ldr	r3, [r5, #0xc]
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	bl	OvlFunc_927_2008608
	ldr	r3, [r5, #4]
	cmp	r3, #9
	bne	.L1030
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x1a
	bne	.L1030
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__SetFlag
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #7
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, #0x10
	neg	r2, r2
	mov	r1, #0
	mov	r0, #9
	bl	__Func_809228c
	mov	r0, #0x2d
	bl	__CutsceneWait
	mov	r1, #8
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #0xf0
	bl	__PlaySound
	mov	r1, #1
	mov	r0, #9
	bl	__Func_8092b08
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x19
	mov	r3, #0x1f
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x26
	mov	r1, #0x1b
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
.L1030:
	bl	__Func_8091750
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2008f94

.thumb_func_start OvlFunc_927_200903c
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	ldr	r1, =0xfff00000
	ldr	r3, [r0, #8]
	mov	r4, #0x80
	lsl	r4, #12
	and	r3, r1
	mov	r2, sp
	add	r3, r4
	str	r3, [r2]
	ldr	r3, [r0, #0xc]
	str	r3, [r2, #4]
	ldr	r3, [r0, #0x10]
	and	r3, r1
	ldr	r1, =0xffe80000
	add	r3, r1
	str	r3, [r2, #8]
	mov	r0, r2
	bl	OvlFunc_927_2008cd0
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_200903c

.thumb_func_start OvlFunc_927_2009078
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r7, r6
	add	r7, #0x55
	ldrb	r1, [r7]
	ldr	r3, [r6, #8]
	ldr	r2, =0xfff00000
	mov	r8, r1
	mov	r1, #0x80
	and	r3, r2
	lsl	r1, #12
	mov	r0, sp
	add	r3, r1
	str	r3, [r0]
	ldr	r3, [r6, #0xc]
	str	r3, [r0, #4]
	ldr	r3, [r6, #0x10]
	and	r3, r2
	mov	r2, #0xa0
	lsl	r2, #14
	add	r3, r2
	str	r3, [r0, #8]
	bl	OvlFunc_927_2008cd0
	cmp	r0, #0
	beq	.L1118
	bl	__CutsceneStart
	mov	r3, #0
	mov	r1, #7
	strb	r3, [r7]
	mov	r0, #9
	bl	__MapActor_SetAnim
	ldr	r5, =0xffff0000
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r0, #2
	bl	__WaitFrames
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r5, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r5, #9
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r0, #4
	bl	__WaitFrames
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r3, r8
	strb	r3, [r7]
	bl	__Func_8091750
.L1118:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009078

.thumb_func_start OvlFunc_927_200912c
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	ldr	r0, =0x17e6
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_200912c

.thumb_func_start OvlFunc_927_2009150
	push	{r5, lr}
	mov	r0, #0xa
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0xa
	mov	r1, #1
	bl	OvlFunc_927_2008ea8
	mov	r3, #0xc0
	lsl	r3, #11
	mov	r0, #0xa
	mov	r1, #0x58
	mov	r2, #0x78
	bl	OvlFunc_927_2008d90
	ldr	r2, [r5, #0x10]
	mov	r3, #0xc0
	lsl	r3, #13
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_927_2008ae8
	mov	r0, #0xa
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xa
	mov	r5, #0xc0
	bl	__MapActor_Surprise
	lsl	r5, #10
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r3, r5
	mov	r0, #0xa
	mov	r1, #0x58
	mov	r2, #0x98
	bl	OvlFunc_927_2008d90
	mov	r1, #0xa
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r3, r5
	mov	r0, #0xa
	mov	r1, #0x78
	mov	r2, #0xc0
	bl	OvlFunc_927_2008d90
	mov	r1, #0xa
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r3, r5
	mov	r0, #0xa
	mov	r1, #0x78
	mov	r2, #0xf0
	bl	OvlFunc_927_2008d90
	mov	r1, #0xa
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__Func_8091750
	add	sp, #0x10
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009150

.thumb_func_start OvlFunc_927_2009244
	push	{r5, lr}
	mov	r0, #0xb
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0xb
	mov	r1, #0
	bl	OvlFunc_927_2008ea8
	mov	r1, #0xcc
	mov	r2, #0xe4
	mov	r3, #0xc0
	lsl	r1, #1
	lsl	r2, #1
	lsl	r3, #11
	mov	r0, #0xb
	bl	OvlFunc_927_2008d90
	ldr	r2, [r5, #0x10]
	mov	r3, #0xc0
	lsl	r3, #13
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_927_2008ae8
	mov	r0, #0xb
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092848
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #0xb
	bl	__MapActor_Emote
	mov	r0, #0x93
	bl	__PlaySound
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xa
	ldrsh	r5, [r0, r2]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r3, #0x80
	lsl	r3, #11
	mov	r1, r5
	mov	r0, #0xb
	bl	OvlFunc_927_2008d90
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x301
	bl	__SetFlag
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x35
	mov	r1, #0
	bl	__Func_8091eb0
	bl	__Func_8091750
	add	sp, #0x10
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009244

.thumb_func_start OvlFunc_927_2009328
	push	{r5, r6, lr}
	mov	r0, #0xc
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r6, #0xac
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0xc
	mov	r1, #1
	bl	OvlFunc_927_2008ea8
	lsl	r6, #1
	mov	r1, #0x86
	mov	r3, #0xe0
	mov	r2, r6
	lsl	r1, #2
	lsl	r3, #11
	mov	r0, #0xc
	bl	OvlFunc_927_2008d90
	ldr	r2, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #13
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_927_2008ae8
	mov	r0, #0xc
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Surprise
	mov	r5, #0xc0
	mov	r0, #0x3c
	bl	__CutsceneWait
	lsl	r5, #10
	mov	r1, #0x92
	mov	r3, r5
	mov	r2, r6
	lsl	r1, #2
	mov	r0, #0xc
	bl	OvlFunc_927_2008d90
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0x9e
	mov	r3, r5
	mov	r2, r6
	lsl	r1, #2
	mov	r0, #0xc
	bl	OvlFunc_927_2008d90
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0xaa
	mov	r3, r5
	mov	r2, r6
	lsl	r1, #2
	mov	r0, #0xc
	bl	OvlFunc_927_2008d90
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	ldr	r0, =0x302
	bl	__SetFlag
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__Func_8091750
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009328

.thumb_func_start OvlFunc_927_2009420
	push	{lr}
	bl	__CutsceneStart
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x10
	bl	__MapActor_SetPos
	ldr	r0, =0xfd4
	bl	__SetFlag
	mov	r0, #0xb5
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, #0xb5
	bl	__Func_8091a58
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009420

.thumb_func_start OvlFunc_927_2009454
	push	{r5, lr}
	sub	sp, #0x20
	bl	__CutsceneStart
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_927_2008474
	cmp	r0, #0
	beq	.L1510
	mov	r3, sp
	add	r2, sp, #0x18
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	ldr	r3, [r5, #0xc]
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	bl	OvlFunc_927_2008608
	ldr	r3, [r5, #4]
	cmp	r3, #8
	bne	.L14a0
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x17
	bne	.L14a0
	mov	r3, #0x23
	mov	r2, #0x44
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x23
	mov	r1, #0x43
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8010704
	b	.L1510
.L14a0:
	ldr	r3, [r5, #4]
	cmp	r3, #0xa
	bne	.L1510
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0x23
	bne	.L1510
	ldr	r0, =0x311
	bl	__SetFlag
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #0x10
	mov	r2, #6
	neg	r1, r1
	mov	r0, #0xa
	bl	__Func_809228c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #8
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xf0
	bl	__PlaySound
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x1e
	mov	r3, #0x22
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2c
	mov	r1, #0x1e
	mov	r2, #2
	mov	r3, #4
	bl	__Func_8010704
	mov	r3, #4
	mov	r5, #0
	str	r3, [sp]
	mov	r0, #2
	mov	r1, #0x23
	mov	r2, #0x1e
	mov	r3, #1
	str	r5, [sp, #4]
	bl	OvlFunc_927_2008244
.L1510:
	bl	__Func_8091750
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009454

.thumb_func_start OvlFunc_927_2009520
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r5, #20
	asr	r7, r3, #20
	mov	r3, #0xff
	mov	r6, #1
	str	r3, [sp, #4]
	mov	r1, r5
	mov	r2, r7
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	bl	OvlFunc_927_2008244
	mov	r2, #0
	mov	r8, r2
	str	r2, [sp, #4]
	add	r1, r5, #1
	mov	r2, r7
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	bl	OvlFunc_927_2008244
	mov	r3, r8
	str	r3, [sp, #4]
	sub	r1, r5, #1
	mov	r2, r7
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	bl	OvlFunc_927_2008244
	mov	r3, r8
	add	r2, r7, #1
	str	r3, [sp, #4]
	mov	r1, r5
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	bl	OvlFunc_927_2008244
	mov	r3, r8
	str	r3, [sp, #4]
	sub	r2, r7, #1
	mov	r0, #2
	mov	r1, r5
	mov	r3, #1
	str	r6, [sp]
	bl	OvlFunc_927_2008244
	cmp	r5, #0x24
	bne	.L15ba
	cmp	r7, #0x18
	bne	.L15ba
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x55
	mov	r2, r8
	strb	r2, [r3]
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0x14]
	str	r3, [r0, #0xc]
.L15ba:
	bl	__Func_8091750
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009520

.thumb_func_start OvlFunc_927_20095d0
	push	{r5, r6, lr}
	mov	r0, #0xc
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0xc
	mov	r1, #1
	bl	OvlFunc_927_2008ea8
	mov	r1, #0xc4
	mov	r3, #0xe0
	lsl	r1, #1
	lsl	r3, #11
	mov	r2, #0x68
	mov	r0, #0xc
	bl	OvlFunc_927_2008d90
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r2, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #11
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_927_2008ae8
	mov	r0, #0xc
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xc
	mov	r5, #0xd4
	mov	r6, #0xc0
	bl	__MapActor_Surprise
	lsl	r5, #1
	lsl	r6, #10
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r3, r6
	mov	r1, r5
	mov	r0, #0xc
	mov	r2, #0x78
	bl	OvlFunc_927_2008d90
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r3, r6
	mov	r1, r5
	mov	r0, #0xc
	mov	r2, #0xa8
	bl	OvlFunc_927_2008d90
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r3, r6
	mov	r1, r5
	mov	r0, #0xc
	mov	r2, #0xd0
	bl	OvlFunc_927_2008d90
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r3, r6
	mov	r1, r5
	mov	r0, #0xc
	mov	r2, #0xe8
	bl	OvlFunc_927_2008d90
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_SetPos
	ldr	r0, =0x303
	bl	__SetFlag
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__Func_8091750
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_20095d0

.thumb_func_start OvlFunc_927_20096f0
	push	{r5, lr}
	mov	r0, #0xd
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0xd
	mov	r1, #1
	bl	OvlFunc_927_2008ea8
	mov	r1, #0xe4
	mov	r3, #0xe0
	lsl	r1, #1
	lsl	r3, #11
	mov	r2, #0x68
	mov	r0, #0xd
	bl	OvlFunc_927_2008d90
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r2, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #11
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_927_2008ae8
	mov	r0, #0xd
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xd
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xec
	mov	r3, #0xc0
	lsl	r3, #10
	lsl	r1, #1
	mov	r0, #0xd
	mov	r2, #0x88
	bl	OvlFunc_927_2008d90
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0xfc
	ldr	r3, =0x33333
	lsl	r1, #1
	mov	r0, #0xd
	mov	r2, #0x88
	bl	OvlFunc_927_2008d90
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r5, #0xe0
	mov	r0, #6
	bl	__CutsceneWait
	lsl	r5, #10
	mov	r1, #0x8a
	mov	r3, r5
	lsl	r1, #2
	mov	r0, #0xd
	mov	r2, #0x88
	bl	OvlFunc_927_2008d90
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0x92
	mov	r3, r5
	lsl	r1, #2
	mov	r0, #0xd
	mov	r2, #0x88
	bl	OvlFunc_927_2008d90
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xd
	bl	__MapActor_SetPos
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__SetFlag
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__Func_8091750
	add	sp, #0x10
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_20096f0

.thumb_func_start OvlFunc_927_2009818
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0xe
	mov	r1, #1
	bl	OvlFunc_927_2008ea8
	mov	r1, #0xd4
	mov	r2, #0xf0
	ldr	r3, =0x79999
	lsl	r2, #1
	lsl	r1, #1
	mov	r0, #0xe
	bl	OvlFunc_927_2008d90
	mov	r0, #2
	bl	__CutsceneWait
	mov	r0, #0xe
	bl	OvlFunc_927_2008e18
	mov	r1, #0xf
	mov	r0, #0xe
	bl	__Func_8092950
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x305
	bl	__SetFlag
	mov	r1, #0xd4
	mov	r2, #0xf0
	mov	r0, #0x11
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009818

.thumb_func_start OvlFunc_927_2009880
	push	{r5, r6, lr}
	mov	r0, #0xe
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0xe
	mov	r1, #1
	bl	OvlFunc_927_2008ea8
	mov	r1, #0xc4
	mov	r2, #0xfc
	mov	r3, #0xc0
	lsl	r1, #1
	lsl	r2, #1
	lsl	r3, #11
	mov	r0, #0xe
	bl	OvlFunc_927_2008d90
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r2, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #11
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_927_2008ae8
	mov	r0, #0xe
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xe
	bl	__MapActor_Surprise
	mov	r5, #0x84
	mov	r0, #0x3c
	mov	r6, #0xc0
	bl	__CutsceneWait
	lsl	r5, #2
	lsl	r6, #10
	mov	r1, #0xb4
	mov	r3, r6
	mov	r2, r5
	lsl	r1, #1
	mov	r0, #0xe
	bl	OvlFunc_927_2008d90
	mov	r1, #0xe
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0xa4
	mov	r3, r6
	mov	r2, r5
	lsl	r1, #1
	mov	r0, #0xe
	bl	OvlFunc_927_2008d90
	mov	r1, #0xe
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0x90
	mov	r3, r6
	mov	r2, r5
	lsl	r1, #1
	mov	r0, #0xe
	bl	OvlFunc_927_2008d90
	mov	r1, #0xe
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r3, r6
	mov	r2, r5
	lsl	r1, #1
	mov	r0, #0xe
	bl	OvlFunc_927_2008d90
	mov	r2, #0
	mov	r1, #0xe
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xe
	bl	__MapActor_SetPos
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x306
	bl	__SetFlag
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__Func_8091750
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009880

.thumb_func_start OvlFunc_927_20099b8
	push	{r5, r6, lr}
	sub	sp, #0x20
	bl	__CutsceneStart
	add	r5, sp, #8
	mov	r0, r5
	mov	r6, #0
	bl	OvlFunc_927_2008474
	cmp	r0, #0
	beq	.L1ab2
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r3, [r5, #0xc]
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	bl	OvlFunc_927_2008608
	ldr	r3, [r5, #4]
	cmp	r3, #9
	beq	.L19ee
	cmp	r3, #0xb
	bne	.L1a98
	b	.L1a30
.L19ee:
	ldr	r3, [r5, #8]
	mov	r2, #0x44
	asr	r3, #20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r2, #1
	mov	r0, #0x26
	mov	r1, #0x44
	bl	__Func_8010704
	ldr	r3, [r5, #8]
	asr	r2, r3, #20
	cmp	r2, #0x2a
	bne	.L1a5a
	mov	r3, #0x17
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x14
	mov	r2, #2
	mov	r3, #4
	bl	__Func_8010704
	mov	r0, #9
	mov	r1, #1
	bl	__Func_8092b08
	ldr	r0, =0x312
	mov	r6, #1
	bl	__SetFlag
	b	.L1a5a
.L1a30:
	ldr	r3, [r5, #8]
	asr	r2, r3, #20
	cmp	r2, #0x28
	bne	.L1a5a
	mov	r3, #0x20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x14
	mov	r2, #2
	mov	r3, #4
	bl	__Func_8010704
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_8092b08
	ldr	r0, =0x313
	mov	r6, #1
	bl	__SetFlag
.L1a5a:
	cmp	r6, #0
	bne	.L1a64
	bl	__Func_8091750
	b	.L1ab6
.L1a64:
	ldr	r0, [r5, #4]
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r2, #6
	mov	r1, #0x12
	ldr	r0, [r5, #4]
	bl	__Func_809228c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #8
	ldr	r0, [r5, #4]
	bl	__MapActor_SetAnim
	mov	r0, #0xf0
	bl	__PlaySound
	ldr	r0, [r5, #4]
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	b	.L1ab2
.L1a98:
	cmp	r3, #8
	bne	.L1ab2
	ldr	r3, [r5, #8]
	mov	r2, #0x31
	asr	r3, #20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2a
	mov	r1, #0x31
	mov	r2, #1
	mov	r3, #4
	bl	__Func_8010704
.L1ab2:
	bl	__Func_8091750
.L1ab6:
	add	sp, #0x20
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_20099b8

.thumb_func_start OvlFunc_927_2009ac8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r7, r6
	add	r7, #0x55
	ldrb	r2, [r7]
	mov	r0, #0
	mov	r8, r2
	bl	__MapActor_GetActor
	ldr	r2, =0xffe00000
	ldr	r3, [r0, #8]
	mov	r5, sp
	add	r3, r2
	str	r3, [r5]
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	mov	r0, #0
	str	r3, [r5, #4]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, r5
	str	r3, [r5, #8]
	bl	OvlFunc_927_2008cd0
	cmp	r0, #0
	beq	.L1b6e
	bl	__CutsceneStart
	mov	r3, #0
	mov	r1, #7
	strb	r3, [r7]
	mov	r0, #0xb
	bl	__MapActor_SetAnim
	ldr	r5, =0xffff0000
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r0, #2
	bl	__WaitFrames
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r5, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r5, #9
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r0, #4
	bl	__WaitFrames
	ldr	r3, [r6, #0xc]
	add	r3, r5
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	add	r3, r5
	str	r3, [r6, #0x14]
	mov	r3, r8
	strb	r3, [r7]
	bl	__Func_8091750
.L1b6e:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009ac8

.thumb_func_start OvlFunc_927_2009b84
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r5, #20
	asr	r7, r3, #20
	mov	r3, #0xff
	mov	r6, #1
	str	r3, [sp, #4]
	mov	r1, r5
	mov	r2, r7
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	bl	OvlFunc_927_2008244
	mov	r2, #0
	mov	r8, r2
	str	r2, [sp, #4]
	add	r1, r5, #1
	mov	r2, r7
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	bl	OvlFunc_927_2008244
	mov	r3, r8
	str	r3, [sp, #4]
	sub	r1, r5, #1
	mov	r2, r7
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	bl	OvlFunc_927_2008244
	mov	r3, r8
	add	r2, r7, #1
	str	r3, [sp, #4]
	mov	r1, r5
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	bl	OvlFunc_927_2008244
	mov	r3, r8
	str	r3, [sp, #4]
	sub	r2, r7, #1
	mov	r0, #2
	mov	r1, r5
	mov	r3, #1
	str	r6, [sp]
	bl	OvlFunc_927_2008244
	cmp	r5, #0x2d
	bne	.L1c1e
	cmp	r7, #6
	bne	.L1c1e
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x55
	mov	r2, r8
	strb	r2, [r3]
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0x14]
	str	r3, [r0, #0xc]
.L1c1e:
	bl	__Func_8091750
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009b84

.thumb_func_start OvlFunc_927_2009c34
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r6, [r0, #8]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r5, [r0, #0x10]
	mov	r3, #1
	str	r3, [sp]
	asr	r6, #20
	asr	r5, #20
	mov	r8, r3
	mov	r3, #0xff
	str	r3, [sp, #4]
	mov	r2, r5
	mov	r1, r6
	mov	r10, r3
	mov	r0, #2
	mov	r3, #1
	bl	OvlFunc_927_2008244
	mov	r7, #0
	mov	r3, r8
	mov	r2, r5
	add	r1, r6, #1
	mov	r0, #2
	str	r3, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_927_2008244
	mov	r3, r8
	mov	r2, r5
	sub	r1, r6, #1
	mov	r0, #2
	str	r3, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_927_2008244
	add	r2, r5, #1
	mov	r3, r8
	mov	r1, r6
	mov	r0, #2
	str	r3, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_927_2008244
	sub	r5, #1
	mov	r3, r8
	mov	r1, r6
	mov	r2, r5
	mov	r0, #2
	str	r3, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_927_2008244
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x1b
	bne	.L1cee
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x55
	strb	r7, [r3]
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0x14]
	str	r3, [r0, #0xc]
	mov	r0, #0x85
	lsl	r0, #2
	bl	__SetFlag
	mov	r3, r8
	str	r3, [sp]
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #2
	mov	r1, #0x2b
	mov	r2, #0x17
	mov	r3, #1
	bl	OvlFunc_927_2008244
.L1cee:
	bl	__Func_8091750
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009c34

.thumb_func_start OvlFunc_927_2009d04
	push	{r5, r6, lr}
	mov	r0, #0xf
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r6, #0x80
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0xf
	mov	r1, #0
	bl	OvlFunc_927_2008ea8
	lsl	r6, #12
	mov	r1, #0xec
	mov	r3, r6
	lsl	r1, #1
	mov	r2, #0x68
	mov	r0, #0xf
	bl	OvlFunc_927_2008d90
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r2, [r5, #0x10]
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	add	r2, r6
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_927_2008ae8
	mov	r0, #0xf
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092848
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #0xf
	bl	__MapActor_Emote
	mov	r0, #0x93
	bl	__PlaySound
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xa
	ldrsh	r5, [r0, r2]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r3, #0xc0
	lsl	r3, #11
	mov	r1, r5
	mov	r0, #0xf
	bl	OvlFunc_927_2008d90
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x307
	bl	__SetFlag
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x35
	mov	r1, #0
	bl	__Func_8091eb0
	bl	__Func_8091750
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009d04

.thumb_func_start OvlFunc_927_2009de0
	push	{r5, r6, lr}
	mov	r0, #0x10
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0x10
	mov	r1, #1
	bl	OvlFunc_927_2008ea8
	mov	r1, #0xe4
	mov	r3, #0xc0
	lsl	r1, #1
	lsl	r3, #11
	mov	r2, #0x98
	mov	r0, #0x10
	bl	OvlFunc_927_2008d90
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r2, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #11
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_927_2008ae8
	mov	r0, #0x10
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x10
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x10
	bl	__MapActor_Surprise
	mov	r5, #0xc0
	mov	r0, #0x3c
	bl	__CutsceneWait
	lsl	r5, #10
	mov	r1, #0xe0
	mov	r3, r5
	lsl	r1, #1
	mov	r0, #0x10
	mov	r2, #0xc0
	bl	OvlFunc_927_2008d90
	mov	r6, #0xd4
	mov	r1, #0x10
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	lsl	r6, #1
	mov	r0, #6
	bl	__CutsceneWait
	mov	r3, r5
	mov	r1, r6
	mov	r0, #0x10
	mov	r2, #0xd0
	bl	OvlFunc_927_2008d90
	mov	r1, #0x10
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r3, r5
	mov	r1, r6
	mov	r0, #0x10
	mov	r2, #0xe0
	bl	OvlFunc_927_2008d90
	mov	r2, #0
	mov	r1, #0x10
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x10
	bl	__MapActor_SetPos
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__SetFlag
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__Func_8091750
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009de0

.thumb_func_start OvlFunc_927_2009ef0
	push	{r5, r6, lr}
	mov	r0, #0x11
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r6, #0xc0
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0x11
	mov	r1, #1
	bl	OvlFunc_927_2008ea8
	lsl	r6, #11
	mov	r1, #0xc4
	mov	r3, r6
	lsl	r1, #1
	mov	r2, #0x68
	mov	r0, #0x11
	bl	OvlFunc_927_2008d90
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r2, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #11
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_927_2008ae8
	mov	r0, #0x11
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x11
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x11
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xbc
	mov	r3, r6
	lsl	r1, #1
	mov	r0, #0x11
	mov	r2, #0x98
	bl	OvlFunc_927_2008d90
	mov	r1, #0x11
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r5, #0xc0
	mov	r0, #0xa
	bl	__CutsceneWait
	lsl	r5, #10
	mov	r1, #0xa4
	mov	r3, r5
	lsl	r1, #1
	mov	r0, #0x11
	mov	r2, #0xa0
	bl	OvlFunc_927_2008d90
	mov	r1, #0x11
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0x94
	mov	r3, r5
	lsl	r1, #1
	mov	r0, #0x11
	mov	r2, #0xa0
	bl	OvlFunc_927_2008d90
	mov	r2, #0
	mov	r1, #0x11
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x11
	bl	__MapActor_SetPos
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x309
	bl	__SetFlag
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__Func_8091750
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009ef0

.thumb_func_start OvlFunc_927_200a004
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0x12
	mov	r1, #1
	bl	OvlFunc_927_2008ea8
	mov	r0, #0xba
	mov	r1, #1
	mov	r2, #0xfc
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #17
	mov	r3, #1
	bl	__Func_80933f8
	mov	r1, #0xba
	mov	r2, #0xfc
	mov	r3, #0x90
	lsl	r3, #12
	lsl	r2, #1
	lsl	r1, #2
	mov	r0, #0x12
	bl	OvlFunc_927_2008d90
	mov	r0, #0x12
	bl	OvlFunc_927_2008e18
	mov	r1, #0xf
	mov	r0, #0x12
	bl	__Func_8092950
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x30a
	bl	__SetFlag
	mov	r1, #0xba
	mov	r2, #0xfc
	mov	r0, #0x16
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_200a004

.thumb_func_start OvlFunc_927_200a078
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0x12
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r6, #0xb2
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0x12
	mov	r1, #1
	bl	OvlFunc_927_2008ea8
	lsl	r6, #2
	mov	r2, #0x86
	mov	r3, #0xc0
	lsl	r3, #11
	mov	r1, r6
	lsl	r2, #2
	mov	r0, #0x12
	mov	r8, r3
	bl	OvlFunc_927_2008d90
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r2, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #11
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_927_2008ae8
	mov	r0, #0x12
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x12
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x8e
	mov	r3, r8
	mov	r1, r6
	lsl	r2, #2
	mov	r0, #0x12
	bl	OvlFunc_927_2008d90
	mov	r1, #0x12
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r5, #0xc0
	mov	r0, #0xa
	bl	__CutsceneWait
	lsl	r5, #10
	mov	r2, #0x96
	mov	r3, r5
	mov	r1, r6
	lsl	r2, #2
	mov	r0, #0x12
	bl	OvlFunc_927_2008d90
	mov	r1, #0x12
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	add	r6, #0x18
	mov	r2, #0xa0
	mov	r3, r5
	mov	r1, r6
	lsl	r2, #2
	mov	r0, #0x12
	bl	OvlFunc_927_2008d90
	mov	r1, #0x12
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r2, #0xb0
	mov	r3, r5
	mov	r1, r6
	lsl	r2, #2
	mov	r0, #0x12
	bl	OvlFunc_927_2008d90
	mov	r2, #0
	mov	r1, #0x12
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x12
	bl	__MapActor_SetPos
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x30b
	bl	__SetFlag
	bl	__Func_8091750
	add	sp, #0x10
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_200a078

.thumb_func_start OvlFunc_927_200a1b0
	push	{r5, lr}
	mov	r0, #0x12
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r1, #0x88
	mov	r2, #0xb4
	lsl	r2, #17
	mov	r0, #0x12
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r0, #0x12
	mov	r1, #1
	bl	OvlFunc_927_2008ea8
	mov	r2, #0xcc
	mov	r3, #0x80
	lsl	r2, #1
	lsl	r3, #12
	mov	r1, #0x88
	mov	r0, #0x12
	bl	OvlFunc_927_2008d90
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r2, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #11
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_927_2008ae8
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0x12
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #0x12
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x12
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r2, #0xdc
	mov	r3, #0xc0
	lsl	r3, #11
	lsl	r2, #1
	mov	r0, #0x12
	mov	r1, #0x88
	bl	OvlFunc_927_2008d90
	mov	r1, #0x12
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r5, #0xc0
	mov	r0, #0xa
	bl	__CutsceneWait
	lsl	r5, #10
	mov	r2, #0xec
	mov	r3, r5
	lsl	r2, #1
	mov	r0, #0x12
	mov	r1, #0x88
	bl	OvlFunc_927_2008d90
	mov	r1, #0x12
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r2, #0xfc
	mov	r3, r5
	lsl	r2, #1
	mov	r0, #0x12
	mov	r1, #0x88
	bl	OvlFunc_927_2008d90
	mov	r2, #0
	mov	r1, #0x12
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x12
	bl	__MapActor_SetPos
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r0, =0x89d
	bl	__SetFlag
	bl	__Func_8091750
	add	sp, #0x10
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_200a1b0

.thumb_func_start OvlFunc_927_200a2c0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x12
	sub	sp, #0x1c
	bl	__MapActor_GetActor
	mov	r10, r0
	bl	__CutsceneStart
	mov	r1, #0xf
	mov	r0, #0x12
	bl	__Func_8092950
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #0x88
	mov	r2, #0xb4
	lsl	r2, #17
	mov	r0, #0x12
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_80933d4
	mov	r0, #0x88
	mov	r1, #1
	mov	r2, #0xc4
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #11
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x12
	bl	OvlFunc_927_2008e18
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x12
	bl	OvlFunc_927_2008e18
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x12
	bl	OvlFunc_927_2008e18
	ldr	r3, =0x13333
	mov	r1, r10
	str	r3, [r1, #0x18]
	str	r3, [r1, #0x1c]
	mov	r0, #0x12
	mov	r1, #5
	bl	__Func_8092950
	mov	r2, #0xc4
	mov	r3, #0xf0
	lsl	r2, #1
	lsl	r3, #12
	mov	r1, #0x88
	mov	r0, #0x12
	bl	OvlFunc_927_2008d90
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_8012330
	mov	r2, #0
	mov	r7, #0
	add	r6, sp, #0x10
	mov	r8, r2
.L23d4:
	lsl	r5, r7, #12
	mov	r0, r5
	bl	__cos
	mov	r3, r8
	str	r0, [r6]
	mov	r0, r5
	str	r3, [r6, #4]
	bl	__sin
	ldr	r3, [r6]
	lsr	r2, r3, #31
	add	r2, r3, r2
	asr	r2, #1
	add	r3, r2
	str	r0, [r6, #8]
	str	r3, [r6]
	mov	r1, r10
	ldr	r4, [r1, #8]
	ldr	r2, [r1, #0x10]
	ldr	r1, [r6, #4]
	str	r1, [sp]
	mov	r1, #1
	str	r1, [sp, #8]
	mov	r1, r8
	str	r0, [sp, #4]
	str	r1, [sp, #0xc]
	mov	r0, r4
	mov	r1, #0
	add	r7, #1
	bl	OvlFunc_927_2008ae8
	cmp	r7, #0x10
	bls	.L23d4
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r0, #0x94
	bl	__PlaySound
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xa
	ldrsh	r5, [r0, r2]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r3, #0x80
	sub	r2, #0x10
	lsl	r3, #12
	mov	r1, r5
	mov	r0, #0x12
	bl	OvlFunc_927_2008d90
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r3, =gState
	ldr	r1, =0x22b
	mov	r2, #3
	add	r3, r1
	strb	r2, [r3]
	ldr	r0, =0x46
	mov	r1, #0xf
	bl	__Func_8091f90
	mov	r0, #0x35
	mov	r1, #1
	bl	__Func_8091eb0
	bl	__Func_8091750
	add	sp, #0x1c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_200a2c0

.thumb_func_start OvlFunc_927_200a4ac
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x44
	cmp	r2, r3
	bne	.L24c4
	ldr	r0, =.L3a48
	b	.L24da
.L24c4:
	ldr	r3, =0x45
	cmp	r2, r3
	bne	.L24ce
	ldr	r0, =.L3b20
	b	.L24da
.L24ce:
	ldr	r3, =0x46
	cmp	r2, r3
	bne	.L24d8
	ldr	r0, =.L3c1c
	b	.L24da
.L24d8:
	ldr	r0, =.L3d54
.L24da:
	pop	{r1}
	bx	r1
.func_end OvlFunc_927_200a4ac

.thumb_func_start OvlFunc_927_200a500
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r3, #2
	lsl	r2, #1
	str	r3, [r1, r2]
	ldr	r1, =gState
	ldrsh	r2, [r1, r2]
	ldr	r3, =0x44
	sub	sp, #8
	cmp	r2, r3
	beq	.L251e
	b	.L26fa
.L251e:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	bge	.L252e
	b	.L2b56
.L252e:
	cmp	r3, #4
	ble	.L2540
	cmp	r3, #9
	ble	.L2538
	b	.L2b56
.L2538:
	cmp	r3, #7
	bge	.L253e
	b	.L2b56
.L253e:
	b	.L2622
.L2540:
	ldr	r0, =0x89c
	bl	__GetFlag
	cmp	r0, #0
	bne	.L25f0
	bl	__CutsceneStart
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_8092950
	mov	r1, #0xb8
	mov	r2, #0xf0
	mov	r0, #0xa
	lsl	r1, #15
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_8092064
	mov	r1, #0x88
	mov	r2, #0x40
	mov	r0, #0
	bl	__Func_809218c
	bl	__MapTransitionIn
	bl	__Func_8091e20
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0xa
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r3, #0xe0
	lsl	r3, #11
	mov	r2, #0x74
	mov	r1, #0x88
	mov	r0, #0xa
	bl	OvlFunc_927_2008d90
	mov	r0, #0xa
	bl	OvlFunc_927_2008e18
	mov	r1, #0xf
	mov	r0, #0xa
	bl	__Func_8092950
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	ldr	r0, =0x89c
	bl	__SetFlag
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	__Func_8091750
.L25f0:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L25fc
	b	.L2b56
.L25fc:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L260a
	b	.L2b56
.L260a:
	mov	r0, #0xa
	mov	r1, #0xf
	bl	__Func_8092950
	mov	r1, #0x88
	mov	r2, #0xe8
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #15
	bl	__MapActor_SetPos
	b	.L2b56
.L2622:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2636
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x10
	bl	__MapActor_SetPos
.L2636:
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r3, #0
	str	r3, [r0, #0x6c]
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2656
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r0, #0xc]
.L2656:
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0x9e
	mov	r2, #0xdc
	mov	r0, #0x10
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	ldr	r0, =0xfd4
	bl	__GetFlag
	cmp	r0, #0
	bne	.L267a
	mov	r0, #0x10
	bl	OvlFunc_927_200ac0c
.L267a:
	mov	r0, #0xb
	mov	r1, #0xf
	bl	__Func_8092950
	mov	r1, #0xf
	mov	r0, #0xc
	bl	__Func_8092950
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #8
	bl	OvlFunc_927_20088c0
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L26bc
	mov	r0, #9
	bl	OvlFunc_927_20088c0
	b	.L2b56
.L26bc:
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0x84
	mov	r2, #0xcc
	lsl	r2, #17
	mov	r0, #9
	lsl	r1, #18
	bl	__MapActor_SetPos
	mov	r0, #9
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r3, #0x1f
	mov	r2, #0x19
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #2
	mov	r0, #0x26
	mov	r1, #0x1b
	mov	r2, #4
	bl	__Func_8010704
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	b	.L2b56
.L26fa:
	ldr	r3, =0x45
	cmp	r2, r3
	beq	.L2702
	b	.L288c
.L2702:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bge	.L2712
	b	.L2b56
.L2712:
	cmp	r3, #6
	ble	.L2724
	cmp	r3, #0xc
	ble	.L271c
	b	.L2b56
.L271c:
	cmp	r3, #0xa
	bge	.L2722
	b	.L2b56
.L2722:
	b	.L275c
.L2724:
	ldr	r0, =0x303
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2742
	mov	r1, #0xf
	mov	r0, #0xc
	bl	__Func_8092950
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
.L2742:
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2750
	b	.L2b56
.L2750:
	mov	r1, #0xf
	mov	r0, #0xd
	bl	__Func_8092950
	mov	r0, #0xd
	b	.L2962
.L275c:
	ldr	r0, =0x311
	bl	__GetFlag
	cmp	r0, #0
	bne	.L276e
	mov	r0, #0xa
	bl	OvlFunc_927_20088c0
	b	.L27be
.L276e:
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0x8a
	mov	r2, #0xff
	lsl	r2, #17
	mov	r0, #0xa
	lsl	r1, #18
	bl	__MapActor_SetPos
	mov	r1, #4
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x1e
	mov	r3, #0x22
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2c
	mov	r1, #0x1e
	mov	r2, #2
	mov	r3, #4
	bl	__Func_8010704
	mov	r3, #4
	mov	r5, #0
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0x23
	mov	r2, #0x1d
	mov	r3, #1
	str	r5, [sp, #4]
	bl	OvlFunc_927_2008244
.L27be:
	mov	r0, #8
	bl	OvlFunc_927_20088c0
	mov	r0, #9
	bl	OvlFunc_927_20088c0
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, #1
	ldr	r2, [r0, #0x10]
	asr	r5, #20
	str	r3, [sp]
	mov	r3, #0xff
	asr	r2, #20
	str	r3, [sp, #4]
	mov	r1, r5
	mov	r3, #1
	mov	r0, #2
	bl	OvlFunc_927_2008244
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xb
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x306
	bl	__GetFlag
	cmp	r0, #0
	beq	.L281a
	b	.L2b56
.L281a:
	mov	r1, #0xf
	mov	r0, #0xe
	bl	__Func_8092950
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	ldr	r0, =0x305
	bl	__GetFlag
	cmp	r0, #0
	bne	.L283a
	b	.L2b56
.L283a:
	mov	r1, #0xd4
	mov	r2, #0xf0
	mov	r0, #0xe
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xd4
	mov	r2, #0xf0
	mov	r0, #0x11
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	b	.L2b56

	.pool_aligned

.L288c:
	ldr	r3, =0x46
	cmp	r2, r3
	beq	.L2894
	b	.L2b56
.L2894:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #3
	cmp	r3, #0xc
	bls	.L28a6
	b	.L2b56
.L28a6:
	ldr	r2, =.L28b0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L28b0:
	.word	.L28e4
	.word	.L28e4
	.word	.L28e4
	.word	.L28e4
	.word	.L296e
	.word	.L29ba
	.word	.L29ba
	.word	.L29ba
	.word	.L29ba
	.word	.L2b2c
	.word	.L2b2c
	.word	.L2b56
	.word	.L2b50
.L28e4:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x307
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2914
	mov	r1, #0xf
	mov	r0, #0xf
	bl	__Func_8092950
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
.L2914:
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2940
	mov	r1, #0xf
	mov	r0, #0x10
	bl	__Func_8092950
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
.L2940:
	ldr	r0, =0x309
	bl	__GetFlag
	cmp	r0, #0
	beq	.L294c
	b	.L2b56
.L294c:
	mov	r1, #0xf
	mov	r0, #0x11
	bl	__Func_8092950
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x15
.L2962:
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	b	.L2b56
.L296e:
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r3, #1
	ldr	r2, [r0, #0x10]
	asr	r5, #20
	str	r3, [sp]
	mov	r3, #0xff
	asr	r2, #20
	str	r3, [sp, #4]
	mov	r1, r5
	mov	r3, #1
	mov	r0, #2
	bl	OvlFunc_927_2008244
	mov	r1, #6
	mov	r0, #0xd
	bl	__Func_8092950
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #8
	bl	OvlFunc_927_20088c0
	b	.L2b56
.L29ba:
	mov	r5, #0xb9
	lsl	r5, #17
	mov	r1, #0
	mov	r2, r5
	mov	r3, #0xdf
	ldr	r0, =0x2de0000
	bl	OvlFunc_927_2008a4c
	mov	r1, #0
	mov	r2, r5
	mov	r3, #0xdf
	ldr	r0, =0x2f20000
	bl	OvlFunc_927_2008a4c
	mov	r0, #0xa
	bl	OvlFunc_927_20088c0
	mov	r0, #0xc
	bl	OvlFunc_927_20088c0
	ldr	r0, =0x312
	bl	__GetFlag
	cmp	r0, #0
	bne	.L29f4
	mov	r0, #9
	bl	OvlFunc_927_20088c0
	b	.L2a54
.L29f4:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #9
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r2, #0xc7
	ldr	r1, =0x2ba0000
	lsl	r2, #17
	mov	r0, #9
	bl	__MapActor_SetPos
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r2, #0x17
	mov	r3, #0x2a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r1, #0x14
	mov	r2, #2
	mov	r0, #0x1a
	bl	__Func_8010704
	mov	r0, #0x85
	lsl	r0, #2
	bl	__SetFlag
	mov	r1, #0x9e
	mov	r2, #0xdc
	lsl	r1, #18
	mov	r0, #0xe
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
.L2a54:
	ldr	r0, =0x313
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2a66
	mov	r0, #0xb
	bl	OvlFunc_927_20088c0
	b	.L2a9e
.L2a66:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xb
	mov	r1, #4
	bl	__MapActor_SetAnim
	ldr	r1, =0x29a0000
	ldr	r2, =0x2260000
	mov	r0, #0xb
	bl	__MapActor_SetPos
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x20
	mov	r3, #0x28
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x14
	mov	r2, #2
	mov	r3, #4
	bl	__Func_8010704
.L2a9e:
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #1
	ldr	r2, [r0, #0x10]
	asr	r5, #20
	str	r3, [sp]
	mov	r3, #0xff
	asr	r2, #20
	str	r3, [sp, #4]
	mov	r1, r5
	mov	r3, #1
	mov	r0, #2
	bl	OvlFunc_927_2008244
	mov	r1, #6
	mov	r0, #0xe
	bl	__Func_8092950
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x30b
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2b26
	mov	r1, #0xf
	mov	r0, #0x12
	bl	__Func_8092950
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	ldr	r0, =0x30a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2b26
	mov	r1, #0xba
	mov	r2, #0xfc
	mov	r0, #0x16
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xba
	mov	r2, #0xfc
	mov	r0, #0x12
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
.L2b26:
	bl	OvlFunc_927_2009c34
	b	.L2b56
.L2b2c:
	mov	r0, #0x12
	ldr	r1, =gScript_927__0200b084
	bl	__MapActor_SetBehavior
	ldr	r0, =0x893
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2b56
	ldr	r0, =0x89e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2b56
	ldr	r0, =0x88f
	bl	__SetFlag
	b	.L2b56
.L2b50:
	ldr	r0, =0x89e
	bl	__SetFlag
.L2b56:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_927_200a500

.thumb_func_start OvlFunc_927_200aba4
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r0, [r6, #0x30]
	ldr	r7, [r6, #0x50]
	bl	__sin
	lsl	r5, r0, #1
	cmp	r5, #0
	ble	.L2bb8
	neg	r5, r5
.L2bb8:
	ldr	r0, [r6, #0x30]
	bl	__cos
	ldr	r3, [r6, #0x38]
	lsl	r0, #1
	add	r3, r0
	str	r3, [r6, #8]
	ldr	r0, [r6, #0x30]
	ldr	r3, [r6, #0x3c]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r5
	add	r0, r2
	str	r3, [r6, #0xc]
	bl	__cos
	cmp	r0, #0
	bge	.L2bde
	add	r0, #7
.L2bde:
	asr	r3, r0, #3
	strh	r3, [r7, #0x1e]
	bl	__Random
	mov	r5, r0
	bl	__Random
	lsl	r5, #9
	lsl	r0, #9
	ldr	r3, [r6, #0x30]
	lsr	r0, #16
	lsr	r5, #16
	add	r5, r0
	mov	r2, #0x80
	add	r3, r5
	lsl	r2, #3
	add	r3, r2
	str	r3, [r6, #0x30]
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_927_200aba4

.thumb_func_start OvlFunc_927_200ac0c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r6, [r7, #0x50]
	mov	r2, #0xd
	ldrb	r3, [r6, #9]
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	ldrb	r1, [r6, #5]
	orr	r2, r3
	mov	r3, #0x21
	neg	r3, r3
	and	r3, r1
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r2, r3
	strb	r2, [r6, #9]
	mov	r2, #0
	mov	r8, r2
	mov	r3, r6
	add	r3, #0x27
	mov	r2, r8
	strb	r2, [r3]
	mov	r1, #0
	bl	__Func_800c528
	mov	r3, #0x5c
	add	r3, r7
	mov	r2, r8
	strb	r2, [r3]
	mov	r10, r3
	mov	r3, r7
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2c70
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #14
	add	r3, r2
	str	r3, [r7, #0xc]
.L2c70:
	mov	r1, r7
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #1
	strb	r3, [r1]
	mov	r9, r2
	mov	r3, r7
	mov	r2, r9
	add	r3, #0x61
	mov	r1, #0xc1
	strb	r2, [r3]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__galloc_iwram
	mov	r5, r0
	mov	r0, #0xb5
	bl	__LoadItemIcon
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r6, #0x1c]
	bl	__UploadSpriteGFX
	mov	r0, #0x11
	bl	__gfree
	ldr	r3, [r7, #8]
	str	r3, [r7, #0x38]
	ldr	r3, [r7, #0xc]
	mov	r2, r8
	str	r2, [r7, #0x30]
	str	r3, [r7, #0x3c]
	mov	r2, r10
	mov	r3, r9
	strb	r3, [r2]
	ldr	r3, =OvlFunc_927_200aba4
	str	r3, [r7, #0x6c]
	mov	r3, r7
	add	r3, #0x56
	mov	r2, r8
	strb	r2, [r3]
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_200ac0c

	.section .data
	.global .L2ef8
	.global .L2f38
	.global gScript_884__0200af50
	.global .L3058
	.global .L30f4
	.global .L31e4
	.global .L3334
	.global .L34b4

.L2ef8:
	.incbin "overlays/rom_7b4558/orig.bin", 0x2ef8, (0x2f38-0x2ef8)
.L2f38:
	.incbin "overlays/rom_7b4558/orig.bin", 0x2f38, (0x2f50-0x2f38)
gScript_884__0200af50:
	.incbin "overlays/rom_7b4558/orig.bin", 0x2f50, (0x3058-0x2f50)
.L3058:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3058, (0x3084-0x3058)
	.global gScript_927__0200b084
gScript_927__0200b084:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3084, (0x30f4-0x3084)
.L30f4:
	.incbin "overlays/rom_7b4558/orig.bin", 0x30f4, (0x31e4-0x30f4)
.L31e4:
	.incbin "overlays/rom_7b4558/orig.bin", 0x31e4, (0x3334-0x31e4)
.L3334:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3334, (0x34b4-0x3334)
.L34b4:
	.incbin "overlays/rom_7b4558/orig.bin", 0x34b4, (0x35bc-0x34b4)
	.global gOvl_0200b5bc
gOvl_0200b5bc:
	.incbin "overlays/rom_7b4558/orig.bin", 0x35bc, (0x36a0-0x35bc)
.L36a0:
	.incbin "overlays/rom_7b4558/orig.bin", 0x36a0, (0x3790-0x36a0)
.L3790:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3790, (0x38b0-0x3790)
.L38b0:
	.incbin "overlays/rom_7b4558/orig.bin", 0x38b0, (0x3a30-0x38b0)
.L3a30:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3a30, (0x3a48-0x3a30)
.L3a48:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3a48, (0x3b20-0x3a48)
.L3b20:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3b20, (0x3c1c-0x3b20)
.L3c1c:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3c1c, (0x3d54-0x3c1c)
.L3d54:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3d54
