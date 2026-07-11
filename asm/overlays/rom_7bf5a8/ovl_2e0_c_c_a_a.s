	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_935_20084d0
	push	{lr}
	ldr	r0, =0x9aa
	bl	__GetFlag
	cmp	r0, #0
	bne	.L4fe
	bl	OvlFunc_935_2008458
	cmp	r0, #0
	beq	.L4fe
	ldr	r0, =0x207
	bl	__GetFlag
	cmp	r0, #0
	bne	.L4fe
	mov	r0, #0x50
	bl	__PlaySound
	bl	OvlFunc_935_2008410
	ldr	r0, =0x9aa
	bl	__SetFlag
.L4fe:
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_20084d0

.thumb_func_start OvlFunc_935_200850c
	push	{r5, lr}
	mov	r0, #0x10
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r3, #0x17
	mov	r2, #0x20
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r5, #0
	beq	.L544
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	mov	r2, r5
	strb	r3, [r0]
	add	r2, #0x23
	mov	r3, #1
	strb	r3, [r2]
.L544:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_200850c

.thumb_func_start OvlFunc_935_2008554
	push	{r5, lr}
	mov	r0, #0x11
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r3, #0x17
	mov	r2, #0x22
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r5, #0
	beq	.L58c
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	mov	r2, r5
	strb	r3, [r0]
	add	r2, #0x23
	mov	r3, #1
	strb	r3, [r2]
.L58c:
	ldr	r0, =0x201
	bl	__SetFlag
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_2008554

.thumb_func_start OvlFunc_935_20085a0
	push	{r5, lr}
	mov	r0, #0x12
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r3, #0x18
	mov	r2, #0x22
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r5, #0
	beq	.L5d8
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	mov	r2, r5
	strb	r3, [r0]
	add	r2, #0x23
	mov	r3, #1
	strb	r3, [r2]
.L5d8:
	ldr	r0, =0x202
	bl	__SetFlag
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_20085a0

.thumb_func_start OvlFunc_935_20085ec
	push	{r5, lr}
	mov	r0, #0x13
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r3, #0x1a
	mov	r2, #0x20
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r5, #0
	beq	.L62c
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	mov	r2, r5
	strb	r3, [r0]
	add	r2, #0x23
	mov	r3, #1
	strb	r3, [r2]
.L62c:
	ldr	r0, =0x203
	bl	__SetFlag
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_20085ec

.thumb_func_start OvlFunc_935_2008640
	push	{r5, lr}
	mov	r0, #0x14
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r3, #0x1a
	mov	r2, #0x22
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r5, #0
	beq	.L680
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	mov	r2, r5
	strb	r3, [r0]
	add	r2, #0x23
	mov	r3, #1
	strb	r3, [r2]
.L680:
	mov	r0, #0x81
	lsl	r0, #2
	bl	__SetFlag
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_2008640

.thumb_func_start OvlFunc_935_2008690
	push	{r5, lr}
	mov	r0, #0x15
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r3, #0x1c
	mov	r2, #0x21
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r5, #0
	beq	.L6d0
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	mov	r2, r5
	strb	r3, [r0]
	add	r2, #0x23
	mov	r3, #1
	strb	r3, [r2]
.L6d0:
	ldr	r0, =0x205
	bl	__SetFlag
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_2008690

