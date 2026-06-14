	.include "macros.inc"

.thumb_func_start OvlFunc_898_2008cc4
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lcdc
	ldr	r0, =0x123b
	bl	__MessageID
	b	.Lce2
.Lcdc:
	ldr	r0, =0x1348
	bl	__MessageID
.Lce2:
	mov	r0, #0xd
	bl	OvlFunc_898_2008938
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008cc4

.thumb_func_start OvlFunc_898_2008cfc
	push	{lr}
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x64
	ldrh	r2, [r0]
	ldr	r3, =2
	orr	r3, r2
	strh	r3, [r0]
	bl	__CutsceneStart
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.Ld30
	ldr	r0, =0x123c
	bl	__MessageID
	b	.Ld50

	.pool_aligned

.Ld30:
	ldr	r0, =0x1349
	bl	__MessageID
	mov	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ld50
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Ld50:
	mov	r0, #0xe
	bl	OvlFunc_898_2008938
	bl	__CutsceneEnd
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x64
	ldrh	r2, [r0]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008cfc

.thumb_func_start OvlFunc_898_2008d78
	push	{lr}
	mov	r0, #0xf
	bl	__MapActor_GetActor
	add	r0, #0x64
	ldrh	r2, [r0]
	ldr	r3, =2
	orr	r3, r2
	strh	r3, [r0]
	bl	__CutsceneStart
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.Ldac
	ldr	r0, =0x123d
	bl	__MessageID
	b	.Ldb2

	.pool_aligned

.Ldac:
	ldr	r0, =0x134b
	bl	__MessageID
.Ldb2:
	mov	r0, #0xf
	bl	OvlFunc_898_2008938
	bl	__CutsceneEnd
	mov	r0, #0xf
	bl	__MapActor_GetActor
	add	r0, #0x64
	ldrh	r2, [r0]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008d78

.thumb_func_start OvlFunc_898_2008dd4
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.Ldec
	ldr	r0, =0x123e
	bl	__MessageID
	b	.Ldf2
.Ldec:
	ldr	r0, =0x134c
	bl	__MessageID
.Ldf2:
	mov	r0, #0x10
	bl	OvlFunc_898_2008938
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008dd4

.thumb_func_start OvlFunc_898_2008e0c
	push	{r5, lr}
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r3, #1
	add	r5, #0x5b
	strb	r3, [r5]
	bl	__CutsceneStart
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.Le40
	ldr	r0, =0x1241
	bl	__MessageID
	mov	r0, #0x13
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #2
	bl	__CutsceneWait
	b	.Le58
.Le40:
	ldr	r0, =0x858
	bl	__GetFlag
	cmp	r0, #0
	beq	.Le52
	ldr	r0, =0x13ab
	bl	__MessageID
	b	.Le58
.Le52:
	ldr	r0, =0x134e
	bl	__MessageID
.Le58:
	mov	r0, #0x13
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	mov	r3, #0
	strb	r3, [r5]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008e0c

