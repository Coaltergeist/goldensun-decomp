	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_ScreenShatter  @ 0x080cbc0c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	ldr	r1, =0x782c
	mov	r0, #0x27
	sub	sp, #0x38
	bl	galloc_iwram
	mov	r1, #0x80
	str	r0, [sp, #0x28]
	lsl	r1, #7
	mov	r0, #0x28
	bl	galloc_iwram
	ldr	r1, =0x302
	str	r0, [sp, #0x24]
	mov	r0, #0x29
	bl	galloc_iwram
	ldr	r3, =iwram_3001e74
	ldr	r0, [r3]
	str	r0, [sp, #0x14]
	add	r3, #0x8c
	ldr	r1, [sp, #0x28]
	ldr	r3, [r3]
	ldr	r2, =0x7828
	mov	r9, r3
	add	r3, r1, r2
	str	r5, [r3]
	bl	Func_80cd508
	mov	r4, r9
	ldr	r2, =iwram_3001ad0
	mov	r3, #1
	str	r3, [r4, #0xc]
	mov	r3, #0x20
	strh	r3, [r2, #6]
	ldr	r7, [sp, #0x14]
	mov	r0, #0xc9
	lsl	r0, #3
	add	r3, r7, r0
	ldrh	r1, [r3]
	mov	r0, #1
	mov	r2, #0
	bl	_Func_80c0774
	ldr	r2, =REG_BG2CNT
	ldr	r3, .Lcbcac	@ 0x784
	mov	r1, #0
	strh	r3, [r2]
	mov	r0, #0
	mov	r2, #0
	mov	r3, #0x64
	bl	_Func_80c0cec
	ldr	r3, =REG_BG2X
	mov	r5, #0
	mov	r1, r9
	str	r5, [r1, #0xc]
	ldr	r2, =REG_BG2Y
	str	r5, [r3]
	ldr	r3, =0xfffff000
	str	r3, [r2]
	ldr	r3, .Lcbcb0	@ 0x80
	sub	r2, #0xc
	strh	r3, [r2]
	ldr	r3, =REG_BG2PB
	strh	r5, [r3]
	add	r3, #2
	strh	r5, [r3]
	ldr	r3, .Lcbcb4	@ 0x100
	add	r2, #6
	strh	r3, [r2]
	ldr	r1, .Lcbcb8	@ 0xf0
	b	.Lcbce4

	.align	2, 0
.Lcbcac:
	.word	0x784
.Lcbcb0:
	.word	0x80
.Lcbcb4:
	.word	0x100
.Lcbcb8:
	.word	0xf0
	.pool

.Lcbce4:
	ldr	r3, =REG_WIN0H
	ldr	r2, .Lcbd1c	@ 0x1088
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	sub	r3, #2
	strh	r1, [r3]
	add	r3, #4
	strh	r2, [r3]
	ldr	r2, =REG_WININ
	ldr	r3, .Lcbd20	@ 0x3537
	strh	r3, [r2]
	ldr	r3, .Lcbd24	@ 0x3f21
	add	r2, #2
	strh	r3, [r2]
	mov	r4, #0x80
	ldr	r2, =0x6003800
	mov	r3, #0x80
	mov	r6, #0
	lsl	r3, #1
	lsl	r4, #2
	mov	r12, r6
	mov	r8, r2
	mov	r10, r3
	mov	r14, r4
	mov	r7, #0
	b	.Lcbd34

	.align	2, 0
.Lcbd1c:
	.word	0x1088
.Lcbd20:
	.word	0x3537
.Lcbd24:
	.word	0x3f21
	.pool

.Lcbd34:
	mov	r1, r10
	add	r0, r7, r1
	mov	r4, #0
	lsl	r1, r5, #1
.Lcbd3c:
	mov	r3, r0
	orr	r3, r1
	lsl	r3, #16
	asr	r3, #16
	mov	r11, r3
	mov	r3, r8
	add	r2, r6, r3
	add	r4, #1
	mov	r3, r11
	strh	r3, [r2]
	add	r0, r14
	add	r1, #2
	add	r6, #2
	cmp	r4, #8
	bne	.Lcbd3c
	mov	r0, #1
	mov	r4, #0x80
	add	r12, r0
	lsl	r4, #5
	mov	r1, r12
	add	r7, r4
	add	r5, #8
	cmp	r1, #0x10
	bne	.Lcbd34
	mov	r1, #0x80
	ldr	r5, =Func_80008d4
	ldr	r0, [sp, #0x24]
	lsl	r1, #7
	bl	_call_via_r5
	mov	r1, #0x80
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r5
	ldr	r1, =gDMATaskCount
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lcbdb0
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =0x7741
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lcbdb0:
	strh	r4, [r0]
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Lcbdf0	@ 0x1010
	strh	r3, [r2]
	ldr	r3, .Lcbdf4	@ 0
	sub	r2, #2
	strh	r3, [r2]
	ldr	r1, [sp, #0x28]
	ldr	r0, =_FILE_44
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r4, #0xef
	ldr	r2, [sp, #0x28]
	lsl	r4, #7
	add	r3, r2, r4
	mov	r5, #1
	str	r5, [r3]
	ldr	r7, [sp, #0x28]
	ldr	r0, =0x7784
	mov	r3, #0
	add	r2, r7, r0
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r1, #7
	mov	r2, #7
	b	.Lcbe1c

	.align	2, 0
.Lcbdf0:
	.word	0x1010
.Lcbdf4:
	.word	0
	.pool

.Lcbe1c:
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r5, =gPtrs
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	str	r3, [sp, #0x18]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r0, #0x2f
	mov	r3, #3
	bl	BuildDraw2DFuncEx
	add	r5, #0xbc
	ldr	r5, [r5]
	mov	r2, #0xe1
	mov	r1, #0
	lsl	r2, #7
	str	r5, [sp, #0x1c]
	str	r1, [sp, #0xc]
	ldr	r4, =.Lee037
	add	r1, r7, r2
	ldr	r0, =.Lee016
	ldr	r7, =0xffe00000
	ldr	r5, =0xffc40000
	mov	r6, #0
.Lcbe5a:
	ldrb	r2, [r0]
	ldrb	r3, [r4]
	lsl	r2, #16
	lsl	r3, #16
	str	r2, [r1]
	str	r3, [r1, #4]
	add	r2, r7
	add	r3, r5
	asr	r2, #2
	asr	r3, #2
	add	r6, #1
	str	r2, [r1, #0xc]
	str	r3, [r1, #0x10]
	add	r0, #1
	add	r4, #1
	add	r1, #0x1c
	cmp	r6, #0x21
	bne	.Lcbe5a
	mov	r2, #0xf0
	ldr	r3, =Func_8001af8
	ldr	r1, =0x6008000
	lsl	r2, #7
	ldr	r0, =gBuffer
	bl	_call_via_r3
	mov	r1, #0xf0
	ldr	r5, =Func_80008d8
	lsl	r1, #7
	ldr	r2, =0x1010101
	ldr	r0, =gBuffer
	bl	_call_via_r5
	mov	r3, #1
	mov	r4, r9
	str	r3, [r4, #0x10]
	ldr	r2, =iwram_3001ad0
	ldr	r7, [sp, #0x28]
	ldr	r0, =0x77a0
	ldrh	r3, [r2, #4]
	add	r1, r7, r0
	str	r3, [r1]
	ldr	r3, =0x77a4
	add	r1, r7, r3
	ldrh	r3, [r2, #6]
	str	r3, [r1]
	ldr	r1, =gDMATaskCount
	mov	r3, #0
	strh	r3, [r2, #4]
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lcbee4
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =0x1f81
	add	r3, #4
	stmia	r3!, {r2}
	ldr	r2, =REG_BG1CNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lcbee4:
	strh	r4, [r0]
	ldr	r0, =0x50000c0
	mov	r1, #0x80
	lsl	r1, #1
	ldr	r2, =0x7fff7fff
	bl	_call_via_r5
	mov	r0, #0xd4
	bl	_PlaySound
	ldr	r5, =0x7828
	ldr	r4, [sp, #0x28]
	add	r3, r4, r5
	ldr	r3, [r3]
	mov	r7, #0x24
	ldrsh	r0, [r3, r7]
	mov	r3, #0x1e
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #3
	mov	r3, #0
	bl	SetBattleActorState
	mov	r0, #0
	str	r0, [sp, #0x20]
.Lcbf16:
	ldr	r1, [sp, #0x20]
	cmp	r1, #2
	bne	.Lcbf22
	mov	r0, #0xd4
	bl	_PlaySound
.Lcbf22:
	ldr	r2, [sp, #0x20]
	cmp	r2, #3
	bne	.Lcbf2e
	mov	r0, #0xd4
	bl	_PlaySound
.Lcbf2e:
	ldr	r3, [sp, #0x20]
	cmp	r3, #0x1c
	bne	.Lcbf50
	ldr	r4, [sp, #0x28]
	ldr	r5, =0x7828
	add	r3, r4, r5
	ldr	r3, [r3]
	mov	r7, #0x24
	ldrsh	r0, [r3, r7]
	mov	r3, #1
	mov	r2, #0
	neg	r3, r3
	str	r2, [sp]
	mov	r1, r3
	mov	r2, #3
	bl	SetBattleActorState
.Lcbf50:
	ldr	r0, [sp, #0x20]
	cmp	r0, #0x20
	bne	.Lcbf5c
	mov	r0, #0x95
	bl	_PlaySound
.Lcbf5c:
	ldr	r1, [sp, #0x20]
	cmp	r1, #5
	bne	.Lcbf88
	mov	r0, #0x91
	bl	_PlaySound
	ldr	r4, [sp, #0x28]
	ldr	r5, =0x77a0
	add	r3, r4, r5
	ldr	r2, =iwram_3001ad0
	ldr	r3, [r3]
	strh	r3, [r2, #4]
	ldr	r7, [sp, #0x14]
	mov	r0, #0xc9
	lsl	r0, #3
	add	r3, r7, r0
	mov	r2, #1
	ldrh	r1, [r3]
	mov	r0, #1
	neg	r2, r2
	bl	_AnimTransitionIn
.Lcbf88:
	ldr	r1, [sp, #0x20]
	cmp	r1, #7
	ble	.Lcc072
	ldr	r5, [sp, #0x14]
	ldr	r7, =0x544
	ldr	r2, =0x50000c0
	ldr	r3, .Lcbfa8	@ 0x1f
	mov	r4, #0x1f
	add	r5, r7
	mov	r14, r2
	mov	r6, #0
	mov	r12, r3
	mov	r8, r4
	mov	r9, r5
	b	.Lcc000

	.align	2, 0
.Lcbfa8:
	.word	0x1f
	.pool

.Lcc000:
	mov	r0, r14
	ldrh	r3, [r0]
	mov	r5, r8
	mov	r4, r9
	and	r5, r3
	lsl	r3, #16
	mov	r1, r12
	lsr	r2, r3, #21
	lsr	r0, r3, #26
	ldrh	r3, [r4]
	and	r2, r1
	and	r0, r1
	mov	r1, r8
	and	r1, r3
	lsl	r3, #16
	mov	r7, #2
	mov	r10, r3
	lsr	r4, r3, #21
	add	r9, r7
	mov	r3, r12
	mov	r7, r10
	and	r4, r3
	lsr	r3, r7, #26
	mov	r7, r12
	and	r3, r7
	cmp	r5, r1
	bge	.Lcc03a
	add	r5, #1
	b	.Lcc040
.Lcc03a:
	cmp	r5, r1
	ble	.Lcc040
	sub	r5, #1
.Lcc040:
	cmp	r2, r4
	bge	.Lcc048
	add	r2, #1
	b	.Lcc04e
.Lcc048:
	cmp	r2, r4
	ble	.Lcc04e
	sub	r2, #1
.Lcc04e:
	cmp	r0, r3
	bge	.Lcc056
	add	r0, #1
	b	.Lcc05c
.Lcc056:
	cmp	r0, r3
	ble	.Lcc05c
	sub	r0, #1
.Lcc05c:
	lsl	r3, r0, #10
	lsl	r2, #5
	orr	r3, r2
	mov	r0, r14
	orr	r3, r5
	mov	r1, #2
	add	r6, #1
	strh	r3, [r0]
	add	r14, r1
	cmp	r6, #0x80
	bne	.Lcc000
.Lcc072:
	ldr	r2, [sp, #0x20]
	cmp	r2, #4
	bne	.Lcc086
	mov	r1, #0xf0
	ldr	r3, .Lcc3e4	@ Func_80008d8
	ldr	r0, .Lcc3e8	@ 0x6008000
	lsl	r1, #7
	ldr	r2, .Lcc3ec	@ ewram_2020202
	bl	_call_via_r3
.Lcc086:
	ldr	r3, [sp, #0x20]
	cmp	r3, #3
	ble	.Lcc08e
	b	.Lcc32a
.Lcc08e:
	lsl	r1, r3, #2
	add	r1, #8
	lsl	r4, r3, #5
	lsl	r2, r1, #5
	lsl	r3, r1, #10
	ldr	r0, .Lcc3f0	@ 0x5000004
	orr	r3, r2
	orr	r3, r1
	str	r4, [sp, #0x10]
	strh	r3, [r0]
	ldr	r5, [sp, #0xc]
	cmp	r5, r4
	bne	.Lcc0aa
	b	.Lcc31c
.Lcc0aa:
	ldr	r7, [sp, #0xc]
	mov	r0, #0
	mov	r1, r7
	mov	r9, r7
	mov	r11, r0
	str	r7, [sp, #8]
	cmp	r1, #0
	bge	.Lcc0bc
	b	.Lcc30e
.Lcc0bc:
	mov	r4, r9
	mov	r3, #0x60
	mov	r5, #0x3c
	mov	r7, r11
	sub	r0, r3, r4
	mov	r2, r9
	mov	r4, r11
	sub	r6, r5, r7
	add	r2, #0x60
	mov	r14, r0
	add	r4, #0x3c
	cmp	r6, #0
	bge	.Lcc0d8
	mov	r6, #0
.Lcc0d8:
	cmp	r4, #0x77
	ble	.Lcc0de
	mov	r4, #0x77
.Lcc0de:
	cmp	r0, #0
	bge	.Lcc0e4
	mov	r0, #0
.Lcc0e4:
	cmp	r2, #0xff
	ble	.Lcc0ea
	mov	r2, #0xff
.Lcc0ea:
	mov	r5, #7
	and	r5, r2
	mov	r3, r2
	cmp	r2, #0
	bge	.Lcc0f6
	add	r3, r2, #7
.Lcc0f6:
	mov	r2, #7
	asr	r1, r3, #3
	and	r2, r4
	mov	r3, r4
	cmp	r4, #0
	bge	.Lcc104
	add	r3, r4, #7
.Lcc104:
	asr	r3, #3
	lsl	r3, #11
	mov	r12, r3
	lsl	r3, r1, #6
	lsl	r7, r2, #3
	add	r4, r3, r5
	ldr	r1, =gBuffer
	add	r3, r7, r4
	add	r3, r12
	add	r3, r1
	mov	r2, #2
	mov	r1, #7
	strb	r2, [r3]
	and	r1, r6
	mov	r3, r6
	cmp	r6, #0
	bge	.Lcc128
	add	r3, r6, #7
.Lcc128:
	asr	r3, #3
	lsl	r5, r1, #3
	lsl	r6, r3, #11
	ldr	r2, =gBuffer
	add	r3, r5, r4
	add	r3, r6, r3
	add	r3, r2
	mov	r2, #2
	strb	r2, [r3]
	mov	r3, #7
	and	r3, r0
	mov	r1, r0
	cmp	r0, #0
	bge	.Lcc146
	add	r1, r0, #7
.Lcc146:
	asr	r1, #3
	lsl	r1, #6
	add	r1, r3
	add	r3, r7, r1
	ldr	r4, =gBuffer
	add	r3, r12
	add	r1, r5, r1
	add	r3, r4
	mov	r2, #2
	add	r1, r6, r1
	mov	r0, r14
	strb	r2, [r3]
	add	r1, r4
	mov	r3, #2
	mov	r2, r9
	add	r0, #1
	strb	r3, [r1]
	add	r2, #0x61
	cmp	r0, #0
	bge	.Lcc170
	mov	r0, #0
.Lcc170:
	cmp	r2, #0xff
	ble	.Lcc176
	mov	r2, #0xff
.Lcc176:
	mov	r1, #7
	and	r1, r2
	mov	r3, r2
	cmp	r2, #0
	bge	.Lcc182
	add	r3, r2, #7
.Lcc182:
	asr	r3, #3
	lsl	r3, #6
	add	r3, r1
	add	r2, r7, r3
	ldr	r1, =gBuffer
	add	r2, r12
	add	r2, r1
	mov	r1, #2
	strb	r1, [r2]
	add	r3, r5, r3
	ldr	r2, =gBuffer
	add	r3, r6, r3
	add	r3, r2
	strb	r1, [r3]
	mov	r3, #7
	and	r3, r0
	mov	r1, r0
	cmp	r0, #0
	bge	.Lcc1aa
	add	r1, r0, #7
.Lcc1aa:
	asr	r1, #3
	lsl	r1, #6
	add	r1, r3
	add	r3, r7, r1
	ldr	r4, =gBuffer
	add	r1, r5, r1
	add	r3, r12
	add	r3, r4
	mov	r2, #2
	add	r1, r6, r1
	strb	r2, [r3]
	add	r1, r4
	mov	r3, #2
	mov	r5, #0x60
	mov	r7, r11
	strb	r3, [r1]
	mov	r2, r11
	sub	r0, r5, r7
	mov	r4, r9
	mov	r1, #0x3c
	mov	r3, r9
	add	r2, #0x60
	mov	r10, r0
	add	r4, #0x3c
	sub	r6, r1, r3
	cmp	r0, #0
	bge	.Lcc1e2
	mov	r0, #0
.Lcc1e2:
	cmp	r2, #0xff
	ble	.Lcc1e8
	mov	r2, #0xff
.Lcc1e8:
	cmp	r6, #0
	bge	.Lcc1ee
	mov	r6, #0
.Lcc1ee:
	cmp	r4, #0x77
	ble	.Lcc1f4
	mov	r4, #0x77
.Lcc1f4:
	mov	r5, #7
	and	r5, r2
	mov	r3, r2
	cmp	r2, #0
	bge	.Lcc200
	add	r3, r2, #7
.Lcc200:
	mov	r2, #7
	asr	r1, r3, #3
	and	r2, r4
	mov	r3, r4
	cmp	r4, #0
	bge	.Lcc20e
	add	r3, r4, #7
.Lcc20e:
	asr	r3, #3
	lsl	r3, #11
	mov	r8, r3
	lsl	r3, r1, #6
	lsl	r2, #3
	add	r5, r3, r5
	add	r3, r2, r5
	ldr	r7, =gBuffer
	add	r3, r8
	add	r3, r7
	mov	r14, r2
	mov	r1, #7
	mov	r2, #2
	strb	r2, [r3]
	and	r1, r6
	mov	r3, r6
	cmp	r6, #0
	bge	.Lcc234
	add	r3, r6, #7
.Lcc234:
	asr	r3, #3
	lsl	r3, #11
	lsl	r7, r1, #3
	mov	r12, r3
	ldr	r1, =gBuffer
	add	r3, r7, r5
	add	r3, r12
	add	r3, r1
	mov	r2, #2
	strb	r2, [r3]
	mov	r3, #7
	and	r3, r0
	mov	r1, r0
	cmp	r0, #0
	bge	.Lcc254
	add	r1, r0, #7
.Lcc254:
	asr	r1, #3
	lsl	r1, #6
	add	r1, r3
	mov	r5, r14
	ldr	r0, =gBuffer
	add	r3, r5, r1
	add	r1, r7, r1
	add	r3, r8
	add	r1, r12
	add	r3, r0
	mov	r2, #2
	add	r1, r0
	mov	r0, r10
	strb	r2, [r3]
	add	r0, #1
	mov	r3, #2
	mov	r2, r11
	strb	r3, [r1]
	add	r2, #0x61
	cmp	r0, #0
	bge	.Lcc280
	mov	r0, #0
.Lcc280:
	cmp	r2, #0xff
	ble	.Lcc286
	mov	r2, #0xff
.Lcc286:
	mov	r1, #7
	mov	r10, r1
	mov	r3, r10
	mov	r1, r2
	and	r1, r3
	mov	r3, r2
	cmp	r2, #0
	bge	.Lcc298
	add	r3, r2, #7
.Lcc298:
	asr	r3, #3
	lsl	r3, #6
	add	r1, r3, r1
	mov	r5, r14
	add	r3, r5, r1
	ldr	r5, =gBuffer
	add	r3, r8
	add	r3, r5
	mov	r5, #2
	strb	r5, [r3]
	add	r3, r7, r1
	ldr	r1, =gBuffer
	add	r3, r12
	add	r3, r1
	strb	r5, [r3]
	mov	r2, r0
	mov	r3, r10
	and	r2, r3
	mov	r3, r0
	cmp	r0, #0
	bge	.Lcc2c4
	add	r3, r0, #7
.Lcc2c4:
	asr	r3, #3
	lsl	r3, #6
	add	r1, r3, r2
	mov	r4, r14
	add	r3, r4, r1
	ldr	r2, =gBuffer
	add	r3, r8
	add	r3, r2
	strb	r5, [r3]
	ldr	r4, =gBuffer
	add	r3, r7, r1
	add	r3, r12
	add	r3, r4
	mov	r5, #2
	strb	r5, [r3]
	ldr	r0, [sp, #8]
	mov	r7, r11
	lsl	r3, r7, #1
	sub	r3, r0, r3
	sub	r3, #1
	str	r3, [sp, #8]
	cmp	r3, #0
	bge	.Lcc304
	mov	r1, r9
	ldr	r2, [sp, #8]
	lsl	r3, r1, #1
	add	r3, r2, r3
	sub	r3, #2
	str	r3, [sp, #8]
	mov	r3, #1
	neg	r3, r3
	add	r9, r3
.Lcc304:
	mov	r4, #1
	add	r11, r4
	cmp	r9, r11
	blt	.Lcc30e
	b	.Lcc0bc
.Lcc30e:
	ldr	r5, [sp, #0xc]
	ldr	r7, [sp, #0x10]
	add	r5, #1
	str	r5, [sp, #0xc]
	cmp	r5, r7
	beq	.Lcc31c
	b	.Lcc0aa
.Lcc31c:
	mov	r2, #0xf0
	ldr	r3, =Func_8001af8
	ldr	r0, .Lcc3e8	@ 0x6008000
	ldr	r1, =gBuffer
	lsl	r2, #7
	bl	_call_via_r3
.Lcc32a:
	ldr	r0, [sp, #0x20]
	cmp	r0, #0x32
	bgt	.Lcc37a
	ldr	r1, [sp, #0x28]
	mov	r2, #0xe1
	lsl	r2, #7
	mov	r6, #0
	add	r5, r1, r2
.Lcc33a:
	ldr	r2, =.Ledfd2
	ldr	r0, =.Ledf90
	lsl	r3, r6, #1
	ldrh	r1, [r2, r3]
	ldrb	r0, [r0, r6]
	ldr	r3, [sp, #0x28]
	mov	r4, #2
	ldrsh	r2, [r5, r4]
	add	r1, r3, r1
	mov	r7, #6
	ldrsh	r3, [r5, r7]
	str	r0, [sp]
	ldr	r0, =.Ledfb1
	ldrb	r0, [r0, r6]
	ldr	r4, [sp, #0x18]
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x24]
	bl	_call_via_r4
	ldr	r7, [sp, #0x20]
	cmp	r7, #3
	ble	.Lcc372
	mov	r2, #0x80
	mov	r0, r5
	mov	r1, #0x40
	lsl	r2, #7
	bl	Func_80e3908
.Lcc372:
	add	r6, #1
	add	r5, #0x1c
	cmp	r6, #0x21
	bne	.Lcc33a
.Lcc37a:
	ldr	r1, [sp, #0x20]
	sub	r1, #8
	cmp	r1, #0x2a
	bhi	.Lcc396
	mov	r0, r1
	cmp	r0, #0x1f
	ble	.Lcc38a
	mov	r0, #0x1f
.Lcc38a:
	lsl	r2, r0, #10
	lsl	r1, r0, #5
	ldr	r3, =0x5000002
	orr	r2, r1
	orr	r2, r0
	strh	r2, [r3]
.Lcc396:
	ldr	r0, [sp, #0x20]
	cmp	r0, #0x33
	bne	.Lcc46c
	ldr	r0, =_FILE_7d
	ldr	r1, [sp, #0x28]
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r0, =0x5000002
	mov	r6, #1
.Lcc3ac:
	lsr	r3, r6, #31
	add	r3, r6, r3
	asr	r1, r3, #1
	cmp	r1, #0
	bge	.Lcc3b8
	mov	r1, #0
.Lcc3b8:
	lsr	r3, r1, #31
	add	r3, r1, r3
	asr	r3, #1
	lsl	r2, r1, #10
	lsl	r3, #5
	orr	r2, r3
	orr	r2, r1
	add	r6, #1
	strh	r2, [r0]
	add	r0, #2
	cmp	r6, #0x40
	bne	.Lcc3ac
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lcc3f4	@ 0x3f44
	strh	r3, [r2]
	ldr	r2, [sp, #0x28]
	mov	r3, #0xe1
	mov	r1, #0x1f
	lsl	r3, #7
	mov	r6, #0
	b	.Lcc418

	.align	2, 0
.Lcc3e4:
	.word	Func_80008d8
.Lcc3e8:
	.word	0x6008000
.Lcc3ec:
	.word	ewram_2020202
.Lcc3f0:
	.word	0x5000004
.Lcc3f4:
	.word	0x3f44
	.pool

.Lcc418:
	mov	r8, r1
	add	r5, r2, r3
	mov	r7, #0
.Lcc41e:
	bl	Random
	mov	r4, r8
	and	r0, r4
	add	r0, #0x20
	lsl	r0, #16
	str	r0, [r5]
	bl	Random
	mov	r1, r8
	and	r0, r1
	add	r0, #0x50
	lsl	r0, #16
	str	r0, [r5, #4]
	bl	Random
	ldr	r3, =0x1ff
	ldr	r2, =0xffffff00
	and	r3, r0
	add	r3, r2
	lsl	r3, #12
	add	r6, #1
	str	r3, [r5, #0xc]
	str	r7, [r5, #0x10]
	str	r7, [r5, #0x18]
	add	r5, #0x1c
	cmp	r6, #0x20
	bne	.Lcc41e
	ldr	r3, [sp, #0x28]
	mov	r4, #0xef
	lsl	r4, #7
	add	r2, r3, r4
	mov	r3, #2
	str	r3, [r2]
	ldr	r5, [sp, #0x28]
	ldr	r7, =0x7784
	mov	r3, #0x32
	add	r2, r5, r7
	str	r3, [r2]
.Lcc46c:
	ldr	r0, [sp, #0x20]
	cmp	r0, #0x34
	ble	.Lcc4de
	ldr	r1, [sp, #0x28]
	mov	r2, #0xe1
	lsl	r2, #7
	mov	r6, #0
	add	r5, r1, r2
.Lcc47c:
	mov	r3, r6
	cmp	r6, #0
	bge	.Lcc484
	add	r3, r6, #3
.Lcc484:
	asr	r3, #2
	ldr	r4, [sp, #0x20]
	add	r3, #0x34
	cmp	r4, r3
	blt	.Lcc4d6
	ldr	r3, [r5, #0x18]
	cmp	r3, #0x27
	bgt	.Lcc4d6
	mov	r1, r3
	cmp	r1, #0
	bge	.Lcc49c
	add	r1, #3
.Lcc49c:
	asr	r1, #2
	cmp	r1, #5
	ble	.Lcc4a4
	mov	r1, #5
.Lcc4a4:
	mov	r0, #2
	ldrsh	r2, [r5, r0]
	ldr	r7, [sp, #0x28]
	mov	r4, #6
	ldrsh	r3, [r5, r4]
	mov	r0, #0x20
	str	r0, [sp]
	lsl	r1, #11
	mov	r0, #0x40
	add	r1, r7, r1
	sub	r3, #0x20
	str	r0, [sp, #4]
	sub	r2, #0x10
	ldr	r0, [sp, #0x24]
	ldr	r7, [sp, #0x1c]
	bl	_call_via_r7
	mov	r0, r5
	mov	r1, #0x3c
	ldr	r2, =0xfffff000
	bl	Func_80e3908
	ldr	r3, [r5, #0x18]
	add	r3, #1
	str	r3, [r5, #0x18]
.Lcc4d6:
	add	r6, #1
	add	r5, #0x1c
	cmp	r6, #0x20
	bne	.Lcc47c
.Lcc4de:
	bl	Func_80cd52c
	ldr	r1, =0x7824
	ldr	r0, [sp, #0x28]
	mov	r3, #1
	add	r2, r0, r1
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, [sp, #0x20]
	add	r2, #1
	str	r2, [sp, #0x20]
	cmp	r2, #0x80
	beq	.Lcc4fe
	b	.Lcbf16
.Lcc4fe:
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	ldr	r5, =0x7828
	ldr	r4, [sp, #0x28]
	add	r3, r4, r5
	ldr	r3, [r3]
	mov	r7, #0x24
	ldrsh	r0, [r3, r7]
	mov	r3, #1
	neg	r3, r3
	mov	r2, #0
	str	r2, [sp]
	mov	r1, r3
	mov	r2, #1
	bl	SetBattleActorState
	ldr	r1, =0x77a0
	ldr	r0, [sp, #0x28]
	add	r3, r0, r1
	ldr	r2, =iwram_3001ad0
	ldr	r3, [r3]
	strh	r3, [r2, #4]
	mov	r3, #0x20
	strh	r3, [r2, #6]
	ldr	r2, [sp, #0x14]
	mov	r4, #0xc9
	lsl	r4, #3
	add	r3, r2, r4
	ldrh	r1, [r3]
	mov	r2, #0
	mov	r0, #2
	bl	_Func_80c0774
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, =gDMATaskCount
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.Lcc582
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	strh	r2, [r1]
	ldr	r2, =0x7541
	add	r3, #4
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #19
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lcc582:
	strh	r4, [r0]
	mov	r0, #0x29
	bl	gfree
	mov	r0, #0x28
	bl	gfree
	mov	r0, #0x27
	bl	gfree
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_ScreenShatter

	.section .rodata
.Ledf90:
	.incrom 0xedf90, 0xedfb1
.Ledfb1:
	.incrom 0xedfb1, 0xedfd2
.Ledfd2:
	.incrom 0xedfd2, 0xee016
.Lee016:
	.incrom 0xee016, 0xee037
.Lee037:
	.incrom 0xee037, 0xee058
