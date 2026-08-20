	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_20084a4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0xc
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	mov	r9, r3
	cmp	r3, #9
	bne	.Lm956_564
	ldr	r3, [r0, #0x10]
	asr	r7, r3, #20
	cmp	r7, #0xc
	bne	.Lm956_564
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	mov	r5, r0
	bl	__Actor_SetSpriteFlags
	mov	r1, #2
	mov	r10, r1
	mov	r2, r5
	add	r2, #0x23
	mov	r1, r10
	strb	r1, [r2]
	mov	r3, #0
	add	r2, #0x32
	strb	r3, [r2]
	ldr	r2, =0x6666
	ldr	r6, =0xcccc
	mov	r8, r2
	str	r2, [r5, #0x34]
	mov	r2, #0x80
	ldr	r1, [r5, #8]
	ldr	r3, [r5, #0x10]
	lsl	r2, #11
	mov	r0, r5
	str	r6, [r5, #0x30]
	bl	__Actor_TravelTo
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x23
	mov	r1, r10
	strb	r1, [r3]
	mov	r2, r8
	str	r2, [r0, #0x34]
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	ldr	r3, [r0, #0x10]
	lsl	r2, #14
	str	r6, [r0, #0x30]
	bl	__Actor_TravelTo
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, r8
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	str	r3, [r0, #0x34]
	lsl	r2, #11
	ldr	r3, [r0, #0x10]
	str	r6, [r0, #0x30]
	bl	__Actor_TravelTo
	mov	r0, #0xda
	lsl	r0, #2
	bl	__SetFlag
	mov	r3, #0xd
	str	r3, [sp]
	mov	r0, #0xf
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp, #4]
	bl	__Func_8010704
	mov	r1, r9
	str	r1, [sp]
	mov	r0, #1
	mov	r1, #0x19
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp, #4]
	bl	__Func_8010704
.Lm956_564:
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_20084a4

