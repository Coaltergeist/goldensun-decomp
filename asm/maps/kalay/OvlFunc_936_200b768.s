	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_936_200b768
	push	{r5, r6, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r2, #0xa
	ldrsh	r3, [r5, r2]
	ldr	r2, =0xfffffe83
	add	r3, r2
	mov	r6, r0
	cmp	r3, #0xc
	bhi	.Lm936_37ae
	mov	r2, #0x12
	ldrsh	r3, [r5, r2]
	ldr	r2, =0x309
	cmp	r3, r2
	ble	.Lm936_37ae
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	ldr	r4, [r5, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	ldrb	r1, [r4, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	strb	r3, [r4, #9]
	b	.Lm936_37f4
.Lm936_37ae:
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm936_37f4
	mov	r2, #0xa
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xf5
	bgt	.Lm936_37f4
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.Lm936_37f4
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm936_37ea
	mov	r0, #1
	neg	r0, r0
	bl	__Func_8091ff0
	mov	r0, #0xe6
	bl	__PlaySound
	ldr	r0, =0x202
	bl	__SetFlag
.Lm936_37ea:
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	ldr	r2, [r5, #0x10]
	bl	OvlFunc_936_200b864
.Lm936_37f4:
	ldr	r0, =0x303
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm936_383c
	mov	r2, #0xa
	ldrsh	r3, [r6, r2]
	ldr	r2, =0x2c5
	cmp	r3, r2
	bgt	.Lm936_383c
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.Lm936_383c
	ldr	r0, =0x203
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm936_3832
	mov	r0, #1
	neg	r0, r0
	bl	__Func_8091ff0
	mov	r0, #0xe6
	bl	__PlaySound
	ldr	r0, =0x203
	bl	__SetFlag
.Lm936_3832:
	ldr	r0, [r6, #8]
	ldr	r1, [r6, #0xc]
	ldr	r2, [r6, #0x10]
	bl	OvlFunc_936_200b864
.Lm936_383c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200b768

