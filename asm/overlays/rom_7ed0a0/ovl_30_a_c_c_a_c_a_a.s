	.include "macros.inc"

.thumb_func_start OvlFunc_964_2009510
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x20
	bne	.L1528
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x32
	beq	.L152c
.L1528:
	bl	OvlFunc_964_2009348
.L152c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009510

.thumb_func_start OvlFunc_964_2009530
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x1e
	bne	.L1548
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x34
	beq	.L154c
.L1548:
	bl	OvlFunc_964_2008df4
.L154c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009530

.thumb_func_start OvlFunc_964_2009550
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	bl	__CutsceneStart
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x2e
	beq	.L156c
	b	.L16d2
.L156c:
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xba
	mov	r2, #0xb8
	lsl	r2, #16
	mov	r1, #0
	mov	r3, #0xfd
	lsl	r0, #18
	bl	OvlFunc_964_20089f4
	ldr	r3, =0x9999
	add	r6, sp, #0x10
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	mov	r3, #7
	str	r3, [r6, #4]
	mov	r8, r0
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xb9
	bl	__PlaySound
	mov	r7, #0
.L15a4:
	mov	r0, #3
	bl	__WaitFrames
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r2, =0xffff0000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	bl	__Random
	mov	r5, r0
	lsl	r5, #4
	lsr	r5, #16
	mov	r3, #0xb8
	lsl	r3, #18
	lsl	r5, #16
	add	r5, r3
	bl	__Random
	lsl	r2, r0, #3
	add	r2, r0
	lsl	r2, #1
	lsr	r2, #16
	mov	r3, #0x80
	lsl	r3, #16
	lsl	r2, #16
	add	r2, r3
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	str	r3, [sp, #8]
	mov	r0, r5
	mov	r1, #0
	mov	r3, #0
	add	r7, #1
	str	r6, [sp, #0xc]
	bl	OvlFunc_964_2008ae8
	cmp	r7, #0xf
	bls	.L15a4
	mov	r3, #0x31
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	mov	r5, #8
	mov	r0, #0x33
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x12
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_SetAnim
	mov	r0, r8
	bl	__DeleteActor
	mov	r3, #0x2e
	str	r3, [sp]
	mov	r0, #0x2d
	mov	r3, #1
	mov	r1, #4
	mov	r2, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r1, #0xba
	mov	r2, #0x88
	lsl	r1, #18
	lsl	r2, #16
	mov	r0, #0x14
	bl	__MapActor_SetPos
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r5, #1
	mov	r3, #8
	mov	r6, #3
	mov	r0, #0x3a
	mov	r1, #8
	mov	r2, #0x31
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0xa0
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r3, #8
	mov	r0, #0x3b
	mov	r1, #8
	mov	r2, #0x31
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0xa0
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x971
	bl	__SetFlag
.L16d2:
	bl	__CutsceneEnd
	add	sp, #0x38
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009550

