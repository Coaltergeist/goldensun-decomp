	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_964_200a52c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	mov	r3, #0x2c
	mov	r2, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x13
	mov	r2, #4
	mov	r3, #1
	mov	r0, #0x6c
	bl	__Func_8010704
	mov	r0, #0x11
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x11
	bl	__MapActor_GetActor
	ldr	r2, [r0, #0x10]
	asr	r5, #20
	mov	r3, #1
	mov	r1, r5
	asr	r2, #20
	mov	r6, #0xff
	mov	r0, #0
	str	r3, [sp]
	str	r6, [sp, #4]
	mov	r8, r3
	bl	OvlFunc_964_2008244
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r2, [r0, #0x10]
	asr	r5, #20
	mov	r3, r8
	asr	r2, #20
	mov	r1, r5
	mov	r0, #0
	str	r3, [sp]
	str	r6, [sp, #4]
	bl	OvlFunc_964_2008244
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_200a52c

