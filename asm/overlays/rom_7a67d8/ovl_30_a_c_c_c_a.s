	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_919_200805c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	mov	r2, #0xfa
	mov	r8, r3
	ldr	r3, =ewram_2000240
	lsl	r2, #1
	add	r3, r2
	mov	r6, r0
	ldr	r0, [r3]
	mov	r7, r1
	bl	__Func_8092054
	mov	r5, r0
	lsl	r6, #20
	lsl	r7, #20
	cmp	r5, #0
	beq	.L9e
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	add	r1, r6
	add	r2, r7
	str	r1, [r5, #8]
	str	r2, [r5, #0x10]
	mov	r3, r5
	add	r3, #0x22
	ldrb	r0, [r3]
	bl	__Func_8011f54
	str	r0, [r5, #0xc]
	str	r0, [r5, #0x14]
.L9e:
	mov	r3, #0xf0
	lsl	r3, #1
	add	r3, r8
	ldr	r5, [r3]
	cmp	r5, #0
	beq	.Lc4
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	add	r1, r6
	add	r2, r7
	str	r1, [r5, #8]
	str	r2, [r5, #0x10]
	mov	r3, r5
	add	r3, #0x22
	ldrb	r0, [r3]
	bl	__Func_8011f54
	str	r0, [r5, #0xc]
	str	r0, [r5, #0x14]
.Lc4:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_919_200805c

.thumb_func_start OvlFunc_919_20080d8
	push	{lr}
	mov	r0, #0
	mov	r1, #5
	bl	OvlFunc_919_200805c
	pop	{r0}
	bx	r0
.func_end OvlFunc_919_20080d8

.thumb_func_start OvlFunc_919_20080e8
	push	{lr}
	mov	r1, #5
	neg	r1, r1
	mov	r0, #0
	bl	OvlFunc_919_200805c
	pop	{r0}
	bx	r0
.func_end OvlFunc_919_20080e8

.thumb_func_start OvlFunc_919_20080f8
	push	{lr}
	mov	r0, #0
	mov	r1, #5
	bl	OvlFunc_919_200805c
	pop	{r0}
	bx	r0
.func_end OvlFunc_919_20080f8

.thumb_func_start OvlFunc_919_2008108
	push	{lr}
	mov	r1, #5
	neg	r1, r1
	mov	r0, #0
	bl	OvlFunc_919_200805c
	pop	{r0}
	bx	r0
.func_end OvlFunc_919_2008108

.thumb_func_start OvlFunc_919_2008118
	push	{lr}
	mov	r0, #0
	mov	r1, #6
	bl	OvlFunc_919_200805c
	pop	{r0}
	bx	r0
.func_end OvlFunc_919_2008118

.thumb_func_start OvlFunc_919_2008128
	push	{lr}
	mov	r1, #6
	neg	r1, r1
	mov	r0, #0
	bl	OvlFunc_919_200805c
	pop	{r0}
	bx	r0
.func_end OvlFunc_919_2008128

.thumb_func_start OvlFunc_919_2008138
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0x7b
	ldr	r5, [r3]
	bl	__Func_80f9080
	mov	r3, #0xb6
	lsl	r3, #1
	add	r5, r3
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	bl	__Func_8091e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_919_2008138

.thumb_func_start OvlFunc_919_200815c
	push	{lr}
	mov	r0, #9
	bl	__Func_808fe38
	ldr	r2, =REG_BLDCNT
	ldr	r3, .L190	@ 0x3f42
	strh	r3, [r2]
	ldr	r3, .L194	@ 0xc04
	add	r2, #2
	strh	r3, [r2]
	ldr	r3, =iwram_3001ecc
	ldr	r2, [r3]
	ldr	r3, =0x534
	add	r1, r2, r3
	ldr	r3, =0x3f3f
	strh	r3, [r1]
	ldr	r3, =0x536
	add	r1, r2, r3
	mov	r3, #0x1f
	strh	r3, [r1]
	ldr	r3, =0x52a
	add	r2, r3
	mov	r3, #0xa
	strh	r3, [r2]
	b	.L1b0

	.align	2, 0
.L190:
	.word	0x3f42
.L194:
	.word	0xc04
	.pool

.L1b0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_919_200815c

