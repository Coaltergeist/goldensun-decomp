	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_964_200a480
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x31
	str	r3, [sp, #4]
	mov	r5, #0x19
	mov	r0, #0x59
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x33
	str	r3, [sp, #4]
	mov	r1, #0x33
	mov	r2, #8
	mov	r3, #5
	mov	r0, #0x59
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x22
	strb	r3, [r0]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x34
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x16
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x34
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x16
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	asr	r5, #20
	mov	r0, #0x16
	mov	r1, #0x34
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_200a480

