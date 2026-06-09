	.include "macros.inc"

.thumb_func_start OvlFunc_899_2008048
	push	{r5, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x11
	bgt	.L62
	cmp	r3, #0xf
	blt	.L62
	ldr	r5, =.L5cc8
	b	.L64
.L62:
	ldr	r5, =.L5ab8
.L64:
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_2008048

.thumb_func_start OvlFunc_899_2008080
	push	{lr}
	mov	r0, #0
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r2, #0xa0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bcc	.Lbe
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xe0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bhi	.Lbe
	bl	__Func_8093c00
	mov	r3, #0x2a
	mov	r2, #0x55
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x29
	mov	r1, #0x55
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.Lf6
.Lbe:
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	cmp	r3, r2
	bcc	.Lf6
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xc0
	ldrh	r3, [r0, #6]
	lsl	r2, #7
	cmp	r3, r2
	bhi	.Lf6
	bl	__Func_8093c00
	mov	r3, #0x2a
	mov	r2, #0x55
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2b
	mov	r1, #0x55
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Lf6:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008080

.thumb_func_start OvlFunc_899_20080fc
	push	{lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x2a
	bne	.L12c
	mov	r3, #0x29
	mov	r2, #0x18
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x65
	mov	r1, #0x18
	mov	r2, #3
	mov	r3, #4
	bl	__Func_8010704
	ldr	r0, =0x859
	bl	__SetFlag
.L12c:
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20080fc

.thumb_func_start OvlFunc_899_200813c
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L15e
	mov	r0, #4
	mov	r1, #0x13
	bl	__Func_80b0278
	b	.L17e
.L15e:
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.L170
	ldr	r0, =0x1280
	bl	__MessageID
	b	.L176
.L170:
	ldr	r0, =0x1370
	bl	__MessageID
.L176:
	mov	r0, #0x13
	mov	r1, #0
	bl	__ActorMessage
.L17e:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200813c

.thumb_func_start OvlFunc_899_200819c
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L1be
	mov	r0, #5
	mov	r1, #0x14
	bl	__Func_80b0278
	b	.L1de
.L1be:
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1d0
	ldr	r0, =0x1282
	bl	__MessageID
	b	.L1d6
.L1d0:
	ldr	r0, =0x1372
	bl	__MessageID
.L1d6:
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage
.L1de:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200819c

.thumb_func_start OvlFunc_899_20081fc
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L21e
	mov	r0, #1
	mov	r1, #0x17
	bl	__Func_80b3284
	b	.L23e
.L21e:
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.L230
	ldr	r0, =0x128d
	bl	__MessageID
	b	.L236
.L230:
	ldr	r0, =0x137b
	bl	__MessageID
.L236:
	mov	r0, #0x17
	mov	r1, #0
	bl	__ActorMessage
.L23e:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20081fc

