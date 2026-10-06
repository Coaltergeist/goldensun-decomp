	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_20093b0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	ldr	r6, [r5, #0x44]
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #0x48]
	add	r3, r6
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	mov	r8, r2
	add	r3, r8
	ldr	r2, [r5, #0x4c]
	str	r3, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	mov	r10, r2
	add	r3, r10
	str	r3, [r5, #0x10]
	mov	r0, r6
	mov	r1, #0xa
	bl	_divsi3_RAM
	sub	r6, r0
	str	r6, [r5, #0x44]
	mov	r0, r8
	mov	r1, #3
	bl	_divsi3_RAM
	mov	r3, r8
	sub	r3, r0
	str	r3, [r5, #0x48]
	mov	r0, r10
	mov	r1, #0xa
	bl	_divsi3_RAM
	mov	r2, r10
	sub	r2, r0
	str	r2, [r5, #0x4c]
	ldr	r3, [r5, #0x18]
	ldr	r2, [r5, #0x30]
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r2, [r5, #0x34]
	ldr	r3, [r5, #0x1c]
	add	r3, r2
	str	r3, [r5, #0x1c]
	ldr	r1, [r5, #0x50]
	add	r5, #0x64
	ldrh	r3, [r1, #0x1e]
	ldrh	r2, [r5]
	add	r3, r2
	strh	r3, [r1, #0x1e]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_20093b0

