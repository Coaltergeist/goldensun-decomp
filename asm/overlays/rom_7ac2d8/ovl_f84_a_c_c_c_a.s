	.include "macros.inc"

	.section .text.after_90c0, "ax", %progbits

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
	bl	__CutsceneEnd
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
	bl	__MapActor_SetSpeed
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
	bl	__MapActor_TravelTo
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
	bl	__MapActor_TravelTo
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
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_2009340

