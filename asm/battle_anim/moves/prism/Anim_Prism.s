	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Prism  @ 0x080d3c80
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001eec
	ldmia	r3!, {r1}
	ldr	r5, =0x7828
	mov	r9, r1
	ldr	r3, [r3]
	sub	sp, #0x28
	add	r5, r9
	str	r3, [sp, #0x1c]
	str	r0, [r5]
	mov	r0, #0
	bl	AnimStart
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Ld3ce4	@ 0x1010
	ldr	r0, =_FILE_cf
	strh	r3, [r2]
	mov	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	ldr	r3, [r5]
	mov	r2, sp
	add	r2, #0x20
	ldr	r0, [r3, #4]
	mov	r1, r2
	str	r2, [sp, #0x14]
	bl	BuildDraw2DFuncs
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x32
	add	r2, r9
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	lsl	r1, #3
	b	.Ld3d00

	.align	2, 0
.Ld3ce4:
	.word	0x1010
	.pool

.Ld3d00:
	bl	StartTask
	ldr	r4, =.Lee1f5
	str	r4, [sp, #0xc]
	mov	r3, #0
	mov	r10, r3
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	lsl	r3, #1
	ldrb	r3, [r4, r3]
	cmp	r3, #0
	beq	.Ld3d98
	mov	r5, #0x1f
	mov	r11, r5
	ldr	r7, =0x7828
	mov	r5, #0xe1
	lsl	r5, #7
	mov	r0, #0
	add	r5, r9
	mov	r8, r0
	add	r7, r9
.Ld3d2a:
	bl	Random
	ldr	r3, =0xffc00000
	str	r3, [r5, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ld3d50
	bl	Random
	mov	r1, r11
	and	r0, r1
	add	r0, #0x50
	lsl	r6, r0, #16
	bl	Random
	mov	r3, #0x3f
	and	r3, r0
	b	.Ld3d66
.Ld3d50:
	bl	Random
	mov	r2, r11
	and	r0, r2
	add	r0, #8
	lsl	r6, r0, #16
	bl	Random
	mov	r3, #0x3f
	and	r3, r0
	neg	r3, r3
.Ld3d66:
	lsl	r3, #12
	str	r3, [r5, #0xc]
	ldr	r2, [r5, #0xc]
	lsl	r3, r2, #3
	add	r3, r2
	lsl	r3, #1
	sub	r3, r6, r3
	str	r3, [r5]
	mov	r3, #0
	str	r3, [r5, #0x10]
	str	r3, [r5, #8]
	mov	r3, r8
	str	r3, [r5, #0x18]
	ldr	r3, [r7]
	ldr	r3, [r3, #0x18]
	ldr	r1, =.Lee1f5
	lsl	r3, #1
	mov	r0, #1
	ldrb	r3, [r1, r3]
	mov	r4, #8
	add	r10, r0
	add	r5, #0x1c
	add	r8, r4
	cmp	r10, r3
	bne	.Ld3d2a
.Ld3d98:
	mov	r2, #0
	str	r2, [sp, #0x18]
	ldr	r2, =0x7828
	mov	r4, r9
	ldr	r3, [r4, r2]
	ldr	r3, [r3, #0x18]
	ldr	r5, [sp, #0xc]
	lsl	r3, #1
	add	r3, #1
	ldrb	r3, [r5, r3]
	cmp	r3, #0
	bne	.Ld3db2
	b	.Ld40a6
.Ld3db2:
	ldr	r0, =0x7828
	add	r0, r9
	str	r0, [sp, #0x10]
.Ld3db8:
	mov	r1, r9
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x18]
	cmp	r3, #2
	bne	.Ld3e02
	ldr	r2, [sp, #0x18]
	cmp	r2, #0x67
	bgt	.Ld3e02
	ldr	r3, =iwram_3001e80
	ldr	r1, [r3]
	ldr	r3, [sp, #0x18]
	mov	r2, #0xc0
	cmp	r3, #0x5f
	ble	.Ld3de2
	ldr	r4, [sp, #0x18]
	lsl	r3, r4, #1
	add	r3, r4
	mov	r2, #0x9c
	lsl	r3, #3
	lsl	r2, #4
	sub	r2, r3
.Ld3de2:
	ldr	r5, [sp, #0x10]
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Ld3df8
	ldrh	r3, [r1, #0x36]
	ldr	r0,=.Lee1f5
	sub	r3, r2
	strh	r3, [r1, #0x36]
	str	r0, [sp, #0xc]
	b	.Ld3e02
.Ld3df8:
	ldrh	r3, [r1, #0x36]
	add	r3, r2
	strh	r3, [r1, #0x36]
	ldr	r1, =.Lee1f5
	str	r1, [sp, #0xc]
.Ld3e02:
	ldr	r5, =0x7828
	add	r5, r9
	ldr	r2, [r5]
	ldr	r3, [r2, #0x18]
	ldr	r4, [sp, #0xc]
	lsl	r3, #1
	add	r3, #1
	ldrb	r3, [r4, r3]
	ldr	r0, [sp, #0x18]
	sub	r3, #0x50
	cmp	r0, r3
	bne	.Ld3e22
	mov	r0, #0x86
	bl	_Func_80bd7dc
	ldr	r2, [r5]
.Ld3e22:
	ldr	r3, [r2, #0x18]
	ldr	r1, [sp, #0xc]
	lsl	r3, #1
	add	r3, #1
	ldrb	r3, [r1, r3]
	ldr	r4, [sp, #0x18]
	sub	r3, #8
	cmp	r4, r3
	bne	.Ld3e48
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #3
	str	r3, [r2]
	ldr	r2, =0x7784
	ldr	r3, =0x6060606
	add	r2, r9
	str	r3, [r2]
	ldr	r2, [r5]
.Ld3e48:
	ldr	r3, [r2, #0x18]
	ldr	r5, [sp, #0xc]
	lsl	r2, r3, #1
	add	r3, r2, #1
	ldrb	r3, [r5, r3]
	ldr	r0, [sp, #0x18]
	sub	r3, #8
	cmp	r0, r3
	ble	.Ld3e5c
	b	.Ld4060
.Ld3e5c:
	ldrb	r3, [r5, r2]
	mov	r1, #0
	mov	r11, r1
	cmp	r3, #0
	bne	.Ld3e68
	b	.Ld4060
.Ld3e68:
	mov	r2, #0xe1
	lsl	r2, #7
	add	r2, r9
	mov	r8, r2
.Ld3e70:
	mov	r4, r8
	ldr	r3, [r4, #8]
	cmp	r3, #1
	bne	.Ld3f48
	mov	r0, r11
	lsl	r2, r0, #4
	lsl	r3, r0, #7
	sub	r3, r2
	ldr	r1, =gBuffer
	mov	r5, #0
	lsl	r3, #2
	mov	r10, r5
	add	r7, r3, r1
.Ld3e8a:
	mov	r1, #5
	mov	r0, r10
	bl	__modsi3
	lsl	r5, r0, #1
	add	r5, r0
	mov	r1, #0x60
	ldr	r0, [r7, #0x18]
	bl	__divsi3
	mov	r1, #3
	bl	__modsi3
	mov	r2, #4
	mov	r3, r10
	mov	r6, r7
	add	r4, r5, r0
	mov	r12, r2
	cmp	r3, #2
	ble	.Ld3eb6
	mov	r5, #0
	mov	r12, r5
.Ld3eb6:
	ldr	r2, =.Lee214
	lsl	r3, r4, #2
	ldr	r1, [r2, r3]
	mov	r3, #2
	ldrsh	r2, [r6, r3]
	ldr	r3, =.Lee1fb
	ldrb	r5, [r3, r4]
	mov	r0, #0x80
	lsl	r0, #4
	lsr	r3, r5, #1
	add	r1, r9
	add	r1, r0
	sub	r2, r3
	mov	r0, #6
	ldrsh	r3, [r6, r0]
	ldr	r0, =.Lee207
	ldrb	r4, [r0, r4]
	lsr	r0, r4, #1
	sub	r3, r0
	str	r5, [sp]
	ldr	r0, [sp, #0x14]
	str	r4, [sp, #4]
	mov	r5, r12
	ldr	r4, [r5, r0]
	ldr	r0, [sp, #0x1c]
	bl	_call_via_r4
	mov	r2, #0x80
	lsl	r2, #6
	mov	r0, r6
	mov	r1, #0x40
	bl	Func_80e3908
	ldr	r3, [r6, #0x18]
	ldr	r2, [r6, #8]
	add	r3, r2
	str	r3, [r6, #0x18]
	cmp	r2, #1
	ble	.Ld3f12
	ldr	r1, [sp, #0x18]
	mov	r3, #1
	and	r3, r1
	cmp	r3, #0
	beq	.Ld3f12
	sub	r3, r2, #1
	str	r3, [r6, #8]
.Ld3f12:
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	add	r7, #0x1c
	cmp	r3, #0x10
	bne	.Ld3e8a
	b	.Ld4046

	.pool_aligned

.Ld3f48:
	mov	r4, r8
	ldr	r3, [r4, #0x18]
	ldr	r5, [sp, #0x18]
	cmp	r5, r3
	blt	.Ld4046
	mov	r1, #6
	ldrsh	r3, [r4, r1]
	mov	r1, #2
	ldrsh	r2, [r4, r1]
	mov	r1, #0x20
	str	r1, [sp]
	mov	r5, #1
	mov	r1, #0x40
	mov	r6, r11
	str	r1, [sp, #4]
	and	r6, r5
	ldr	r1, [sp, #0x14]
	lsl	r0, r6, #2
	ldr	r4, [r0, r1]
	sub	r2, #0x10
	ldr	r0, [sp, #0x1c]
	mov	r1, r9
	bl	_call_via_r4
	mov	r2, #0x80
	lsl	r2, #9
	mov	r0, r8
	mov	r1, #0x40
	bl	Func_80e3908
	mov	r2, r8
	ldr	r3, [r2, #4]
	mov	r2, #0xe0
	lsl	r2, #14
	cmp	r3, r2
	ble	.Ld4046
	mov	r3, r8
	str	r5, [r3, #8]
	mov	r5, r11
	str	r2, [r3, #4]
	lsl	r2, r5, #4
	lsl	r3, r5, #7
	sub	r3, r2
	ldr	r0, =gBuffer
	mov	r4, #0
	lsl	r3, #2
	ldr	r7, =.Lee1d3
	mov	r10, r4
	mov	r1, #0x7f
	add	r5, r3, r0
.Ld3fac:
	ldrb	r3, [r7]
	mov	r4, r8
	ldr	r2, [r4]
	sub	r3, #0x28
	lsl	r3, #16
	add	r3, r2
	str	r3, [r5]
	ldrb	r3, [r7, #1]
	lsl	r3, #16
	str	r3, [r5, #4]
	str	r1, [sp, #8]
	bl	Random
	ldr	r1, [sp, #8]
	and	r0, r1
	sub	r0, #0x40
	lsl	r0, #11
	str	r0, [r5, #0xc]
	bl	Random
	ldr	r1, [sp, #8]
	and	r0, r1
	neg	r0, r0
	lsl	r3, r0, #11
	str	r3, [r5, #0x10]
	cmp	r6, #0
	beq	.Ld3fec
	ldr	r3, [r5, #0xc]
	lsl	r3, #1
	str	r3, [r5, #0xc]
	lsl	r3, r0, #12
	str	r3, [r5, #0x10]
.Ld3fec:
	mov	r0, #1
	mov	r3, #0x20
	add	r10, r0
	str	r3, [r5, #8]
	mov	r2, r10
	mov	r3, #0
	str	r3, [r5, #0x18]
	add	r7, #2
	add	r5, #0x1c
	cmp	r2, #0x10
	bne	.Ld3fac
	ldr	r2, =0x77a8
	mov	r3, #8
	add	r2, r9
	str	r3, [r2]
	mov	r0, #0x90
	bl	_PlaySound
	mov	r3, #0
	mov	r10, r3
	ldr	r3, =0x7828
	mov	r4, r9
	ldr	r3, [r4, r3]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Ld4046
	ldr	r5, =0x7828
	mov	r6, #0x24
	add	r5, r9
.Ld4026:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r6]
	mov	r3, #4
	str	r3, [sp]
	mov	r2, #5
	mov	r3, r10
	mov	r1, #7
	bl	SetBattleActorState
	ldr	r3, [r5]
	mov	r2, #1
	ldr	r3, [r3, #0x14]
	add	r10, r2
	add	r6, #2
	cmp	r10, r3
	bne	.Ld4026
.Ld4046:
	ldr	r5, [sp, #0x10]
	mov	r3, #0x1c
	add	r8, r3
	ldr	r3, [r5]
	ldr	r3, [r3, #0x18]
	ldr	r0, =.Lee1f5
	lsl	r3, #1
	mov	r4, #1
	ldrb	r3, [r0, r3]
	add	r11, r4
	cmp	r11, r3
	beq	.Ld4060
	b	.Ld3e70
.Ld4060:
	ldr	r1, [sp, #0x10]
	ldr	r3, [r1]
	ldr	r1, [r3, #0x18]
	lsl	r0, r1, #1
	lsl	r1, #2
	add	r0, #4
	add	r1, #8
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, [sp, #0x18]
	ldr	r3, =.Lee1f5
	add	r2, #1
	str	r2, [sp, #0x18]
	str	r3, [sp, #0xc]
	ldr	r4, [sp, #0x10]
	ldr	r3, [r4]
	ldr	r3, [r3, #0x18]
	ldr	r5, =.Lee1f5
	lsl	r3, #1
	add	r3, #1
	ldrb	r3, [r5, r3]
	ldr	r0, [sp, #0x18]
	ldr	r2, =0x7828
	cmp	r0, r3
	beq	.Ld40a6
	b	.Ld3db8
.Ld40a6:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Prism

	.section .rodata
.Lee1d3:
	.incrom 0xee1d3, 0xee1f5
.Lee1f5:
	.incrom 0xee1f5, 0xee1fb
.Lee1fb:
	.incrom 0xee1fb, 0xee207
.Lee207:
	.incrom 0xee207, 0xee214
.Lee214:
	.incrom 0xee214, 0xee244
