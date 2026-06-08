	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_200d244
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r3, #0x80
	mov	r6, r0
	lsl	r3, #10
	str	r3, [r6, #0x30]
	mov	r3, #0x80
	lsl	r3, #9
	ldr	r2, [r6, #0x68]
	str	r3, [r6, #0x34]
	ldr	r3, [r2, #8]
	mov	r11, r3
	mov	r3, #0x80
	ldr	r2, [r2, #0x10]
	lsl	r3, #24
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x3c]
	str	r3, [r6, #0x40]
	ldr	r3, [r6, #8]
	mov	r9, r2
	mov	r2, r11
	sub	r0, r2, r3
	sub	sp, #4
	cmp	r0, #0
	bge	.L5284
	ldr	r3, =0xffff
	add	r0, r3
.L5284:
	ldr	r3, [r6, #0x10]
	asr	r0, #16
	mov	r2, r9
	mov	r10, r0
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L5296
	ldr	r3, =0xffff
	add	r0, r3
.L5296:
	asr	r0, #16
	mov	r8, r0
	mov	r2, r10
	mov	r0, r10
	mul	r0, r2
	mov	r2, r8
	mov	r3, r8
	mul	r3, r2
	add	r0, r3
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	ldr	r3, [r6, #8]
	mov	r2, r11
	sub	r2, r3
	ldr	r3, [r6, #0x10]
	mov	r10, r2
	mov	r2, r9
	sub	r2, r3
	mov	r3, #0x80
	lsl	r7, r0, #16
	lsl	r3, #15
	mov	r8, r2
	cmp	r7, r3
	bge	.L52ea
	ldr	r4, =Func_8000888
	mov	r0, r10
	mov	r1, r10
	.call_via r4
	mov	r3, r0
	mov	r1, r8
	mov	r0, r8
	.call_via r4
	add	r3, r0
	mov	r0, r3
	bl	__FastIntSqrtFP1616_RAM
	mov	r7, r0
.L52ea:
	mov	r1, r7
	cmp	r7, #0
	bge	.L52f2
	add	r1, r7, #7
.L52f2:
	ldr	r3, [r6, #0x30]
	asr	r5, r1, #3
	cmp	r5, r3
	ble	.L52fc
	mov	r5, r3
.L52fc:
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r7, r2
	bge	.L530e
	mov	r3, r11
	mov	r2, r9
	str	r3, [r6, #8]
	str	r2, [r6, #0x10]
	b	.L534a
.L530e:
	cmp	r7, r5
	ble	.L533e
	ldr	r3, =Func_80008ac
	mov	r1, r10
	mov	r9, r3
	mov	r0, r7
	bl	_call_via_r9
	ldr	r3, =Func_8000888
	mov	r1, r5
	.call_via r3
	mov	r1, r8
	str	r3, [sp]
	mov	r10, r0
	mov	r0, r7
	bl	_call_via_r9
	mov	r1, r5
	ldr	r3, [sp]
	.call_via r3
	mov	r8, r0
.L533e:
	ldr	r3, [r6, #8]
	add	r3, r10
	str	r3, [r6, #8]
	ldr	r3, [r6, #0x10]
	add	r3, r8
	str	r3, [r6, #0x10]
.L534a:
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r0, #1
	ldr	r1, [r6, #0x50]
	lsr	r2, #1
	and	r2, r0
	ldr	r4, [r1, #0x28]
	lsl	r3, r2, #3
	sub	r3, r2
	add	r1, #0x25
	strb	r3, [r4, #5]
	strb	r0, [r1]
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_924_200d244

.thumb_func_start OvlFunc_924_200d388
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xfa
	ldr	r2, [r3]
	ldr	r3, =gState
	lsl	r1, #1
	add	r3, r1
	ldr	r3, [r3]
	lsl	r3, #2
	add	r3, #0x14
	ldr	r7, [r2, r3]
	mov	r0, #0x1a
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L53ec
	ldr	r3, [r7, #0x14]
	ldr	r1, =gScript_924__0200de14
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Actor_SetScript
	mov	r3, r5
	add	r3, #0x55
	mov	r2, #0
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	str	r7, [r5, #0x68]
	cmp	r6, #0
	beq	.L53ec
	mov	r0, r6
	mov	r1, #2
	bl	__Sprite_SetAnim
	ldr	r3, .L5410	@ 0
	mov	r2, r6
	add	r2, #0x26
	strb	r3, [r2]
	mov	r3, #0xd
	ldrb	r2, [r6, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #9]
.L53ec:
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x1a
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L5446
	ldr	r3, [r7, #0x14]
	ldr	r1, =gScript_924__0200de14
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Actor_SetScript
	mov	r3, r5
	mov	r2, #0
	b	.L5420

	.align	2, 0
.L5410:
	.word	0
	.pool

.L5420:
	add	r3, #0x55
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	str	r7, [r5, #0x68]
	strb	r3, [r2]
	cmp	r6, #0
	beq	.L5446
	mov	r0, r6
	mov	r1, #1
	bl	__Sprite_SetAnim
	mov	r2, r6
	ldr	r3, =0
	add	r2, #0x26
	strb	r3, [r2]
.L5446:
	mov	r0, #0x82
	bl	__PlaySound
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200d388

.thumb_func_start OvlFunc_924_200d458
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001edc
	ldr	r2, [r3]
	ldr	r2, [r2]
	sub	r3, #0x20
	mov	r8, r2
	mov	r0, #0xfa
	ldr	r2, [r3]
	ldr	r3, =gState
	lsl	r0, #1
	add	r3, r0
	ldr	r3, [r3]
	lsl	r3, #2
	add	r3, #0x14
	mov	r1, r8
	ldr	r7, [r2, r3]
	ldr	r3, [r1]
	sub	sp, #4
	cmp	r3, #2
	bhi	.L5550
	bl	__CutsceneStart
	mov	r2, r8
	ldr	r6, [r2, #0x14]
	cmp	r6, #0
	bne	.L54f8
	ldr	r2, [r7, #0xc]
	mov	r3, #0xc0
	lsl	r3, #13
	add	r2, r3
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x1a
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L54f4
	ldr	r3, [r7, #0x14]
	ldr	r4, [r5, #0x50]
	str	r3, [r5, #0x14]
	ldr	r1, =gScript_924__0200de38
	str	r4, [sp]
	bl	__Actor_SetScript
	mov	r2, r5
	mov	r3, #4
	add	r2, #0x55
	str	r7, [r5, #0x68]
	strb	r3, [r2]
	ldr	r0, =0xffff8000
	ldr	r3, [r5, #0xc]
	ldr	r4, [sp]
	add	r3, r0
	str	r3, [r5, #0xc]
	cmp	r4, #0
	beq	.L54e6
	mov	r3, r4
	add	r3, #0x26
	strb	r6, [r3]
	mov	r2, #0xd
	ldrb	r3, [r4, #9]
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	strb	r2, [r4, #9]
.L54e6:
	mov	r3, r5
	add	r3, #0x54
	mov	r1, r8
	strb	r6, [r3]
	str	r5, [r1, #0x14]
	mov	r6, r5
	b	.L54f8
.L54f4:
	mov	r2, r8
	ldr	r6, [r2, #0x14]
.L54f8:
	mov	r3, r8
	ldr	r5, [r3]
	cmp	r5, #2
	bgt	.L552a
	mov	r7, r6
	mov	r0, #1
	mov	r1, #5
	add	r7, #0x54
	mov	r9, r0
	mov	r10, r1
.L550c:
	bl	OvlFunc_924_200d388
	mov	r0, #0x1e
	bl	__WaitFrames
	mov	r2, r9
	mov	r3, r10
	sub	r1, r3, r5
	strb	r2, [r7]
	mov	r0, r6
	add	r5, #1
	bl	__Actor_SetAnim
	cmp	r5, #2
	ble	.L550c
.L552a:
	mov	r0, r8
	mov	r3, #3
	str	r3, [r0]
	ldr	r1, =0xfff00000
	ldr	r3, [r6, #8]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r1
	add	r3, r2
	str	r3, [r0, #0xc]
	ldr	r3, [r6, #0x10]
	and	r3, r1
	add	r3, r2
	str	r3, [r0, #0x10]
	ldr	r0, =0x161
	bl	__SetFlag
	bl	__Func_8091750
.L5550:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200d458

.thumb_func_start OvlFunc_924_200d578
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001edc
	ldr	r3, [r3]
	ldr	r6, [r3]
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L55ae
	mov	r7, #0
	str	r7, [r6]
	ldr	r0, =0x161
	bl	__ClearFlag
	ldr	r5, [r6, #0x14]
	cmp	r5, #0
	beq	.L55ae
	mov	r3, r5
	add	r3, #0x64
	strh	r7, [r3]
	ldr	r1, =gScript_924__0200de2c
	mov	r0, r5
	bl	__Actor_SetScript
	mov	r0, r5
	mov	r1, #7
	bl	__Actor_SetAnim
	str	r7, [r6, #0x14]
.L55ae:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200d578

.thumb_func_start OvlFunc_924_200d5c0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001edc
	ldr	r2, [r3]
	sub	r3, #0x20
	ldr	r3, [r3]
	sub	sp, #0x1c
	ldr	r2, [r2]
	mov	r0, #0xfa
	str	r3, [sp, #0xc]
	ldr	r3, =gState
	lsl	r0, #1
	add	r3, r0
	ldr	r3, [r3]
	ldr	r1, [sp, #0xc]
	lsl	r3, #2
	add	r3, #0x14
	ldr	r7, [r1, r3]
	mov	r8, r2
	mov	r2, r7
	add	r2, #0x55
	str	r2, [sp]
	ldrb	r3, [r2]
	str	r3, [sp, #4]
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	mov	r2, #0xf
	lsr	r3, #4
	ldr	r1, =.L5e44
	and	r3, r2
	lsl	r3, #1
	ldrh	r6, [r1, r3]
	ldrsh	r3, [r1, r3]
	mov	r1, #1
	neg	r1, r1
	cmp	r3, r1
	bne	.L5616
	b	.L58e6
.L5616:
	mov	r2, #0x10
	ldr	r4, [r7, #8]
	ldr	r1, =0xfff00000
	add	r2, sp
	mov	r11, r2
	mov	r2, #0x80
	and	r4, r1
	lsl	r2, #12
	add	r5, r4, r2
	mov	r3, r11
	str	r5, [r3]
	ldr	r3, [r7, #0x14]
	mov	r0, r11
	str	r3, [r0, #4]
	ldr	r0, [r7, #0x10]
	and	r0, r1
	add	r2, r0, r2
	mov	r1, r11
	str	r2, [r1, #8]
	cmp	r2, #0
	bge	.L5644
	ldr	r3, =0x17ffff
	add	r2, r0, r3
.L5644:
	asr	r3, r2, #20
	lsl	r2, r3, #7
	mov	r3, r5
	cmp	r3, #0
	bge	.L5652
	ldr	r0, =0x17ffff
	add	r3, r4, r0
.L5652:
	asr	r3, #20
	add	r3, r2, r3
	ldr	r1, =gBuffer
	lsl	r3, #2
	mov	r0, #0x80
	add	r5, r3, r1
	mov	r2, r11
	lsl	r0, #14
	mov	r1, r6
	bl	__vec3_translate
	mov	r2, r11
	ldr	r3, [r2, #8]
	cmp	r3, #0
	bge	.L5674
	ldr	r0, =0xfffff
	add	r3, r0
.L5674:
	asr	r3, #20
	mov	r1, r11
	lsl	r2, r3, #7
	ldr	r3, [r1]
	cmp	r3, #0
	bge	.L5684
	ldr	r0, =0xfffff
	add	r3, r0
.L5684:
	asr	r3, #20
	add	r3, r2, r3
	ldr	r1, =gBuffer
	lsl	r3, #2
	add	r1, r3, r1
	str	r1, [sp, #8]
	mov	r2, r8
	ldrb	r3, [r5, #2]
	ldr	r1, [r2, #4]
	cmp	r3, r1
	beq	.L56aa
	ldr	r0, [sp, #8]
	ldrb	r3, [r0, #2]
	cmp	r3, r1
	bne	.L56aa
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L56aa
	b	.L58e6
.L56aa:
	bl	__CutsceneStart
	mov	r0, r7
	add	r1, sp, #0x10
	bl	__TestCollision
	mov	r10, r0
	cmp	r0, #0
	beq	.L56be
	b	.L58e6
.L56be:
	mov	r1, r8
	ldr	r5, [r1, #0x18]
	cmp	r5, #0
	beq	.L56e4
	mov	r3, r5
	add	r3, #0x64
	mov	r2, r10
	strh	r2, [r3]
	ldr	r1, =gScript_924__0200de2c
	mov	r0, r5
	bl	__Actor_SetScript
	mov	r0, r5
	mov	r1, #7
	bl	__Actor_SetAnim
	mov	r3, r10
	mov	r0, r8
	str	r3, [r0, #0x18]
.L56e4:
	ldr	r1, [sp, #8]
	mov	r0, r8
	ldrb	r2, [r1, #2]
	ldr	r3, [r0, #4]
	cmp	r2, r3
	bne	.L57c4
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L57c4
	ldr	r6, [r0, #0x14]
	mov	r0, #0x1a
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L5764
	ldr	r1, [r5, #0x50]
	ldr	r3, [r6, #0x14]
	mov	r9, r1
	str	r3, [r5, #0x14]
	ldr	r1, =gScript_924__0200de20
	bl	__Actor_SetScript
	mov	r3, r5
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	mov	r0, r10
	add	r3, #0xf
	mov	r2, r5
	strh	r0, [r3]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r2, r11
	mov	r0, r11
	ldr	r1, [r2]
	ldr	r3, [r0, #8]
	ldr	r2, [r2, #4]
	mov	r0, r5
	bl	__Actor_TravelTo
	mov	r1, r9
	cmp	r1, #0
	beq	.L5760
	mov	r0, r9
	mov	r1, #6
	bl	__Sprite_SetAnim
	mov	r2, r9
	ldr	r3, .L5784	@ 0
	add	r2, #0x26
	strb	r3, [r2]
.L5760:
	mov	r2, r8
	str	r5, [r2, #0x18]
.L5764:
	mov	r0, r8
	ldr	r3, [r0]
	sub	r5, r3, #1
	str	r5, [r0]
	cmp	r5, #0
	bne	.L57b4
	ldr	r0, [r0, #0x14]
	bl	__DeleteActor
	mov	r1, r8
	str	r5, [r1, #0x14]
	ldr	r0, =0x161
	bl	__ClearFlag
	b	.L57c4

	.align	2, 0
.L5784:
	.word	0
	.pool

.L57b4:
	mov	r2, r8
	ldr	r0, [r2, #0x14]
	cmp	r0, #0
	beq	.L57c4
	mov	r1, #6
	sub	r1, r5
	bl	__Actor_SetAnim
.L57c4:
	mov	r1, #6
	mov	r0, r7
	bl	__Actor_SetAnim
	mov	r0, #3
	bl	__WaitFrames
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, r7
	mov	r1, #7
	bl	__Actor_SetAnim
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r7, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r7, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r7, #0x28]
	ldr	r3, [sp]
	ldrb	r2, [r3]
	ldr	r0, [sp]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, r7
	bl	__Func_800c528
	mov	r3, r11
	mov	r2, #2
	ldrsh	r1, [r3, r2]
	mov	r0, #0xa
	ldrsh	r2, [r3, r0]
	mov	r0, #0
	bl	__Func_8092158
	mov	r1, #6
	mov	r0, r7
	bl	__Actor_SetAnim
	mov	r0, #2
	bl	__WaitFrames
	ldr	r1, [sp, #8]
	mov	r0, r8
	ldrb	r2, [r1, #2]
	ldr	r3, [r0, #4]
	cmp	r2, r3
	beq	.L583a
	mov	r0, r7
	mov	r1, #1
	bl	__Func_800c528
	b	.L5840
.L583a:
	mov	r0, #0xd7
	bl	__PlaySound
.L5840:
	mov	r0, #1
	bl	__WaitFrames
	add	r1, sp, #4
	ldr	r2, [sp]
	ldrb	r1, [r1]
	strb	r1, [r2]
	ldr	r3, [sp, #8]
	mov	r0, r8
	ldrb	r2, [r3, #2]
	ldr	r3, [r0, #4]
	cmp	r2, r3
	bne	.L58ba
	ldr	r3, [r0, #0x18]
	cmp	r3, #0
	bne	.L58ba
	mov	r1, #0x12
	mov	r0, r7
	bl	__Actor_SetAnim
	mov	r0, #0xf1
	bl	__PlaySound
	mov	r1, #0xf
	ldr	r6, =gKeyPress
	mov	r5, #0
	mov	r10, r1
	b	.L5880
.L5878:
	mov	r0, #1
	bl	__WaitFrames
	add	r5, #1
.L5880:
	mov	r3, r5
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	bne	.L5890
	mov	r0, r7
	bl	OvlFunc_924_200d158
.L5890:
	cmp	r5, #0x1f
	ble	.L5878
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L5878
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, r8
	ldr	r3, [r0, #0xc]
	str	r3, [r7, #8]
	ldr	r3, [r0, #0x10]
	mov	r1, #1
	str	r3, [r7, #0x10]
	mov	r0, r7
	bl	__Func_800c528
.L58ba:
	mov	r1, r8
	mov	r3, #0
	str	r3, [r1, #8]
	bl	__Func_8091750
	mov	r0, #0xd8
	ldr	r2, [sp, #0xc]
	lsl	r0, #1
	add	r3, r2, r0
	mov	r1, #0x80
	ldr	r4, =Func_8000888
	ldr	r0, [r3]
	lsl	r1, #14
	.call_via r4
	ldr	r1, [sp, #0xc]
	mov	r3, #0xda
	lsl	r3, #1
	add	r2, r1, r3
	ldr	r3, [r2]
	add	r3, r0
	str	r3, [r2]
.L58e6:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200d5c0

.thumb_func_start OvlFunc_924_200d900
	push	{r5, lr}
	ldr	r3, =iwram_3001edc
	ldr	r2, [r3]
	sub	r3, #0x20
	ldr	r5, [r2]
	mov	r1, #0xfa
	ldr	r2, [r3]
	ldr	r3, =gState
	lsl	r1, #1
	add	r3, r1
	ldr	r3, [r3]
	lsl	r3, #2
	add	r3, #0x14
	ldr	r0, [r2, r3]
	ldr	r3, [r5, #8]
	cmp	r3, #0
	beq	.L5926
	sub	r3, #1
	b	.L5938
.L5926:
	bl	OvlFunc_924_200d158
	bl	__Random
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	add	r3, #0xa
.L5938:
	str	r3, [r5, #8]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200d900

