	.include "macros.inc"

.thumb_func_start OvlFunc_891_2009c14
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r7, =.L2980
	mov	r3, #0
	str	r3, [r7]
	mov	r3, #0x37
	mov	r9, r3
	str	r3, [r7, #4]
	mov	r3, #4
	mov	r14, r3
	str	r3, [r7, #0x10]
	mov	r3, #0x10
	str	r3, [r7, #0x50]
	ldr	r3, =0x80b
	str	r3, [r7, #0x60]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r7, #0x64]
	mov	r3, #0xfa
	mov	r6, #0x28
	lsl	r3, #1
	mov	r4, #0x20
	mov	r12, r6
	str	r6, [r7, #0xc]
	str	r3, [r7, #0x68]
	mov	r6, #0x1c
	mov	r3, #0x84
	mov	r10, r4
	mov	r11, r6
	str	r6, [r7, #0x34]
	str	r3, [r7, #0x6c]
	mov	r6, r9
	mov	r3, #8
	str	r4, [r7, #8]
	str	r3, [r7, #0x70]
	mov	r4, #3
	str	r6, [r7, #0x74]
	mov	r3, r10
	mov	r6, r12
	mov	r2, #2
	mov	r1, #0xa
	mov	r0, #1
	mov	r5, #0x22
	mov	r8, r4
	str	r4, [r7, #0x14]
	str	r3, [r7, #0x78]
	mov	r4, #0x1e
	str	r6, [r7, #0x7c]
	mov	r3, #0x80
	mov	r6, r14
	str	r2, [r7, #0x18]
	str	r4, [r7, #0x1c]
	str	r2, [r7, #0x28]
	str	r2, [r7, #0x30]
	str	r2, [r7, #0x40]
	str	r2, [r7, #0x48]
	str	r4, [r7, #0x4c]
	str	r2, [r7, #0x58]
	str	r5, [r7, #0x20]
	str	r1, [r7, #0x24]
	str	r0, [r7, #0x2c]
	str	r5, [r7, #0x38]
	str	r1, [r7, #0x3c]
	str	r0, [r7, #0x44]
	str	r1, [r7, #0x54]
	str	r0, [r7, #0x5c]
	str	r6, [r3, r7]
	mov	r6, r8
	mov	r3, #0x84
	str	r6, [r3, r7]
	mov	r3, r7
	add	r3, #0x88
	str	r2, [r3]
	add	r3, #4
	str	r4, [r3]
	add	r3, #4
	str	r5, [r3]
	add	r3, #4
	str	r1, [r3]
	add	r3, #4
	str	r2, [r3]
	add	r3, #4
	str	r0, [r3]
	add	r3, #4
	str	r2, [r3]
	mov	r4, r11
	add	r3, #4
	str	r4, [r3]
	mov	r6, #0x10
	add	r3, #4
	str	r6, [r3]
	add	r3, #4
	str	r1, [r3]
	add	r3, #4
	str	r2, [r3]
	add	r3, #4
	mov	r2, r7
	str	r0, [r3]
	add	r2, #0xb8
	mov	r3, #9
	str	r3, [r2]
	mov	r3, #0xf4
	add	r2, #4
	lsl	r3, #1
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
.func_end OvlFunc_891_2009c14

.thumb_func_start OvlFunc_891_2009d14
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r7, =.L2980
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

.thumb_func_start OvlFunc_891_2009e10
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r7, =.L2980
	mov	r3, #0
	str	r3, [r7]
	mov	r3, #0x3a
	mov	r10, r3
	str	r3, [r7, #4]
	mov	r3, #4
	mov	r14, r3
	str	r3, [r7, #0x10]
	mov	r3, #0x10
	mov	r11, r3
	str	r3, [r7, #0x50]
	ldr	r3, =0x80d
	str	r3, [r7, #0x60]
	mov	r3, #0xc0
	lsl	r3, #8
	str	r3, [r7, #0x64]
	mov	r3, #0xfa
	mov	r6, #0x2b
	lsl	r3, #1
	mov	r4, #0x20
	mov	r12, r6
	str	r6, [r7, #0xc]
	str	r3, [r7, #0x68]
	mov	r6, #0x1d
	mov	r3, #0xd8
	mov	r8, r4
	mov	r9, r6
	str	r6, [r7, #0x34]
	str	r3, [r7, #0x6c]
	mov	r6, r10
	mov	r3, #8
	str	r3, [r7, #0x70]
	str	r6, [r7, #0x74]
	mov	r3, r8
	mov	r6, r12
	mov	r2, #2
	mov	r1, #1
	mov	r0, #0xb
	mov	r5, #0x22
	str	r4, [r7, #8]
	str	r3, [r7, #0x78]
	mov	r4, #0x1f
	str	r6, [r7, #0x7c]
	mov	r3, #0x80
	mov	r6, r14
	str	r2, [r7, #0x18]
	str	r4, [r7, #0x1c]
	str	r2, [r7, #0x28]
	str	r2, [r7, #0x30]
	str	r2, [r7, #0x40]
	str	r2, [r7, #0x48]
	str	r4, [r7, #0x4c]
	str	r2, [r7, #0x58]
	str	r1, [r7, #0x14]
	str	r5, [r7, #0x20]
	str	r0, [r7, #0x24]
	str	r1, [r7, #0x2c]
	str	r5, [r7, #0x38]
	str	r0, [r7, #0x3c]
	str	r1, [r7, #0x44]
	str	r0, [r7, #0x54]
	str	r1, [r7, #0x5c]
	str	r6, [r3, r7]
	mov	r3, r7
	add	r3, #0x84
	str	r1, [r3]
	add	r3, #4
	str	r2, [r3]
	add	r3, #4
	str	r4, [r3]
	add	r3, #4
	str	r5, [r3]
	add	r3, #4
	str	r0, [r3]
	add	r3, #4
	str	r2, [r3]
	add	r3, #4
	str	r1, [r3]
	add	r3, #4
	str	r2, [r3]
	mov	r4, r9
	add	r3, #4
	str	r4, [r3]
	mov	r6, r11
	add	r3, #4
	str	r6, [r3]
	add	r3, #4
	str	r0, [r3]
	add	r3, #4
	str	r2, [r3]
	add	r3, #4
	mov	r2, r7
	str	r1, [r3]
	add	r2, #0xb8
	mov	r3, #0xd
	str	r3, [r2]
	mov	r3, #0xf4
	add	r2, #4
	lsl	r3, #1
	str	r3, [r2]
	add	r2, #4
	mov	r3, #0xc8
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
.func_end OvlFunc_891_2009e10

.thumb_func_start OvlFunc_891_2009f0c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r7, =.L2980
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

.thumb_func_start OvlFunc_891_2009ff4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0
	sub	sp, #8
	mov	r8, r3
	bl	__Func_80916b0
	ldr	r0, =0x80f
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2010
	b	.L2208
.L2010:
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x90
	mov	r1, #1
	mov	r2, #0xac
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xba
	bl	__Func_80f9080
	ldr	r5, =.L2980
	ldr	r6, [r5, #0x14]
	ldr	r4, [r5, #0x10]
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0xc]
	str	r6, [sp, #4]
	str	r4, [sp]
	bl	__Func_8010424
	mov	r7, #0
	mov	r6, r5
.L2052:
	mov	r0, #0xf6
	bl	__Func_80f9080
	ldr	r4, [r6, #0x28]
	ldr	r5, [r6, #0x2c]
	ldr	r1, [r6, #0x1c]
	ldr	r2, [r6, #0x20]
	ldr	r3, [r6, #0x24]
	ldr	r0, [r6, #0x18]
	str	r4, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #4
	bl	__Func_809163c
	mov	r0, #0xf6
	bl	__Func_80f9080
	ldr	r4, [r6, #0x40]
	ldr	r5, [r6, #0x44]
	ldr	r0, [r6, #0x30]
	ldr	r1, [r6, #0x34]
	ldr	r2, [r6, #0x38]
	ldr	r3, [r6, #0x3c]
	add	r7, #1
	str	r4, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #4
	bl	__Func_809163c
	cmp	r7, #0x14
	bne	.L2052
	ldr	r7, =.L2980
	ldr	r4, [r7, #0x58]
	ldr	r5, [r7, #0x5c]
	ldr	r3, [r7, #0x54]
	ldr	r1, [r7, #0x4c]
	ldr	r2, [r7, #0x50]
	ldr	r0, [r7, #0x48]
	str	r4, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	ldr	r0, [r7, #0x60]
	bl	__Func_8079358
	bl	OvlFunc_891_2008054
	mov	r3, #1
	mov	r8, r0
	neg	r3, r3
	cmp	r8, r3
	bne	.L21b0
	ldr	r0, =0x818
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L20ce
	b	.L2208
.L20ce:
	mov	r1, #1
	mov	r0, #0
	bl	__Func_809335c
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r7, #0x64]
	mov	r1, #0x80
	mov	r2, #0x80
	strh	r3, [r0, #6]
	lsl	r1, #10
	lsl	r2, #10
	mov	r0, #0
	bl	__Func_8092064
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r6, #0xfe
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #4
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092560
	ldr	r1, [r7, #0x68]
	ldr	r2, [r7, #0x6c]
	mov	r0, #0
	bl	__Func_8092128
	mov	r4, r7
	add	r4, #0x80
	ldr	r5, [r4]
	add	r4, #4
	ldr	r4, [r4]
	ldr	r0, [r7, #0x70]
	ldr	r1, [r7, #0x74]
	ldr	r2, [r7, #0x78]
	ldr	r3, [r7, #0x7c]
	str	r5, [sp]
	str	r4, [sp, #4]
	bl	__Func_8010424
	mov	r3, r7
	add	r3, #0x88
	mov	r4, r7
	ldr	r0, [r3]
	add	r4, #0x98
	add	r3, #4
	ldr	r1, [r3]
	ldr	r5, [r4]
	add	r3, #4
	add	r4, #4
	ldr	r2, [r3]
	ldr	r4, [r4]
	add	r3, #4
	ldr	r3, [r3]
	str	r5, [sp]
	str	r4, [sp, #4]
	bl	__Func_8010424
	mov	r3, r7
	add	r3, #0xa0
	mov	r4, r7
	ldr	r0, [r3]
	add	r4, #0xb0
	add	r3, #4
	ldr	r1, [r3]
	ldr	r5, [r4]
	add	r3, #4
	ldr	r2, [r3]
	add	r4, #4
	add	r3, #4
	ldr	r4, [r4]
	ldr	r3, [r3]
	str	r5, [sp]
	mov	r5, r7
	add	r5, #0xb8
	str	r4, [sp, #4]
	bl	__Func_8010424
	ldr	r0, [r5]
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r6, r3
	strb	r6, [r0]
	mov	r3, r7
	add	r3, #0xbc
	ldr	r1, [r3]
	add	r3, #4
	ldr	r2, [r3]
	ldr	r0, [r5]
	bl	__Func_8092158
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, [r7, #0x60]
	bl	__Func_8079374
	b	.L2208
.L21b0:
	mov	r3, r8
	cmp	r3, #0
	bne	.L2208
	ldr	r0, =0x818
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2208
	ldr	r0, =0x80b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L21f4
	ldr	r0, =0x80d
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L21f4
	ldr	r0, =0x80e
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L21f4
	ldr	r0, =0x80f
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L2208
	ldr	r0, =0x80f
	bl	__Func_8079358
	bl	OvlFunc_891_2008c8c
	b	.L2208
.L21f4:
	ldr	r0, =0x812
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2208
	mov	r0, #5
	bl	__Func_8091e9c
	mov	r3, #1
	mov	r8, r3
.L2208:
	mov	r3, r8
	cmp	r3, #1
	bne	.L2216
	bl	__Func_8091df4
	bl	__Func_8091e20
.L2216:
	bl	__Func_8091750
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2009ff4

.thumb_func_start OvlFunc_891_200a244
	push	{lr}
	sub	sp, #8
	bl	__Func_80916b0
	ldr	r0, =0x818
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L22dc
	ldr	r0, =0x816
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L22dc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x8f
	mov	r1, #1
	mov	r2, #0x92
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xba
	bl	__Func_80f9080
	mov	r3, #4
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x3b
	mov	r2, #0xf
	mov	r3, #0x26
	bl	__Func_8010424
	ldr	r0, =0x817
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L22b8
	mov	r3, #2
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #8
	mov	r1, #0x3c
	mov	r2, #0x11
	mov	r3, #0x27
	bl	__Func_8010424
.L22b8:
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	ldr	r0, =0x816
	bl	__Func_8079358
	ldr	r0, =0x817
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L22dc
	bl	OvlFunc_891_2008098
.L22dc:
	bl	__Func_8091750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_200a244

.thumb_func_start OvlFunc_891_200a2f4
	push	{lr}
	sub	sp, #8
	bl	__Func_80916b0
	ldr	r0, =0x818
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L238e
	ldr	r0, =0x817
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L238e
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x8f
	mov	r1, #1
	mov	r2, #0x92
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xba
	bl	__Func_80f9080
	mov	r3, #4
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #4
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x26
	bl	__Func_8010424
	ldr	r0, =0x816
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2368
	mov	r3, #2
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #8
	mov	r1, #0x3c
	mov	r2, #0x11
	mov	r3, #0x27
	bl	__Func_8010424
.L2368:
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	ldr	r0, =0x817
	bl	__Func_8079358
	ldr	r0, =0x816
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L238e
	bl	OvlFunc_891_2008098
.L238e:
	bl	__Func_8091750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_200a2f4

