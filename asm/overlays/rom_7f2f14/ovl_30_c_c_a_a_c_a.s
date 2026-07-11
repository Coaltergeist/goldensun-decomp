	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_200a6f8
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
	ldr	r1, =0xfffffdec
	mov	r2, #0xa
	ldrsh	r6, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r3, #0
	str	r3, [r0, #0xc]
	add	r3, r6, r1
	cmp	r3, #7
	bls	.L272e
	b	.L28c6
.L272e:
	mov	r3, #0xa2
	lsl	r3, #1
	cmp	r2, r3
	bge	.L2738
	b	.L28c6
.L2738:
	mov	r1, #0xa6
	lsl	r1, #1
	cmp	r2, r1
	blt	.L2742
	b	.L28c6
.L2742:
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0xc]
	ldr	r0, =0x306
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2752
	b	.L28c6
.L2752:
	bl	__CutsceneStart
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x21
	mov	r3, #0x14
	mov	r0, #0x3f
	bl	__CopyMapTiles
	mov	r0, #0xa1
	bl	__PlaySound
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x53
	mov	r3, #0x50
	mov	r2, #0x2c
	mov	r0, #0x2c
	bl	__CopyMapTiles
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
	mov	r2, #0x9a
	ldr	r1, =0xcccc
	lsl	r2, #18
	mov	r6, #0
	mov	r3, #0x3c
	mov	r9, r2
	mov	r10, r3
	mov	r8, r6
	add	r5, sp, #0x10
	mov	r11, r1
.L27b6:
	ldr	r3, [r7, #8]
	ldr	r2, =0x3333
	add	r3, r2
	str	r3, [r7, #8]
	ldr	r3, =0x23fffff
	cmp	r9, r3
	ble	.L2860
	mov	r1, r8
	cmp	r1, #0x28
	bls	.L2860
	ldr	r2, =0xffffcccd
	mov	r3, #2
	add	r9, r2
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
	mov	r3, #0xf8
	lsl	r0, #12
	lsl	r3, #8
	lsr	r0, #16
	add	r0, r3
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
	mov	r3, #0x8a
	lsl	r3, #16
	mov	r2, #0x90
	mov	r1, #0
	str	r3, [sp, #8]
	lsl	r2, #17
	mov	r0, r9
	mov	r3, #0
	str	r1, [sp, #4]
	str	r5, [sp, #0xc]
	bl	OvlFunc_968_2008118
	mov	r2, r10
	cmp	r2, #0
	bne	.L2860
	mov	r3, #0x28
	mov	r2, #4
	mov	r10, r3
	add	r6, #4
	mov	r3, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, r6
	mov	r1, #0x38
	mov	r2, #0x24
	mov	r3, #0x11
	bl	__CopyMapTiles
.L2860:
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #1
	mov	r2, #1
	ldr	r3, =0x13f
	neg	r2, r2
	add	r8, r1
	add	r10, r2
	cmp	r8, r3
	bls	.L27b6
	ldr	r2, [r7, #8]
	mov	r1, #0x80
	lsl	r1, #8
	add	r3, r2, r1
	str	r3, [r7, #8]
	cmp	r3, #0
	bge	.L2888
	ldr	r1, =0x17fff
	add	r3, r2, r1
.L2888:
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
	mov	r0, #0x12
	bl	__Func_8091e9c
	bl	__CutsceneEnd
.L28c6:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200a6f8

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
	bls	.L2942
	b	.L2aca
.L2942:
	mov	r3, #0xa2
	lsl	r3, #1
	cmp	r2, r3
	bge	.L294c
	b	.L2aca
.L294c:
	mov	r1, #0xa6
	lsl	r1, #1
	cmp	r2, r1
	blt	.L2956
	b	.L2aca
.L2956:
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0xc]
	ldr	r0, =0x307
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2966
	b	.L2aca
.L2966:
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
.L29ba:
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
	bhi	.L2a64
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
	bne	.L2a64
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
.L2a64:
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #1
	mov	r1, #1
	ldr	r2, =0x13f
	neg	r1, r1
	add	r9, r3
	add	r8, r1
	cmp	r9, r2
	bls	.L29ba
	ldr	r2, [r7, #8]
	mov	r1, #0x80
	lsl	r1, #8
	add	r3, r2, r1
	str	r3, [r7, #8]
	cmp	r3, #0
	bge	.L2a8c
	ldr	r1, =0x17fff
	add	r3, r2, r1
.L2a8c:
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
.L2aca:
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

.thumb_func_start OvlFunc_968_200ab14
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	mov	r1, #0
	mov	r0, #0
	str	r1, [sp, #0xc]
	bl	__MapActor_GetActor
	str	r0, [sp, #8]
	bl	__CutsceneStart
	mov	r3, #5
	mov	r2, #0x30
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x45
	mov	r1, #0x30
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
	mov	r3, #9
	mov	r2, #0x25
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x49
	mov	r2, #9
	mov	r1, #0x25
	mov	r3, #0xd
	bl	__Func_8010704
	mov	r2, #0xf
	mov	r10, r2
.L2b60:
	mov	r0, r10
	bl	__MapActor_GetActor
	mov	r3, #0x23
	mov	r8, r0
	add	r3, r8
	mov	r11, r3
	ldrb	r3, [r3]
	cmp	r3, #2
	beq	.L2b8e
	ldr	r2, [r0, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x48
	mov	r1, #0x30
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.L2ba8
.L2b8e:
	mov	r1, r8
	ldr	r2, [r1, #8]
	ldr	r3, [r1, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x49
	mov	r1, #0x30
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L2ba8:
	mov	r2, r8
	ldr	r4, =.L5164
	mov	r6, #0
	ldr	r0, [r2, #8]
	ldr	r3, [r4, r6]
	asr	r2, r0, #20
	mov	r5, #8
	cmp	r2, r3
	bne	.L2bd0
	mov	r1, r8
	ldr	r3, [r1, #0x10]
	ldr	r2, [r4, #4]
	asr	r3, #20
	cmp	r3, r2
	bne	.L2bd0
	ldr	r3, [r1, #0xc]
	cmp	r3, #0
	blt	.L2bd0
	mov	r5, #0
	b	.L2bf8
.L2bd0:
	add	r6, #1
	cmp	r6, #7
	bhi	.L2bf8
	lsl	r1, r6, #3
	ldr	r3, [r4, r1]
	asr	r2, r0, #20
	cmp	r2, r3
	bne	.L2bd0
	mov	r2, r8
	ldr	r3, [r2, #0x10]
	add	r2, r1, #4
	ldr	r2, [r4, r2]
	asr	r3, #20
	cmp	r3, r2
	bne	.L2bd0
	mov	r1, r8
	ldr	r3, [r1, #0xc]
	cmp	r3, #0
	blt	.L2bd0
	mov	r5, r6
.L2bf8:
	cmp	r5, #8
	bne	.L2bfe
	b	.L2e98
.L2bfe:
	mov	r6, #0xf
	b	.L2c04
.L2c02:
	add	r6, #1
.L2c04:
	cmp	r6, #0x12
	bhi	.L2c30
	mov	r0, r6
	bl	__MapActor_GetActor
	cmp	r10, r6
	beq	.L2c02
	mov	r3, r8
	ldr	r2, [r3, #8]
	ldr	r3, [r0, #8]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L2c02
	mov	r1, r8
	ldr	r2, [r1, #0x10]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L2c02
	mov	r5, #8
.L2c30:
	cmp	r5, #8
	bne	.L2c36
	b	.L2e98
.L2c36:
	ldr	r2, [sp, #8]
	ldr	r3, [r2, #0x50]
	ldrb	r3, [r3, #9]
	lsl	r3, #28
	lsr	r3, #30
	lsl	r7, r5, #3
	ldr	r1, =.L5164
	mov	r9, r3
	ldr	r2, [r2, #0x10]
	add	r3, r7, #4
	ldr	r3, [r1, r3]
	asr	r2, #20
	cmp	r2, r3
	bhi	.L2c6e
	mov	r2, r8
	ldr	r1, [r2, #0xc]
	ldr	r0, [r2, #8]
	ldr	r3, =0xfffc0000
	ldr	r2, [r2, #0x10]
	add	r2, r3
	mov	r3, #0x14
	bl	OvlFunc_968_2008098
	mov	r1, #3
	str	r0, [sp, #0xc]
	mov	r0, #0
	bl	__Func_8092b08
.L2c6e:
	mov	r6, #0xf
.L2c70:
	mov	r0, r6
	bl	__MapActor_GetActor
	cmp	r10, r6
	beq	.L2c9e
	mov	r1, r8
	ldr	r2, [r1, #8]
	ldr	r3, [r0, #8]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L2c9e
	ldr	r2, [r1, #0x10]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	sub	r2, #1
	asr	r3, #20
	cmp	r2, r3
	bne	.L2c9e
	mov	r0, r6
	mov	r1, #3
	bl	__Func_8092b08
.L2c9e:
	add	r6, #1
	cmp	r6, #0x12
	bls	.L2c70
	mov	r0, r10
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, r8
	add	r3, #0x22
	mov	r2, #0
	mov	r6, r8
	strb	r2, [r3]
	add	r6, #0x55
	mov	r3, #3
	strb	r3, [r6]
	ldr	r3, =0x1999
	mov	r1, r8
	mov	r2, #0
	str	r3, [r1, #0x48]
	str	r2, [r1, #0x44]
	ldr	r1, =.L5164
	add	r5, r7, #4
	ldr	r3, [r1, r7]
	ldr	r2, [r1, r5]
	mov	r0, #6
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2c
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r0, r8
	bl	OvlFunc_968_200894c
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r3, r8
	mov	r2, #0
	add	r3, #0x59
	strb	r2, [r3]
	ldr	r3, =0xfff00000
	mov	r1, r8
	strb	r2, [r6]
	mov	r0, r10
	str	r3, [r1, #0xc]
	mov	r1, #3
	bl	__Func_8092b08
	mov	r3, #2
	mov	r2, r11
	strb	r3, [r2]
	ldr	r1, =.L5164
	ldr	r3, [r1, r7]
	ldr	r2, [r1, r5]
	mov	r0, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r1, #0x30
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, r9
	bl	__Func_8092b08
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r6, #0xf
.L2d3c:
	mov	r0, r6
	bl	__MapActor_GetActor
	cmp	r10, r6
	beq	.L2d7c
	mov	r3, r8
	ldr	r2, [r3, #8]
	ldr	r3, [r0, #8]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L2d7c
	mov	r1, r8
	ldr	r2, [r1, #0x10]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	sub	r2, #1
	asr	r3, #20
	cmp	r2, r3
	bne	.L2d7c
	mov	r0, r6
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, r6
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
.L2d7c:
	add	r6, #1
	cmp	r6, #0x12
	bls	.L2d3c
	ldr	r0, [sp, #0xc]
	bl	__DeleteActor
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2d9a
	bl	__CutsceneEnd
	b	.L2ea8
.L2d9a:
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r8, r0
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r2, #0x23
	add	r8, r2
	mov	r3, r8
	add	r5, #0x23
	ldrb	r2, [r3]
	ldrb	r3, [r5]
	add	r6, #0x23
	and	r3, r2
	ldrb	r2, [r6]
	add	r0, #0x23
	and	r3, r2
	ldrb	r2, [r0]
	and	r3, r2
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L2e98
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xe
	mov	r1, #1
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r1, #0xc2
	ldr	r2, =.L577c
	lsl	r1, #2
	mov	r0, #0x88
	bl	OvlFunc_968_2008c5c
	mov	r6, r0
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0x9e
	mov	r3, #1
	lsl	r2, #18
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_80933f8
	mov	r0, r6
	bl	__Actor_WaitScript
	mov	r0, r6
	ldr	r1, =gScript_968__0200d7c8
	bl	__Actor_SetScript
	mov	r1, #0xbe
	lsl	r1, #2
	mov	r0, #0xd8
	ldr	r2, =gScript_968__0200dac8
	bl	OvlFunc_968_2008c5c
	mov	r1, #0x63
	ldr	r3, [r6]
	add	r1, r6
	mov	r5, r0
	mov	r8, r1
	b	.L2e8e
.L2e46:
	mov	r1, r8
	ldrb	r3, [r1]
	cmp	r3, #0
	bne	.L2e58
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L2e86
.L2e58:
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =.L5d3c
	mov	r1, #0x4d
	mov	r2, #0x23
	bl	__Func_8010560
	mov	r3, #0xd
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xd
	mov	r1, #0x23
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__SetFlag
	b	.L2e98
.L2e86:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, [r6]
.L2e8e:
	cmp	r3, #0
	bne	.L2e46
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L2e46
.L2e98:
	mov	r2, #1
	add	r10, r2
	mov	r3, r10
	cmp	r3, #0x12
	bhi	.L2ea4
	b	.L2b60
.L2ea4:
	bl	__CutsceneEnd
.L2ea8:
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200ab14

.thumb_func_start OvlFunc_968_200aee4
	push	{lr}
	sub	sp, #8
	bl	__CutsceneStart
	bl	OvlFunc_968_2008cc8
	cmp	r0, #0
	bne	.L2f20
	mov	r3, #5
	mov	r2, #0x30
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x45
	mov	r1, #0x30
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
	mov	r3, #9
	mov	r2, #0x25
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x49
	mov	r1, #0x25
	mov	r2, #9
	mov	r3, #0xd
	bl	__Func_8010704
	bl	OvlFunc_968_2008374
.L2f20:
	bl	__CutsceneEnd
	bl	OvlFunc_968_200ab14
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200aee4

.thumb_func_start OvlFunc_968_200af30
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0x82
	mov	r2, #0xb2
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0x82
	mov	r2, #0xc4
	mov	r3, #0xdf
	lsl	r2, #18
	mov	r1, #0
	lsl	r0, #18
	bl	OvlFunc_968_2008058
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092708
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x14
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200af30

.thumb_func_start OvlFunc_968_200af8c
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb5
	cmp	r2, r3
	bne	.L2fa4
	ldr	r0, =.L6e44
	b	.L2fd4
.L2fa4:
	ldr	r3, =0xb6
	cmp	r2, r3
	beq	.L2fd2
	ldr	r3, =0xb7
	cmp	r2, r3
	bne	.L2fb4
	ldr	r0, =.L7120
	b	.L2fd4
.L2fb4:
	ldr	r3, =0xb8
	cmp	r2, r3
	bne	.L2fbe
	ldr	r0, =.L7300
	b	.L2fd4
.L2fbe:
	ldr	r3, =0xb9
	cmp	r2, r3
	bne	.L2fc8
	ldr	r0, =.L73b4
	b	.L2fd4
.L2fc8:
	ldr	r3, =0xba
	cmp	r2, r3
	bne	.L2fd2
	ldr	r0, =.L74f8
	b	.L2fd4
.L2fd2:
	ldr	r0, =.L6f1c
.L2fd4:
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_200af8c

