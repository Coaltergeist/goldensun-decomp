	.include "macros.inc"

.thumb_func_start OvlFunc_947_200a580
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x73
	cmp	r2, r3
	bne	.L2598
	ldr	r0, =.L33a8
	b	.L25c2
.L2598:
	ldr	r3, =0x74
	cmp	r2, r3
	bne	.L25a2
	ldr	r0, =.L3438
	b	.L25c2
.L25a2:
	ldr	r3, =0x77
	cmp	r2, r3
	bne	.L25ac
	ldr	r0, =.L3498
	b	.L25c2
.L25ac:
	ldr	r3, =0x79
	cmp	r2, r3
	bne	.L25b6
	ldr	r0, =.L351c
	b	.L25c2
.L25b6:
	ldr	r3, =0x7a
	cmp	r2, r3
	bne	.L25c0
	ldr	r0, =.L3618
	b	.L25c2
.L25c0:
	ldr	r0, =.L339c
.L25c2:
	pop	{r1}
	bx	r1
.func_end OvlFunc_947_200a580

.thumb_func_start OvlFunc_947_200a5f8
	push	{r5, lr}
	bl	__MapActor_GetActor
	mov	r5, r0
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, r5
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r3, r5
	mov	r1, #0
	add	r3, #0x55
	strb	r1, [r3]
	mov	r0, r5
	bl	__Actor_SetSpriteFlags
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r1, #9]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a5f8

.thumb_func_start OvlFunc_947_200a63c
	push	{r5, r6, lr}
	mov	r6, r0
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, =0x1f5
	mov	r5, r0
	add	r0, r6, r3
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2680
	mov	r0, r5
	mov	r1, #5
	bl	__Actor_SetAnim
	ldr	r3, =OvlFunc_947_200a0b8
	ldr	r2, [r5, #8]
	str	r3, [r5, #0x6c]
	ldr	r3, [r5, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x14
	mov	r1, #0xe
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	ldr	r1, =OvlData_947_200ad64
	mov	r0, r6
	bl	__MapActor_SetBehavior
.L2680:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a63c

