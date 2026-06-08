	.include "macros.inc"

.thumb_func_start PlaySound
	push	{r5, r6, r7, lr}
	mov	r5, #0xf0
	ldr	r3, =0xfff
	mov	r6, r0
	lsl	r5, #8
	and	r5, r6
	and	r6, r3
	cmp	r6, #0x11
	bne	.Lf90b0
	ldr	r5, =ewram_2003014
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.Lf909c
	b	.Lf91e0
.Lf909c:
	ldr	r0, =gMPlayInfo_BGM
	mov	r1, #7
	bl	Func_80fa4bc
	ldrb	r3, [r5]
	ldr	r2, =ewram_200303c
	add	r3, #1
	strb	r3, [r5]
	mov	r3, #0x13
	b	.Lf91c2
.Lf90b0:
	ldr	r3, =0x121
	cmp	r6, r3
	bne	.Lf90c6
	ldr	r3, =ewram_2003020
	mov	r2, #0
	strh	r2, [r3, #6]
	ldr	r0, =gMPlayInfo_02004360
	mov	r1, #3
	bl	Func_80fa4bc
	b	.Lf91e0
.Lf90c6:
	cmp	r6, #0x63
	ble	.Lf9108
	ldr	r7, =gSongTable
	lsl	r4, r6, #3
	add	r3, r4, #4
	ldrh	r2, [r7, r3]
	cmp	r2, #7
	bne	.Lf90f2
	ldr	r1, =gMPlayTable
.Lf90d8:
	lsl	r5, r2, #1
	add	r3, r5, r2
	lsl	r3, #2
	ldr	r3, [r1, r3]
	ldrb	r3, [r3, #4]
	cmp	r3, #0
	beq	.Lf90f6
	sub	r2, #1
	cmp	r2, #3
	bgt	.Lf90d8
	mov	r2, #7
	mov	r5, #0xe
	b	.Lf90f6
.Lf90f2:
	ldr	r1, =gMPlayTable
	lsl	r5, r2, #1
.Lf90f6:
	add	r3, r5, r2
	lsl	r3, #2
	ldr	r0, [r1, r3]
	ldr	r1, [r7, r4]
	bl	Func_80faa58
	ldr	r3, =ewram_2003020
	strh	r6, [r3, r5]
	b	.Lf91e0
.Lf9108:
	cmp	r6, #0x4f
	ble	.Lf9164
	ldr	r0, =gMPlayInfo_BGM
	mov	r1, #0xff
	mov	r2, #0
	bl	Func_80fb2cc
	ldr	r2, .Lf9130	@ 0
	ldr	r3, =gMusicVolume
	strh	r2, [r3]
	ldr	r3, =gMusicCurVolume
	lsl	r0, r6, #16
	strh	r2, [r3]
	lsr	r0, #16
	bl	Func_80fa324
	ldr	r2, =ewram_2003000
	mov	r3, #0xa
	b	.Lf91c2

	.align	2, 0
.Lf9130:
	.word	0
	.pool

.Lf9164:
	cmp	r6, #0x12
	beq	.Lf91e0
	ldr	r2, =ewram_200303c
	ldrb	r3, [r2]
	cmp	r6, r3
	beq	.Lf91e0
	strb	r6, [r2]
	cmp	r6, #0x46
	beq	.Lf9180
	cmp	r6, #0x4b
	beq	.Lf9180
	mov	r0, #2
	cmp	r6, #0x43
	bne	.Lf9182
.Lf9180:
	mov	r0, #3
.Lf9182:
	bl	SetSoundFXMode
	lsl	r0, r6, #16
	lsr	r0, #16
	bl	Func_80fa324
	mov	r3, #0x80
	lsl	r3, #5
	and	r3, r5
	cmp	r3, #0
	beq	.Lf91ac
	ldr	r2, =gMusicCurVolume
	ldr	r3, .Lf91a0	@ 0
	b	.Lf91b0

	.align	2, 0
.Lf91a0:
	.word	0
	.pool

.Lf91ac:
	ldr	r2, =gMusicCurVolume
	ldr	r3, .Lf91c8	@ 0x100
.Lf91b0:
	strh	r3, [r2]
	ldr	r2, =gMusicVolume
	ldr	r3, .Lf91c8	@ 0x100
	strh	r3, [r2]
	ldr	r2, =gMusicVolumeDelta
	ldr	r3, .Lf91cc	@ 4
	strh	r3, [r2]
	ldr	r2, =ewram_2003014
	mov	r3, #0
.Lf91c2:
	strb	r3, [r2]
	b	.Lf91e0

	.align	2, 0
.Lf91c8:
	.word	0x100
.Lf91cc:
	.word	4
	.pool

.Lf91e0:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end PlaySound

.thumb_func_start UpdateMusicSettings
	push	{r5, r6, lr}
	ldr	r1, =ewram_2003000
	ldrb	r3, [r1]
	mov	r2, r3
	cmp	r2, #0
	beq	.Lf920e
	cmp	r2, #1
	bne	.Lf920a
	ldr	r3, =gMPlayInfo_02004210
	ldrb	r3, [r3, #4]
	cmp	r3, #0
	bne	.Lf920e
	strb	r3, [r1]
	ldr	r2, =gMusicVolume
	ldr	r3, .Lf9230	@ 0x100
	strh	r3, [r2]
	b	.Lf920e
.Lf920a:
	add	r3, #0xff
	strb	r3, [r1]
.Lf920e:
	ldr	r3, =gMusicVolume
	ldr	r1, =gMusicCurVolume
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	mov	r5, #0
	ldrsh	r3, [r1, r5]
	ldrh	r4, [r1]
	cmp	r2, r3
	beq	.Lf9272
	sub	r0, r2, r3
	cmp	r0, #0
	ble	.Lf9248
	ldr	r3, =gMusicVolumeDelta
	ldrh	r3, [r3]
	add	r3, r4, r3
	b	.Lf924e

	.align	2, 0
.Lf9230:
	.word	0x100
	.pool

.Lf9248:
	ldr	r3, =gMusicVolumeDelta
	ldrh	r3, [r3]
	sub	r3, r4, r3
.Lf924e:
	strh	r3, [r1]
	ldr	r3, =gMusicVolume
	ldr	r1, =gMusicCurVolume
	ldrh	r4, [r3]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r5, #0
	ldrsh	r2, [r1, r5]
	sub	r3, r2
	eor	r3, r0
	cmp	r3, #0
	bge	.Lf9268
	strh	r4, [r1]
.Lf9268:
	ldrh	r2, [r1]
	ldr	r0, =gMPlayInfo_BGM
	mov	r1, #0xff
	bl	Func_80fb2cc
.Lf9272:
	ldr	r3, =gMusicSpeed
	ldr	r1, =gMusicCurSpeed
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	mov	r5, #0
	ldrsh	r3, [r1, r5]
	ldrh	r4, [r1]
	cmp	r2, r3
	beq	.Lf92d6
	sub	r0, r2, r3
	cmp	r0, #0
	ble	.Lf9292
	ldr	r3, =gMusicSpeedDelta
	ldrh	r3, [r3]
	add	r3, r4, r3
	b	.Lf9298
.Lf9292:
	ldr	r3, =gMusicSpeedDelta
	ldrh	r3, [r3]
	sub	r3, r4, r3
.Lf9298:
	strh	r3, [r1]
	ldr	r3, =gMusicSpeed
	ldr	r6, =gMusicCurSpeed
	ldrh	r1, [r3]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r4, #0
	ldrsh	r2, [r6, r4]
	sub	r3, r2
	eor	r3, r0
	cmp	r3, #0
	bge	.Lf92b2
	strh	r1, [r6]
.Lf92b2:
	ldr	r5, =gMPlayInfo_BGM
	ldrh	r1, [r6]
	mov	r0, r5
	bl	Func_80fb2a4
	mov	r0, #0
	ldrsh	r3, [r6, r0]
	lsl	r2, r3, #1
	add	r2, r3
	mov	r3, #0xf4
	lsl	r2, #18
	lsl	r3, #24
	add	r2, r3
	asr	r2, #16
	mov	r0, r5
	mov	r1, #0xff
	bl	Func_80fb334
.Lf92d6:
	bl	m4aSoundVSync
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end UpdateMusicSettings

.thumb_func_start Debug_SoundTest
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	mov	r9, sp
	ldr	r2, =.Lfb794
	mov	r3, r9
	ldmia	r2!, {r0, r1, r4}
	stmia	r3!, {r0, r1, r4}
	mov	r0, #2
	mov	r7, #0
	mov	r11, r0
	ldr	r3, =gRAMBuildDate
	str	r7, [r3]
	mov	r1, #0x14
	mov	r2, #0
	mov	r10, r1
	mov	r8, r2
	mov	r6, r9
.Lf932a:
	mov	r3, r10
	cmp	r3, #0
	beq	.Lf9336
	mov	r4, #1
	neg	r4, r4
	add	r10, r4
.Lf9336:
	ldr	r2, =Label_12cc
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.Lf9346
	mov	r3, #0
	mov	r0, #0x14
	str	r3, [r2]
	mov	r10, r0
.Lf9346:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #4
	and	r3, r2
	cmp	r3, #0
	beq	.Lf9362
	mov	r0, r11
	add	r0, #1
	mov	r1, #5
	bl	Func_b1c_from_thumb
	mov	r11, r0
	bl	SetSoundFXMode
.Lf9362:
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lf9374
	ldr	r3, [r6]
	add	r3, #0xa
	str	r3, [r6]
.Lf9374:
	ldr	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lf9386
	ldr	r3, [r6]
	sub	r3, #0xa
	str	r3, [r6]
.Lf9386:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lf9396
	ldr	r3, [r6]
	add	r3, #1
	str	r3, [r6]
.Lf9396:
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lf93a6
	ldr	r3, [r6]
	sub	r3, #1
	str	r3, [r6]
.Lf93a6:
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lf93be
	cmp	r7, #0
	ble	.Lf93be
	mov	r1, #4
	neg	r1, r1
	sub	r6, #4
	add	r8, r1
	sub	r7, #1
.Lf93be:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lf93d6
	cmp	r7, #1
	bgt	.Lf93d6
	mov	r2, #4
	add	r6, #4
	add	r8, r2
	add	r7, #1
.Lf93d6:
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lf93ea
	mov	r3, r8
	mov	r4, r9
	ldr	r0, [r3, r4]
	bl	PlaySound
.Lf93ea:
	ldr	r3, [r5]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lf93fa
	mov	r0, #0x13
	bl	PlaySound
.Lf93fa:
	ldr	r3, [r5]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	beq	.Lf940a
	mov	r0, #0x11
	bl	PlaySound
.Lf940a:
	ldr	r3, [r5]
	mov	r2, #4
	and	r3, r2
	cmp	r3, #0
	beq	.Lf941a
	ldr	r0, =0x121
	bl	PlaySound
.Lf941a:
	mov	r0, #1
	bl	WaitFrames
	b	.Lf932a
.func_end Debug_SoundTest

