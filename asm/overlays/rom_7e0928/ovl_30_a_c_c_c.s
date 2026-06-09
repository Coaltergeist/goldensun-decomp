	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_200858c
	push	{r5, r6, lr}
	mov	r0, #0xd
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0xdc
	asr	r5, #20
	mov	r1, r5
	lsl	r0, #2
	bl	__SetFlagByte
	mov	r3, #0x12
	str	r3, [sp]
	mov	r6, #0xb
	mov	r0, #0x12
	mov	r1, #0xa
	mov	r2, #3
	mov	r3, #1
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x11
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_200858c

