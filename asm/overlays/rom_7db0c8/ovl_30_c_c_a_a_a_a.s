	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_954_200804c
	push	{r5, r6, r7, lr}
	ldr	r7, =.L441c
	ldr	r3, [r7]
	sub	sp, #8
	cmp	r3, #6
	beq	.Lae
	cmp	r3, #6
	bhi	.L62
	cmp	r3, #0
	beq	.Lde
	b	.L122
.L62:
	cmp	r3, #0x3c
	beq	.L6c
	cmp	r3, #0x42
	bne	.L122
	b	.Lae
.L6c:
	mov	r6, #0x32
	mov	r5, #0x26
	mov	r0, #0x5c
	mov	r1, #0x21
	mov	r2, #2
	mov	r3, #2
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010788
	mov	r3, #0x36
	str	r3, [sp]
	mov	r0, #0x5c
	mov	r1, #0x21
	mov	r2, #2
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_8010788
	mov	r3, #0xc
	str	r3, [sp, #4]
	mov	r0, #0x32
	mov	r1, #0x19
	mov	r2, #6
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_8010704
	mov	r0, #0x10
	mov	r1, #0xb
	bl	__MapActor_SetAnim
	b	.L122
.Lae:
	mov	r3, #0x32
	str	r3, [sp]
	mov	r5, #0x26
	mov	r0, #0x5c
	mov	r1, #0x1f
	mov	r2, #2
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_8010788
	mov	r3, #0x36
	str	r3, [sp]
	mov	r0, #0x5c
	mov	r1, #0x1f
	mov	r2, #2
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_8010788
	mov	r0, #0x10
	mov	r1, #0xa
	bl	__MapActor_SetAnim
	b	.L122
.Lde:
	mov	r6, #0x32
	mov	r5, #0x26
	mov	r0, #0x5c
	mov	r1, #0x1d
	mov	r2, #2
	mov	r3, #2
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010788
	mov	r3, #0x36
	str	r3, [sp]
	mov	r2, #2
	mov	r3, #2
	mov	r0, #0x5c
	mov	r1, #0x1d
	str	r5, [sp, #4]
	bl	__Func_8010788
	mov	r0, #0x10
	mov	r1, #0xc
	bl	__MapActor_SetAnim
	mov	r3, #0xc
	str	r3, [sp, #4]
	mov	r0, #0x32
	mov	r3, #1
	mov	r1, #0x18
	mov	r2, #6
	str	r6, [sp]
	bl	__Func_8010704
	mov	r3, #0x78
	str	r3, [r7]
.L122:
	ldr	r3, [r7]
	sub	r3, #1
	str	r3, [r7]
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_200804c

