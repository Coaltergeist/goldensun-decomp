	.include "macros.inc"

.thumb_func_start OvlFunc_883_200da24
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0xee4
	mov	r1, #1
	bl	__Func_801776c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200da24

.thumb_func_start OvlFunc_883_200da40
	push	{r5, lr}
	ldr	r0, =0x241
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5a6c
	mov	r0, #0x83
	lsl	r0, #1
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	bne	.L5a8a
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x5b
	strb	r5, [r0]
	ldr	r0, =0x241
	bl	__ClearFlag
	b	.L5a8a
.L5a6c:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5a8a
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	ldr	r0, =0x241
	bl	__SetFlag
.L5a8a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200da40

.thumb_func_start OvlFunc_883_200da94
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5ab0
	mov	r0, #0x15
	bl	__MapActor_GetActor
	b	.L5ab6
.L5ab0:
	mov	r0, #0x14
	bl	__MapActor_GetActor
.L5ab6:
	cmp	r0, #0
	beq	.L5ad4
	mov	r2, #0xc8
	ldr	r3, [r5, #0xc]
	lsl	r2, #16
	cmp	r3, r2
	ble	.L5acc
	mov	r2, r0
	add	r2, #0x23
	mov	r3, #3
	b	.L5ad2
.L5acc:
	mov	r2, r0
	add	r2, #0x23
	mov	r3, #1
.L5ad2:
	strb	r3, [r2]
.L5ad4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200da94

.thumb_func_start OvlFunc_883_200dae0
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r0, [r6, #0x30]
	ldr	r7, [r6, #0x50]
	bl	__sin
	lsl	r5, r0, #1
	cmp	r5, #0
	ble	.L5af4
	neg	r5, r5
.L5af4:
	ldr	r0, [r6, #0x30]
	bl	__cos
	ldr	r3, [r6, #0x38]
	lsl	r0, #1
	add	r3, r0
	str	r3, [r6, #8]
	ldr	r0, [r6, #0x30]
	ldr	r3, [r6, #0x3c]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r5
	add	r0, r2
	str	r3, [r6, #0xc]
	bl	__cos
	cmp	r0, #0
	bge	.L5b1a
	add	r0, #7
.L5b1a:
	asr	r3, r0, #3
	strh	r3, [r7, #0x1e]
	bl	__Random
	mov	r5, r0
	bl	__Random
	lsl	r5, #9
	lsl	r0, #9
	ldr	r3, [r6, #0x30]
	lsr	r0, #16
	lsr	r5, #16
	add	r5, r0
	mov	r2, #0x80
	add	r3, r5
	lsl	r2, #3
	add	r3, r2
	str	r3, [r6, #0x30]
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_883_200dae0

.thumb_func_start OvlFunc_883_200db48
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r6, [r7, #0x50]
	mov	r2, #0xd
	ldrb	r3, [r6, #9]
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	ldrb	r1, [r6, #5]
	orr	r2, r3
	mov	r3, #0x21
	neg	r3, r3
	and	r3, r1
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r2, r3
	strb	r2, [r6, #9]
	mov	r2, #0
	mov	r8, r2
	mov	r3, r6
	add	r3, #0x27
	mov	r2, r8
	strb	r2, [r3]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, #0x5c
	add	r3, r7
	mov	r2, r8
	strb	r2, [r3]
	mov	r10, r3
	mov	r3, r7
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L5bac
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #14
	add	r3, r2
	str	r3, [r7, #0xc]
.L5bac:
	mov	r1, r7
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #1
	strb	r3, [r1]
	mov	r9, r2
	mov	r3, r7
	mov	r2, r9
	add	r3, #0x61
	mov	r1, #0xc1
	strb	r2, [r3]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__galloc_iwram
	mov	r5, r0
	mov	r0, #0xb5
	bl	__LoadItemIcon
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r6, #0x1c]
	bl	__UploadSpriteGFX
	mov	r0, #0x11
	bl	__gfree
	ldr	r3, [r7, #8]
	str	r3, [r7, #0x38]
	ldr	r3, [r7, #0xc]
	mov	r2, r8
	str	r2, [r7, #0x30]
	str	r3, [r7, #0x3c]
	mov	r2, r10
	mov	r3, r9
	strb	r3, [r2]
	ldr	r3, =OvlFunc_883_200dae0
	str	r3, [r7, #0x6c]
	mov	r3, r7
	add	r3, #0x56
	mov	r2, r8
	strb	r2, [r3]
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200db48

