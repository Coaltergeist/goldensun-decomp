	.include "macros.inc"

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
	bl	__CutsceneEnd
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
	bl	__CutsceneEnd
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
	bl	__CutsceneEnd
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
	bl	__CutsceneEnd
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
	bl	__Actor_SetSpriteFlags
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
	bl	__CutsceneEnd
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
	bl	__CutsceneEnd
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
	bl	__CutsceneEnd
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
	bl	__CutsceneEnd
.L1ab6:
	add	sp, #0x20
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_20099b8

