	.include "macros.inc"

.thumb_func_start OvlFunc_962_200806c
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
	bne	.L9c
	mov	r0, #0x1f
	mov	r1, r6
	bl	__Func_80b0278
	b	.Lee

	.pool_aligned

.L9c:
	ldr	r0, =0x96f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Le0
	ldr	r5, =0x261c
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Ld0
	mov	r0, #0xa
	bl	__CutsceneWait
	add	r0, r5, #1
	bl	__MessageID
	b	.Ld6
.Ld0:
	add	r0, r5, #2
	bl	__MessageID
.Ld6:
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	b	.Lee
.Le0:
	ldr	r0, =0x25cf
	bl	__MessageID
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
.Lee:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_962_200806c

.thumb_func_start OvlFunc_962_2008100
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
	bne	.L130
	mov	r0, #0xa
	mov	r1, r5
	bl	__Func_80b3284
	b	.L158

	.pool_aligned

.L130:
	ldr	r0, =0x96f
	bl	__GetFlag
	cmp	r0, #0
	beq	.L14a
	ldr	r0, =0x2620
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	b	.L158
.L14a:
	ldr	r0, =0x25d1
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
.L158:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_962_2008100

.thumb_func_start OvlFunc_962_200816c
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
	bne	.L194
	mov	r0, r5
	bl	__UI_Sanctum
	b	.L1ca
.L194:
	ldr	r0, =0x96f
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1bc
	ldr	r0, =0x262c
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	b	.L1ca

	.pool_aligned

.L1bc:
	ldr	r0, =0x25d5
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
.L1ca:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_962_200816c
