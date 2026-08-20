	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80970f8  @ 0x080970f8
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f30
	ldr	r6, [r3]
	strh	r0, [r6, #0x18]
	lsl	r0, #16
	asr	r0, #16
	mov	r5, r1
	bl	GetFieldActor
	strh	r5, [r6, #0x1a]
	lsl	r5, #16
	mov	r7, r0
	asr	r5, #16
	str	r7, [r6, #0x10]
	mov	r0, r5
	bl	GetFieldActor
	ldrh	r3, [r7, #6]
	mov	r2, #0x80
	lsl	r2, #6
	add	r1, r3, r2
	mov	r3, #0xc0
	lsl	r3, #8
	and	r1, r3
	str	r0, [r6, #0x14]
	str	r1, [r6]
	cmp	r0, #0
	beq	.L97152
	ldr	r3, [r0, #0x6c]
	str	r3, [r6, #0x38]
	ldr	r3, [r0]
	str	r3, [r6, #0x3c]
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	ldrb	r2, [r3, #5]
	mov	r3, r6
	add	r3, #0x44
	strb	r2, [r3]
	ldr	r3, [r0, #8]
	str	r3, [r6, #4]
	ldr	r3, [r0, #0x10]
	str	r3, [r6, #0xc]
	ldr	r3, [r0, #0xc]
	str	r3, [r6, #8]
	b	.L97168
.L97152:
	ldr	r3, [r7, #8]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	mov	r0, #0x80
	str	r3, [r6, #8]
	lsl	r0, #13
	add	r2, r6, #4
	bl	vec3_translate
.L97168:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80970f8

