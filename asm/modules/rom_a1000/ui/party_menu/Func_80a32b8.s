	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a32b8  @ 0x080a32b8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0xba
	ldr	r5, [r3]
	lsl	r2, #1
	add	r3, r5, r2
	ldrh	r0, [r3]
	ldr	r3, =0x21a
	add	r2, #0xa7
	add	r7, r5, r3
	add	r2, r5
	ldrb	r1, [r7]
	mov	r8, r2
	ldrb	r2, [r2]
	bl	Func_80a9e48
	mov	r3, #1
	mov	r6, r0
	neg	r3, r3
	cmp	r6, r3
	bne	.La3312
	mov	r0, #0x72
	bl	_PlaySound
	ldr	r0, [r5, #0x2c]
	bl	_Func_80164ac
	ldr	r2, =0x25a
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	ldr	r3, =0xbef
	mov	r2, r6
	add	r0, r3
	mov	r1, r6
	bl	Func_80a1d08
	ldr	r3, =0x222
	add	r2, r5, r3
	mov	r3, #1
	strh	r3, [r2]
	mov	r0, r6
	b	.La3332
.La3312:
	mov	r2, #0xbc
	lsl	r2, #1
	add	r3, r5, r2
	ldrh	r3, [r3]
	ldr	r0, =0x1ff
	and	r0, r3
	bl	Func_80aa448
	ldrb	r0, [r7]
	bl	_CalcStats
	mov	r3, r8
	ldrb	r0, [r3]
	bl	_CalcStats
	mov	r0, #1
.La3332:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a32b8

