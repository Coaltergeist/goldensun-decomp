	.include "macros.inc"

.thumb_func_start OvlFunc_924_200a51c
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r5, #0xcc
	mov	r6, #0
	lsl	r5, #2
.L252a:
	mov	r0, r6
	add	r0, #0xf
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L253c
	ldr	r2, =0xfffff
	add	r3, r2
.L253c:
	asr	r1, r3, #20
	lsl	r3, r6, #2
	mov	r2, r3
	add	r2, #0x27
	cmp	r1, r2
	bne	.L2556
	mov	r0, r5
	bl	__SetFlag
	add	r0, r5, #1
	bl	__ClearFlag
	b	.L2576
.L2556:
	add	r3, #0x29
	cmp	r1, r3
	bne	.L256a
	add	r0, r5, #1
	bl	__SetFlag
	mov	r0, r5
	bl	__ClearFlag
	b	.L2576
.L256a:
	mov	r0, r5
	bl	__ClearFlag
	add	r0, r5, #1
	bl	__ClearFlag
.L2576:
	add	r6, #1
	add	r5, #2
	cmp	r6, #3
	ble	.L252a
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L258e
	ldr	r2, =0xfffff
	add	r3, r2
.L258e:
	asr	r1, r3, #20
	cmp	r1, #0x39
	bne	.L25a0
	mov	r0, #0xce
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x339
	b	.L25ae
.L25a0:
	cmp	r1, #0x3b
	bne	.L25c8
	ldr	r0, =0x339
	bl	__SetFlag
	mov	r0, #0xce
	lsl	r0, #2
.L25ae:
	bl	__ClearFlag
	mov	r3, #0x3a
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x35
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.L25ea
.L25c8:
	mov	r0, #0xce
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x339
	bl	__ClearFlag
	mov	r3, #0x3a
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x35
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L25ea:
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200a51c

