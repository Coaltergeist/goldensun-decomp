	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_964_200a410
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x1d
	mov	r2, #0x1e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #5
	mov	r2, #6
	mov	r0, #0x5d
	mov	r1, #0x1e
	bl	__Func_8010704
	mov	r1, #0xa
	mov	r0, #0xb
	bl	OvlFunc_964_2008f10
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x24
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #2
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	asr	r5, #20
	mov	r0, #2
	mov	r1, #0x24
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_200a410

