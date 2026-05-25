	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_7bf5a8_2e0
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x60
	cmp	r2, r3
	bne	.L2f8
	ldr	r0, =.L1f98
	b	.L30e
.L2f8:
	ldr	r3, =0x61
	cmp	r2, r3
	bne	.L302
	ldr	r0, =.L2064
	b	.L30e
.L302:
	ldr	r3, =0x62
	cmp	r2, r3
	bne	.L30c
	ldr	r0, =.L2190
	b	.L30e
.L30c:
	ldr	r0, =.L1f8c
.L30e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_7bf5a8_2e0

.thumb_func_start OvlFunc_7bf5a8_334
	push	{lr}
	mov	r0, #9
	bl	__Func_8092054
	ldr	r2, [r0, #0x10]
	cmp	r2, #0
	bge	.L346
	ldr	r3, =0xfffff
	add	r2, r3
.L346:
	ldr	r0, [r0, #8]
	asr	r2, #20
	cmp	r0, #0
	bge	.L352
	ldr	r3, =0xfffff
	add	r0, r3
.L352:
	asr	r3, r0, #20
	cmp	r3, #0xf
	bne	.L35e
	mov	r0, #1
	cmp	r2, #0x36
	beq	.L360
.L35e:
	mov	r0, #0
.L360:
	pop	{r1}
	bx	r1
.func_end OvlFunc_7bf5a8_334

.thumb_func_start OvlFunc_7bf5a8_368
	push	{lr}
	ldr	r0, =0x9a9
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L390
	bl	OvlFunc_7bf5a8_170
	bl	OvlFunc_7bf5a8_334
	cmp	r0, #0
	beq	.L390
	ldr	r0, =0x9a9
	bl	__Func_8079358
	mov	r0, #0x50
	bl	__Func_80f9080
	bl	OvlFunc_7bf5a8_398
.L390:
	pop	{r0}
	bx	r0
.func_end OvlFunc_7bf5a8_368

.thumb_func_start OvlFunc_7bf5a8_398
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x50
	mov	r2, #0x32
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x32
	mov	r2, #2
	mov	r3, #4
	bl	__Func_80105d4
	mov	r3, #0x34
	str	r3, [sp, #4]
	mov	r5, #0x10
	mov	r0, #0x17
	mov	r1, #0x34
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r3, #0x35
	str	r3, [sp, #4]
	mov	r0, #0x10
	mov	r1, #0x34
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7bf5a8_398

.thumb_func_start OvlFunc_7bf5a8_3e0
	push	{lr}
	ldr	r0, =0x9a9
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L404
	bl	OvlFunc_7bf5a8_334
	cmp	r0, #0
	beq	.L404
	ldr	r0, =0x9a9
	bl	__Func_8079358
	mov	r0, #0x50
	bl	__Func_80f9080
	bl	OvlFunc_7bf5a8_398
.L404:
	pop	{r0}
	bx	r0
.func_end OvlFunc_7bf5a8_3e0

