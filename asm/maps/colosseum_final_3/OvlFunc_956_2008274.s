	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_2008274
	push	{r5, r6, lr}
	mov	r0, #9
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r6, =0x6666
	ldr	r5, =0xcccc
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	ldr	r3, [r0, #0x10]
	str	r6, [r0, #0x34]
	str	r5, [r0, #0x30]
	lsl	r2, #14
	bl	__Actor_TravelTo
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	ldr	r3, [r0, #0x10]
	str	r6, [r0, #0x34]
	str	r5, [r0, #0x30]
	lsl	r2, #11
	bl	__Actor_TravelTo
	ldr	r0, =0x362
	bl	__SetFlag
	mov	r3, #0xd
	str	r3, [sp]
	mov	r5, #0xc
	mov	r0, #0xf
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #9
	str	r3, [sp]
	mov	r0, #0xe
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008274

