	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_891_2009f0c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r7, =.Lm891_2980
	mov	r3, #0x3a
	mov	r8, r3
	str	r3, [r7, #4]
	mov	r3, #0x2b
	mov	r14, r3
	str	r3, [r7, #0xc]
	mov	r3, #0x1d
	mov	r10, r3
	str	r3, [r7, #0x34]
	mov	r3, #0x12
	mov	r12, r3
	str	r3, [r7, #0x50]
	ldr	r3, =0x80e
	str	r3, [r7, #0x60]
	mov	r3, #0xc0
	lsl	r3, #8
	str	r3, [r7, #0x64]
	ldr	r3, =0x28e
	str	r3, [r7, #0x68]
	mov	r3, #0xd8
	str	r3, [r7, #0x6c]
	mov	r3, #0xc
	str	r3, [r7, #0x70]
	mov	r3, r8
	str	r3, [r7, #0x74]
	mov	r3, r14
	str	r3, [r7, #0x7c]
	mov	r3, r7
	mov	r2, #4
	mov	r1, #1
	mov	r0, #0x24
	mov	r4, #0xb
	mov	r5, #2
	mov	r6, #0x1f
	add	r3, #0x80
	str	r2, [r7]
	str	r2, [r7, #0x10]
	str	r2, [r7, #0x18]
	str	r2, [r7, #0x30]
	str	r2, [r7, #0x48]
	str	r0, [r7, #8]
	str	r1, [r7, #0x14]
	str	r6, [r7, #0x1c]
	str	r0, [r7, #0x20]
	str	r4, [r7, #0x24]
	str	r5, [r7, #0x28]
	str	r1, [r7, #0x2c]
	str	r0, [r7, #0x38]
	str	r4, [r7, #0x3c]
	str	r5, [r7, #0x40]
	str	r1, [r7, #0x44]
	str	r6, [r7, #0x4c]
	str	r4, [r7, #0x54]
	str	r5, [r7, #0x58]
	str	r1, [r7, #0x5c]
	str	r0, [r7, #0x78]
	str	r2, [r3]
	add	r3, #4
	str	r1, [r3]
	add	r3, #4
	str	r2, [r3]
	add	r3, #4
	str	r6, [r3]
	add	r3, #4
	str	r0, [r3]
	add	r3, #4
	str	r4, [r3]
	add	r3, #4
	str	r5, [r3]
	add	r3, #4
	str	r1, [r3]
	add	r3, #4
	str	r2, [r3]
	mov	r2, r10
	add	r3, #4
	str	r2, [r3]
	mov	r2, r12
	add	r3, #4
	str	r2, [r3]
	add	r3, #4
	str	r4, [r3]
	add	r3, #4
	str	r5, [r3]
	mov	r2, r7
	add	r3, #4
	str	r1, [r3]
	add	r2, #0xb8
	mov	r3, #0xf
	str	r3, [r2]
	mov	r3, #0xa6
	add	r2, #4
	lsl	r3, #2
	str	r3, [r2]
	add	r2, #4
	mov	r3, #0xc8
	str	r3, [r2]
	bl	OvlFunc_891_2009ff4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2009f0c

