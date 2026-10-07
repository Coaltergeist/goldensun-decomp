	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_20093c0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, =.Lm956_5b80
	mov	r5, r0
	ldr	r0, [r3]
	ldr	r7, [r5, #8]
	add	r0, #1
	ldr	r5, [r5, #0xc]
	mov	r1, #0xb4
	str	r0, [r3]
	mov	r6, #0x29
	mov	r8, r5
	bl	_modsi3_RAM
	cmp	r0, #0x14
	beq	.Lm956_13f8
	cmp	r0, #0x14
	bgt	.Lm956_13f2
	cmp	r0, #0xa
	beq	.Lm956_13fe
	b	.Lm956_145c
.Lm956_13f2:
	cmp	r0, #0x1e
	beq	.Lm956_13fc
	b	.Lm956_145c
.Lm956_13f8:
	mov	r6, #0x2a
	b	.Lm956_13fe
.Lm956_13fc:
	mov	r6, #0x2b
.Lm956_13fe:
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm956_145c
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm956_141e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r6
	bl	__MapActor_SetPos
.Lm956_141e:
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =0x6666
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, #0x80
	lsl	r3, #11
	add	r2, r7, r3
	str	r2, [r5, #8]
	add	r3, r8
	mov	r2, r5
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	add	r2, #0x64
	mov	r3, #0x19
	strh	r3, [r2]
	add	r2, #2
	mov	r3, #0x80
	strh	r3, [r2]
	ldr	r1, =gScript_956__0200d96c
	mov	r0, r6
	bl	__MapActor_SetBehavior
.Lm956_145c:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_20093c0

