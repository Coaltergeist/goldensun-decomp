	.include "macros.inc"

.thumb_func_start UpdateMusicSettings  @ 0x080f91e8
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
	bl	m4aMPlayVolumeControl
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
	bl	m4aMPlayTempoControl
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
	bl	m4aMPlayPitchControl
.Lf92d6:
	bl	m4aSoundVSync
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end UpdateMusicSettings

