	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Unsummon  @ 0x080e6eac
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x24
	ldr	r5, =iwram_3001eec
	str	r2, [sp, #0x1c]
	str	r0, [sp, #0x20]
	mov	r3, r5
	ldmia	r3!, {r0}
	mov	r11, r1
	ldr	r3, [r3]
	mov	r2, r11
	mov	r4, #0xa0
	str	r3, [sp, #0x18]
	lsl	r4, #14
	mov	r3, r2
	add	r3, r4
	mov	r11, r3
	lsr	r3, #31
	add	r3, r11
	asr	r3, #1
	ldr	r1, [r5, #8]
	mov	r11, r3
	str	r2, [sp, #8]
	ldr	r3, .Le6f20	@ 0x80
	ldr	r2, =REG_BG2PA
	str	r1, [sp, #0xc]
	strh	r3, [r2]
	add	r2, #8
	mov	r3, #0
	str	r3, [r2]
	ldr	r3, .Le6f24	@ 0x3f46
	add	r2, #0x28
	mov	r10, r0
	strh	r3, [r2]
	mov	r6, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r6, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r0, [r5, #0x1c]
	mov	r3, #3
	str	r0, [sp, #0x10]
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2f
	str	r3, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r5, [r5, #0x20]
	b	.Le6f30

	.align	2, 0
.Le6f20:
	.word	0x80
.Le6f24:
	.word	0x3f46
	.pool

.Le6f30:
	ldr	r1, [sp, #0xc]
	ldr	r0, =_FILE_73
	mov	r2, #0
	mov	r3, #0
	str	r5, [sp, #0x14]
	bl	LoadVFXFile
	ldr	r0, =_FILE_5e
	mov	r1, r10
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r1, =0x59d8
	ldr	r0, =_FILE_5f
	add	r1, r10
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r10
	str	r6, [r3]
	add	r2, r10
	mov	r3, #0x32
	mov	r1, #0x90
	lsl	r1, #3
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	mov	r7, #0xe1
	bl	StartTask
	lsl	r7, #7
	mov	r1, #0
	mov	r8, r1
	add	r7, r10
.Le6f7c:
	bl	Random
	mov	r6, #0xff
	mov	r2, #0x80
	lsl	r2, #1
	and	r6, r0
	add	r6, r2
	bl	Random
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r3, r11
	str	r3, [r7]
	ldr	r4, [sp, #0x1c]
	mov	r0, r5
	str	r4, [r7, #4]
	bl	sin
	mov	r3, r6
	mul	r3, r0
	asr	r3, #7
	str	r3, [r7, #0xc]
	mov	r0, r5
	bl	cos
	mov	r3, r6
	mul	r3, r0
	asr	r3, #6
	neg	r3, r3
	str	r3, [r7, #0x10]
	bl	Random
	mov	r3, #0xf
	and	r3, r0
	mov	r0, #1
	add	r8, r0
	add	r3, #0x10
	mov	r1, r8
	str	r3, [r7, #0x18]
	add	r7, #0x1c
	cmp	r1, #0x40
	bne	.Le6f7c
	ldr	r5, =0x772c
	mov	r2, #0
	mov	r8, r2
	mov	r6, #0
	add	r5, r10
.Le6fdc:
	mov	r3, r11
	str	r3, [r5]
	ldr	r4, [sp, #0x1c]
	mov	r0, r6
	str	r4, [r5, #4]
	bl	sin
	lsl	r0, #5
	asr	r0, #6
	str	r0, [r5, #0xc]
	mov	r0, r6
	bl	cos
	lsl	r0, #5
	asr	r0, #5
	neg	r0, r0
	mov	r1, #1
	str	r0, [r5, #0x10]
	add	r8, r1
	ldr	r0, =0x5555
	mov	r2, r8
	add	r6, r0
	add	r5, #0x1c
	cmp	r2, #3
	bne	.Le6fdc
	mov	r3, #0
	ldr	r7, =gBuffer
	mov	r8, r3
.Le7014:
	bl	Random
	mov	r6, #0xff
	and	r6, r0
	bl	Random
	mov	r4, r11
	str	r4, [r7]
	ldr	r3, =0xffff
	mov	r5, r0
	ldr	r0, [sp, #0x1c]
	and	r5, r3
	str	r0, [r7, #4]
	mov	r0, r5
	bl	sin
	add	r6, #0x20
	mov	r3, r6
	mul	r3, r0
	asr	r3, #6
	str	r3, [r7, #0xc]
	mov	r0, r5
	bl	cos
	mov	r3, r6
	mul	r3, r0
	asr	r3, #5
	neg	r3, r3
	str	r3, [r7, #0x10]
	bl	Random
	mov	r3, #0xf
	mov	r1, #1
	and	r3, r0
	add	r8, r1
	add	r3, #0x14
	mov	r2, r8
	str	r3, [r7, #0x18]
	add	r7, #0x1c
	cmp	r2, #0x40
	bne	.Le7014
	mov	r7, #0
.Le7068:
	cmp	r7, #4
	bne	.Le7072
	mov	r0, #0x9a
	bl	_PlaySound
.Le7072:
	cmp	r7, #0x20
	bne	.Le707c
	mov	r0, #0xd4
	bl	_PlaySound
.Le707c:
	cmp	r7, #0x2f
	bgt	.Le70be
	mov	r0, r7
	sub	r0, #8
	mov	r1, #5
	bl	__divsi3
	mov	r4, r0
	cmp	r4, #0
	bge	.Le7092
	mov	r4, #0
.Le7092:
	ldr	r2, =.Leee66
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	mov	r3, r11
	asr	r2, r3, #16
	ldr	r3, =.Leee56
	ldrb	r5, [r3, r4]
	ldr	r0, [sp, #0x1c]
	lsr	r3, r5, #1
	sub	r2, r3
	asr	r3, r0, #16
	ldr	r0, =.Leee5e
	ldrb	r4, [r0, r4]
	lsr	r0, r4, #1
	sub	r3, r0
	str	r4, [sp, #4]
	add	r1, r10
	str	r5, [sp]
	ldr	r0, [sp, #0x18]
	ldr	r4, [sp, #0x10]
	bl	_call_via_r4
.Le70be:
	mov	r6, #0xe1
	mov	r0, #0
	lsl	r6, #7
	mov	r8, r0
	add	r6, r10
.Le70c8:
	mov	r1, r8
	lsr	r3, r1, #31
	add	r3, r8
	asr	r3, #1
	cmp	r7, r3
	ble	.Le711e
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	ble	.Le711e
	sub	r3, #1
	str	r3, [r6, #0x18]
	mov	r0, r6
	mov	r1, #0x3c
	mov	r2, #0
	bl	Func_80e3908
	ldr	r4, [r6, #0x18]
	cmp	r4, #0
	bge	.Le70f0
	add	r4, #0xf
.Le70f0:
	asr	r4, #4
	add	r4, #3
	mov	r3, #2
	ldrsh	r2, [r6, r3]
	lsl	r5, r4, #1
	mov	r0, #6
	ldrsh	r3, [r6, r0]
	ldr	r0, =Data_ede48
	sub	r1, r5, #2
	ldrh	r1, [r0, r1]
	ldr	r0, [sp, #0xc]
	add	r1, r0, r1
	lsr	r0, r4, #31
	add	r0, r4, r0
	asr	r0, #1
	sub	r2, r0
	sub	r3, r4
	str	r4, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x18]
	ldr	r4, [sp, #0x14]
	bl	_call_via_r4
.Le711e:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r6, #0x1c
	cmp	r1, #0x1e
	bne	.Le70c8
	ldr	r3, =Data_ede48
	mov	r2, #0
	ldr	r6, =gBuffer
	mov	r8, r2
	mov	r9, r3
.Le7134:
	cmp	r7, #0x23
	ble	.Le7182
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	ble	.Le7182
	sub	r3, #1
	str	r3, [r6, #0x18]
	mov	r0, r6
	mov	r1, #0x3c
	mov	r2, #0
	bl	Func_80e3908
	ldr	r4, [r6, #0x18]
	cmp	r4, #0
	bge	.Le7154
	add	r4, #0xf
.Le7154:
	asr	r4, #4
	add	r4, #1
	lsl	r5, r4, #1
	mov	r0, #2
	ldrsh	r2, [r6, r0]
	mov	r1, #6
	ldrsh	r3, [r6, r1]
	mov	r0, r9
	sub	r1, r5, #2
	ldrh	r1, [r0, r1]
	ldr	r0, [sp, #0xc]
	add	r1, r0, r1
	lsr	r0, r4, #31
	add	r0, r4, r0
	asr	r0, #1
	sub	r2, r0
	sub	r3, r4
	str	r4, [sp]
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x18]
	ldr	r4, [sp, #0x14]
	bl	_call_via_r4
.Le7182:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r6, #0x1c
	cmp	r1, #0x3c
	bne	.Le7134
	ldr	r5, =0x772c
	mov	r2, #0
	mov	r6, r7
	mov	r8, r2
	sub	r6, #0x24
	add	r5, r10
.Le719a:
	cmp	r6, #0x1b
	bhi	.Le71d8
	mov	r2, #0
	mov	r0, r5
	mov	r1, #0x40
	bl	Func_80e3908
	mov	r1, #7
	mov	r0, r6
	bl	__divsi3
	lsl	r1, r0, #3
	add	r1, r0
	lsl	r1, #5
	ldr	r0, =0x59d8
	add	r1, r10
	mov	r3, #2
	ldrsh	r2, [r5, r3]
	add	r1, r0
	mov	r4, #6
	ldrsh	r3, [r5, r4]
	mov	r0, #0xc
	str	r0, [sp]
	mov	r0, #0x18
	str	r0, [sp, #4]
	sub	r2, #6
	sub	r3, #0xc
	ldr	r0, [sp, #0x18]
	ldr	r4, [sp, #0x10]
	bl	_call_via_r4
.Le71d8:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r5, #0x1c
	cmp	r1, #3
	bne	.Le719a
	cmp	r7, #0x23
	bgt	.Le71f2
	ldr	r0, [sp, #0x20]
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #0x1c]
	bl	Func_80e6d3c
.Le71f2:
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r10
	str	r3, [r2]
	mov	r0, #1
	add	r7, #1
	bl	WaitFrames
	cmp	r7, #0x48
	beq	.Le7208
	b	.Le7068
.Le7208:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r1, #0x80
	ldr	r3, =Func_80008d4
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r3
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Unsummon
