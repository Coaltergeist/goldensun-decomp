	.include "macros.inc"

.thumb_func_start OvlFunc_924_200a318
	push	{r5, r6, lr}
	sub	sp, #0x20
	bl	__CutsceneStart
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_924_2008758
	cmp	r0, #0
	bne	.L232e
	b	.L24da
.L232e:
	ldr	r3, [r5, #4]
	cmp	r3, #0xa
	beq	.L233a
	cmp	r3, #0xb
	beq	.L236a
	b	.L24da
.L233a:
	mov	r3, sp
	add	r2, sp, #0x18
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	mov	r1, #0xa
	ldr	r3, [r5, #0xc]
	ldr	r0, [r5]
	ldr	r2, [r5, #8]
	bl	OvlFunc_924_20088ec
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x26
	bne	.L2360
	mov	r0, #0xc6
	lsl	r0, #2
	bl	__SetFlag
	b	.L24da
.L2360:
	mov	r0, #0xc6
	lsl	r0, #2
	bl	__ClearFlag
	b	.L24da
.L236a:
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r2, sp
	asr	r6, r3, #20
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r5]
	ldr	r3, [r5, #0xc]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	bl	OvlFunc_924_20088ec
	ldr	r3, [r5, #8]
	asr	r0, r3, #20
	cmp	r0, #0x2f
	bne	.L23c4
	ldr	r0, =0x319
	bl	__SetFlag
	ldr	r0, =0x31a
	bl	__ClearFlag
	ldr	r0, =0x31b
	bl	__ClearFlag
	bl	OvlFunc_924_200a1cc
	cmp	r6, #0x36
	bne	.L23b2
	mov	r0, #0
	bl	OvlFunc_924_200a030
	b	.L23bc
.L23b2:
	cmp	r6, #0x30
	bne	.L23bc
	mov	r0, #1
	bl	OvlFunc_924_200a030
.L23bc:
	mov	r0, #2
	bl	OvlFunc_924_2009db4
	b	.L249a
.L23c4:
	cmp	r0, #0x30
	bne	.L247a
	ldr	r0, =0x31a
	bl	__SetFlag
	ldr	r0, =0x31b
	bl	__ClearFlag
	ldr	r0, =0x319
	bl	__ClearFlag
	bl	OvlFunc_924_200a1cc
	cmp	r0, #0
	beq	.L2468
	mov	r0, #2
	bl	OvlFunc_924_200a030
	mov	r5, #0xd2
	bl	OvlFunc_924_200a304
	mov	r0, #1
	bl	OvlFunc_924_2009db4
	lsl	r5, #18
	mov	r0, #9
	bl	__MapActor_WaitScript
	ldr	r2, =0x3120000
	mov	r1, #0
	mov	r3, #0xdf
	mov	r0, r5
	bl	OvlFunc_common0_18
	mov	r3, #0xdf
	ldr	r2, =0x3320000
	mov	r1, #0
	mov	r0, r5
	bl	OvlFunc_common0_18
	mov	r1, #0xd2
	mov	r2, #0xba
	lsl	r2, #2
	lsl	r1, #2
	mov	r0, #9
	bl	__MapActor_TravelTo
	mov	r0, #5
	bl	__CutsceneWait
	mov	r0, #0xbd
	bl	__PlaySound
	mov	r0, #9
	bl	__MapActor_WaitMovement
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x877
	bl	__SetFlag
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091220
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0xf
	bl	__Func_8091e9c
	b	.L24da
.L2468:
	mov	r0, #2
	bl	OvlFunc_924_200a030
	bl	OvlFunc_924_200a304
	mov	r0, #1
	bl	OvlFunc_924_2009db4
	b	.L249a
.L247a:
	cmp	r0, #0x35
	bne	.L24a2
	ldr	r0, =0x31b
	bl	__SetFlag
	ldr	r0, =0x319
	bl	__ClearFlag
	ldr	r0, =0x31a
	bl	__ClearFlag
	bl	OvlFunc_924_200a1cc
	mov	r0, #0
	bl	OvlFunc_924_200a030
.L249a:
	mov	r0, #0x3c
	bl	__CutsceneWait
	b	.L24da
.L24a2:
	ldr	r0, =0x319
	bl	__ClearFlag
	ldr	r0, =0x31a
	bl	__ClearFlag
	ldr	r0, =0x31b
	bl	__ClearFlag
	bl	OvlFunc_924_200a1cc
	cmp	r6, #0x2f
	bne	.L24c4
	mov	r0, #2
	bl	OvlFunc_924_200a030
	b	.L24ce
.L24c4:
	cmp	r6, #0x30
	bne	.L24ce
	mov	r0, #1
	bl	OvlFunc_924_200a030
.L24ce:
	mov	r0, #0
	bl	OvlFunc_924_2009db4
	mov	r0, #0x3c
	bl	__CutsceneWait
.L24da:
	bl	__CutsceneEnd
	add	sp, #0x20
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200a318

