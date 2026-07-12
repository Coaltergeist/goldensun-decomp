	.include "macros.inc"

.thumb_func_start OvlFunc_965_200a4d0
	push	{lr}
	ldr	r0, =0x985
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2538
	ldr	r0, =0x985
	bl	__SetFlag
	mov	r0, #0x9d
	bl	__PlaySound
	bl	__CutsceneStart
	mov	r1, #0x8c
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0xf0
	bl	__MapActor_TravelTo
	mov	r1, #0xa4
	lsl	r1, #1
	mov	r2, #0xf0
	mov	r0, #9
	bl	__MapActor_TravelTo
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r0, #9
	bl	__MapActor_WaitMovement
	mov	r3, #0x11
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x51
	mov	r1, #0xe
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8010704
	bl	__CutsceneEnd
	ldr	r0, =0x989
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2538
	bl	OvlFunc_965_2009b10
.L2538:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200a4d0

.thumb_func_start OvlFunc_965_200a548
	push	{lr}
	ldr	r0, =0x985
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.L25ba
	ldr	r0, =0x985
	bl	__ClearFlag
	mov	r0, #0x9d
	bl	__PlaySound
	bl	__CutsceneStart
	mov	r1, #0x94
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0xf0
	bl	__MapActor_TravelTo
	mov	r1, #0x9c
	lsl	r1, #1
	mov	r2, #0xf0
	mov	r0, #9
	bl	__MapActor_TravelTo
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r0, #9
	bl	__MapActor_WaitMovement
	mov	r3, #0x11
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0xe
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8010704
	bl	__CutsceneEnd
	ldr	r0, =0x301
	bl	__GetFlag
	cmp	r0, #0
	beq	.L25b4
	ldr	r0, =0x301
	bl	__ClearFlag
	b	.L25ba
.L25b4:
	ldr	r0, =0x301
	bl	__SetFlag
.L25ba:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200a548

.thumb_func_start OvlFunc_965_200a5c8
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	sub	sp, #8
	ldr	r5, [r3]
	bl	__CutsceneStart
	ldr	r2, =0xcb8
	add	r5, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L262e
	ldr	r0, =0x985
	bl	__GetFlag
	cmp	r0, #0
	bne	.L263e
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_801776c
	mov	r0, #0x9b
	bl	__PlaySound
	mov	r5, #0x11
	mov	r1, #0x4e
	mov	r2, #1
	mov	r3, #2
	mov	r6, #0x4e
	mov	r0, #0x23
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010788
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x22
	mov	r1, #0x4e
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010788
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	OvlFunc_965_200a4d0
	b	.L263e
.L262e:
	ldr	r0, =0x2756
	bl	__MessageID
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	bl	__ActorMessage
.L263e:
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200a5c8

.thumb_func_start OvlFunc_965_200a660
	push	{r5, r6, lr}
	mov	r5, r0
	ldrh	r3, [r5, #6]
	ldr	r2, =.L2fd4
	lsr	r3, #12
	lsl	r3, #2
	ldr	r0, [r2, r3]
	ldr	r3, =0xffff0000
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	sub	sp, #0xc
	and	r3, r0
	lsl	r0, #16
	mov	r6, sp
	add	r2, r0
	add	r1, r3
	str	r1, [r6]
	str	r2, [r6, #8]
	mov	r3, r5
	add	r3, #0x22
	ldrb	r0, [r3]
	bl	__Func_8011f54
	mov	r1, r5
	str	r0, [r6, #4]
	mov	r0, r6
	bl	OvlFunc_965_200806c
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_965_200a660
