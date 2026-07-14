	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_957_2008f94
	push	{r5, r6, r7, lr}
	ldr	r4, =.L3f6c
	ldr	r5, [r4]
	mov	r0, #0
	ldrsh	r2, [r5, r0]
	sub	sp, #4
	mov	r7, #1
	ldrh	r1, [r5]
	cmp	r2, #0
	bne	.Lfbe
	ldrh	r3, [r5, #8]
	ldr	r0, =0xbff0000
	add	r3, #0x10
	strh	r3, [r5, #8]
	lsl	r3, #16
	cmp	r3, r0
	bls	.L1032
	add	r3, r1, #1
	strh	r3, [r5]
	strh	r2, [r5, #2]
	b	.L1032
.Lfbe:
	cmp	r2, #1
	bne	.Lfcc
	mov	r2, #2
	ldrsh	r3, [r5, r2]
	cmp	r3, #0x1e
	bne	.L1032
	b	.Lfe0
.Lfcc:
	cmp	r2, #2
	bne	.Lfe6
	ldrh	r3, [r5, #8]
	ldr	r0, =0xfff8
	ldr	r2, =0x2ff0000
	add	r3, r0
	strh	r3, [r5, #8]
	lsl	r3, #16
	cmp	r3, r2
	bhi	.L1032
.Lfe0:
	add	r3, r1, #1
	strh	r3, [r5]
	b	.L1032
.Lfe6:
	cmp	r2, #3
	bne	.L102c
	ldr	r3, =ewram_2001002
	mov	r6, #0
	ldrsb	r6, [r3, r6]
	mov	r1, #5
	lsl	r0, r6, #16
	str	r4, [sp]
	bl	_divsi3_RAM
	ldrh	r3, [r5, #6]
	ldr	r2, =0xc2ff0000
	sub	r3, r0
	lsl	r3, #16
	add	r3, r2
	ldr	r2, =0x5fe0000
	ldr	r4, [sp]
	cmp	r3, r2
	bhi	.L1032
	mov	r2, #0x80
	lsl	r2, #7
	add	r3, r0, r2
	strh	r3, [r5, #6]
	mov	r2, #0
	mov	r3, #0x63
	mov	r0, r6
	strh	r3, [r5]
	strh	r2, [r5, #8]
	add	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_957_2008ee0
	ldr	r4, [sp]
	str	r3, [r0, #0x6c]
	b	.L1032
.L102c:
	cmp	r2, #0x63
	bne	.L1032
	mov	r7, #0
.L1032:
	cmp	r7, #0
	beq	.L106a
	ldr	r2, [r4]
	ldrh	r3, [r2, #6]
	ldrh	r1, [r2, #8]
	add	r3, r1
	strh	r3, [r2, #6]
	ldrh	r0, [r2, #6]
	str	r4, [sp]
	bl	OvlFunc_957_2008f6c
	ldr	r4, [sp]
	ldr	r1, [r4]
	ldrh	r3, [r1, #0xa]
	ldrh	r2, [r1, #8]
	mov	r0, #0xc0
	add	r3, r2
	strh	r3, [r1, #0xa]
	lsl	r0, #22
	lsl	r3, #16
	cmp	r3, r0
	bls	.L106a
	mov	r3, #0
	strh	r3, [r1, #0xa]
	mov	r0, #0x87
	bl	__PlaySound
	ldr	r4, [sp]
.L106a:
	ldr	r2, [r4]
	ldrh	r3, [r2, #2]
	add	r3, #1
	strh	r3, [r2, #2]
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008f94

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
.L10d4:
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
	ble	.L10d4
	ldr	r3, =ewram_2001001
	ldrb	r2, [r3]
	mov	r8, r2
	ldr	r2, =.L3f6c
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
	bne	.L113c
	cmp	r7, #0x10
	bne	.L112e
	mov	r3, #1
	mov	r0, #0x6e
	mov	r8, r3
	bl	__PlaySound
	b	.L1134
.L112e:
	mov	r0, #0x72
	bl	__PlaySound
.L1134:
	ldr	r2, =ewram_2001000
	mov	r3, #0
	strb	r3, [r2]
	b	.L1256
.L113c:
	cmp	r3, #1
	bne	.L11da
	cmp	r7, #0x10
	bne	.L114c
	mov	r0, #0x6e
	bl	__PlaySound
	b	.L1256
.L114c:
	cmp	r7, #0x14
	bne	.L11ce
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
.L116e:
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
.L1198:
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
	ble	.L1198
	lsr	r3, r7, #16
	add	r3, r10
	lsl	r3, #16
	add	r4, #1
	asr	r7, r3, #16
	cmp	r4, #4
	ble	.L116e
	mov	r0, #0x1e
	bl	__WaitFrames
	mov	r3, #1
	mov	r9, r3
	b	.L1256
.L11ce:
	mov	r0, #0x72
	bl	__PlaySound
	mov	r2, #0
	mov	r8, r2
	b	.L1256
.L11da:
	cmp	r3, #2
	bne	.L1256
	mov	r3, r6
	add	r3, #0x10
	cmp	r7, r3
	beq	.L1246
	mov	r3, #0
	mov	r0, #0x72
	mov	r8, r3
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__WaitFrames
	mov	r4, #0
.L11f8:
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
	ble	.L1230
.L1216:
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
	bgt	.L1216
.L1230:
	mov	r0, r7
	mov	r1, #0
	mov	r2, #0
	str	r4, [sp]
	bl	__MapActor_SetPos
	ldr	r4, [sp]
	add	r4, #1
	cmp	r4, #4
	ble	.L11f8
	b	.L1256
.L1246:
	mov	r0, #0x6e
	bl	__PlaySound
	mov	r3, #1
	mov	r0, #0x1e
	mov	r9, r3
	bl	__WaitFrames
.L1256:
	ldr	r7, =ewram_2001001
	mov	r2, r8
	mov	r3, r9
	strb	r2, [r7]
	cmp	r3, #0
	bne	.L1264
	b	.L13c0
.L1264:
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
	ldr	r6, =.L3f6c
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
	bhi	.L12d8
	ldr	r3, [r6]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x63
	beq	.L12ca
	mov	r5, r6
.L12ba:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, [r5]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x63
	bne	.L12ba
.L12ca:
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r0, #0x6e
	bl	__PlaySound
	b	.L13ba
.L12d8:
	mov	r3, #0x63
	strb	r3, [r7]
	ldr	r3, [r6]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	beq	.L12f8
	mov	r5, r6
.L12e8:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, [r5]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bne	.L12e8
.L12f8:
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
.L1346:
	mov	r4, #0
.L1348:
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
	ble	.L1348
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
	bgt	.L1346
	mov	r4, #0
.L139a:
	mov	r0, r4
	add	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	str	r4, [sp]
	bl	__MapActor_SetPos
	ldr	r4, [sp]
	add	r4, #1
	cmp	r4, #4
	ble	.L139a
	bl	OvlFunc_957_200bad4
	mov	r0, #0x50
	bl	__PlaySound
.L13ba:
	ldr	r0, =OvlFunc_957_2008f94
	bl	__StopTask
.L13c0:
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

.thumb_func_start OvlFunc_957_20093f8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r0, =0x962
	bl	__SetFlag
	mov	r0, #0xed
	bl	__Func_8078a08
	bl	__CutsceneStart
	bl	__Func_808e118
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x2183
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #0xe8
	mov	r2, #0xa0
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x84
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0x84
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xd0
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x10
	mov	r3, #0xc0
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0x10
	lsl	r3, #8
	bl	__Func_809233c
	mov	r3, #0xc0
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x10
	lsl	r3, #8
	bl	__Func_809233c
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r1, #0x10
	mov	r2, #0x10
	mov	r0, #2
	bl	__Func_809233c
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x84
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x32
	bl	__Func_8092848
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x11
	bl	__PlaySound
	ldr	r2, [r7, #0x50]
	mov	r3, #0
	strh	r3, [r2, #0x1e]
	mov	r0, #8
	mov	r1, #0xa
	mov	r2, #0x46
	bl	__MapActor_Jump
	mov	r6, #0xd
	neg	r6, r6
	mov	r5, #0x1d
.L1566:
	ldr	r1, [r7, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r1, #9]
	mov	r0, #2
	bl	__CutsceneWait
	ldr	r1, [r7, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, r6
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, #2
	sub	r5, #1
	bl	__CutsceneWait
	cmp	r5, #0
	bge	.L1566
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r2, #0xa
	ldrsh	r6, [r0, r2]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0x12
	ldrsh	r5, [r0, r3]
	mov	r1, #0
	mov	r0, #8
	mov	r2, #0
	lsl	r5, #16
	lsl	r6, #16
	bl	__MapActor_SetPos
	mov	r1, r6
	mov	r2, r5
	mov	r0, #9
	bl	__MapActor_SetPos
	ldr	r3, [r7, #0x50]
	mov	r2, #0
	add	r3, #0x26
	strb	r2, [r3]
	mov	r0, #0x1e
	bl	__PlaySound
	mov	r0, #9
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #9
	mov	r1, #0x20
	mov	r2, #0x20
	bl	__Func_8092304
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #2
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #0
	mov	r0, #0
	mov	r2, #0x10
	bl	__Func_80922c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x10
	bl	__Func_80922c4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x10
	bl	__Func_80922c4
	mov	r2, #0x10
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092304
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #2
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #2
	bl	__MapActor_SetAnim
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #9
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0xd
	bl	__MapActor_Jump
	mov	r2, #0x1e
	mov	r0, #1
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0x1e
	bl	__Func_809280c
	mov	r2, #0x28
	mov	r0, #2
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0x1e
	bl	__Func_809280c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #4
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092c40
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1812
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x218a
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	b	.L180c

	.pool_aligned

.L180c:
	bl	__ActorMessage
	b	.L1820
.L1812:
	ldr	r0, =0x218b
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
.L1820:
	ldr	r0, =0x218c
	bl	__MessageID
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #9
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x32
	bl	__Func_8092848
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #2
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0x30
	mov	r0, #2
	mov	r1, #0
	neg	r2, r2
	bl	__Func_8092304
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x8d
	mov	r1, #1
	bl	__Func_8096fb0
	mov	r1, #9
	mov	r0, #2
	bl	__Func_80970f8
	bl	__Func_809728c
	mov	r0, #1
	bl	__FieldMove
	mov	r0, #0x96
	bl	__CutsceneWait
	mov	r0, #2
	bl	__FieldMove
	bl	__Func_8097174
	mov	r1, #1
	mov	r0, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #3
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0xd
	bl	__MapActor_Jump
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0x1e
	bl	__MapActor_Jump
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x32
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #9
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #3
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #9
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0
	mov	r2, #0x30
	mov	r0, #2
	bl	__Func_8092304
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x32
	bl	__Func_8092848
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	b	.L1c1c

	.pool_aligned

.L1c1c:
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x50
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #2
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #3
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1d54
	ldr	r0, =0x21a4
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	b	.L1d62

	.pool_aligned

.L1d54:
	ldr	r0, =0x21a5
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
.L1d62:
	ldr	r0, =0x21a6
	bl	__MessageID
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x32
	bl	__Func_8092848
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092c40
	ldr	r0, =0x21a8
	bl	__MessageID
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	ldr	r3, =iwram_3001ecc
	ldr	r3, [r3]
	ldr	r2, =0x52a
	mov	r9, r3
	add	r2, r9
	mov	r3, #0x20
	strh	r3, [r2]
	ldr	r2, =0x3f42
	ldr	r3, =REG_BLDCNT
	ldr	r7, =REG_BLDALPHA
	mov	r5, #0
	mov	r6, #0x10
	mov	r10, r2
	mov	r8, r3
.L1e22:
	mov	r2, r10
	mov	r3, r8
	strh	r2, [r3]
	lsl	r3, r5, #8
	orr	r3, r6
	strh	r3, [r7]
	mov	r0, #7
	add	r5, #1
	bl	__WaitFrames
	sub	r6, #1
	cmp	r5, #0x10
	ble	.L1e22
	ldr	r2, =0x536
	ldr	r3, =0x3f3f
	add	r2, r9
	strh	r3, [r2]
	mov	r1, #0x8c
	mov	r2, #0x98
	mov	r0, #0xa
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0x94
	mov	r2, #0x98
	lsl	r2, #17
	mov	r0, #0xb
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xa
	bl	__SetCameraTarget
	bl	__Func_8093530
	mov	r0, #0x46
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xb
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #0xa
	bl	__MapActor_SetExtra
	mov	r0, #1
	mov	r1, #0xa
	bl	__MapActor_SetExtra
	mov	r0, #3
	mov	r1, #0xa
	bl	__MapActor_SetExtra
	mov	r0, #2
	mov	r1, #0xa
	bl	__MapActor_SetExtra
	mov	r0, #0xa
	ldr	r1, =0x16666
	ldr	r2, =0xb333
	bl	__MapActor_SetSpeed
	ldr	r2, =0xb333
	mov	r0, #0xb
	ldr	r1, =0x16666
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_957__0200c478
	mov	r0, #0xa
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #3
	bl	__CutsceneWait
	mov	r1, #0x10
	mov	r2, #0
	mov	r0, #0xb
	neg	r1, r1
	bl	__Func_8092304
	mov	r1, r5
	mov	r0, #0xb
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__MapActor_WaitScript
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0xa
	bl	__Func_8092304
	mov	r0, #0xb
	bl	__MapActor_WaitScript
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__MapActor_SetIdle
	mov	r0, #3
	bl	__MapActor_SetIdle
	mov	r0, #2
	bl	__MapActor_SetIdle
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xf8
	mov	r1, #1
	mov	r2, #0xd8
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xa
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0xb
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xa
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0xa
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #9
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #0x10
	mov	r0, #0xb
	bl	__Func_8092304
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #0x10
	mov	r0, #0xa
	bl	__Func_8092304
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xa
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #9
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #4
	mov	r2, #0xd
	bl	__MapActor_Jump
	mov	r2, #0x1e
	mov	r0, #0xb
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #9
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	b	.L2184

	.pool_aligned

.L2184:
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xa
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x46
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0xb
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #9
	bl	__MapActor_Emote
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #0xb
	mov	r2, #0x46
	bl	__Func_8092848
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x32
	bl	__Func_8092848
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x84
	mov	r2, #0x28
	mov	r0, #0xb
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xa
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #9
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #9
	bl	__MapActor_SetExtra
	mov	r0, #1
	mov	r1, #9
	bl	__MapActor_SetExtra
	mov	r0, #3
	mov	r1, #9
	bl	__MapActor_SetExtra
	mov	r0, #2
	mov	r1, #9
	bl	__MapActor_SetExtra
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x10
	mov	r0, #9
	neg	r1, r1
	mov	r2, #0
	bl	__Func_8092304
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x30
	bl	__Func_80922c4
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x30
	bl	__Func_80922c4
	mov	r1, #0x10
	mov	r0, #9
	neg	r1, r1
	mov	r2, #0
	bl	__Func_8092304
	mov	r2, #0x20
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092304
	mov	r0, #0xa
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #0xb
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__MapActor_SetIdle
	mov	r0, #3
	bl	__MapActor_SetIdle
	mov	r0, #2
	bl	__MapActor_SetIdle
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x1e
	mov	r0, #1
	mov	r1, #0
	bl	__Func_809280c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x1e
	mov	r0, #1
	mov	r1, #9
	bl	__Func_809280c
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x46
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r1, =gScript_957__0200c4c8
	mov	r0, #0xb
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_957__0200c518
	mov	r0, #0xa
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_957__0200c57c
	mov	r0, #9
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092848
	mov	r2, #0
	mov	r1, #2
	mov	r0, #3
	bl	__Func_8092848
	mov	r0, #9
	bl	__MapActor_WaitScript
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0
	b	.L2614

	.pool_aligned

.L2614:
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xf8
	mov	r1, #1
	mov	r2, #0xf8
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xa
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	ldr	r1, =0x107
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0xb
	bl	__MapActor_Emote
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #0xb
	mov	r2, #0x3c
	bl	__Func_809280c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0x20
	mov	r2, #0
	bl	__Func_80922c4
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x40
	bl	__Func_80922c4
	mov	r0, #0xa
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_8092304
	mov	r1, #0
	mov	r2, #0x40
	mov	r0, #0xa
	bl	__Func_80922c4
	mov	r0, #9
	bl	__MapActor_WaitMovement
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x40
	bl	__Func_8092304
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0
	mov	r0, #0xb
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r2, =0x3f42
	ldr	r3, =REG_BLDCNT
	ldr	r7, =REG_BLDALPHA
	mov	r5, #0
	mov	r6, #0x10
	mov	r10, r2
	mov	r8, r3
.L2848:
	mov	r2, r10
	mov	r3, r8
	strh	r2, [r3]
	lsl	r3, r6, #8
	orr	r3, r5
	strh	r3, [r7]
	mov	r0, #7
	add	r5, #1
	bl	__WaitFrames
	sub	r6, #1
	cmp	r5, #0x10
	ble	.L2848
	ldr	r2, =0x52a
	mov	r3, #5
	add	r2, r9
	strh	r3, [r2]
	ldr	r2, =0x536
	mov	r3, #0x1f
	add	r2, r9
	strh	r3, [r2]
	mov	r0, #1
	bl	__WaitFrames
	ldr	r2, =0x3f42
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	ldr	r2, =0xc04
	add	r3, #2
	strh	r2, [r3]
	mov	r0, #0
	mov	r1, #1
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2944
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x21ce
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	b	.L2966
.L2944:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x21cf
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
.L2966:
	ldr	r0, =0x21d0
	bl	__MessageID
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2ad8
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x21d7
	bl	__MessageID
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x32
	bl	__Func_8092848
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	b	.L2b6c

	.pool_aligned

.L2ad8:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x21d9
	bl	__MessageID
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x32
	bl	__Func_8092848
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x46
	bl	__MapActor_Emote
.L2b6c:
	mov	r0, #0x11
	bl	__PlaySound
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #3
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2bb0
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.L2bb0:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2be0
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.L2be0:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2c10
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.L2c10:
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__PlayMapMusic
	bl	__CutsceneEnd
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_20093f8

.thumb_func_start OvlFunc_957_200ac44
	push	{r5, lr}
	mov	r0, #0x96
	lsl	r0, #4
	bl	__SetFlag
	mov	r0, #0x18
	bl	__PlaySound
	bl	__CutsceneStart
	bl	__Func_808e118
	ldr	r0, =0x214f
	bl	__MessageID
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xf8
	mov	r1, #1
	mov	r2, #0xb8
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #0xf8
	mov	r2, #0xc0
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x10
	mov	r3, #0xc0
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0x10
	lsl	r3, #8
	bl	__Func_809233c
	mov	r3, #0xc0
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x10
	lsl	r3, #8
	bl	__Func_809233c
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r1, #0x10
	mov	r2, #0x10
	mov	r0, #2
	bl	__Func_809233c
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0x32
	bl	__Func_8092848
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x32
	bl	__Func_8092848
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #8
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_809280c
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x83
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2fe8
	ldr	r0, =0x2164
	bl	__MessageID
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #1
	bl	__Func_8092304
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_8092848
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	b	.L3034

	.pool_aligned

.L2fe8:
	ldr	r0, =0x2168
	bl	__MessageID
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #1
	bl	__Func_8092304
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x1e
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092848
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
.L3034:
	ldr	r5, =0x2165
	mov	r0, r5
	bl	__MessageID
	mov	r0, #2
	ldr	r1, =0x103
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #2
	bl	__Func_8092304
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x1e
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092848
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #3
	mov	r0, #2
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0x10
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092304
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x1e
	mov	r0, #3
	mov	r1, #2
	bl	__Func_8092848
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #2
	bl	__Func_8092304
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	add	r5, #7
	bl	__Func_8092adc
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x84
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x32
	bl	__Func_8092848
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #3
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x32
	bl	__Func_8092848
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x32
	bl	__Func_8092848
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x84
	mov	r2, #0x32
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #3
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0
	mov	r1, #3
	bl	__Func_809280c
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #3
	mov	r0, #2
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x11
	b	.L33f4

	.pool_aligned

.L33f4:
	bl	__PlaySound
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #3
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L3436
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.L3436:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L3466
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.L3466:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L3496
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.L3496:
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__PlayMapMusic
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_200ac44

.section .text.after_b4bc, "ax", %progbits
