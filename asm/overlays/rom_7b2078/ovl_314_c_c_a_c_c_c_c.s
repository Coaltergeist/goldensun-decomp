	.include "macros.inc"

.thumb_func_start OvlFunc_926_200a484
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x89a
	bl	__GetFlag
	cmp	r0, #0
	bne	.L24ac
	ldr	r0, =0x895
	bl	__GetFlag
	cmp	r0, #0
	bne	.L24ac
	ldr	r0, =0x18ad
	mov	r1, #1
	bl	__Func_801776c
	bl	__CutsceneEnd
	b	.L24f2
.L24ac:
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L477a
	mov	r1, #0x4e
	mov	r2, #0xd
	bl	__Func_8010560
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0x99
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_80921c4
	mov	r1, #0x98
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #4
	bl	__Func_8091e9c
	bl	__CutsceneEnd
.L24f2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200a484

.thumb_func_start OvlFunc_926_200a508
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L2528
	mov	r0, #0xd
	bl	__UI_Sanctum
	b	.L2536
.L2528:
	ldr	r0, =0x1a1c
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
.L2536:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200a508

.thumb_func_start OvlFunc_926_200a54c
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	ldr	r0, =0x17df
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200a54c

.thumb_func_start OvlFunc_926_200a574
	push	{lr}
	ldr	r1, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x3c
	cmp	r2, r3
	bne	.L258c
	ldr	r0, =.L4b90
	b	.L25a0
.L258c:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #3
	bne	.L259e
	ldr	r0, =.L5184
	b	.L25a0
.L259e:
	ldr	r0, =.L4d40
.L25a0:
	pop	{r1}
	bx	r1
.func_end OvlFunc_926_200a574

.thumb_func_start OvlFunc_926_200a5b8
	push	{r5, r6, r7, lr}
	mov	r0, #0
	sub	sp, #0x38
	bl	__MapActor_GetActor
	mov	r5, #7
	add	r6, sp, #0x10
	mov	r7, r0
	str	r5, [r6, #4]
	bl	__Random
	lsl	r3, r0, #3
	sub	r3, r0
	lsr	r3, #16
	and	r3, r5
	cmp	r3, #0
	bne	.L25de
	mov	r3, #5
	str	r3, [r6, #4]
.L25de:
	ldr	r3, =0xb333
	str	r3, [r6, #8]
	ldr	r3, =0xcccc
	str	r3, [r6, #0xc]
	bl	__Random
	lsl	r0, #3
	lsr	r0, #16
	lsl	r4, r0, #1
	add	r4, r0
	ldr	r5, =iwram_3001e40
	lsl	r3, r4, #4
	add	r4, r3
	ldr	r2, [r5]
	lsl	r3, r4, #8
	add	r4, r3
	mov	r3, #0xf
	and	r2, r3
	mov	r3, #8
	ldr	r0, [r7, #8]
	sub	r3, r2
	lsl	r3, #16
	ldr	r1, [r7, #0xc]
	add	r0, r3
	mov	r3, #0xc0
	lsl	r3, #13
	add	r1, r3
	mov	r3, #0
	ldr	r2, [r7, #0x10]
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	neg	r4, r4
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r6, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L2640
	mov	r0, #0
	mov	r1, #0xf
	bl	__Func_8092950
	b	.L2648
.L2640:
	mov	r0, #0
	mov	r1, #1
	bl	__Func_8092950
.L2648:
	add	sp, #0x38
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200a5b8

