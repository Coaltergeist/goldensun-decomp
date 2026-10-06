	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_200a90c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	mov	r1, #0xb2
	ldr	r3, [r3]
	lsl	r1, #1
	mov	r0, #0
	add	r7, r3, r1
	sub	sp, #0x38
	bl	__MapActor_GetActor
	ldr	r1, =0xfffffcec
	mov	r2, #0xa
	ldrsh	r6, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r3, #0
	str	r3, [r0, #0xc]
	add	r3, r6, r1
	cmp	r3, #7
	bls	.Lm968_2942
	b	.Lm968_2aca
.Lm968_2942:
	mov	r3, #0xa2
	lsl	r3, #1
	cmp	r2, r3
	bge	.Lm968_294c
	b	.Lm968_2aca
.Lm968_294c:
	mov	r1, #0xa6
	lsl	r1, #1
	cmp	r2, r1
	blt	.Lm968_2956
	b	.Lm968_2aca
.Lm968_2956:
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0xc]
	ldr	r0, =0x307
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm968_2966
	b	.Lm968_2aca
.Lm968_2966:
	bl	__CutsceneStart
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r3, #0x14
	mov	r2, #0x31
	mov	r0, #0x3f
	bl	__CopyMapTiles
	mov	r0, #0xa1
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0xef
	bl	__PlaySound
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xb0
	lsl	r2, #18
	mov	r10, r2
	ldr	r2, =0xcccc
	mov	r3, #0x3c
	mov	r1, #0
	mov	r6, #0x3d
	mov	r8, r3
	mov	r9, r1
	add	r5, sp, #0x10
	mov	r11, r2
.Lm968_29ba:
	ldr	r3, [r7, #8]
	ldr	r1, =0xffffcccd
	ldr	r2, =0x3333
	add	r3, r1
	str	r3, [r7, #8]
	ldr	r3, =0xfd380000
	add	r10, r2
	ldr	r1, =0x27ffff
	add	r3, r10
	cmp	r3, r1
	bhi	.Lm968_2a64
	mov	r3, #2
	str	r3, [r5]
	bl	__Random
	lsl	r2, r0, #1
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r2, r3, #4
	add	r3, r2
	lsl	r2, r3, #8
	add	r3, r2
	add	r3, r11
	str	r3, [r5, #8]
	bl	__Random
	lsl	r2, r0, #1
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r2, r3, #4
	add	r3, r2
	lsl	r2, r3, #8
	add	r3, r2
	add	r3, r11
	str	r3, [r5, #0xc]
	bl	__Random
	mov	r2, #0xf8
	lsl	r0, #12
	lsl	r2, #8
	lsr	r0, #16
	add	r0, r2
	strh	r0, [r5, #0x22]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #16
	neg	r3, r3
	str	r3, [sp]
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r3, #0x8a
	lsl	r3, #16
	mov	r2, #0x90
	str	r3, [sp, #8]
	mov	r1, #0
	mov	r0, r10
	lsl	r2, #17
	mov	r3, #0
	str	r5, [sp, #0xc]
	bl	OvlFunc_968_2008118
	mov	r1, r8
	cmp	r1, #0
	bne	.Lm968_2a64
	mov	r2, #0x28
	mov	r3, #3
	mov	r8, r2
	sub	r6, #4
	mov	r2, #4
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, r6
	mov	r1, #0x38
	mov	r2, #0x2c
	mov	r3, #0x11
	bl	__CopyMapTiles
.Lm968_2a64:
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #1
	mov	r1, #1
	ldr	r2, =0x13f
	neg	r1, r1
	add	r9, r3
	add	r8, r1
	cmp	r9, r2
	bls	.Lm968_29ba
	ldr	r2, [r7, #8]
	mov	r1, #0x80
	lsl	r1, #8
	add	r3, r2, r1
	str	r3, [r7, #8]
	cmp	r3, #0
	bge	.Lm968_2a8c
	ldr	r1, =0x17fff
	add	r3, r2, r1
.Lm968_2a8c:
	asr	r3, #16
	lsl	r3, #16
	mov	r0, #0x90
	str	r3, [r7, #8]
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	mov	r0, #0x13
	bl	__Func_8091e9c
	bl	__CutsceneEnd
.Lm968_2aca:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200a90c

