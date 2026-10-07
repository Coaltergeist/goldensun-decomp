	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_955_200862c
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0xe
	str	r3, [sp]
	mov	r5, #0xb
	mov	r1, #0xb
	mov	r2, #0xc
	mov	r3, #4
	mov	r0, #0x64
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0xf
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r2, r3, #20
	str	r2, [sp]
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #4
	mov	r0, #0xd
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x10
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r2, r3, #20
	str	r2, [sp]
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #4
	mov	r0, #0xd
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x11
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r2, r3, #20
	mov	r3, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xd
	mov	r1, #0x1c
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_200862c

