	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80123f4  @ 0x080123f4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x28
	str	r0, [sp, #0xc]
	ldr	r3, [r1]
	add	r0, sp, #0x1c
	mov	r7, r2
	mov	r2, #0
	str	r2, [r0, #4]
	str	r3, [r0]
	ldr	r3, [r1, #8]
	add	r1, sp, #0x10
	str	r3, [r0, #8]
	ldr	r3, =Func_80009c0
	bl	_call_via_r3
	mov	r2, sp
	add	r2, #0x10
	str	r2, [sp]
	ldr	r3, =Func_8000888
	ldr	r0, [r2, #8]
	ldr	r1, [sp, #0xc]
	.call_via r3
	ldr	r2, [sp]
	ldr	r3, [r2, #4]
	sub	r0, r3, r0
	str	r0, [sp, #8]
	ldr	r3, =gPhysVec
	mov	r9, r3
	ldr	r3, [r3]
	mov	r2, #0
	neg	r3, r3
	str	r3, [sp, #4]
	mov	r11, r2
	b	.L1244c
.L12448:
	ldr	r3, =gPhysVec
	mov	r9, r3
.L1244c:
	mov	r2, r9
	ldr	r1, [r2, #0x10]
	mov	r3, r11
	ldr	r2, =Func_80008ac
	sub	r1, r3
	lsl	r1, #16
	mov	r10, r2
	ldr	r0, [sp, #4]
	bl	_call_via_r10
	ldr	r3, [sp, #0xc]
	mov	r8, r0
	sub	r0, r3
	cmp	r0, #0
	bne	.L1246c
	mov	r0, #1
.L1246c:
	ldr	r1, [sp, #8]
	bl	_call_via_r10
	mov	r5, r0
	cmp	r5, #0
	bge	.L124d8
	mov	r1, #0x80
	ldr	r6, =Func_8000888
	neg	r0, r5
	lsl	r1, #8
	.call_via r6
	mov	r2, r9
	mov	r1, r0
	ldr	r0, [r2]
	bl	_call_via_r10
	mov	r1, r8
	str	r0, [r7]
	mov	r0, r5
	.call_via r6
	ldr	r3, [sp]
	ldr	r1, [r3, #8]
	ldr	r3, [r3, #4]
	sub	r1, r5
	asr	r1, #4
	sub	r5, r0, r3
	asr	r5, #4
	mov	r0, r1
	.call_via r6
	mov	r3, r0
	mov	r1, r5
	mov	r0, r5
	.call_via r6
	add	r3, r0
	ldr	r2, =Func_8000948
	mov	r0, r3
	bl	_call_via_r2
	lsl	r0, #12
	cmp	r5, #0
	bge	.L124ca
	neg	r0, r0
.L124ca:
	mov	r1, #0x80
	lsl	r1, #8
	.call_via r6
	str	r0, [r7, #4]
	b	.L124de
.L124d8:
	mov	r3, #0
	str	r3, [r7]
	str	r3, [r7, #4]
.L124de:
	mov	r2, #1
	mov	r3, #0
	add	r11, r2
	str	r3, [r7, #8]
	str	r3, [r7, #0xc]
	mov	r3, r11
	add	r7, #0x14
	cmp	r3, #0x9f
	ble	.L12448
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80123f4
