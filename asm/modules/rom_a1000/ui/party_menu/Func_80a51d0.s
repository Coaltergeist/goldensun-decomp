	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a51d0  @ 0x080a51d0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r7, [r3]
	mov	r3, #0x87
	lsl	r3, #2
	add	r5, r7, r3
	mov	r2, #0xbc
	ldr	r3, [r5]
	lsl	r2, #1
	add	r6, r7, r2
	ldrh	r1, [r6]
	ldrb	r2, [r3, #0xe]
	mov	r0, #2
	mov	r3, #0
	bl	_Func_801bcd4
	ldr	r2, [r5]
	mov	r3, #1
	strb	r3, [r2, #5]
	ldr	r2, [r5]
	mov	r3, #0x70
	strh	r3, [r2, #6]
	ldr	r2, [r5]
	mov	r3, #8
	strh	r3, [r2, #8]
	ldr	r0, [r5]
	bl	Func_80a17c4
	ldr	r2, =0x21a
	add	r3, r7, r2
	ldrb	r0, [r3]
	bl	_GetUnit
	mov	r3, #0x86
	lsl	r3, #1
	add	r5, r7, r3
	ldr	r1, [r5]
	mov	r2, #0x10
	mov	r3, #0
	bl	_Func_801e8b0
	ldrh	r3, [r6]
	ldr	r0, =0x1ff
	and	r0, r3
	ldr	r3, =0x182
	ldr	r1, [r5]
	add	r0, r3
	mov	r2, #0x10
	mov	r3, #8
	bl	_Func_801e7c0
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a51d0

