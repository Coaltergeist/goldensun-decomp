	.include "macros.inc"

.thumb_func_start OvlFunc_924_20090c0
	push	{lr}
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1140
	ldr	r0, =0x311
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1140
	ldr	r0, =0x312
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1140
	ldr	r0, =0x876
	bl	__SetFlag
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__Func_8091e20
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r0, #0xd
	bl	__Func_8091e9c
	b	.L1146
.L1140:
	ldr	r0, =0x876
	bl	__ClearFlag
.L1146:
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_20090c0

.thumb_func_start OvlFunc_924_2009164
	push	{r5, r6, lr}
	sub	sp, #0x20
	bl	__CutsceneStart
	add	r6, sp, #8
	mov	r0, r6
	bl	OvlFunc_924_2008758
	cmp	r0, #0
	bne	.L117a
	b	.L1326
.L117a:
	ldr	r3, [r6, #4]
	cmp	r3, #9
	beq	.L1192
	cmp	r3, #9
	bcs	.L1186
	b	.L1322
.L1186:
	cmp	r3, #0xa
	beq	.L1230
	cmp	r3, #0xb
	bne	.L1190
	b	.L12e4
.L1190:
	b	.L1322
.L1192:
	ldr	r3, [r6, #0x10]
	asr	r3, #20
	cmp	r3, #8
	bne	.L11e0
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	mov	r1, #9
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0xc]
	ldr	r0, [r6]
	bl	OvlFunc_924_20088ec
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x77
	mov	r1, #9
	mov	r2, #0x6d
	mov	r3, #0xb
	bl	__CopyMapTiles
	mov	r2, #0xb4
	mov	r3, #0x80
	ldr	r0, =0x2d60000
	lsl	r2, #16
	lsl	r3, #8
	mov	r1, #0
	bl	OvlFunc_924_200bc48
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__SetFlag
	b	.L1322
.L11e0:
	mov	r5, #1
	mov	r0, #0x75
	mov	r1, #9
	mov	r2, #0x68
	mov	r3, #7
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x77
	mov	r1, #8
	mov	r2, #0x6d
	mov	r3, #0xb
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x76
	mov	r1, #8
	mov	r2, #0x68
	mov	r3, #0xd
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r6]
	ldr	r1, [r6, #4]
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0xc]
	bl	OvlFunc_924_20088ec
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__ClearFlag
	b	.L1322
.L1230:
	ldr	r3, [r6, #0x10]
	asr	r3, #20
	cmp	r3, #0xc
	bne	.L128a
	mov	r3, sp
	add	r2, sp, #0x18
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	mov	r1, #0xa
	ldr	r0, [r6]
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0xc]
	bl	OvlFunc_924_20088ec
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1282
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x76
	mov	r1, #9
	mov	r2, #0x68
	mov	r3, #0xd
	bl	__CopyMapTiles
	mov	r0, #0xa1
	mov	r2, #0xd2
	mov	r3, #0x80
	lsl	r0, #18
	lsl	r2, #16
	lsl	r3, #7
	mov	r1, #0
	bl	OvlFunc_924_200bc48
.L1282:
	ldr	r0, =0x311
	bl	__SetFlag
	b	.L1322
.L128a:
	mov	r5, #1
	mov	r0, #0x77
	mov	r1, #8
	mov	r2, #0x6d
	mov	r3, #0xb
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L12c8
	mov	r0, #0x77
	mov	r1, #9
	mov	r2, #0x6d
	mov	r3, #0xb
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x76
	mov	r1, #8
	mov	r2, #0x68
	mov	r3, #0xd
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
.L12c8:
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r6]
	ldr	r1, [r6, #4]
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0xc]
	bl	OvlFunc_924_20088ec
	ldr	r0, =0x311
	bl	__ClearFlag
	b	.L1322
.L12e4:
	ldr	r4, [r6, #8]
	asr	r3, r4, #20
	cmp	r3, #0x28
	bne	.L1308
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	mov	r1, #0xb
	ldr	r0, [r6]
	mov	r2, r4
	ldr	r3, [r6, #0xc]
	bl	OvlFunc_924_20088ec
	ldr	r0, =0x312
	bl	__SetFlag
	b	.L1322
.L1308:
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	mov	r1, #0xb
	ldr	r0, [r6]
	mov	r2, r4
	ldr	r3, [r6, #0xc]
	bl	OvlFunc_924_20088ec
	ldr	r0, =0x312
	bl	__ClearFlag
.L1322:
	bl	OvlFunc_924_20090c0
.L1326:
	bl	__Func_8091750
	add	sp, #0x20
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_2009164

.thumb_func_start OvlFunc_924_2009340
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r5, [r3]
	bl	__CutsceneStart
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_924_200ba64
	bl	__StartTask
	mov	r1, #0xa0
	mov	r2, #0xa0
	lsl	r2, #9
	mov	r0, #0
	lsl	r1, #10
	bl	__Func_8092064
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0xe4
	bl	__PlaySound
	mov	r2, #0xb6
	lsl	r2, #1
	add	r5, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #2
	bne	.L1396
	mov	r2, #0x9a
	mov	r0, #0
	mov	r1, #0xe8
	b	.L13ae
.L1396:
	cmp	r3, #3
	bne	.L13a4
	mov	r1, #0xb4
	mov	r2, #0xb6
	mov	r0, #0
	lsl	r1, #1
	b	.L13ae
.L13a4:
	cmp	r3, #4
	bne	.L13b6
	mov	r2, #0xc6
	mov	r0, #0
	mov	r1, #0xf8
.L13ae:
	lsl	r2, #2
	bl	__Func_8092128
	b	.L13d8
.L13b6:
	mov	r1, #0xae
	mov	r2, #0x94
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_8092158
	mov	r1, #0xae
	mov	r2, #0x96
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_8092128
	mov	r0, #0x1e
	bl	__CutsceneWait
.L13d8:
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =OvlFunc_924_200ba64
	bl	__StopTask
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_2009340

.thumb_func_start OvlFunc_924_2009408
	push	{lr}
	bl	__CutsceneStart
	bl	OvlFunc_924_20083a8
	bl	__Func_8091750
	bl	OvlFunc_924_2009420
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_2009408

.thumb_func_start OvlFunc_924_2009420
	push	{r5, r6, lr}
	mov	r0, #0xb
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L1434
	ldr	r2, =0xfffff
	add	r3, r2
.L1434:
	mov	r0, #0xb
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L1446
	ldr	r2, =0xfffff
	add	r3, r2
.L1446:
	asr	r5, r3, #20
	bl	__CutsceneStart
	cmp	r6, #5
	bne	.L14b0
	cmp	r5, #0xd
	bne	.L14b0
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r2, =0xfffe0000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	str	r3, [r5, #0x3c]
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #2
	mov	r3, #0xb
	mov	r2, #5
	mov	r0, #5
	bl	__CopyMapTiles
	mov	r0, #0xd9
	bl	__PlaySound
	ldr	r0, =.L6010
	mov	r1, #9
	mov	r2, #7
	bl	__Func_8010560
	mov	r3, #9
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #9
	mov	r1, #5
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	ldr	r0, =0x874
	bl	__SetFlag
.L14b0:
	bl	__Func_8091750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_2009420

.thumb_func_start OvlFunc_924_20094cc
	push	{r5, lr}
	ldr	r0, =0x256
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1552
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xa
	ldrsh	r5, [r0, r2]
	mov	r0, #0
	bl	__MapActor_GetActor
	sub	r5, #0x54
	mov	r2, #0x12
	ldrsh	r3, [r0, r2]
	cmp	r5, #7
	bhi	.L1552
	cmp	r3, #0xd3
	ble	.L1552
	cmp	r3, #0xdb
	bgt	.L1552
	bl	__CutsceneStart
	ldr	r0, =0x256
	bl	__SetFlag
	mov	r0, #5
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xfffe0000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	str	r3, [r5, #0x3c]
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #2
	mov	r2, #5
	mov	r3, #0xb
	mov	r0, #5
	bl	__CopyMapTiles
	mov	r0, #0xd9
	bl	__PlaySound
	ldr	r0, =.L6010
	mov	r1, #9
	mov	r2, #7
	bl	__Func_8010560
	bl	__Func_8091750
.L1552:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_20094cc

.thumb_func_start OvlFunc_924_2009568
	push	{r5, lr}
	ldr	r0, =0x256
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.L15ce
	bl	__CutsceneStart
	ldr	r0, =0x256
	bl	__ClearFlag
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #10
	add	r3, r2
	str	r3, [r0, #0xc]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	mov	r0, #5
	str	r3, [r5, #0x3c]
	bl	__CutsceneWait
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #2
	mov	r2, #5
	mov	r3, #0xb
	mov	r0, #7
	bl	__CopyMapTiles
	mov	r0, #0xd9
	bl	__PlaySound
	ldr	r0, =.L603a
	mov	r1, #9
	mov	r2, #7
	bl	__Func_8010560
	bl	__Func_8091750
.L15ce:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_2009568

.thumb_func_start OvlFunc_924_20095e0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r8, r0
	mov	r5, r1
	mov	r9, r2
	cmp	r0, #0
	beq	.L1600
	mov	r0, #0xdb
	bl	__PlaySound
.L1600:
	mov	r6, r5
	cmp	r6, r9
	bcs	.L169a
	mov	r2, #1
	mov	r3, #4
	mov	r10, r2
	mov	r11, r3
.L160e:
	lsl	r3, r6, #1
	mov	r2, #0x2d
	sub	r0, r2, r3
	mov	r2, #0x2c
	sub	r2, r3
	mov	r3, #6
	str	r3, [sp, #4]
	mov	r1, #0x20
	mov	r3, #0x20
	add	r7, r6, #1
	str	r7, [sp]
	bl	__CopyMapTiles
	mov	r3, #0x2d
	sub	r2, r3, r6
	mov	r3, r10
	str	r3, [sp]
	mov	r3, #6
	str	r3, [sp, #4]
	mov	r0, r2
	mov	r1, #0x33
	mov	r3, #0x20
	bl	__CopyMapTiles
	mov	r5, #0x6d
	mov	r3, r10
	sub	r5, r6
	str	r3, [sp]
	mov	r2, #0x6c
	mov	r3, r11
	str	r3, [sp, #4]
	sub	r2, r6
	mov	r0, r5
	mov	r1, #0x20
	mov	r3, #0x20
	bl	__CopyMapTiles
	mov	r2, r10
	mov	r3, r11
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r2, r5
	mov	r0, r5
	mov	r1, #0x33
	mov	r3, #0x20
	bl	__CopyMapTiles
	mov	r2, r8
	cmp	r2, #0
	beq	.L1694
	mov	r0, #0xa0
	lsl	r0, #11
	mov	r2, #0x80
	mov	r1, r0
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r0, r8
	bl	__CutsceneWait
.L1694:
	mov	r6, r7
	cmp	r6, r9
	bcc	.L160e
.L169a:
	mov	r3, #0x2a
	mov	r2, #0x21
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2a
	mov	r1, #0x34
	mov	r2, #4
	mov	r3, #5
	bl	__Func_8010704
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_20095e0

.thumb_func_start OvlFunc_924_20096c4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	mov	r0, #0xdb
	sub	sp, #8
	bl	__PlaySound
	mov	r1, #6
	mov	r10, r1
	mov	r3, #0x29
	mov	r1, #2
	mov	r5, #0
	mov	r8, r3
	mov	r6, #0x28
	mov	r9, r1
.L16e8:
	mov	r3, #3
	sub	r3, r5
	str	r3, [sp]
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r1, #0x20
	mov	r2, r8
	mov	r3, #0x20
	bl	__CopyMapTiles
	mov	r3, #1
	mov	r1, r10
	str	r3, [sp]
	str	r1, [sp, #4]
	mov	r0, #0x27
	mov	r1, #0x33
	mov	r2, r6
	mov	r3, #0x20
	bl	__CopyMapTiles
	mov	r3, #4
	mov	r1, r9
	mov	r2, r5
	str	r1, [sp]
	str	r3, [sp, #4]
	add	r2, #0x6a
	mov	r0, #0x69
	mov	r1, #0x33
	mov	r3, #0x20
	bl	__CopyMapTiles
	cmp	r7, #0
	beq	.L1750
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r0, r7
	bl	__CutsceneWait
.L1750:
	mov	r3, #2
	add	r5, #1
	add	r8, r3
	add	r6, #2
	cmp	r5, #2
	bls	.L16e8
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r3, #0x2a
	mov	r2, #0x21
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6a
	mov	r1, #0x21
	mov	r2, #4
	mov	r3, #5
	bl	__Func_8010704
	bl	__Func_8012350
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_20096c4

