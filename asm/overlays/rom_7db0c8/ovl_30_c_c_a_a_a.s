	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_954_200804c
	push	{r5, r6, r7, lr}
	ldr	r7, =.L441c
	ldr	r3, [r7]
	sub	sp, #8
	cmp	r3, #6
	beq	.Lae
	cmp	r3, #6
	bhi	.L62
	cmp	r3, #0
	beq	.Lde
	b	.L122
.L62:
	cmp	r3, #0x3c
	beq	.L6c
	cmp	r3, #0x42
	bne	.L122
	b	.Lae
.L6c:
	mov	r6, #0x32
	mov	r5, #0x26
	mov	r0, #0x5c
	mov	r1, #0x21
	mov	r2, #2
	mov	r3, #2
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010788
	mov	r3, #0x36
	str	r3, [sp]
	mov	r0, #0x5c
	mov	r1, #0x21
	mov	r2, #2
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_8010788
	mov	r3, #0xc
	str	r3, [sp, #4]
	mov	r0, #0x32
	mov	r1, #0x19
	mov	r2, #6
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_8010704
	mov	r0, #0x10
	mov	r1, #0xb
	bl	__Func_80924d4
	b	.L122
.Lae:
	mov	r3, #0x32
	str	r3, [sp]
	mov	r5, #0x26
	mov	r0, #0x5c
	mov	r1, #0x1f
	mov	r2, #2
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_8010788
	mov	r3, #0x36
	str	r3, [sp]
	mov	r0, #0x5c
	mov	r1, #0x1f
	mov	r2, #2
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_8010788
	mov	r0, #0x10
	mov	r1, #0xa
	bl	__Func_80924d4
	b	.L122
.Lde:
	mov	r6, #0x32
	mov	r5, #0x26
	mov	r0, #0x5c
	mov	r1, #0x1d
	mov	r2, #2
	mov	r3, #2
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010788
	mov	r3, #0x36
	str	r3, [sp]
	mov	r2, #2
	mov	r3, #2
	mov	r0, #0x5c
	mov	r1, #0x1d
	str	r5, [sp, #4]
	bl	__Func_8010788
	mov	r0, #0x10
	mov	r1, #0xc
	bl	__Func_80924d4
	mov	r3, #0xc
	str	r3, [sp, #4]
	mov	r0, #0x32
	mov	r3, #1
	mov	r1, #0x18
	mov	r2, #6
	str	r6, [sp]
	bl	__Func_8010704
	mov	r3, #0x78
	str	r3, [r7]
.L122:
	ldr	r3, [r7]
	sub	r3, #1
	str	r3, [r7]
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_200804c

.thumb_func_start OvlFunc_954_2008134
	push	{r5, lr}
	ldr	r3, =.L441c
	ldr	r5, =OvlFunc_954_200804c
	mov	r2, #0
	str	r2, [r3]
	mov	r0, r5
	bl	__Func_8004278
	bl	_call_via_r5
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2008134

.thumb_func_start OvlFunc_954_2008158
	push	{lr}
	ldr	r3, =.L441c
	mov	r2, #0x42
	mov	r1, #0xc8
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_954_200804c
	bl	__Func_80041d8
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2008158

.thumb_func_start OvlFunc_954_2008178
	push	{r5, r6, lr}
	mov	r0, #0xa
	bl	__Func_80030f8
	ldr	r2, =.L441c
	ldr	r3, [r2]
	mov	r5, #0
	cmp	r3, #0x16
	beq	.L19e
	mov	r6, r2
.L18c:
	mov	r0, #1
	add	r5, #1
	bl	__Func_80030f8
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
	bl	__Func_8092054
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
	bl	__Func_8092054
	mov	r5, r0
	ldr	r1, [r5, #8]
	mov	r0, #0xc4
	asr	r1, #20
	lsl	r0, #2
	bl	__Func_80793c8
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

