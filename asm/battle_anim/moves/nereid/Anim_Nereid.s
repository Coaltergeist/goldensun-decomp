	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Nereid  @ 0x080d2d98
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ef0
	ldr	r1, [r3]
	sub	sp, #0x3c
	str	r1, [sp, #0x30]
	sub	r2, r3, #4
	ldr	r2, [r2]
	str	r2, [sp, #0x2c]
	ldr	r7, =0x7828
	ldr	r3, [r3, #4]
	str	r3, [sp, #0x28]
	add	r3, r2, r7
	str	r0, [r3]
	mov	r0, #0
	bl	AnimStart
	ldr	r2, =REG_BLDALPHA
	mov	r0, sp
	ldr	r3, .Ld2e08	@ 0x1010
	add	r0, #0x34
	strh	r3, [r2]
	str	r0, [sp, #0x24]
	ldr	r1, [sp, #0x24]
	mov	r0, #0
	bl	BuildDraw2DFuncs
	ldr	r0, =_FILE_6e
	bl	GetFile
	mov	r5, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	mov	r2, #0x80
	mov	r1, r5
	lsl	r0, #19
	bl	_call_via_r3
	add	r5, #0x80
	ldr	r1, [sp, #0x2c]
	mov	r0, r5
	bl	DecompressLZ
	ldr	r0, =_FILE_85
	bl	GetFile
	ldr	r3, =0x6e4
	ldr	r2, [sp, #0x2c]
	mov	r5, r0
	b	.Ld2e28

	.align	2, 0
.Ld2e08:
	.word	0x1010
	.pool

.Ld2e28:
	add	r5, #0x80
	add	r1, r2, r3
	mov	r0, r5
	bl	DecompressLZ
	ldr	r0, =_FILE_73
	bl	GetFile
	ldr	r1, [sp, #0x28]
	bl	DecompressLZ
	mov	r0, #0xef
	ldr	r7, [sp, #0x2c]
	lsl	r0, #7
	ldr	r1, =0x7784
	add	r2, r7, r0
	mov	r3, #2
	str	r3, [r2]
	add	r2, r7, r1
	mov	r3, #0x4b
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r7, #0xb0
	ldr	r0, =0xfff00000
	lsl	r7, #15
	ldr	r1, =0xfffc0000
	mov	r3, #0x80
	str	r7, [sp, #0x20]
	str	r0, [sp, #0x14]
	ldr	r7, [sp, #0x2c]
	ldr	r0, =0x7098
	mov	r2, #0
	lsl	r3, #17
	str	r1, [sp, #0x18]
	str	r2, [sp, #0x10]
	str	r3, [sp, #0x1c]
	mov	r8, r2
	add	r3, r7, r0
	sub	r2, #1
.Ld2e7e:
	mov	r1, #1
	add	r8, r1
	mov	r7, r8
	str	r2, [r3]
	add	r3, #0x1c
	cmp	r7, #0x40
	bne	.Ld2e7e
	ldr	r1, [sp, #0x2c]
	ldr	r2, =0x7320
	mov	r0, #0
	mov	r8, r0
	add	r5, r1, r2
.Ld2e96:
	bl	Random
	mov	r3, #0x7f
	and	r3, r0
	str	r3, [r5]
	bl	Random
	mov	r3, #7
	and	r3, r0
	add	r3, #0x38
	str	r3, [r5, #4]
	bl	Random
	mov	r3, #0xf
	and	r3, r0
	neg	r3, r3
	str	r3, [r5, #0x18]
	mov	r3, #1
	add	r8, r3
	mov	r7, r8
	add	r5, #0x1c
	cmp	r7, #0x10
	bne	.Ld2e96
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x80
	ldr	r3, =ewram_2010018
	mov	r8, r0
	neg	r1, r1
	lsl	r2, #3
.Ld2ed2:
	mov	r7, #1
	add	r8, r7
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r8, r2
	bne	.Ld2ed2
	ldr	r0, [sp, #0x2c]
	ldr	r1, =0x7828
	add	r3, r0, r1
	ldr	r0, [r3]
	bl	Func_80d6750
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #0xbe
	mov	r2, #2
	lsl	r1, #1
	mov	r0, #0xc
	bl	CreateSummonSprite
	mov	r2, #0
	mov	r9, r2
.Ld2f00:
	ldr	r3, =gKeyRepeat
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Ld2f1a
	mov	r3, r9
	cmp	r3, #0x20
	ble	.Ld2f1a
	cmp	r3, #0x61
	bgt	.Ld2f1a
	mov	r7, #0x62
	mov	r9, r7
.Ld2f1a:
	mov	r0, r9
	cmp	r0, #0x78
	bne	.Ld2f26
	mov	r0, #0x86
	bl	_Func_80bd7dc
.Ld2f26:
	mov	r1, r9
	cmp	r1, #0xf
	bgt	.Ld2f32
	ldr	r2, [sp, #0x10]
	add	r2, #2
	str	r2, [sp, #0x10]
.Ld2f32:
	mov	r3, r9
	cmp	r3, #0x63
	bgt	.Ld2f7c
	ldr	r0, [sp, #0x1c]
	ldr	r7, [sp, #0x14]
	add	r7, r0
	str	r7, [sp, #0x1c]
	ldr	r7, [sp, #0x14]
	mov	r3, #0x3a
	mul	r3, r7
	ldr	r2, [sp, #0x20]
	ldr	r1, [sp, #0x18]
	add	r1, r2
	str	r1, [sp, #0x20]
	cmp	r3, #0
	bge	.Ld2f54
	add	r3, #0x3f
.Ld2f54:
	ldr	r0, [sp, #0x18]
	asr	r3, #6
	str	r3, [sp, #0x14]
	lsl	r3, r0, #3
	sub	r3, r0
	lsl	r3, #3
	cmp	r3, #0
	bge	.Ld2f66
	add	r3, #0x3f
.Ld2f66:
	ldr	r1, [sp, #0x1c]
	ldr	r2, =0x77ffff
	asr	r3, #6
	str	r3, [sp, #0x18]
	cmp	r1, r2
	bgt	.Ld2f7c
	ldr	r3, [sp, #0x14]
	mov	r7, #0x80
	lsl	r7, #8
	add	r7, r3, r7
	str	r7, [sp, #0x14]
.Ld2f7c:
	mov	r0, #1
	ldr	r1, [sp, #0x1c]
	ldr	r2, [sp, #0x20]
	bl	Func_80e6d3c
	mov	r0, r9
	cmp	r0, #0x1c
	bne	.Ld300c
	mov	r1, #0
	mov	r2, #0x3f
	ldr	r7, =gBuffer
	mov	r8, r1
	mov	r10, r2
.Ld2f96:
	mov	r0, #1
	ldr	r3, [r7, #0x18]
	neg	r0, r0
	cmp	r3, r0
	bne	.Ld2ffe
	bl	Random
	mov	r1, r10
	mov	r6, r0
	and	r6, r1
	bl	Random
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	sin
	mov	r3, r6
	mul	r3, r0
	mov	r2, #0x80
	lsl	r2, #14
	asr	r3, #3
	add	r3, r2
	str	r3, [r7]
	mov	r0, r5
	bl	cos
	mov	r3, r6
	mul	r3, r0
	mov	r0, #0xc0
	lsl	r0, #15
	asr	r3, #2
	add	r3, r0
	str	r3, [r7, #4]
	bl	Random
	mov	r1, r10
	and	r0, r1
	sub	r0, #0x20
	lsl	r0, #14
	str	r0, [r7, #0xc]
	bl	Random
	mov	r2, r10
	and	r0, r2
	neg	r0, r0
	sub	r0, #8
	lsl	r0, #13
	mov	r3, #0
	str	r0, [r7, #0x10]
	str	r3, [r7, #0x18]
.Ld2ffe:
	mov	r3, #1
	mov	r0, #0x80
	add	r8, r3
	lsl	r0, #1
	add	r7, #0x1c
	cmp	r8, r0
	bne	.Ld2f96
.Ld300c:
	mov	r1, r9
	sub	r1, #0x20
	str	r1, [sp, #0xc]
	cmp	r1, #0x2f
	bhi	.Ld30a2
	mov	r2, #0
	mov	r3, #0x3f
	ldr	r7, =gBuffer
	mov	r11, r2
	mov	r8, r2
	mov	r10, r3
.Ld3022:
	mov	r0, #1
	ldr	r3, [r7, #0x18]
	neg	r0, r0
	cmp	r3, r0
	bne	.Ld3094
	bl	Random
	mov	r1, r10
	mov	r6, r0
	and	r6, r1
	bl	Random
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	sin
	mov	r3, r6
	mul	r3, r0
	mov	r2, #0x80
	lsl	r2, #14
	asr	r3, #3
	add	r3, r2
	str	r3, [r7]
	mov	r0, r5
	bl	cos
	mov	r3, r6
	mul	r3, r0
	mov	r0, #0xc0
	lsl	r0, #15
	asr	r3, #2
	add	r3, r0
	str	r3, [r7, #4]
	bl	Random
	mov	r1, r10
	and	r0, r1
	sub	r0, #0x20
	lsl	r0, #14
	str	r0, [r7, #0xc]
	bl	Random
	mov	r2, r10
	and	r0, r2
	mov	r3, #0
	neg	r0, r0
	sub	r0, #8
	str	r3, [r7, #0x18]
	mov	r3, #1
	lsl	r0, #13
	add	r11, r3
	str	r0, [r7, #0x10]
	mov	r0, r11
	cmp	r0, #0x10
	beq	.Ld30a2
.Ld3094:
	mov	r1, #1
	mov	r2, #0x80
	add	r8, r1
	lsl	r2, #3
	add	r7, #0x1c
	cmp	r8, r2
	bne	.Ld3022
.Ld30a2:
	mov	r3, r9
	cmp	r3, #0
	bne	.Ld30ae
	mov	r0, #0xa4
	bl	_PlaySound
.Ld30ae:
	mov	r7, r9
	cmp	r7, #0x20
	bne	.Ld30ba
	mov	r0, #0x91
	bl	_PlaySound
.Ld30ba:
	mov	r0, r9
	cmp	r0, #0x50
	bne	.Ld30c6
	mov	r0, #0x90
	bl	_PlaySound
.Ld30c6:
	ldr	r1, [sp, #0xc]
	cmp	r1, #0x2f
	bhi	.Ld3132
	ldr	r0, [sp, #0x2c]
	ldr	r1, =0x6e4
	add	r0, r1
	mov	r2, #0
	mov	r7, r9
	mov	r10, r0
	ldr	r0, =0xffffff00
	mov	r8, r2
	lsl	r3, r7, #4
	mov	r2, #0x22
	ldr	r6, =.Lee1ac
	mov	r11, r2
	add	r7, r3, r0
.Ld30e6:
	mov	r0, r7
	mov	r1, #0x68
	bl	__modsi3
	ldrb	r3, [r6, #1]
	ldrb	r2, [r6]
	mov	r5, r0
	mov	r1, r11
	mov	r0, #0x68
	sub	r3, r5
	str	r1, [sp]
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x34]
	sub	r2, #0x11
	sub	r3, #0x68
	ldr	r0, [sp, #0x30]
	mov	r1, r10
	bl	_call_via_r4
	ldrb	r2, [r6]
	ldrb	r3, [r6, #1]
	mov	r1, r11
	sub	r2, #0x11
	sub	r3, r5
	str	r1, [sp]
	str	r5, [sp, #4]
	ldr	r4, [sp, #0x34]
	ldr	r0, [sp, #0x30]
	mov	r1, r10
	bl	_call_via_r4
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	add	r6, #2
	add	r7, #0x19
	cmp	r3, #3
	bne	.Ld30e6
.Ld3132:
	mov	r7, r9
	cmp	r7, #0x5f
	bgt	.Ld3172
	mov	r0, #0
	mov	r8, r0
	mov	r5, #0x20
	mov	r6, #0x78
.Ld3140:
	mov	r2, r8
	lsl	r1, r2, #5
	mov	r2, r9
	cmp	r2, #0
	bge	.Ld314c
	add	r2, #3
.Ld314c:
	mov	r3, #0x1f
	asr	r2, #2
	and	r2, r3
	ldr	r7, [sp, #0x10]
	add	r2, r1, r2
	sub	r2, #0x20
	ldr	r1, [sp, #0x2c]
	str	r5, [sp]
	str	r5, [sp, #4]
	ldr	r4, [sp, #0x34]
	ldr	r0, [sp, #0x30]
	sub	r3, r6, r7
	bl	_call_via_r4
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	cmp	r1, #5
	bne	.Ld3140
.Ld3172:
	mov	r2, #0
	ldr	r5, =gBuffer
	mov	r8, r2
.Ld3178:
	ldr	r3, [r5, #0x18]
	cmp	r3, #0
	bge	.Ld3180
	b	.Ld32a8
.Ld3180:
	mov	r0, r8
	mov	r1, #3
	bl	__modsi3
	ldr	r3, [r5, #0x10]
	add	r4, r0, #2
	cmp	r3, #0
	ble	.Ld3192
	add	r4, #2
.Ld3192:
	mov	r7, r9
	cmp	r7, #0x44
	ble	.Ld319e
	cmp	r4, #5
	bgt	.Ld319e
	mov	r4, #6
.Ld319e:
	mov	r0, r9
	cmp	r0, #0x46
	ble	.Ld31ec
	cmp	r4, #6
	bgt	.Ld31ec
	mov	r4, #7
	b	.Ld31ec

	.pool_aligned

.Ld31ec:
	mov	r1, r9
	cmp	r1, #0x48
	ble	.Ld31f8
	cmp	r4, #7
	bgt	.Ld31f8
	mov	r4, #8
.Ld31f8:
	mov	r2, r9
	cmp	r2, #0x4a
	ble	.Ld3204
	cmp	r4, #8
	bgt	.Ld3204
	mov	r4, #9
.Ld3204:
	mov	r7, r9
	cmp	r7, #0x4c
	ble	.Ld320c
	mov	r4, #0xa
.Ld320c:
	mov	r6, #4
	cmp	r3, #0
	bgt	.Ld3214
	mov	r6, #0
.Ld3214:
	lsl	r0, r4, #1
	ldr	r2, =Data_ede48
	sub	r3, r0, #2
	ldrh	r1, [r2, r3]
	ldr	r2, [sp, #0x28]
	add	r1, r2, r1
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	lsr	r3, r4, #31
	add	r3, r4, r3
	asr	r3, #1
	sub	r2, r3
	mov	r7, #6
	ldrsh	r3, [r5, r7]
	str	r0, [sp, #4]
	str	r4, [sp]
	ldr	r0, [sp, #0x24]
	sub	r3, r4
	ldr	r4, [r6, r0]
	ldr	r0, [sp, #0x30]
	bl	_call_via_r4
	ldr	r3, [r5]
	ldr	r2, [r5, #0xc]
	add	r3, r2
	str	r3, [r5]
	ldr	r1, [r5, #0x10]
	ldr	r3, [r5, #4]
	mov	r2, r9
	add	r3, r1
	str	r3, [r5, #4]
	cmp	r2, #0x50
	ble	.Ld325c
	ldr	r7, =0xffff8000
	add	r3, r1, r7
	b	.Ld326a
.Ld325c:
	mov	r2, #3
	mov	r0, r8
	ldr	r3, =.Lee1b4
	and	r2, r0
	lsl	r2, #2
	ldr	r3, [r3, r2]
	add	r3, r1, r3
.Ld326a:
	str	r3, [r5, #0x10]
	ldr	r2, [r5, #0xc]
	lsl	r3, r2, #5
	sub	r3, r2
	lsl	r3, #1
	cmp	r3, #0
	bge	.Ld327a
	add	r3, #0x3f
.Ld327a:
	ldr	r2, [r5, #0x10]
	asr	r3, #6
	str	r3, [r5, #0xc]
	lsl	r3, r2, #5
	sub	r3, r2
	lsl	r2, r3, #1
	cmp	r2, #0
	bge	.Ld328c
	add	r2, #0x3f
.Ld328c:
	ldr	r3, [r5, #0x18]
	asr	r2, #6
	add	r3, #1
	str	r2, [r5, #0x10]
	str	r3, [r5, #0x18]
	cmp	r2, #0
	ble	.Ld32a8
	mov	r1, #6
	ldrsh	r3, [r5, r1]
	cmp	r3, #0x68
	ble	.Ld32a8
	mov	r3, #1
	neg	r3, r3
	str	r3, [r5, #0x18]
.Ld32a8:
	mov	r2, #1
	mov	r3, #0x80
	add	r8, r2
	lsl	r3, #3
	add	r5, #0x1c
	cmp	r8, r3
	beq	.Ld32b8
	b	.Ld3178
.Ld32b8:
	mov	r7, r9
	cmp	r7, #0x4f
	bgt	.Ld333c
	ldr	r3, =0x7828
	ldr	r1, [sp, #0x2c]
	add	r2, r1, r3
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	mov	r0, #0
	mov	r8, r0
	cmp	r3, #0
	beq	.Ld333c
	mov	r7, r2
	mov	r4, #0x24
.Ld32d4:
	mov	r0, r9
	cmp	r0, #0x1d
	ble	.Ld332e
	mov	r1, #0xc
	str	r4, [sp, #8]
	bl	__modsi3
	mov	r6, r0
	ldr	r4, [sp, #8]
	cmp	r6, #0
	bne	.Ld3314
	ldr	r3, [r7]
	ldrsh	r0, [r3, r4]
	bl	_GetBattleActor
	ldr	r3, [r7]
	ldr	r4, [sp, #8]
	ldr	r5, [r0]
	ldrsh	r0, [r3, r4]
	mov	r3, #1
	neg	r3, r3
	mov	r1, #7
	mov	r2, #5
	str	r6, [sp]
	bl	SetBattleActorState
	mov	r3, #0x90
	lsl	r3, #11
	str	r3, [r5, #0x28]
	ldr	r3, =0xab85
	ldr	r4, [sp, #8]
	str	r3, [r5, #0x48]
.Ld3314:
	cmp	r6, #6
	bne	.Ld332e
	ldr	r3, [r7]
	ldrsh	r0, [r3, r4]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #5
	sub	r3, #1
	str	r4, [sp, #8]
	bl	SetBattleActorState
	ldr	r4, [sp, #8]
.Ld332e:
	ldr	r3, [r7]
	mov	r2, #1
	ldr	r3, [r3, #0x14]
	add	r8, r2
	add	r4, #2
	cmp	r8, r3
	bne	.Ld32d4
.Ld333c:
	ldr	r3, [sp, #0x2c]
	ldr	r7, =0x7824
	add	r2, r3, r7
	mov	r3, #1
	mov	r0, #1
	str	r3, [r2]
	bl	WaitFrames
	mov	r0, #1
	add	r9, r0
	mov	r1, r9
	cmp	r1, #0x7c
	beq	.Ld3358
	b	.Ld2f00
.Ld3358:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	ldr	r2, [sp, #0x20]
	mov	r0, #1
	ldr	r1, [sp, #0x1c]
	bl	Anim_Unsummon
	ldr	r3, [sp, #0x2c]
	mov	r2, #0
	sub	r7, #0x4c
	mov	r8, r2
	add	r5, r3, r7
.Ld337e:
	ldmia	r5!, {r0}
	bl	_DeleteSprite
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0xc
	bne	.Ld337e
	bl	AnimEnd
	add	sp, #0x3c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Nereid

	.section .rodata
.Lee1ac:
	.incrom 0xee1ac, 0xee1b4
.Lee1b4:
	.incrom 0xee1b4, 0xee1c4
