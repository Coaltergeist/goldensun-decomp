	.include "macros.inc"

.thumb_func_start OvlFunc_969_20083a0
	push	{r5, r6, lr}
	mov	r5, r0
	ldr	r4, [r5, #0x44]
	ldr	r3, [r5, #8]
	add	r3, r4
	ldr	r2, [r5, #0x48]
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	add	r3, r2
	ldr	r6, [r5, #0x4c]
	str	r3, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	add	r3, r6
	sub	sp, #4
	str	r3, [r5, #0x10]
	mov	r0, r4
	mov	r1, #0x16
	str	r4, [sp]
	bl	_divsi3_RAM
	ldr	r4, [sp]
	sub	r4, r0
	str	r4, [r5, #0x44]
	mov	r0, r6
	mov	r1, #0x14
	bl	_divsi3_RAM
	ldr	r3, [r5, #0x18]
	ldr	r2, [r5, #0x30]
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r2, [r5, #0x34]
	ldr	r3, [r5, #0x1c]
	sub	r6, r0
	add	r3, r2
	str	r6, [r5, #0x4c]
	str	r3, [r5, #0x1c]
	ldr	r1, [r5, #0x50]
	add	r5, #0x64
	ldrh	r3, [r1, #0x1e]
	ldrh	r2, [r5]
	add	r3, r2
	strh	r3, [r1, #0x1e]
	add	sp, #4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_20083a0
