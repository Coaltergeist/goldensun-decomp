	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_957_200909c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r2, #0
	sub	sp, #4
	mov	r9, r2
	mov	r7, r0
	bl	__CutsceneStart
	bl	__Func_808e118
	ldr	r0, =0x21db
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	bl	__ActorMessage
	mov	r6, #0x80
	bl	__CutsceneEnd
	mov	r4, #0
	mov	r8, r4
	lsl	r6, #9
.Lm957_10d4:
	mov	r0, r4
	add	r0, #0xb
	str	r4, [sp]
	bl	__MapActor_GetActor
	ldr	r4, [sp]
	mov	r5, r0
	mov	r3, r8
	add	r4, #1
	str	r3, [r5, #0x6c]
	str	r6, [r5, #0x18]
	str	r6, [r5, #0x1c]
	cmp	r4, #4
	ble	.Lm957_10d4
	ldr	r3, =ewram_2001001
	ldrb	r2, [r3]
	mov	r8, r2
	ldr	r2, =.Lm957_3f6c
	mov	r6, #1
	ldrsb	r6, [r3, r6]
	ldr	r5, [r2]
	mov	r10, r2
	ldrb	r2, [r3, #1]
	lsl	r0, r6, #16
	mov	r1, #5
	mov	r11, r2
	bl	_divsi3_RAM
	mov	r3, #0x80
	lsl	r3, #7
	mov	r2, r8
	add	r0, r3
	lsl	r3, r2, #24
	asr	r3, #24
	strh	r0, [r5, #6]
	cmp	r3, #0
	bne	.Lm957_113c
	cmp	r7, #0x10
	bne	.Lm957_112e
	mov	r3, #1
	mov	r0, #0x6e
	mov	r8, r3
	bl	__PlaySound
	b	.Lm957_1134
.Lm957_112e:
	mov	r0, #0x72
	bl	__PlaySound
.Lm957_1134:
	ldr	r2, =ewram_2001000
	mov	r3, #0
	strb	r3, [r2]
	b	.Lm957_1256
.Lm957_113c:
	cmp	r3, #1
	bne	.Lm957_11da
	cmp	r7, #0x10
	bne	.Lm957_114c
	mov	r0, #0x6e
	bl	__PlaySound
	b	.Lm957_1256
.Lm957_114c:
	cmp	r7, #0x14
	bne	.Lm957_11ce
	mov	r2, #2
	mov	r0, #0x6e
	mov	r8, r2
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__WaitFrames
	mov	r2, r10
	ldr	r3, [r2]
	mov	r2, #6
	ldrsh	r7, [r3, r2]
	ldr	r3, =0xffffcccd
	mov	r4, #0
	mov	r10, r3
.Lm957_116e:
	mov	r5, r4
	add	r5, #0xb
	lsl	r7, #16
	mov	r1, #0xc0
	lsr	r2, r7, #16
	mov	r0, r5
	lsl	r1, #13
	str	r4, [sp]
	bl	OvlFunc_957_2008f10
	mov	r0, #0x97
	bl	__PlaySound
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r3, #0
	mov	r5, r0
	str	r3, [r5, #0x18]
	ldr	r6, =0x6666
	ldr	r4, [sp]
.Lm957_1198:
	str	r6, [r5, #0x1c]
	str	r6, [r5, #0x18]
	mov	r0, #1
	str	r4, [sp]
	bl	__WaitFrames
	mov	r2, #0xc0
	lsl	r2, #4
	add	r6, r2
	ldr	r3, [r5, #0x18]
	ldr	r2, =0xffff
	ldr	r4, [sp]
	cmp	r3, r2
	ble	.Lm957_1198
	lsr	r3, r7, #16
	add	r3, r10
	lsl	r3, #16
	add	r4, #1
	asr	r7, r3, #16
	cmp	r4, #4
	ble	.Lm957_116e
	mov	r0, #0x1e
	bl	__WaitFrames
	mov	r3, #1
	mov	r9, r3
	b	.Lm957_1256
.Lm957_11ce:
	mov	r0, #0x72
	bl	__PlaySound
	mov	r2, #0
	mov	r8, r2
	b	.Lm957_1256
.Lm957_11da:
	cmp	r3, #2
	bne	.Lm957_1256
	mov	r3, r6
	add	r3, #0x10
	cmp	r7, r3
	beq	.Lm957_1246
	mov	r3, #0
	mov	r0, #0x72
	mov	r8, r3
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__WaitFrames
	mov	r4, #0
.Lm957_11f8:
	mov	r7, r4
	add	r7, #0xb
	mov	r0, r7
	str	r4, [sp]
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x97
	bl	__PlaySound
	ldr	r6, [r5, #0x18]
	ldr	r2, =0x6666
	ldr	r4, [sp]
	cmp	r6, r2
	ble	.Lm957_1230
.Lm957_1216:
	str	r6, [r5, #0x1c]
	str	r6, [r5, #0x18]
	mov	r0, #1
	str	r4, [sp]
	bl	__WaitFrames
	ldr	r3, =0xfffff400
	ldr	r2, =0x6666
	add	r6, r3
	ldr	r3, [r5, #0x18]
	ldr	r4, [sp]
	cmp	r3, r2
	bgt	.Lm957_1216
.Lm957_1230:
	mov	r0, r7
	mov	r1, #0
	mov	r2, #0
	str	r4, [sp]
	bl	__MapActor_SetPos
	ldr	r4, [sp]
	add	r4, #1
	cmp	r4, #4
	ble	.Lm957_11f8
	b	.Lm957_1256
.Lm957_1246:
	mov	r0, #0x6e
	bl	__PlaySound
	mov	r3, #1
	mov	r0, #0x1e
	mov	r9, r3
	bl	__WaitFrames
.Lm957_1256:
	ldr	r7, =ewram_2001001
	mov	r2, r8
	mov	r3, r9
	strb	r2, [r7]
	cmp	r3, #0
	bne	.Lm957_1264
	b	.Lm957_13c0
.Lm957_1264:
	sub	r3, r7, #1
	ldrb	r5, [r3]
	add	r5, #1
	strb	r5, [r3]
	bl	__Random
	lsl	r0, #2
	lsr	r0, #16
	add	r0, r11
	add	r0, #1
	lsl	r0, #24
	asr	r0, #24
	mov	r1, #5
	add	r0, #5
	bl	_modsi3_RAM
	ldr	r6, =.Lm957_3f6c
	strb	r0, [r7, #1]
	ldr	r2, [r6]
	mov	r3, #0
	strh	r3, [r2]
	strh	r3, [r2, #2]
	mov	r3, #0x80
	lsl	r3, #2
	strh	r3, [r2, #8]
	mov	r3, #0xc0
	lsl	r5, #24
	lsl	r3, #6
	mov	r1, #0xc8
	lsr	r5, #24
	strh	r3, [r2, #0xa]
	ldr	r0, =OvlFunc_957_2008f94
	lsl	r1, #4
	bl	__StartTask
	cmp	r5, #2
	bhi	.Lm957_12d8
	ldr	r3, [r6]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x63
	beq	.Lm957_12ca
	mov	r5, r6
.Lm957_12ba:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, [r5]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x63
	bne	.Lm957_12ba
.Lm957_12ca:
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r0, #0x6e
	bl	__PlaySound
	b	.Lm957_13ba
.Lm957_12d8:
	mov	r3, #0x63
	strb	r3, [r7]
	ldr	r3, [r6]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	beq	.Lm957_12f8
	mov	r5, r6
.Lm957_12e8:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, [r5]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bne	.Lm957_12e8
.Lm957_12f8:
	ldr	r2, [r6]
	mov	r3, #2
	mov	r1, #0
	strh	r3, [r2]
	strh	r1, [r2, #2]
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	ldr	r2, [r6]
	mov	r3, #0x63
	strh	r3, [r2]
	mov	r0, #0xbe
	bl	__PlaySound
	mov	r3, #0xc0
	lsl	r3, #13
	mov	r8, r3
	ldr	r3, [r6]
	mov	r2, #6
	ldrsh	r7, [r3, r2]
	mov	r3, #0xc0
	lsl	r3, #4
	mov	r10, r3
.Lm957_1346:
	mov	r4, #0
.Lm957_1348:
	mov	r6, r4
	add	r6, #0xb
	mov	r0, r6
	str	r4, [sp]
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r3, [r5, #0x18]
	sub	r3, #0x10
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	sub	r3, #0x10
	str	r3, [r5, #0x1c]
	lsl	r5, r7, #16
	lsr	r5, #16
	mov	r2, r5
	mov	r0, r6
	mov	r1, r8
	bl	OvlFunc_957_2008f10
	ldr	r2, =0xffffcccd
	ldr	r4, [sp]
	add	r5, r2
	lsl	r5, #16
	add	r4, #1
	asr	r7, r5, #16
	cmp	r4, #4
	ble	.Lm957_1348
	lsl	r3, r7, #16
	lsr	r3, #16
	add	r3, r10
	lsl	r3, #16
	add	r8, r2
	mov	r0, #1
	asr	r7, r3, #16
	bl	__WaitFrames
	mov	r3, r8
	cmp	r3, #0
	bgt	.Lm957_1346
	mov	r4, #0
.Lm957_139a:
	mov	r0, r4
	add	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	str	r4, [sp]
	bl	__MapActor_SetPos
	ldr	r4, [sp]
	add	r4, #1
	cmp	r4, #4
	ble	.Lm957_139a
	bl	OvlFunc_957_200bad4
	mov	r0, #0x50
	bl	__PlaySound
.Lm957_13ba:
	ldr	r0, =OvlFunc_957_2008f94
	bl	__StopTask
.Lm957_13c0:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_200909c

