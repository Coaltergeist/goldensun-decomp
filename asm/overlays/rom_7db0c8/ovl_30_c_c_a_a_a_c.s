	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_954_2008158
	push	{lr}
	ldr	r3, =.L441c
	mov	r2, #0x42
	mov	r1, #0xc8
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_954_200804c
	bl	__StartTask
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2008158

.thumb_func_start OvlFunc_954_2008178
	push	{r5, r6, lr}
	mov	r0, #0xa
	bl	__WaitFrames
	ldr	r2, =.L441c
	ldr	r3, [r2]
	mov	r5, #0
	cmp	r3, #0x16
	beq	.L19e
	mov	r6, r2
.L18c:
	mov	r0, #1
	add	r5, #1
	bl	__WaitFrames
	cmp	r5, #0x77
	bgt	.L19e
	ldr	r3, [r6]
	cmp	r3, #0x16
	bne	.L18c
.L19e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2008178

.thumb_func_start OvlFunc_954_20081a8
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x17
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r1, #0xd
	mov	r2, #3
	mov	r0, #0x1b
	bl	__Func_8010704
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	mov	r0, #0
	bl	__Func_8011f54
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	bne	.L202
	cmp	r0, #0
	bne	.L202
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, r5
	add	r3, #0x55
	strb	r0, [r3]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L202:
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r1, [r5, #8]
	mov	r0, #0xc4
	asr	r1, #20
	lsl	r0, #2
	bl	__SetFlagByte
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_20081a8

