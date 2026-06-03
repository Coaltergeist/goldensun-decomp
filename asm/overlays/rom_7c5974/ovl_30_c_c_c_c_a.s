	.include "macros.inc"

.thumb_func_start OvlFunc_940_2008374
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3b4
	ldr	r2, =0xffff5fff
	add	r3, r5, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.L39c
	mov	r0, #0x1e
	mov	r1, #0xf
	bl	__Func_80b0278
	b	.L3c2
.L39c:
	bl	__Func_80916b0
	ldr	r0, =0x24f7
	bl	__Func_8092b94
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	b	.L3c2
.L3b4:
	ldr	r0, =0x1bce
	bl	__Func_8092b94
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8092f84
.L3c2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_940_2008374

.thumb_func_start OvlFunc_940_20083dc
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	ldr	r2, =0x209
	add	r3, r1
	ldr	r5, =ewram_2000240
	str	r2, [r3]
	sub	r2, #0x47
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r6, [r3, r1]
	cmp	r6, #0xa
	bne	.L412
	ldr	r0, =0x12f
	bl	__Func_8079374
	mov	r1, #0xe2
	ldr	r2, =0x69
	lsl	r1, #1
	add	r3, r5, r1
	strh	r2, [r3]
	mov	r2, #0xe3
	lsl	r2, #1
	add	r3, r5, r2
	strh	r6, [r3]
.L412:
	mov	r0, #0x17
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x18
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x19
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_940_20083dc

