	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809537c  @ 0x0809537c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x30
	mov	r10, r0
	bl	MapActor_GetActor
	ldr	r3, =gState
	mov	r6, r0
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	bl	MapActor_GetActor
	mov	r1, #0x80
	ldrh	r3, [r0, #6]
	lsl	r1, #6
	add	r1, r3
	mov	r3, #0xc0
	lsl	r3, #8
	and	r1, r3
	mov	r11, r1
	bl	CutsceneStart
	mov	r0, #0xa
	bl	WaitFrames
	mov	r0, #0xad
	bl	_PlaySound
	mov	r1, #1
	mov	r0, r10
	bl	Func_80925cc
	mov	r5, #0x80
	mov	r0, #0xaf
	bl	_PlaySound
	lsl	r5, #8
	mov	r1, #1
	mov	r0, r10
	bl	Func_80925cc
	add	r5, r11
	mov	r0, #0x14
	bl	WaitFrames
	mov	r1, r5
	mov	r2, #0
	mov	r0, r10
	bl	Func_8092adc
	mov	r0, #0xa
	bl	WaitFrames
	ldr	r1, [r6, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	strb	r3, [r1, #9]
	strh	r5, [r6, #6]
	mov	r0, r10
	bl	MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r5, #0x80
	mov	r2, r6
	strb	r3, [r0]
	add	r2, #0x55
	mov	r3, #2
	lsl	r5, #13
	str	r2, [sp, #4]
	mov	r1, r5
	strb	r3, [r2]
	mov	r0, r6
	mov	r2, r11
	bl	Func_8096bec
	mov	r0, #0x98
	bl	_PlaySound
	mov	r1, #4
	mov	r2, #0
	mov	r0, r10
	bl	MapActor_Jump
	mov	r0, r6
	bl	_Actor_WaitMovement
	mov	r1, r5
	mov	r2, r11
	mov	r0, r6
	bl	Func_8096bec
	mov	r0, #0x98
	bl	_PlaySound
	mov	r1, #4
	mov	r2, #0
	mov	r0, r10
	bl	MapActor_Jump
	mov	r0, r6
	bl	_Actor_WaitMovement
	mov	r1, r5
	mov	r2, r11
	mov	r0, r6
	bl	Func_8096bec
	mov	r0, #0x98
	bl	_PlaySound
	mov	r1, #4
	mov	r2, #0
	mov	r0, r10
	bl	MapActor_Jump
	mov	r0, r6
	bl	_Actor_WaitMovement
	mov	r0, #0x14
	bl	WaitFrames
	ldr	r3, [r6, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r2, #9
	mov	r8, r0
	str	r2, [sp, #8]
	cmp	r0, #0x5a
	bne	.L9549c
	mov	r3, #2
	str	r3, [sp, #8]
.L9549c:
	mov	r0, r8
	cmp	r0, #0x5c
	bne	.L954a6
	mov	r1, #0xa
	str	r1, [sp, #8]
.L954a6:
	mov	r2, r8
	cmp	r2, #0x5b
	bne	.L954b0
	mov	r3, #9
	str	r3, [sp, #8]
.L954b0:
	mov	r1, sp
	mov	r0, #0
	add	r1, #0x10
	str	r0, [sp, #0xc]
	str	r1, [sp]
	mov	r9, r6
	mov	r7, #0
.L954be:
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	mov	r0, r8
	bl	_CreateActor
	ldr	r2, [sp]
	mov	r5, r0
	lsl	r3, r7, #2
	str	r5, [r2, r3]
	cmp	r5, #0
	beq	.L95536
	mov	r3, #0xf0
	lsl	r3, #8
	mov	r2, r5
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	sub	r2, #0x32
	mov	r3, #2
	strb	r3, [r2]
	mov	r1, r5
	add	r1, #0x5a
	ldrb	r3, [r1]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r1]
	ldr	r3, =Func_8095348
	str	r3, [r5, #0x6c]
	ldr	r1, [r5, #0x50]
	ldrh	r3, [r6, #6]
	mov	r0, #0xd
	strh	r3, [r5, #6]
	neg	r0, r0
	ldrb	r3, [r1, #9]
	mov	r2, r0
	and	r3, r2
	strb	r3, [r1, #9]
	ldr	r1, [sp, #8]
	mov	r0, r5
	bl	_Actor_SetColorswap
	mov	r0, r5
	mov	r1, #0
	bl	_Actor_SetAnim
	mov	r0, r5
	mov	r1, #0
	bl	_Actor_SetSpriteFlags
	ldr	r0, [r5, #0x50]
	ldr	r1, [sp, #0xc]
	bl	Func_8096c48
	mov	r1, r9
	str	r0, [sp, #0xc]
	str	r1, [r5, #0x68]
	mov	r9, r5
.L95536:
	add	r7, #1
	cmp	r7, #7
	ble	.L954be
	mov	r2, #0x80
	mov	r1, #0x80
	lsl	r2, #8
	add	r2, r11
	lsl	r1, #15
	mov	r0, r6
	bl	Func_8096bec
	mov	r0, #0x88
	bl	_PlaySound
	mov	r0, r10
	mov	r1, #0xc
	mov	r2, #0
	bl	MapActor_Jump
	mov	r0, #0x18
	bl	WaitFrames
	ldr	r2, [sp, #4]
	mov	r3, #0
	strb	r3, [r2]
	str	r3, [r6, #0x24]
	str	r3, [r6, #0x2c]
	str	r3, [r6, #0x28]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x40]
	str	r3, [r6, #0x3c]
	mov	r0, r6
	mov	r1, #0
	bl	_Actor_SetAnim
	ldr	r1, [r6, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r1, #9]
	bl	CutsceneEnd
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809537c

.thumb_func_start Func_80955b0  @ 0x080955b0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r6, r0
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xb7
	lsl	r0, #1
	mov	r5, r1
	mov	r8, r2
	ldr	r7, [r3]
	bl	_GetFlag
	cmp	r0, #0
	beq	.L955e2
	lsl	r0, r5, #2
	add	r0, r5
	lsl	r0, #2
	add	r0, r8
	mov	r2, #0
	add	r0, #0x30
	mov	r10, r2
	bl	_SetFlag
	b	.L955ec
.L955e2:
	mov	r0, r5
	mov	r1, r8
	bl	_Func_807a0f4
	mov	r10, r0
.L955ec:
	mov	r3, r10
	cmp	r3, #0
	blt	.L9566e
	bl	CutsceneStart
	bl	Func_808c44c
	mov	r2, #1
	neg	r2, r2
	cmp	r6, r2
	beq	.L9565c
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L95614
	bl	Func_808b8e8
.L95614:
	cmp	r5, #0
	bne	.L95620
	mov	r0, r6
	bl	GetVenusDjinni
	b	.L95642
.L95620:
	cmp	r5, #1
	bne	.L9562c
	mov	r0, r6
	bl	GetMercuryDjinni
	b	.L95642
.L9562c:
	cmp	r5, #2
	bne	.L95638
	mov	r0, r6
	bl	GetMarsDjinni
	b	.L95642
.L95638:
	cmp	r5, #3
	bne	.L95642
	mov	r0, r6
	bl	GetJupiterDjinni
.L95642:
	lsl	r3, r6, #2
	add	r3, #0x14
	mov	r2, #0
	str	r2, [r7, r3]
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L9565c
	bl	Func_808b98c
.L9565c:
	mov	r0, r10
	mov	r1, r5
	mov	r2, r8
	bl	_Func_8021228
	bl	Func_808c4c0
	bl	CutsceneEnd
.L9566e:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80955b0

.thumb_func_start Func_8095680  @ 0x08095680
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r5, =gState
	mov	r0, #0x8d
	lsl	r0, #2
	add	r3, r5, r0
	ldrh	r2, [r3]
	mov	r1, #0
	ldrsh	r7, [r3, r1]
	mov	r3, #0xf0
	lsl	r3, #8
	and	r7, r3
	ldr	r3, =0xfff
	mov	r10, r3
	mov	r0, r10
	and	r0, r2
	mov	r10, r0
	ldr	r0, =0x109
	bl	_GetFlag
	cmp	r0, #0
	beq	.L9574c
	cmp	r7, #0
	bne	.L9574c
	ldr	r3, =0x7ff
	mov	r7, #0x80
	mov	r1, r10
	lsl	r7, #4
	and	r7, r1
	and	r1, r3
	ldr	r3, =0xfffffed4
	mov	r10, r1
	add	r3, r10
	cmp	r3, #0x50
	bhi	.L9574c
	ldr	r2, =0x236
	add	r3, r5, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0
	ble	.L9574c
	sub	r2, #0x42
	mov	r1, #8
	add	r2, r5
	mov	r8, r1
	mov	r9, r2
.L956e2:
	mov	r0, r8
	bl	Func_808d394
	mov	r5, r0
	cmp	r5, #0
	beq	.L95742
	mov	r0, #2
	ldrsh	r3, [r5, r0]
	ldr	r2, =0xfffffed4
	sub	r3, #0x30
	add	r2, r10
	cmp	r3, r2
	bne	.L95742
	mov	r0, r8
	bl	GetFieldActor
	mov	r6, r0
	cmp	r6, #0
	beq	.L95742
	cmp	r7, #0
	bne	.L95722
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #3
	str	r7, [r6, #0x14]
	strb	r3, [r2]
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	bl	_Actor_SetPos
	b	.L9573a
.L95722:
	mov	r1, r9
	ldr	r0, [r1]
	bl	GetFieldActor
	ldr	r3, [r0, #0x10]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0xc]
	ldr	r0, =0xffe00000
	add	r3, r0
	mov	r0, r6
	bl	_Actor_SetPos
.L9573a:
	mov	r0, r6
	mov	r1, #1
	bl	_Actor_SetAnim
.L95742:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0x41
	ble	.L956e2
.L9574c:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8095680

.thumb_func_start Func_8095778  @ 0x08095778
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	ldr	r1, =gState
	mov	r0, #0x8d
	lsl	r0, #2
	add	r7, r1, r0
	mov	r3, #0
	ldrsh	r5, [r7, r3]
	ldrh	r2, [r7]
	mov	r3, #0xf0
	ldr	r6, =0xfff
	lsl	r3, #8
	mov	r0, r8
	and	r5, r3
	and	r6, r2
	cmp	r0, #0
	bne	.L957ec
	cmp	r5, #0
	bne	.L957cc
	ldr	r3, =0x7ff
	ldr	r2, =0xfffffed4
	and	r6, r3
	add	r3, r6, r2
	cmp	r3, #0x50
	bhi	.L95860
	ldr	r0, =0x236
	add	r3, r1, r0
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	cmp	r2, #0
	ble	.L957c0
	ldr	r3, =0x3e7
	cmp	r2, r3
	bne	.L95860
.L957c0:
	mov	r0, r6
	sub	r0, #0xac
	bl	_SetFlag
	strh	r5, [r7]
	b	.L95860
.L957cc:
	mov	r0, #0x80
	lsl	r0, #5
	cmp	r5, r0
	bne	.L95860
	ldr	r2, =0x236
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #1
	bne	.L957e6
	mov	r0, r6
	bl	_SetFlag
.L957e6:
	mov	r1, r8
	strh	r1, [r7]
	b	.L95860
.L957ec:
	cmp	r5, #0
	bne	.L95856
	ldr	r2, =0x7ff
	ldr	r0, =0xfffffed4
	and	r6, r2
	add	r3, r6, r0
	cmp	r3, #0x50
	bhi	.L95856
	and	r6, r2
	ldr	r2, =0x236
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0
	ble	.L95856
	ldr	r1, =0xfffffed4
	add	r5, r6, r1
	mov	r0, r5
	mov	r1, #0x14
	bl	__divsi3
	mov	r1, #0x14
	mov	r8, r0
	mov	r0, r5
	bl	__modsi3
	mov	r5, #8
	mov	r7, r0
	b	.L95828
.L95826:
	add	r5, #1
.L95828:
	cmp	r5, #0x41
	bgt	.L95854
	mov	r0, r5
	bl	Func_808d394
	cmp	r0, #0
	beq	.L95826
	mov	r2, #2
	ldrsh	r3, [r0, r2]
	ldr	r0, =0xfffffed4
	sub	r3, #0x30
	add	r2, r6, r0
	cmp	r3, r2
	bne	.L95826
	mov	r0, #0x28
	bl	WaitFrames
	mov	r1, r8
	mov	r0, r5
	mov	r2, r7
	bl	Func_80955b0
.L95854:
	ldr	r1, =gState
.L95856:
	mov	r3, #0x8d
	lsl	r3, #2
	add	r2, r1, r3
	mov	r3, #0
	strh	r3, [r2]
.L95860:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8095778

