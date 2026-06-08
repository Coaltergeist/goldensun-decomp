	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_2008ddc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r3
	ldr	r3, =iwram_3001e70
	mov	r8, r1
	mov	r6, r2
	ldr	r7, [r3]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =.L2ce0
	mov	r4, #0
	ldr	r3, [r3, r4]
	cmp	r2, r3
	beq	.Le1e
.Le02:
	mov	r3, #7
	add	r4, #1
	str	r3, [r5]
	cmp	r4, #5
	bhi	.Le20
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	ldr	r2, =.L2ce0
	lsl	r3, r4, #2
	ldr	r3, [r2, r3]
	cmp	r1, r3
	bne	.Le02
.Le1e:
	str	r4, [r5]
.Le20:
	ldr	r2, [r5]
	cmp	r2, #6
	bls	.Le2a
	mov	r0, #0
	b	.Leb2
.Le2a:
	ldr	r3, [r0, #8]
	str	r3, [r5, #8]
	ldr	r3, [r0, #0xc]
	str	r3, [r5, #0xc]
	ldr	r3, [r0, #0x10]
	lsl	r1, r2, #4
	str	r3, [r5, #0x10]
	ldr	r0, =gScript_884__0200acf8
	add	r3, r1, #4
	ldr	r2, [r0, r3]
	cmp	r2, #0
	bge	.Le44
	neg	r2, r2
.Le44:
	mov	r3, r1
	add	r3, #0xc
	ldr	r3, [r0, r3]
	cmp	r3, #0
	bge	.Le50
	neg	r3, r3
.Le50:
	add	r3, r2, r3
	asr	r3, #4
	str	r3, [r6]
	ldr	r3, [r5]
	lsl	r3, #4
	ldr	r2, [r0, r3]
	cmp	r2, #0
	bge	.Le62
	neg	r2, r2
.Le62:
	add	r3, #8
	ldr	r3, [r0, r3]
	cmp	r3, #0
	bge	.Le6c
	neg	r3, r3
.Le6c:
	add	r3, r2, r3
	asr	r3, #4
	mov	r1, r8
	str	r3, [r1]
	ldr	r2, [r5]
	lsl	r2, #4
	ldr	r3, [r0, r2]
	ldr	r1, [r5, #8]
	lsl	r3, #16
	add	r1, r3
	str	r1, [r5, #8]
	add	r2, #4
	ldr	r3, [r0, r2]
	ldr	r2, [r5, #0x10]
	lsl	r3, #16
	add	r2, r3
	asr	r2, #20
	str	r2, [r5, #0x10]
	asr	r1, #20
	mov	r2, #0x9e
	str	r1, [r5, #8]
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r3, [r3]
	ldr	r2, [sp, #0x14]
	asr	r3, #20
	mov	r1, #0xa0
	str	r3, [r2]
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r3, [r3]
	ldr	r2, [sp, #0x18]
	asr	r3, #20
	str	r3, [r2]
	mov	r0, #1
.Leb2:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_947_2008ddc

.thumb_func_start OvlFunc_947_2008ec8
	push	{r5, r6, r7, lr}
	sub	sp, #0x30
	mov	r5, r0
	bl	__MapActor_GetActor
	add	r3, sp, #0xc
	add	r6, sp, #0x18
	str	r3, [sp]
	add	r3, sp, #8
	mov	r7, r0
	str	r3, [sp, #4]
	add	r1, sp, #0x14
	add	r2, sp, #0x10
	mov	r0, r5
	mov	r3, r6
	bl	OvlFunc_947_2008ddc
	cmp	r0, #0
	bne	.Lef2
	mov	r0, #0
	b	.Lf4e
.Lef2:
	ldr	r1, [r6, #8]
	ldr	r0, [r6, #0x10]
	ldr	r2, [sp, #0x14]
	ldr	r3, [sp, #0x10]
	str	r1, [sp]
	str	r0, [sp, #4]
	mov	r1, #2
	mov	r0, #2
	bl	__Func_8010704
	mov	r0, r7
	mov	r1, #4
	bl	__Actor_SetAnim
	mov	r1, r7
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	ldr	r1, [sp, #0x14]
	ldr	r0, [sp, #0x10]
	cmp	r1, r0
	bls	.Lf38
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0x10]
	add	r2, #0x20
	str	r1, [sp]
	str	r0, [sp, #4]
	add	r3, #2
	mov	r0, #0x46
	mov	r1, #0x28
	bl	__CopyMapTiles
	b	.Lf4c
.Lf38:
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0x10]
	add	r2, #0x20
	str	r1, [sp]
	str	r0, [sp, #4]
	add	r3, #2
	mov	r0, #0x44
	mov	r1, #0x28
	bl	__CopyMapTiles
.Lf4c:
	mov	r0, #1
.Lf4e:
	add	sp, #0x30
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_947_2008ec8

.thumb_func_start OvlFunc_947_2008f58
	push	{r5, r6, r7, lr}
	sub	sp, #0x30
	mov	r5, r0
	bl	__MapActor_GetActor
	add	r3, sp, #0xc
	add	r6, sp, #0x18
	str	r3, [sp]
	add	r3, sp, #8
	mov	r7, r0
	str	r3, [sp, #4]
	add	r1, sp, #0x14
	add	r2, sp, #0x10
	mov	r0, r5
	mov	r3, r6
	bl	OvlFunc_947_2008ddc
	cmp	r0, #0
	bne	.Lf82
	mov	r0, #0
	b	.Lfc4
.Lf82:
	ldr	r4, [r6, #0x10]
	ldr	r0, [sp, #0xc]
	ldr	r5, [r6, #8]
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #0x14]
	add	r1, r4
	ldr	r3, [sp, #0x10]
	add	r0, r5
	str	r5, [sp]
	str	r4, [sp, #4]
	bl	__Func_8010704
	ldr	r0, [sp, #0x10]
	ldr	r2, [r6, #0x10]
	ldr	r1, [r6, #8]
	str	r0, [sp]
	mov	r0, #0xff
	ldr	r3, [sp, #0x14]
	str	r0, [sp, #4]
	mov	r0, #0
	bl	OvlFunc_947_2008528
	mov	r0, r7
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r1, r7
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfd
	and	r3, r2
	strb	r3, [r1]
	mov	r0, #1
.Lfc4:
	add	sp, #0x30
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_947_2008f58

.thumb_func_start OvlFunc_947_2008fcc
	push	{r5, lr}
	mov	r5, r3
	ldr	r3, =iwram_3001e70
	mov	r4, r2
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L1008
	lsl	r3, r0, #1
	add	r3, r0
	mov	r0, #0x98
	lsl	r0, #1
	lsl	r3, #4
	add	r3, r0
	lsl	r0, r4, #7
	ldr	r2, [r2, r3]
	add	r0, r1, r0
	lsl	r0, #2
	add	r0, r2, r0
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x84000001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.L1000:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.L1000
.L1008:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_2008fcc

.thumb_func_start OvlFunc_947_200901c
	push	{r5, lr}
	mov	r5, r3
	ldr	r3, =iwram_3001e70
	ldr	r4, [r3]
	cmp	r4, #0
	beq	.L1068
	lsl	r3, r0, #1
	add	r3, r0
	mov	r0, #0x98
	lsl	r0, #1
	lsl	r3, #4
	add	r3, r0
	ldr	r0, [r4, r3]
	lsl	r3, r2, #7
	add	r3, r1, r3
	lsl	r3, #2
	add	r0, r3
	ldr	r3, [r5]
	ldrb	r1, [r0, #1]
	lsl	r3, #18
	mov	r2, #0x31
	lsr	r3, #30
	neg	r2, r2
	lsl	r3, #4
	and	r2, r1
	orr	r2, r3
	strb	r2, [r0, #1]
	ldrb	r3, [r5, #1]
	mov	r1, #0x3f
	lsr	r3, #6
	lsl	r3, #6
	and	r2, r1
	orr	r2, r3
	strb	r2, [r0, #1]
	ldrb	r3, [r5, #2]
	strb	r3, [r0, #2]
	ldrb	r3, [r5, #3]
	strb	r3, [r0, #3]
.L1068:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200901c

.thumb_func_start OvlFunc_947_2009074
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r11, r1
	bl	__MapActor_GetActor
	mov	r1, #0
	mov	r6, r0
	str	r1, [sp, #4]
	mov	r9, r1
	bl	__Actor_SetSpriteFlags
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	mov	r0, #2
	bl	__Func_8011f54
	mov	r4, r0
	mov	r3, r4
	cmp	r4, #0
	bge	.L10ac
	ldr	r2, =0xfffff
	add	r3, r4, r2
.L10ac:
	asr	r5, r3, #20
	mov	r10, r5
	cmp	r5, #0
	bge	.L10b6
	neg	r5, r5
.L10b6:
	mov	r3, #0x22
	add	r3, r6
	add	r5, #1
	mov	r7, #0
	mov	r8, r3
.L10c0:
	ldr	r3, [r6, #0x10]
	mov	r1, r8
	lsl	r2, r7, #20
	ldrb	r0, [r1]
	add	r2, r3
	ldr	r1, [r6, #8]
	str	r4, [sp]
	bl	__Func_8011f54
	mov	r3, r0
	ldr	r4, [sp]
	cmp	r0, #0
	bge	.L10de
	ldr	r2, =0xfffff
	add	r3, r0, r2
.L10de:
	asr	r0, r3, #20
	cmp	r10, r0
	bge	.L1136
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	asr	r3, #20
	lsl	r3, #20
	lsl	r1, #12
	add	r2, r3, r1
	mov	r3, r11
	cmp	r3, #0
	bne	.L110c
	ldr	r3, [r6, #0x10]
	add	r7, #2
	asr	r3, #20
	add	r3, r7, r3
	mov	r1, #0x80
	lsl	r3, #20
	lsl	r1, #10
	add	r7, r3, r1
	lsl	r5, r0, #20
	mov	r3, #0xdf
	b	.L111e
.L110c:
	ldr	r3, [r6, #0x10]
	add	r7, #3
	asr	r3, #20
	add	r3, r7, r3
	ldr	r1, =0xfffe0000
	lsl	r3, #20
	add	r7, r3, r1
	lsl	r5, r0, #20
	mov	r3, #0xfd
.L111e:
	mov	r0, r2
	mov	r1, r5
	mov	r2, r7
	bl	OvlFunc_common0_18
	ldr	r3, [r6, #0x10]
	sub	r3, r7
	mov	r9, r0
	add	r4, r3, r5
	mov	r2, #1
	str	r2, [sp, #4]
	b	.L113c
.L1136:
	add	r7, #1
	cmp	r7, r5
	bls	.L10c0
.L113c:
	mov	r0, r6
	mov	r1, r4
	bl	OvlFunc_947_2008da8
	mov	r3, #0
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	str	r3, [r6, #0x10]
	mov	r3, r9
	cmp	r3, #0
	beq	.L1158
	mov	r0, r9
	bl	__DeleteActor
.L1158:
	ldr	r0, [sp, #4]
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_947_2009074

.thumb_func_start OvlFunc_947_2009174
	push	{r5, r6, r7, lr}
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r7, =0x1999
	mov	r6, #0
.L1188:
	cmp	r6, #0x1f
	bhi	.L11ac
	mov	r0, #1
	bl	__WaitFrames
	ldr	r2, [r5, #0x1c]
	ldr	r1, =0xffffe667
	ldr	r3, [r5, #0xc]
	add	r2, r1
	ldr	r1, =0xffff3334
	add	r3, r1
	str	r3, [r5, #0xc]
	ldr	r3, =0x1998
	str	r2, [r5, #0x1c]
	add	r6, #1
	cmp	r2, r3
	bgt	.L1188
	str	r7, [r5, #0x1c]
.L11ac:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_2009174

.thumb_func_start OvlFunc_947_20091c4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0
	sub	sp, #0x38
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001e40
	ldr	r7, [r3]
	mov	r3, #3
	and	r7, r3
	mov	r10, r0
	cmp	r7, #0
	bne	.L124c
	add	r2, sp, #0x10
	mov	r3, #0xa
	str	r3, [r2, #4]
	ldr	r3, =0xb333
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r8, r2
	bl	__Random
	lsl	r3, r0, #4
	add	r3, r0
	mov	r2, r10
	lsr	r3, #16
	ldr	r6, [r2, #8]
	sub	r3, #8
	lsl	r3, #16
	add	r6, r3
	bl	__Random
	lsl	r3, r0, #4
	add	r3, r0
	mov	r2, r10
	lsr	r3, #16
	ldr	r5, [r2, #0x10]
	sub	r3, #8
	lsl	r3, #16
	add	r5, r3
	bl	__Random
	mov	r3, r0
	lsl	r0, r3, #2
	add	r0, r3
	lsr	r0, #16
	mov	r3, #0xc0
	lsl	r3, #10
	lsl	r0, #16
	add	r0, r3
	mov	r1, #0xa
	bl	_divsi3_RAM
	ldr	r3, =0x90001
	mov	r2, r10
	ldr	r1, [r2, #0xc]
	str	r3, [sp, #8]
	mov	r3, r8
	str	r0, [sp]
	str	r3, [sp, #0xc]
	mov	r0, r6
	mov	r2, r5
	mov	r3, #0
	str	r7, [sp, #4]
	bl	OvlFunc_common0_10c
.L124c:
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_20091c4

.thumb_func_start OvlFunc_947_2009268
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0x55
	mov	r5, r0
	add	r1, r5
	ldrb	r2, [r1]
	ldrh	r3, [r5, #6]
	mov	r10, r1
	mov	r1, #0x80
	lsl	r1, #6
	add	r7, r3, r1
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r9, r2
	and	r7, r3
	mov	r2, #0xf9
	ldr	r3, =gState
	lsl	r2, #1
	add	r3, r2
	ldrb	r3, [r3]
	mov	r0, #0
	cmp	r3, #0
	bne	.L1398
	ldr	r3, [r5, #8]
	ldr	r1, =0xfff00000
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r1
	mov	r6, sp
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	mov	r0, #0x80
	and	r3, r1
	add	r3, r2
	lsl	r0, #13
	mov	r8, r1
	mov	r2, r6
	mov	r1, r7
	str	r3, [r6, #8]
	bl	__vec3_translate
	mov	r0, r5
	mov	r1, r6
	bl	__TestCollision
	cmp	r0, #1
	beq	.L1396
	mov	r0, r6
	mov	r1, r5
	bl	OvlFunc_947_2008350
	cmp	r0, #0
	bne	.L1396
	ldr	r3, [r5, #8]
	mov	r2, r8
	mov	r1, #0x80
	lsl	r1, #12
	and	r3, r2
	add	r3, r1
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	mov	r0, #0x80
	and	r3, r2
	add	r3, r1
	lsl	r0, #14
	mov	r1, r7
	mov	r2, r6
	str	r3, [r6, #8]
	bl	__vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	OvlFunc_947_2008350
	cmp	r0, #0
	bne	.L1396
	mov	r0, r5
	mov	r1, r6
	bl	__TestCollision
	cmp	r0, #0
	bne	.L1396
	bl	__CutsceneStart
	mov	r1, #6
	mov	r0, r5
	bl	__Actor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, r5
	mov	r1, #7
	bl	__Actor_SetAnim
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	mov	r3, r10
	ldrb	r2, [r3]
	mov	r3, #0x7e
	and	r3, r2
	mov	r1, r10
	strb	r3, [r1]
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r2, #2
	ldrsh	r1, [r6, r2]
	mov	r0, #0
	mov	r3, #0xa
	ldrsh	r2, [r6, r3]
	bl	__Func_8092158
	mov	r0, r5
	mov	r1, #6
	bl	__Actor_SetAnim
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r1, r9
	mov	r2, r10
	strb	r1, [r2]
	bl	__CutsceneEnd
	mov	r0, #1
	b	.L1398
.L1396:
	mov	r0, #0
.L1398:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_947_2009268

.thumb_func_start OvlFunc_947_20093b0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	ldr	r6, [r5, #0x44]
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #0x48]
	add	r3, r6
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	mov	r8, r2
	add	r3, r8
	ldr	r2, [r5, #0x4c]
	str	r3, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	mov	r10, r2
	add	r3, r10
	str	r3, [r5, #0x10]
	mov	r0, r6
	mov	r1, #0xa
	bl	_divsi3_RAM
	sub	r6, r0
	str	r6, [r5, #0x44]
	mov	r0, r8
	mov	r1, #3
	bl	_divsi3_RAM
	mov	r3, r8
	sub	r3, r0
	str	r3, [r5, #0x48]
	mov	r0, r10
	mov	r1, #0xa
	bl	_divsi3_RAM
	mov	r2, r10
	sub	r2, r0
	str	r2, [r5, #0x4c]
	ldr	r3, [r5, #0x18]
	ldr	r2, [r5, #0x30]
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r2, [r5, #0x34]
	ldr	r3, [r5, #0x1c]
	add	r3, r2
	str	r3, [r5, #0x1c]
	ldr	r1, [r5, #0x50]
	add	r5, #0x64
	ldrh	r3, [r1, #0x1e]
	ldrh	r2, [r5]
	add	r3, r2
	strh	r3, [r1, #0x1e]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_20093b0

