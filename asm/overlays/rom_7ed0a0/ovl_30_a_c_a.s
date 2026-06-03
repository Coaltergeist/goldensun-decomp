	.include "macros.inc"

.thumb_func_start OvlFunc_964_20092e0
	push	{r5, lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xac
	cmp	r2, r3
	bne	.L12f8
	ldr	r5, =.L38f4
	b	.L12fa
.L12f8:
	ldr	r5, =.L3a74
.L12fa:
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_964_20092e0

.thumb_func_start OvlFunc_964_2009318
	push	{lr}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r3, #9
	mov	r2, #0x26
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x49
	mov	r1, #0x26
	mov	r2, #5
	mov	r3, #5
	bl	__Func_8010704
	bl	OvlFunc_964_20080c4
	bl	OvlFunc_964_200a3a0
	bl	__Func_8091750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009318

.thumb_func_start OvlFunc_964_2009348
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_8092054
	ldr	r1, =0xffe00000
	ldr	r3, [r0, #8]
	mov	r2, sp
	add	r3, r1
	str	r3, [r2]
	ldr	r3, [r0, #0xc]
	str	r3, [r2, #4]
	ldr	r3, [r0, #0x10]
	mov	r0, r2
	str	r3, [r2, #8]
	bl	OvlFunc_964_2008cd0
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009348

.thumb_func_start OvlFunc_964_2009374
	push	{lr}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r3, #0x1d
	mov	r2, #0x1e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x5d
	mov	r1, #0x1e
	mov	r2, #6
	mov	r3, #5
	bl	__Func_8010704
	bl	OvlFunc_964_20080c4
	bl	OvlFunc_964_200a410
	bl	__Func_8091750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009374

.thumb_func_start OvlFunc_964_20093a4
	push	{lr}
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092708
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_20093a4

.thumb_func_start OvlFunc_964_20093b4
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_8092054
	mov	r1, #0x80
	ldr	r3, [r0, #8]
	lsl	r1, #14
	mov	r2, sp
	add	r3, r1
	str	r3, [r2]
	ldr	r3, [r0, #0xc]
	str	r3, [r2, #4]
	ldr	r3, [r0, #0x10]
	mov	r0, r2
	str	r3, [r2, #8]
	bl	OvlFunc_964_2008cd0
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_20093b4

.thumb_func_start OvlFunc_964_20093e0
	push	{r5, lr}
	sub	sp, #8
	bl	__Func_80916b0
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
	mov	r0, #0x59
	mov	r1, #0x33
	mov	r2, #8
	mov	r3, #5
	str	r5, [sp]
	bl	__Func_8010704
	bl	OvlFunc_964_20080c4
	bl	OvlFunc_964_200a480
	bl	__Func_8091750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_20093e0

