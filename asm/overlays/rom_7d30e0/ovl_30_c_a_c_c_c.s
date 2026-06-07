	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_20098e0
	push	{lr}
	mov	r0, #0
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r2, #0xc0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bne	.L191e
	ldr	r0, =0x206
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1912
	mov	r3, #0x2d
	mov	r2, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x2b
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L1912:
	ldr	r0, =0x207
	bl	__Func_8079374
	bl	__Func_8093fa0
	b	.L1972
.L191e:
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r3, r2
	bne	.L192c
	bl	__Func_8093e28
	b	.L1972
.L192c:
	cmp	r3, #0
	bne	.L195a
	ldr	r0, =0x206
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L194e
	mov	r3, #0x2d
	mov	r2, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3a
	mov	r1, #0x24
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L194e:
	ldr	r0, =0x207
	bl	__Func_8079358
	bl	__Func_8093c00
	b	.L1972
.L195a:
	mov	r2, #0x80
	lsl	r2, #8
	cmp	r3, r2
	bne	.L1972
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bne	.L196e
	bl	OvlFunc_948_2009b60
	b	.L1972
.L196e:
	bl	__Func_8093c00
.L1972:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20098e0

