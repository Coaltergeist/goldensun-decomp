	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Gaia  @ 0x080e302c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r2, =iwram_3001eec
	mov	r3, r2
	ldmia	r3!, {r1}
	sub	sp, #0x48
	str	r1, [sp, #0x2c]
	ldr	r3, [r3]
	str	r3, [sp, #0x28]
	ldr	r2, [r2, #8]
	str	r2, [sp, #0x1c]
	ldr	r2, =0x7828
	add	r5, r1, r2
	str	r0, [r5]
	mov	r0, #0
	bl	AnimStart
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	cmp	r3, #0
	bne	.Le3078
	ldr	r2, =REG_BG2PA
	ldr	r3, .Le3068	@ 0xcc
	b	.Le3080

	.align	2, 0
.Le3068:
	.word	0xcc
	.pool

.Le3078:
	cmp	r3, #1
	bne	.Le3082
	ldr	r2, =REG_BG2PA
	ldr	r3, .Le30ac	@ 0xaa
.Le3080:
	strh	r3, [r2]
.Le3082:
	ldr	r4, [sp, #0x2c]
	ldr	r6, =0x7828
	add	r3, r4, r6
	ldr	r2, [r3]
	ldr	r3, [r2, #4]
	cmp	r3, #1
	bne	.Le30b8
	mov	r0, #8
	str	r0, [sp, #0x18]
	ldr	r3, [r2, #0x18]
	mov	r1, #0x28
	str	r1, [sp, #0x14]
	cmp	r3, #0
	beq	.Le30c4
	mov	r2, #0x24
	str	r2, [sp, #0x14]
	cmp	r3, #1
	beq	.Le30c4
	mov	r3, #0x28
	str	r3, [sp, #0x14]
	b	.Le30c4

	.align	2, 0
.Le30ac:
	.word	0xaa
	.pool

.Le30b8:
	mov	r4, #0x10
	mov	r6, #0xc
	neg	r4, r4
	neg	r6, r6
	str	r4, [sp, #0x18]
	str	r6, [sp, #0x14]
.Le30c4:
	ldr	r1, [sp, #0x2c]
	ldr	r2, =0x7828
	add	r3, r1, r2
	ldr	r1, [r3]
	ldr	r3, [r1, #4]
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, [r1, #0x18]
	ldr	r0, =.Leeda6
	add	r3, r2
	ldrsb	r3, [r0, r3]
	ldr	r4, =REG_BG2X
	lsl	r3, #8
	str	r3, [r4]
	ldr	r1, =gBuffer
	mov	r2, #1
	mov	r3, #0
	ldr	r0, =_FILE_7b
	bl	LoadVFXFile
	ldr	r0, =_FILE_7c
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
	ldr	r5, =0x5000002
	ldr	r6, .Le3130
	mov	r7, #0
.Le3106:
	ldrh	r2, [r5]
	lsl	r3, r2, #16
	lsr	r0, r3, #26
	and	r0, r6
	lsr	r1, r3, #21
	mov	r4, #0x1f
	and	r1, r6
	and	r4, r2
	sub	r0, #8
	sub	r1, #8
	sub	r4, #8
	cmp	r0, #0
	bge	.Le3122
	mov	r0, #0
.Le3122:
	cmp	r1, #0
	bge	.Le3128
	mov	r1, #0
.Le3128:
	cmp	r4, #0
	bge	.Le3154
	mov	r4, #0
	b	.Le3154

	.align	2, 0
.Le3130:
	.word	0x1f
	.pool

.Le3154:
	lsl	r3, r0, #10
	lsl	r2, r1, #5
	orr	r3, r2
	orr	r3, r4
	add	r7, #1
	strh	r3, [r5]
	add	r5, #2
	cmp	r7, #0x3f
	bne	.Le3106
	ldr	r2, =.Leed90
	ldr	r5, =gBuffer
	mov	r14, r2
	mov	r4, #0
	mov	r6, #0
	mov	r10, r14
.Le3172:
	mov	r3, r14
	ldrb	r3, [r3]
	mov	r7, #0
	mov	r12, r3
.Le317a:
	mov	r0, #0
	mov	r1, r12
	mov	r8, r0
	cmp	r1, #0
	beq	.Le31a0
	ldrb	r0, [r2, r6]
	ldr	r2, [sp, #0x2c]
	add	r1, r4, r2
	mov	r2, r5
.Le318c:
	ldrb	r3, [r2]
	strb	r3, [r1]
	mov	r3, #1
	add	r8, r3
	add	r2, #1
	add	r1, #1
	add	r4, #1
	cmp	r8, r0
	bne	.Le318c
	mov	r2, r10
.Le31a0:
	add	r7, #1
	cmp	r7, #0x20
	bne	.Le317a
	mov	r0, r14
	ldrb	r3, [r0]
	mov	r1, #1
	add	r6, #1
	add	r5, r3
	add	r14, r1
	cmp	r6, #9
	bne	.Le3172
	mov	r6, #0
.Le31b8:
	mov	r0, r5
	mov	r7, #0
	add	r0, #0x30
.Le31be:
	ldr	r2, [sp, #0x2c]
	add	r1, r4, r2
	mov	r2, r5
.Le31c4:
	ldrb	r3, [r2]
	add	r2, #1
	strb	r3, [r1]
	add	r4, #1
	add	r1, #1
	cmp	r2, r0
	bne	.Le31c4
	add	r7, #1
	cmp	r7, #3
	bne	.Le31be
	add	r6, #1
	add	r5, #0x30
	cmp	r6, #0x20
	bne	.Le31b8
	ldr	r3, [sp, #0x2c]
	mov	r1, #0xfc
	mov	r7, #0
	lsl	r1, #2
	add	r2, r4, r3
.Le31ea:
	ldrb	r3, [r5]
	add	r7, #1
	strb	r3, [r2]
	add	r5, #1
	add	r2, #1
	add	r4, #1
	cmp	r7, r1
	bne	.Le31ea
	ldr	r1, =.Leeda0
	ldr	r0, =.Leeda3
	add	r6, r1, #3
.Le3200:
	mov	r2, #0
	mov	r8, r2
	ldrb	r3, [r0]
	ldrb	r2, [r1]
	mul	r3, r2
	cmp	r3, #0
	beq	.Le3226
	mov	r12, r3
	ldr	r3, [sp, #0x2c]
	add	r2, r4, r3
.Le3214:
	ldrb	r3, [r5]
	strb	r3, [r2]
	mov	r3, #1
	add	r8, r3
	add	r2, #1
	add	r5, #1
	add	r4, #1
	cmp	r8, r12
	bne	.Le3214
.Le3226:
	add	r1, #1
	add	r0, #1
	cmp	r1, r6
	bne	.Le3200
	ldr	r0, =_FILE_73
	ldr	r1, [sp, #0x1c]
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	mov	r4, #0xd
	neg	r4, r4
	ldr	r5, =0x77d8
	mov	r7, #0
	mov	r6, r4
.Le3244:
	mov	r0, #0xc3
	lsl	r0, #1
	bl	_CreateSprite
	ldr	r1, [sp, #0x2c]
	str	r0, [r5, r1]
	cmp	r0, #0
	beq	.Le3278
	mov	r2, r0
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, r7
	cmp	r7, #0
	bge	.Le3264
	add	r1, r7, #3
.Le3264:
	asr	r1, #2
	bl	_Sprite_SetAnim
	ldr	r2, [sp, #0x2c]
	ldr	r1, [r5, r2]
	ldrb	r3, [r1, #9]
	mov	r2, #4
	and	r3, r6
	orr	r3, r2
	strb	r3, [r1, #9]
.Le3278:
	add	r7, #1
	add	r5, #4
	cmp	r7, #0xb
	bne	.Le3244
	mov	r6, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r6, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r5, =gPtrs
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r1, #7
	str	r3, [sp, #0x20]
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r6, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Le32e4	@ 0x3f46
	strh	r3, [r2]
	ldr	r3, .Le32e8	@ 0x1010
	add	r2, #2
	strh	r3, [r2]
	ldr	r4, [sp, #0x2c]
	mov	r0, #0xef
	lsl	r0, #7
	ldr	r1, =0x7784
	add	r3, r4, r0
	add	r5, #0xbc
	str	r6, [r3]
	add	r2, r4, r1
	ldr	r5, [r5]
	mov	r3, #0x4b
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	lsl	r1, #3
	str	r5, [sp, #0x24]
	bl	StartTask
	ldr	r3, =0x7198
	ldr	r2, [sp, #0x2c]
	mov	r7, #0
	mov	r6, #0xf
	add	r5, r2, r3
	b	.Le3318

	.align	2, 0
.Le32e4:
	.word	0x3f46
.Le32e8:
	.word	0x1010
	.pool

.Le3318:
	bl	Random
	and	r0, r6
	mov	r3, #0x80
	add	r0, #0x58
	str	r3, [r5, #4]
	str	r0, [r5]
	bl	Random
	mov	r3, #1
	str	r3, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r5, #0x14]
	lsl	r2, r7, #2
	and	r0, r6
	mov	r3, #0x2c
	str	r7, [r5, #0xc]
	add	r0, #2
	sub	r3, r2
	add	r7, #1
	str	r0, [r5, #8]
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, #0xb
	bne	.Le3318
	ldr	r4, [sp, #0x2c]
	ldr	r6, =0x7240
	ldr	r1, =.Leedac
	mov	r7, #0
	add	r2, r4, r6
.Le3356:
	ldrb	r3, [r1]
	add	r7, #1
	str	r3, [r2]
	add	r1, #1
	add	r2, #0x1c
	cmp	r7, #6
	bne	.Le3356
	ldr	r5, =gBuffer
	mov	r7, #0
	mov	r6, #0x3f
.Le336a:
	bl	Random
	ldr	r1, [sp, #0x18]
	and	r0, r6
	add	r0, r1
	add	r0, #0x20
	lsl	r0, #16
	str	r0, [r5]
	bl	Random
	mov	r3, #7
	and	r3, r0
	add	r3, #0x60
	lsl	r3, #16
	str	r3, [r5, #4]
	bl	Random
	and	r0, r6
	add	r0, #0x20
	lsl	r0, #13
	str	r0, [r5, #0x10]
	bl	Random
	mov	r3, #0x1f
	mov	r2, #0x80
	and	r3, r0
	add	r7, #1
	lsl	r2, #1
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, r2
	bne	.Le336a
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Le33e0	@ 0x785
	strh	r3, [r2]
	ldr	r3, [sp, #0x2c]
	ldr	r4, =0x77a8
	add	r2, r3, r4
	mov	r3, #0xfa
	str	r3, [r2]
	ldr	r0, [sp, #0x18]
	add	r0, #0x40
	mov	r6, #0
	str	r0, [sp, #0x10]
	mov	r11, r6
.Le33c4:
	mov	r1, r11
	cmp	r1, #0
	bne	.Le33d0
	mov	r0, #0xd4
	bl	_PlaySound
.Le33d0:
	mov	r2, r11
	cmp	r2, #0x28
	bne	.Le33f8
	mov	r0, #0x8d
	bl	_PlaySound
	b	.Le33f8

	.align	2, 0
.Le33e0:
	.word	0x785
	.pool

.Le33f8:
	mov	r3, r11
	cmp	r3, #0x60
	bne	.Le3404
	mov	r0, #0x91
	bl	_PlaySound
.Le3404:
	mov	r4, r11
	cmp	r4, #0x78
	bne	.Le3410
	mov	r0, #0x86
	bl	_Func_80bd7dc
.Le3410:
	mov	r6, r11
	cmp	r6, #0x51
	bgt	.Le347a
	mov	r3, r11
	cmp	r6, #0
	bge	.Le341e
	add	r3, #3
.Le341e:
	asr	r7, r3, #2
	cmp	r7, #2
	ble	.Le342a
	mov	r3, #1
	and	r3, r7
	add	r7, r3, #1
.Le342a:
	ldr	r0, =.Leed9a
	ldr	r3, =.Leeda0
	lsl	r1, r7, #1
	ldrb	r4, [r3, r7]
	ldr	r2, [sp, #0x2c]
	ldr	r6, [sp, #0x18]
	mov	r8, r1
	ldrh	r1, [r0, r1]
	add	r1, r2, r1
	sub	r2, r6, r4
	ldr	r6, =.Leeda3
	mov	r10, r0
	ldrb	r0, [r6, r7]
	mov	r5, #0x74
	mov	r9, r3
	add	r2, #0x40
	sub	r3, r5, r0
	str	r4, [sp]
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x20]
	ldr	r0, [sp, #0x28]
	bl	_call_via_r4
	mov	r0, r10
	mov	r2, r8
	ldrh	r1, [r0, r2]
	ldr	r3, [sp, #0x2c]
	ldrb	r2, [r6, r7]
	mov	r4, r9
	add	r1, r3, r1
	ldrb	r3, [r4, r7]
	sub	r5, r2
	str	r3, [sp]
	str	r2, [sp, #4]
	ldr	r0, [sp, #0x28]
	ldr	r2, [sp, #0x10]
	mov	r3, r5
	ldr	r6, [sp, #0x24]
	bl	_call_via_r6
.Le347a:
	mov	r3, r11
	sub	r3, #0xc
	cmp	r3, #0x4b
	bhi	.Le3504
	mov	r0, r11
	sub	r0, #0x40
	mov	r1, #3
	bl	__divsi3
	mov	r5, r0
	cmp	r5, #0
	bge	.Le3494
	mov	r5, #0
.Le3494:
	cmp	r5, #7
	ble	.Le349a
	mov	r5, #7
.Le349a:
	ldr	r0, [sp, #0x18]
	lsl	r1, r5, #1
	ldr	r2, =.Leed90
	add	r0, #0x40
	mov	r3, #0x20
	mov	r4, #0xc
	str	r1, [sp, #8]
	mov	r7, #0
	mov	r8, r0
	mov	r9, r2
	mov	r10, r3
	neg	r4, r4
.Le34b2:
	ldr	r0, [sp, #8]
	ldr	r6, =.Leed7e
	ldrh	r1, [r6, r0]
	mov	r6, r9
	ldrb	r3, [r6, r5]
	ldr	r2, [sp, #0x2c]
	ldr	r0, [sp, #0x18]
	add	r1, r2, r1
	str	r3, [sp]
	sub	r2, r0, r3
	mov	r3, r10
	str	r3, [sp, #4]
	str	r4, [sp, #0xc]
	mov	r3, r4
	ldr	r6, [sp, #0x20]
	add	r2, #0x40
	ldr	r0, [sp, #0x28]
	bl	_call_via_r6
	ldr	r0, =.Leed7e
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #0x2c]
	ldrh	r1, [r0, r2]
	mov	r6, r9
	ldr	r4, [sp, #0xc]
	add	r1, r3, r1
	ldrb	r3, [r6, r5]
	mov	r0, r10
	str	r3, [sp]
	str	r0, [sp, #4]
	mov	r3, r4
	ldr	r0, [sp, #0x28]
	mov	r2, r8
	ldr	r6, [sp, #0x24]
	bl	_call_via_r6
	ldr	r4, [sp, #0xc]
	add	r7, #1
	add	r4, #0x20
	cmp	r7, #4
	bne	.Le34b2
.Le3504:
	mov	r0, r11
	sub	r0, #0xa0
	cmp	r0, #0x17
	bhi	.Le358c
	mov	r1, #3
	bl	__divsi3
	mov	r3, #7
	sub	r5, r3, r0
	cmp	r5, #0
	bge	.Le351c
	mov	r5, #0
.Le351c:
	cmp	r5, #7
	ble	.Le3522
	mov	r5, #7
.Le3522:
	ldr	r0, [sp, #0x18]
	lsl	r1, r5, #1
	ldr	r2, =.Leed90
	add	r0, #0x40
	mov	r3, #0x20
	mov	r4, #0xc
	str	r1, [sp, #8]
	mov	r7, #0
	mov	r8, r0
	mov	r9, r2
	mov	r10, r3
	neg	r4, r4
.Le353a:
	ldr	r0, [sp, #8]
	ldr	r6, =.Leed7e
	ldrh	r1, [r6, r0]
	mov	r6, r9
	ldrb	r3, [r6, r5]
	ldr	r2, [sp, #0x2c]
	ldr	r0, [sp, #0x18]
	add	r1, r2, r1
	str	r3, [sp]
	sub	r2, r0, r3
	mov	r3, r10
	str	r3, [sp, #4]
	str	r4, [sp, #0xc]
	mov	r3, r4
	ldr	r6, [sp, #0x20]
	add	r2, #0x40
	ldr	r0, [sp, #0x28]
	bl	_call_via_r6
	ldr	r0, =.Leed7e
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #0x2c]
	ldrh	r1, [r0, r2]
	mov	r6, r9
	ldr	r4, [sp, #0xc]
	add	r1, r3, r1
	ldrb	r3, [r6, r5]
	mov	r0, r10
	str	r3, [sp]
	str	r0, [sp, #4]
	mov	r3, r4
	ldr	r0, [sp, #0x28]
	mov	r2, r8
	ldr	r6, [sp, #0x24]
	bl	_call_via_r6
	ldr	r4, [sp, #0xc]
	add	r7, #1
	add	r4, #0x20
	cmp	r7, #4
	bne	.Le353a
.Le358c:
	mov	r3, r11
	sub	r3, #0x58
	cmp	r3, #0x47
	bhi	.Le35fc
	ldr	r0, [sp, #0x2c]
	mov	r1, #0x9e
	ldr	r4, [sp, #0x20]
	ldr	r2, [sp, #0x18]
	lsl	r1, #5
	add	r6, r0, r1
	mov	r5, #0x60
	mov	r3, #0x30
	str	r3, [sp]
	str	r5, [sp, #4]
	mov	r10, r4
	add	r2, #0x10
	ldr	r0, [sp, #0x28]
	mov	r1, r6
	mov	r3, #0
	mov	r9, r2
	bl	_call_via_r10
	ldr	r1, [sp, #0x24]
	mov	r0, #0x30
	str	r0, [sp]
	str	r5, [sp, #4]
	ldr	r2, [sp, #0x10]
	mov	r8, r1
	ldr	r0, [sp, #0x28]
	mov	r1, r6
	mov	r3, #0
	bl	_call_via_r8
	mov	r3, #0x97
	ldr	r2, [sp, #0x2c]
	lsl	r3, #6
	add	r6, r2, r3
	mov	r4, #0x30
	mov	r5, #0x15
	mov	r1, r6
	mov	r2, r9
	mov	r3, #0x60
	str	r4, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x28]
	bl	_call_via_r10
	mov	r0, #0x30
	str	r0, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x28]
	mov	r1, r6
	ldr	r2, [sp, #0x10]
	mov	r3, #0x60
	bl	_call_via_r8
.Le35fc:
	mov	r1, r11
	cmp	r1, #0x57
	ble	.Le3662
	ldr	r2, =Data_ede48
	ldr	r5, =gBuffer
	mov	r7, #0
	mov	r8, r2
.Le360a:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	bne	.Le3656
	mov	r0, #3
	and	r0, r7
	add	r0, #5
	lsl	r4, r0, #1
	sub	r3, r4, #2
	mov	r6, r8
	ldrh	r1, [r6, r3]
	ldr	r2, [sp, #0x1c]
	add	r1, r2, r1
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	lsr	r3, r0, #1
	sub	r2, r3
	mov	r6, #6
	ldrsh	r3, [r5, r6]
	str	r0, [sp]
	sub	r3, r0
	str	r4, [sp, #4]
	ldr	r0, [sp, #0x28]
	ldr	r4, [sp, #0x20]
	bl	_call_via_r4
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #0x10]
	sub	r2, r3
	str	r2, [r5, #4]
	cmp	r2, #0
	bge	.Le365a
	mov	r6, r11
	cmp	r6, #0x9f
	bgt	.Le365a
	mov	r3, #0xc0
	lsl	r3, #15
	str	r3, [r5, #4]
	b	.Le365a
.Le3656:
	sub	r3, #1
	str	r3, [r5, #0x18]
.Le365a:
	add	r7, #1
	add	r5, #0x1c
	cmp	r7, #0x40
	bne	.Le360a
.Le3662:
	mov	r0, r11
	cmp	r0, #4
	bgt	.Le366a
	b	.Le37d4
.Le366a:
	mov	r1, #6
	mov	r10, r1
	cmp	r0, #0x47
	ble	.Le3676
	mov	r2, #0xb
	mov	r10, r2
.Le3676:
	mov	r3, #0
	mov	r4, r10
	mov	r8, r3
	cmp	r4, #0
	bne	.Le3682
	b	.Le37d4
.Le3682:
	ldr	r6, [sp, #0x2c]
	ldr	r0, =0x7198
	add	r5, r6, r0
.Le3688:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	beq	.Le3690
	b	.Le37c4
.Le3690:
	ldr	r3, =Data_edab0
	ldr	r4, [r3, #4]
	ldr	r3, [r3]
	mov	r1, r11
	str	r3, [sp, #0x30]
	str	r4, [sp, #0x34]
	cmp	r1, #0x47
	ble	.Le36bc
	mov	r3, r8
	mov	r4, #0x80
	ldr	r6, [sp, #0x2c]
	ldr	r0, =0x7828
	lsl	r2, r3, #12
	lsl	r4, #8
	add	r2, r4
	add	r3, r6, r0
	str	r2, [sp, #0x30]
	ldr	r3, [r3]
	ldr	r3, [r3, #0x18]
	lsl	r3, #14
	add	r3, r2
	b	.Le36c0
.Le36bc:
	mov	r3, #0x80
	lsl	r3, #8
.Le36c0:
	str	r3, [sp, #0x30]
	ldr	r3, [sp, #0x30]
	add	r7, sp, #0x30
	str	r3, [r7, #4]
	add	r6, sp, #0x38
	mov	r3, #0
	str	r3, [r6, #0xc]
	ldr	r1, [sp, #0x14]
	ldr	r3, [r5]
	lsl	r2, r1, #1
	add	r3, r2
	lsl	r3, #16
	str	r3, [r6]
	ldr	r3, [r5, #4]
	mov	r2, #0x80
	lsl	r2, #18
	lsl	r3, #16
	sub	r3, r2, r3
	str	r2, [r6, #8]
	mov	r2, r11
	lsr	r0, r2, #31
	add	r0, r11
	asr	r0, #1
	str	r3, [r6, #4]
	add	r0, r8
	mov	r1, #0xb
	bl	__modsi3
	mov	r4, #1
	neg	r4, r4
	cmp	r0, r4
	beq	.Le3718
	lsl	r3, r0, #2
	ldr	r0, =0x77d8
	ldr	r1, [sp, #0x2c]
	add	r3, r0
	ldr	r0, [r1, r3]
	mov	r2, r7
	mov	r1, r6
	mov	r3, #0
	str	r4, [sp, #0xc]
	bl	_UpdateSprite
	ldr	r4, [sp, #0xc]
.Le3718:
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #8]
	sub	r3, r2
	str	r3, [r5, #4]
	ldr	r2, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	add	r2, r3
	str	r2, [r5, #0xc]
	cmp	r2, #0xc
	ble	.Le3732
	mov	r3, r2
	sub	r3, #0xc
	str	r3, [r5, #0xc]
.Le3732:
	ldr	r3, [r5, #4]
	cmp	r3, #0
	bge	.Le37c8
	mov	r2, r11
	cmp	r2, #0x9f
	ble	.Le3742
	str	r4, [r5, #0x18]
	b	.Le37c8
.Le3742:
	mov	r3, r11
	cmp	r3, #0x57
	ble	.Le3790
	bl	Random
	mov	r3, #7
	and	r3, r0
	add	r3, #8
	str	r3, [r5, #8]
	ldr	r4, [sp, #0x2c]
	ldr	r6, =0x7828
	add	r3, r4, r6
	ldr	r3, [r3]
	ldr	r3, [r3, #0x18]
	cmp	r3, #0
	bne	.Le3770
	bl	Random
	mov	r1, #0x60
	bl	__umodsi3
	add	r0, #0x2a
	b	.Le378e
.Le3770:
	cmp	r3, #1
	bne	.Le3782
	bl	Random
	mov	r1, #0x70
	bl	__umodsi3
	add	r0, #0x22
	b	.Le378e
.Le3782:
	bl	Random
	mov	r1, #0xa0
	bl	__umodsi3
	add	r0, #0xa
.Le378e:
	str	r0, [r5]
.Le3790:
	mov	r3, #0x80
	str	r3, [r5, #4]
	mov	r3, #8
	b	.Le37c6

	.pool_aligned

.Le37c4:
	sub	r3, #1
.Le37c6:
	str	r3, [r5, #0x18]
.Le37c8:
	mov	r0, #1
	add	r8, r0
	add	r5, #0x1c
	cmp	r8, r10
	beq	.Le37d4
	b	.Le3688
.Le37d4:
	mov	r1, r11
	cmp	r1, #0x9e
	bgt	.Le3832
	ldr	r3, [sp, #0x2c]
	ldr	r4, =0x7828
	add	r2, r3, r4
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	mov	r7, #0
	cmp	r3, #0
	beq	.Le3832
	mov	r6, #3
	and	r1, r6
	mov	r5, r2
	mov	r8, r1
	mov	r6, #0x24
.Le37f4:
	mov	r0, r11
	cmp	r0, #0x55
	ble	.Le3826
	mov	r1, #0xc
	bl	__modsi3
	cmp	r0, #0
	bne	.Le3816
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, r7
	bl	SetBattleActorState
.Le3816:
	mov	r2, r8
	cmp	r2, #0
	bne	.Le3826
	ldr	r3, [r5]
	mov	r1, #5
	ldrsh	r0, [r3, r6]
	bl	_SetBattleActorKnockback
.Le3826:
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	add	r7, #1
	add	r6, #2
	cmp	r7, r3
	bne	.Le37f4
.Le3832:
	mov	r3, r11
	sub	r3, #0x5a
	cmp	r3, #0x46
	bls	.Le3844
	mov	r0, #2
	mov	r1, #2
	bl	UpdateScreenShake
	b	.Le384c
.Le3844:
	mov	r0, #8
	mov	r1, #8
	bl	UpdateScreenShake
.Le384c:
	bl	Func_80cd52c
	ldr	r0, =0x7824
	ldr	r6, [sp, #0x2c]
	mov	r3, #1
	add	r2, r6, r0
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #1
	add	r11, r1
	mov	r2, r11
	cmp	r2, #0xc0
	beq	.Le386c
	b	.Le33c4
.Le386c:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	ldr	r3, =0x77d8
	mov	r7, #0
	add	r5, r6, r3
.Le3884:
	ldmia	r5!, {r0}
	add	r7, #1
	bl	_DeleteSprite
	cmp	r7, #0xb
	bne	.Le3884
	bl	AnimEnd
	add	sp, #0x48
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Gaia
