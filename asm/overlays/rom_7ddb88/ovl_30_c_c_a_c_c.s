	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_955_20080c0
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r3, #0xe
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xb
	mov	r2, #0xc
	mov	r3, #4
	mov	r0, #0x64
	bl	__Func_8010704
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xd0
	asr	r6, r3, #20
	mov	r1, r6
	lsl	r0, #2
	bl	__Func_80793c8
	mov	r5, #0x10
	mov	r2, #1
	mov	r1, #0x10
	mov	r3, #1
	mov	r0, #0x47
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xd2
	asr	r6, r3, #20
	mov	r1, r6
	lsl	r0, #2
	bl	__Func_80793c8
	mov	r2, #1
	mov	r1, #0x10
	mov	r3, #1
	mov	r0, #0x47
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xd4
	asr	r6, r3, #20
	mov	r1, r6
	lsl	r0, #2
	bl	__Func_80793c8
	mov	r0, #0x47
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_20080c0

