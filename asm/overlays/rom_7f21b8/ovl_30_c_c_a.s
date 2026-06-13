	.include "macros.inc"

.thumb_func_start OvlFunc_967_2008084
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb4
	cmp	r2, r3
	bne	.Laa
	ldr	r0, =0x9a7
	bl	__GetFlag
	cmp	r0, #0
	beq	.La6
	ldr	r0, =.L1974
	b	.Lac
.La6:
	ldr	r0, =.L189c
	b	.Lac
.Laa:
	ldr	r0, =.L1734
.Lac:
	pop	{r1}
	bx	r1
.func_end OvlFunc_967_2008084

.thumb_func_start OvlFunc_967_20080c8
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.Lf8
	mov	r0, #0x20
	mov	r1, r6
	bl	__Func_80b0278
	b	.L14a

	.pool_aligned

.Lf8:
	ldr	r0, =0x9a7
	bl	__GetFlag
	cmp	r0, #0
	beq	.L112
	ldr	r0, =0x28f0
	bl	__MessageID
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	b	.L14a
.L112:
	ldr	r5, =0x26e3
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L13c
	mov	r0, #0xa
	bl	__CutsceneWait
	add	r0, r5, #1
	bl	__MessageID
	b	.L142
.L13c:
	add	r0, r5, #2
	bl	__MessageID
.L142:
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
.L14a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_967_20080c8

.thumb_func_start OvlFunc_967_200815c
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.L18c
	mov	r0, #0x21
	mov	r1, r5
	bl	__Func_80b0278
	b	.L1b4

	.pool_aligned

.L18c:
	ldr	r0, =0x9a7
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1a6
	ldr	r0, =0x28f2
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	b	.L1b4
.L1a6:
	ldr	r0, =0x26e7
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
.L1b4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_967_200815c

.thumb_func_start OvlFunc_967_20081c8
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.L1f8
	mov	r0, #0x22
	mov	r1, r5
	bl	__Func_80b0278
	b	.L220

	.pool_aligned

.L1f8:
	ldr	r0, =0x9a7
	bl	__GetFlag
	cmp	r0, #0
	beq	.L212
	ldr	r0, =0x28f4
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	b	.L220
.L212:
	ldr	r0, =0x26e9
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
.L220:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_967_20081c8

.thumb_func_start OvlFunc_967_2008234
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.L25c
	mov	r0, r5
	bl	__UI_Sanctum
	b	.L292
.L25c:
	ldr	r0, =0x9a7
	bl	__GetFlag
	cmp	r0, #0
	beq	.L284
	ldr	r0, =0x28fc
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	b	.L292

	.pool_aligned

.L284:
	ldr	r0, =0x26f6
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
.L292:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_967_2008234

.thumb_func_start OvlFunc_967_200829c
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.L2cc
	mov	r0, #0xb
	mov	r1, r5
	bl	__Func_80b3284
	b	.L2f4

	.pool_aligned

.L2cc:
	ldr	r0, =0x9a7
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2e6
	ldr	r0, =0x28f6
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	b	.L2f4
.L2e6:
	ldr	r0, =0x26eb
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
.L2f4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_967_200829c

.thumb_func_start OvlFunc_967_2008308
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	ldrh	r5, [r0, #6]
	lsl	r3, #6
	add	r5, r3
	mov	r0, #0xc0
	ldr	r3, =0xffffc000
	lsl	r0, #2
	and	r5, r3
	bl	__SetFlag
	bl	__CutsceneStart
	bl	__Func_808e118
	ldr	r0, =0x26ec
	bl	__MessageID
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0x32
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_809280c
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	b	.L360

	.pool_aligned

.L360:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	lsl	r5, #16
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	asr	r5, #16
	mov	r3, #0x80
	lsl	r5, #16
	lsl	r3, #24
	cmp	r5, r3
	bne	.L3de
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x10
	bl	__Func_8092304
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
.L3de:
	ldr	r1, =ActorCmd_ARRAY_944__02009314
	mov	r0, #0xe
	bl	__MapActor_SetBehavior
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_967_2008308

