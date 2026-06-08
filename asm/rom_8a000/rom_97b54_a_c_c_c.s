	.include "macros.inc"

.thumb_func_start Field_Ply
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	mov	r10, r3
	ldr	r6, [r3, #0x10]
	bl	Func_8097384
	mov	r2, #0
	mov	r8, r2
	mov	r7, #0
.L994ec:
	ldr	r2, [r6, #0xc]
	mov	r3, #0x80
	lsl	r3, #14
	add	r2, r3
	ldr	r1, [r6, #8]
	ldr	r3, [r6, #0x10]
	mov	r0, #0xe9
	bl	CreateParticleActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L9952c
	ldr	r3, =0xb333
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	ldr	r3, =Func_8099340
	mov	r2, r5
	str	r3, [r5, #0x6c]
	add	r2, #0x64
	mov	r3, #0x78
	strh	r3, [r2]
	lsl	r3, r7, #13
	add	r2, #2
	strh	r3, [r2]
	sub	r2, #0x11
	mov	r3, #4
	strb	r3, [r2]
	mov	r1, r8
	ldr	r0, [r5, #0x50]
	bl	Func_8096c48
	mov	r8, r0
.L9952c:
	mov	r0, #1
	add	r7, #1
	bl	WaitFrames
	cmp	r7, #7
	ble	.L994ec
	mov	r2, r8
	ldrb	r2, [r2, #0x1c]
	mov	r0, #0x82
	mov	r9, r2
	bl	_PlaySound
	mov	r0, #0x6e
	bl	WaitFrames
	mov	r0, #0xe9
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	CreateParticleActor
	mov	r6, r0
	mov	r5, r6
	cmp	r6, #0
	beq	.L99588
	ldr	r3, =0xb333
	str	r3, [r6, #0x1c]
	str	r3, [r6, #0x18]
	mov	r2, r10
	ldr	r3, [r2, #4]
	str	r3, [r6, #8]
	ldr	r3, [r2, #8]
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r2, r10
	ldr	r3, [r2, #0xc]
	mov	r2, r6
	str	r3, [r6, #0x10]
	add	r2, #0x55
	mov	r3, #4
	strb	r3, [r2]
	mov	r1, #7
	bl	_Actor_SetColorswap
.L99588:
	mov	r0, #0x83
	bl	_PlaySound
	mov	r0, #0xc
	bl	WaitFrames
	cmp	r6, #0
	beq	.L995c6
	mov	r3, #3
	mov	r7, #0
	mov	r8, r3
.L9959e:
	mov	r3, r7
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.L995b2
	mov	r0, r5
	mov	r1, #9
	bl	_Actor_SetColorswap
	b	.L995ba
.L995b2:
	mov	r0, r5
	mov	r1, #0xa
	bl	_Actor_SetColorswap
.L995ba:
	mov	r0, #2
	add	r7, #1
	bl	WaitFrames
	cmp	r7, #0x1d
	ble	.L9959e
.L995c6:
	mov	r0, r5
	mov	r1, #0
	bl	_Actor_SetColorswap
	mov	r0, #0x54
	bl	_PlaySound
	cmp	r5, #0
	beq	.L99600
	ldr	r3, =Func_80993b0
	mov	r2, r6
	str	r3, [r6, #0x6c]
	add	r2, #0x64
	mov	r3, #0
	strh	r3, [r2]
	mov	r3, r10
	add	r3, #0x20
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L995fa
	mov	r0, #0x80
	bl	WaitFrames
	b	.L99600
.L995fa:
	mov	r0, #0xc0
	bl	WaitFrames
.L99600:
	cmp	r6, #0
	beq	.L99636
	ldr	r3, =0xffff
	mov	r2, r6
	add	r2, #0x64
	strh	r3, [r2]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r6, #0x30]
	ldr	r3, =0x6666
	sub	r2, #0xa
	str	r3, [r6, #0x34]
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0xc0
	mov	r2, #0xe8
	lsl	r1, #16
	lsl	r2, #8
	mov	r0, r6
	bl	Func_8096bec
	mov	r0, r6
	bl	_Func_800ca6c
	mov	r0, r6
	bl	_DeleteActor
.L99636:
	mov	r3, r9
	cmp	r3, #0x60
	beq	.L99642
	mov	r0, r9
	bl	Func_8003f3c
.L99642:
	mov	r2, r10
	ldr	r3, [r2, #0x24]
	cmp	r3, #0
	beq	.L9964e
	bl	_call_via_r3
.L9964e:
	bl	Func_809748c
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Field_Ply

.thumb_func_start Func_8099678
	push	{r5, r6, lr}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r5, =iwram_3001ebc
	ldr	r0, [r3]
	ldr	r6, [r5]
	bl	GetFieldActor
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r5, #0x4c
	ldr	r5, [r5]
	cmp	r3, #3
	bne	.L996c8
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L996a8
	ldr	r2, =0x1fffff
	add	r3, r2
.L996a8:
	ldr	r0, [r0, #0x10]
	asr	r2, r3, #21
	mov	r1, #0x1f
	and	r2, r1
	cmp	r0, #0
	bge	.L996b8
	ldr	r3, =0x1fffff
	add	r0, r3
.L996b8:
	asr	r3, r0, #21
	and	r3, r1
	lsl	r3, #5
	add	r3, r2, r3
	ldr	r2, =ewram_2020000
	lsl	r3, #2
	add	r5, r3, r2
	b	.L99706
.L996c8:
	mov	r2, r0
	add	r2, #0x22
	ldrb	r3, [r2]
	cmp	r3, #2
	bhi	.L996e4
	mov	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	mov	r2, #0x98
	lsl	r3, #4
	lsl	r2, #1
	add	r3, r2
	ldr	r5, [r5, r3]
	b	.L996e6
.L996e4:
	ldr	r5, =gBuffer
.L996e6:
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L996f0
	ldr	r2, =0xfffff
	add	r3, r2
.L996f0:
	ldr	r0, [r0, #0x10]
	asr	r2, r3, #20
	cmp	r0, #0
	bge	.L996fc
	ldr	r3, =0xfffff
	add	r0, r3
.L996fc:
	asr	r3, r0, #20
	lsl	r3, #7
	add	r3, r2, r3
	lsl	r3, #2
	add	r5, r3
.L99706:
	ldrb	r3, [r5, #2]
	cmp	r3, #0xfb
	beq	.L99716
	mov	r3, #0xbf
	lsl	r3, #1
	add	r2, r6, r3
	ldr	r3, =0x2092
	strh	r3, [r2]
.L99716:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8099678

.thumb_func_start Func_8099738
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =gState
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	ldr	r0, [r3]
	bl	GetFieldActor
	mov	r5, r0
	ldr	r6, [r5, #0x50]
	ldr	r2, [r6, #0x28]
	mov	r0, #0x9a
	mov	r10, r2
	bl	_PlaySound
	ldr	r0, =Func_8099678
	bl	StopTask
	mov	r0, r5
	mov	r1, #0
	bl	_Actor_SetAnim
	mov	r3, #0
	str	r3, [r5, #0x6c]
	mov	r3, #0x25
	add	r3, r6
	add	r6, #0x26
	mov	r9, r6
	mov	r11, r3
	mov	r1, #1
	mov	r7, #0
	mov	r6, r11
	mov	r8, r1
	mov	r5, r9
.L99788:
	mov	r2, #7
	mov	r3, r10
	strb	r2, [r3, #5]
	mov	r1, r8
	mov	r3, #2
	strb	r1, [r6]
	mov	r0, #2
	strb	r3, [r5]
	bl	WaitFrames
	mov	r2, r8
	mov	r3, #0
	strb	r2, [r6]
	mov	r0, #2
	strb	r3, [r5]
	add	r7, #1
	bl	WaitFrames
	cmp	r7, #4
	bls	.L99788
	mov	r1, #0
	mov	r2, #7
	mov	r5, r11
	mov	r7, #0
	mov	r8, r1
	mov	r6, #1
	mov	r11, r2
.L997be:
	mov	r1, r10
	mov	r3, r11
	strb	r3, [r1, #5]
	mov	r2, r8
	mov	r3, r9
	strb	r6, [r5]
	mov	r0, #2
	strb	r2, [r3]
	bl	WaitFrames
	mov	r1, r8
	mov	r2, r10
	strb	r1, [r2, #5]
	strb	r6, [r5]
	mov	r0, #2
	add	r7, #1
	bl	WaitFrames
	cmp	r7, #4
	bls	.L997be
	mov	r1, r9
	mov	r3, #1
	strb	r3, [r1]
	ldr	r3, =gState
	mov	r1, #0x93
	lsl	r1, #2
	mov	r2, #0
	add	r3, r1
	strh	r2, [r3]
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8099738

