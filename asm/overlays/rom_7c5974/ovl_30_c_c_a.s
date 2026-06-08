	.include "macros.inc"

.thumb_func_start OvlFunc_940_200804c
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	bne	.L62
	ldr	r0, =.Lc98
	b	.L72
.L62:
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.L70
	ldr	r0, =.La64
	b	.L72
.L70:
	ldr	r0, =.L824
.L72:
	pop	{r1}
	bx	r1
.func_end OvlFunc_940_200804c

.thumb_func_start OvlFunc_940_200808c
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xffff5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.Lb4
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lb4
	mov	r0, #8
	mov	r1, #0x11
	bl	__Func_80b3284
	b	.Le4
.Lb4:
	bl	__CutsceneStart
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ld2
	ldr	r0, =0x24fb
	bl	__MessageID
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093054
	b	.Le0
.Ld2:
	ldr	r0, =0x1bd0
	bl	__MessageID
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093054
.Le0:
	bl	__CutsceneEnd
.Le4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_200808c

.thumb_func_start OvlFunc_940_20080fc
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1bd5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_8093054
	mov	r0, #0x94
	lsl	r0, #4
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_20080fc

.thumb_func_start OvlFunc_940_2008124
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1bdb
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0x94
	lsl	r0, #4
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_2008124

.thumb_func_start OvlFunc_940_200814c
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x24fe
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8093054
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_200814c

.thumb_func_start OvlFunc_940_200816c
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xffff5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.L188
	mov	r0, #0x15
	bl	__UI_Sanctum
	b	.L1c0
.L188:
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1aa
	bl	__CutsceneStart
	ldr	r0, =0x2507
	bl	__MessageID
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	b	.L1c0
.L1aa:
	bl	__CutsceneStart
	ldr	r0, =0x1bdc
	bl	__MessageID
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
.L1c0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_200816c

.thumb_func_start OvlFunc_940_20081d8
	push	{lr}
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1fc
	bl	__CutsceneStart
	ldr	r0, =0x24fa
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	b	.L212
.L1fc:
	bl	__CutsceneStart
	ldr	r0, =0x1be0
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
.L212:
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_20081d8

.thumb_func_start OvlFunc_940_2008224
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xffff5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.L242
	mov	r0, #0x19
	mov	r1, #0x10
	bl	__Func_80b0278
	b	.L27a
.L242:
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.L264
	bl	__CutsceneStart
	ldr	r0, =0x24f9
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	b	.L27a
.L264:
	bl	__CutsceneStart
	ldr	r0, =0x1bcf
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
.L27a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_2008224

