	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_891_2009d14
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r7, =.Lm891_2980
	mov	r3, #0x37
	mov	r10, r3
	str	r3, [r7, #4]
	mov	r3, #3
	mov	r8, r3
	str	r3, [r7, #0x14]
	mov	r3, #0x1c
	mov	r9, r3
	str	r3, [r7, #0x34]
	ldr	r3, =0x80c
	str	r3, [r7, #0x60]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r7, #0x64]
	ldr	r3, =0x28e
	str	r3, [r7, #0x68]
	mov	r3, #0x84
	mov	r6, #0x28
	str	r3, [r7, #0x6c]
	mov	r3, #0xc
	mov	r14, r6
	str	r6, [r7, #0xc]
	str	r3, [r7, #0x70]
	mov	r6, #0x1e
	mov	r3, r10
	mov	r11, r6
	str	r6, [r7, #0x1c]
	str	r6, [r7, #0x4c]
	str	r3, [r7, #0x74]
	mov	r6, #0x12
	mov	r3, r7
	mov	r2, #4
	mov	r1, #0x24
	mov	r0, #0xa
	mov	r4, #2
	mov	r5, #1
	mov	r12, r6
	str	r6, [r7, #0x50]
	add	r3, #0x80
	mov	r6, r14
	str	r2, [r7]
	str	r2, [r7, #0x10]
	str	r2, [r7, #0x18]
	str	r2, [r7, #0x30]
	str	r2, [r7, #0x48]
	str	r6, [r7, #0x7c]
	str	r1, [r7, #8]
	mov	r6, r8
	str	r1, [r7, #0x20]
	str	r0, [r7, #0x24]
	str	r4, [r7, #0x28]
	str	r5, [r7, #0x2c]
	str	r1, [r7, #0x38]
	str	r0, [r7, #0x3c]
	str	r4, [r7, #0x40]
	str	r5, [r7, #0x44]
	str	r0, [r7, #0x54]
	str	r4, [r7, #0x58]
	str	r5, [r7, #0x5c]
	str	r1, [r7, #0x78]
	str	r2, [r3]
	mov	r3, #0x84
	str	r6, [r3, r7]
	mov	r3, r7
	add	r3, #0x88
	str	r2, [r3]
	mov	r6, r11
	add	r3, #4
	str	r6, [r3]
	add	r3, #4
	str	r1, [r3]
	add	r3, #4
	str	r0, [r3]
	add	r3, #4
	str	r4, [r3]
	add	r3, #4
	str	r5, [r3]
	add	r3, #4
	str	r2, [r3]
	mov	r2, r9
	add	r3, #4
	str	r2, [r3]
	mov	r6, r12
	add	r3, #4
	str	r6, [r3]
	add	r3, #4
	str	r0, [r3]
	add	r3, #4
	str	r4, [r3]
	mov	r2, r7
	add	r3, #4
	str	r5, [r3]
	add	r2, #0xb8
	mov	r3, #0xb
	str	r3, [r2]
	mov	r3, #0xa6
	add	r2, #4
	lsl	r3, #2
	str	r3, [r2]
	add	r2, #4
	mov	r3, #0x98
	str	r3, [r2]
	bl	OvlFunc_891_2009ff4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2009d14

