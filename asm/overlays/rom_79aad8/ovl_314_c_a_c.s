	.include "macros.inc"

.thumb_func_start OvlFunc_906_2008350
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x1d
	cmp	r2, r3
	bne	.L368
	ldr	r0, =.L978
	b	.L36a
.L368:
	ldr	r0, =.L948
.L36a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_906_2008350

.thumb_func_start OvlFunc_906_2008380
	push	{lr}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L394
	ldr	r2, =0xfffff
	add	r3, r2
.L394:
	asr	r3, #20
	cmp	r3, #0x18
	bne	.L3d6
	mov	r0, #8
	bl	OvlFunc_906_20084f4
	mov	r0, #8
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r2, #0x11
	mov	r3, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x4a
	mov	r2, #9
	mov	r3, #3
	mov	r0, #0x13
	bl	__Func_8010704
	mov	r0, #8
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	ldr	r0, =0x864
	bl	__Func_8079358
.L3d6:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_906_2008380

.thumb_func_start OvlFunc_906_20083e4
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x1d
	cmp	r2, r3
	bne	.L3fc
	ldr	r0, =.L9f0
	b	.L3fe
.L3fc:
	ldr	r0, =.L990
.L3fe:
	pop	{r1}
	bx	r1
.func_end OvlFunc_906_20083e4

.thumb_func_start OvlFunc_906_2008414
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r3, #2
	lsl	r2, #1
	str	r3, [r1, r2]
	ldr	r1, =ewram_2000240
	ldrsh	r2, [r1, r2]
	ldr	r3, =0x1c
	sub	sp, #8
	cmp	r2, r3
	bne	.L4a6
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #5
	bne	.L446
	ldr	r0, =0x12f
	bl	__Func_8079374
	b	.L4a6
.L446:
	mov	r0, #8
	bl	__Func_8092054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0x10
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x864
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L4a6
	mov	r1, #0xad
	mov	r2, #0x92
	lsl	r2, #17
	lsl	r1, #17
	mov	r0, #8
	bl	__Func_80923e4
	mov	r0, #8
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #8
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80924d4
	mov	r3, #0x13
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0x4a
	mov	r2, #9
	mov	r3, #3
	bl	__Func_8010704
.L4a6:
	mov	r0, #0
	add	sp, #8
	pop	{r1}
	bx	r1
.func_end OvlFunc_906_2008414

