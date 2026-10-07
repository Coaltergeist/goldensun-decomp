	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_2008ec8
	push	{r5, r6, r7, lr}
	sub	sp, #0x30
	mov	r5, r0
	bl	__MapActor_GetActor
	add	r3, sp, #0xc
	add	r6, sp, #0x18
	str	r3, [sp]
	add	r3, sp, #8
	mov	r7, r0
	str	r3, [sp, #4]
	add	r1, sp, #0x14
	add	r2, sp, #0x10
	mov	r0, r5
	mov	r3, r6
	bl	OvlFunc_947_2008ddc
	cmp	r0, #0
	bne	.Lm947_ef2
	mov	r0, #0
	b	.Lm947_f4e
.Lm947_ef2:
	ldr	r1, [r6, #8]
	ldr	r0, [r6, #0x10]
	ldr	r2, [sp, #0x14]
	ldr	r3, [sp, #0x10]
	str	r1, [sp]
	str	r0, [sp, #4]
	mov	r1, #2
	mov	r0, #2
	bl	__Func_8010704
	mov	r0, r7
	mov	r1, #4
	bl	__Actor_SetAnim
	mov	r1, r7
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	ldr	r1, [sp, #0x14]
	ldr	r0, [sp, #0x10]
	cmp	r1, r0
	bls	.Lm947_f38
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0x10]
	add	r2, #0x20
	str	r1, [sp]
	str	r0, [sp, #4]
	add	r3, #2
	mov	r0, #0x46
	mov	r1, #0x28
	bl	__CopyMapTiles
	b	.Lm947_f4c
.Lm947_f38:
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0x10]
	add	r2, #0x20
	str	r1, [sp]
	str	r0, [sp, #4]
	add	r3, #2
	mov	r0, #0x44
	mov	r1, #0x28
	bl	__CopyMapTiles
.Lm947_f4c:
	mov	r0, #1
.Lm947_f4e:
	add	sp, #0x30
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_947_2008ec8

