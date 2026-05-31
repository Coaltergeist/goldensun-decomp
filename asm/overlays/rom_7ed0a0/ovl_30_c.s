	.include "macros.inc"

.thumb_func_start OvlFunc_964_2009abc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r9, r0
	lsl	r1, #8
	mov	r0, #0xa
	lsl	r2, #7
	sub	sp, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092064
	mov	r2, r9
	cmp	r2, #0
	beq	.L1af2
	mov	r0, #0xb4
	bl	__Func_80f9080
.L1af2:
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r10, r0
	mov	r0, #0xa
	bl	__Func_8092054
	ldr	r3, =.L3350
	mov	r6, r0
	mov	r0, #0xa
	mov	r8, r3
	bl	__Func_8092054
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r5, [r0, r2]
	mov	r0, #0xa
	bl	__Func_8092054
	lsl	r5, #2
	mov	r3, r8
	ldr	r2, [r3, r5]
	ldr	r1, [r6, #8]
	ldr	r3, [r0, #0x10]
	mov	r0, r10
	bl	__Func_800d14c
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r10, r0
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, #0xb
	bl	__Func_8092054
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r5, [r0, r2]
	mov	r0, #0xb
	bl	__Func_8092054
	lsl	r5, #2
	mov	r3, r8
	ldr	r2, [r3, r5]
	ldr	r1, [r6, #8]
	ldr	r3, [r0, #0x10]
	mov	r0, r10
	bl	__Func_800d14c
	mov	r0, #0xa
	bl	__Func_80923c4
	mov	r0, #0xb
	bl	__Func_80923c4
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0xa
	bl	__Func_8092054
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	mov	r2, r8
	lsl	r3, #2
	ldr	r3, [r2, r3]
	mov	r0, #0xb
	str	r3, [r5, #0xc]
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0xb
	bl	__Func_8092054
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	mov	r2, r8
	lsl	r3, #2
	ldr	r3, [r2, r3]
	str	r3, [r5, #0xc]
	mov	r3, r9
	cmp	r3, #0
	beq	.L1baa
	ldr	r0, =0x121
	bl	__Func_80f9080
.L1baa:
	mov	r7, #0
.L1bac:
	mov	r6, r7
	add	r6, #0xa
	mov	r0, r6
	bl	__Func_8092054
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bge	.L1bc0
	ldr	r2, =0xffff
	add	r3, r2
.L1bc0:
	cmp	r3, #0
	bge	.L1c02
	mov	r0, r6
	bl	__Func_8092054
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bge	.L1bd4
	ldr	r2, =0xffff
	add	r3, r2
.L1bd4:
	mov	r2, #0x1e
	asr	r3, #16
	neg	r2, r2
	cmp	r3, r2
	ble	.L1c02
	mov	r0, r6
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, r6
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	asr	r5, #20
	str	r3, [sp, #4]
	mov	r0, #4
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
.L1c02:
	add	r7, #1
	cmp	r7, #4
	bls	.L1bac
	mov	r0, r9
	bl	__Func_809163c
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009abc

.thumb_func_start OvlFunc_964_2009c2c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r2, =0xffb00000
	mov	r3, #0
	mov	r7, r0
	mov	r10, r2
	mov	r8, r3
.L1c3e:
	mov	r6, r8
	add	r6, #0xa
	cmp	r6, r7
	beq	.L1ca2
	mov	r0, r6
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, r7
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r5, #20
	asr	r3, #20
	cmp	r5, r3
	bne	.L1ca2
	mov	r0, r6
	bl	__Func_8092054
	ldr	r5, [r0, #0x10]
	mov	r0, r7
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r5, #20
	asr	r3, #20
	cmp	r5, r3
	bne	.L1ca2
	mov	r0, r6
	bl	__Func_8092054
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #13
	add	r3, r2
	cmp	r10, r3
	bgt	.L1ca2
	mov	r0, r6
	bl	__Func_8092054
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #13
	add	r2, r3
	mov	r0, r7
	mov	r10, r2
	bl	__Func_8092054
	add	r0, #0x64
	strh	r6, [r0]
.L1ca2:
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	cmp	r2, #4
	bls	.L1c3e
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #10
	mov	r0, r7
	bl	__Func_8092064
	mov	r0, r7
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, r7
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, r7
	bl	__Func_8092054
	ldr	r1, [r5, #8]
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	mov	r0, r6
	bl	__Func_800d14c
	mov	r0, r7
	bl	__Func_80923c4
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r0, r7
	bl	OvlFunc_964_20091e0
	mov	r0, #0x1e
	bl	__Func_809163c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009c2c

.thumb_func_start OvlFunc_964_2009d04
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x70
	bl	__Func_80916b0
	mov	r6, #0
	mov	r10, sp
	mov	r11, r6
	mov	r7, #0xc
.L1d20:
	mov	r0, r7
	bl	__Func_8092054
	ldr	r3, [r0, #0x50]
	ldrb	r2, [r3, #9]
	mov	r3, #0xc
	and	r3, r2
	cmp	r3, #0xc
	bne	.L1de4
	mov	r2, #0x80
	lsl	r2, #2
	add	r5, r6, r2
	mov	r0, r5
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1de4
	mov	r0, r7
	bl	__Func_8092054
	bl	OvlFunc_964_2009038
	mov	r0, r7
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, r5
	bl	__Func_8079358
	b	.L1f40
.L1d5e:
	mov	r0, r7
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	mov	r2, r10
	str	r3, [r2, #8]
	mov	r0, r7
	bl	__Func_8092054
	ldr	r3, [r0, #0xc]
	mov	r2, r10
	str	r3, [r2, #0xc]
	mov	r0, r7
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	str	r3, [r2, #0x10]
	mov	r0, r7
	bl	__Func_8092054
	mov	r5, r8
	add	r5, #0xc
	mov	r6, r0
	mov	r0, r5
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	mov	r0, r7
	str	r3, [r6, #8]
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, r5
	bl	__Func_8092054
	ldr	r3, [r0, #0xc]
	mov	r0, r7
	str	r3, [r6, #0xc]
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, r5
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	mov	r0, r5
	str	r3, [r6, #0x10]
	bl	__Func_8092054
	mov	r2, r10
	ldr	r3, [r2, #8]
	str	r3, [r0, #8]
	mov	r0, r5
	bl	__Func_8092054
	mov	r2, r10
	ldr	r3, [r2, #0xc]
	str	r3, [r0, #0xc]
	mov	r0, r5
	bl	__Func_8092054
	mov	r2, r10
	ldr	r3, [r2, #0x10]
	mov	r9, r8
	str	r3, [r0, #0x10]
	b	.L1e56
.L1de4:
	mov	r0, r7
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #9
	beq	.L1df4
	b	.L1f36
.L1df4:
	mov	r3, #0x80
	lsl	r3, #2
	add	r0, r6, r3
	bl	__Func_8079338
	mov	r5, r0
	cmp	r5, #0
	beq	.L1e06
	b	.L1f36
.L1e06:
	mov	r0, r7
	bl	__Func_8092054
	str	r5, [r0, #0x14]
	mov	r0, r7
	bl	__Func_8092054
	str	r5, [r0, #0x28]
	mov	r0, r7
	bl	__Func_8092054
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, r7
	bl	__Func_8092054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, r7
	bl	__Func_8092054
	mov	r2, #0
	add	r0, #0x64
	mov	r8, r2
	strh	r5, [r0]
	mov	r9, r6
	cmp	r8, r6
	bge	.L1e56
.L1e40:
	mov	r0, #0x80
	lsl	r0, #2
	add	r0, r8
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1d5e
	mov	r3, #1
	add	r8, r3
	cmp	r8, r6
	blt	.L1e40
.L1e56:
	mov	r5, r9
	add	r5, #0xc
	mov	r0, r5
	bl	__Func_8092054
	mov	r2, r11
	str	r2, [r0, #0x14]
	mov	r0, r5
	bl	__Func_8092054
	mov	r3, r11
	str	r3, [r0, #0x28]
	mov	r0, r5
	bl	__Func_8092054
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, r5
	bl	__Func_8092054
	mov	r2, r11
	add	r0, #0x55
	strb	r2, [r0]
	mov	r0, r5
	bl	__Func_8092054
	mov	r3, r11
	add	r0, #0x64
	strh	r3, [r0]
	mov	r1, #0xc0
	mov	r0, #0xc0
	lsl	r1, #7
	lsl	r0, #10
	bl	__Func_80933d4
	bl	__Func_8093554
	mov	r2, r11
	add	r0, #0x55
	strb	r2, [r0]
	mov	r1, #0x80
	mov	r0, #0xa8
	mov	r2, #0xb8
	mov	r3, #1
	lsl	r1, #12
	lsl	r2, #16
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, r5
	bl	OvlFunc_964_2009c2c
	mov	r0, r5
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #8
	bne	.L1eee
	mov	r0, #0xa
	bl	__Func_8092054
	add	r0, #0x64
	ldrh	r3, [r0]
	add	r3, #1
	strh	r3, [r0]
	mov	r0, #0xb
	bl	__Func_8092054
	add	r0, #0x64
	ldrh	r3, [r0]
	sub	r3, #1
	b	.L1f08
.L1eee:
	mov	r0, #0xa
	bl	__Func_8092054
	add	r0, #0x64
	ldrh	r3, [r0]
	sub	r3, #1
	strh	r3, [r0]
	mov	r0, #0xb
	bl	__Func_8092054
	add	r0, #0x64
	ldrh	r3, [r0]
	add	r3, #1
.L1f08:
	strh	r3, [r0]
	mov	r0, r5
	bl	__Func_8092054
	ldr	r3, =OvlFunc_964_2009a98
	str	r3, [r0, #0x6c]
	mov	r0, #0x28
	bl	OvlFunc_964_2009abc
	mov	r0, r5
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x80
	lsl	r0, #2
	add	r0, r9
	bl	__Func_8079358
	b	.L1f40
.L1f36:
	add	r6, #1
	add	r7, #1
	cmp	r6, #2
	bgt	.L1f40
	b	.L1d20
.L1f40:
	bl	__Func_8091750
	add	sp, #0x70
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009d04

.thumb_func_start OvlFunc_964_2009f5c
	push	{lr}
	bl	__Func_80916b0
	bl	OvlFunc_964_20080c4
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009f5c

.thumb_func_start OvlFunc_964_2009f70
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0x11
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x2d
	bne	.L1f8c
	ldr	r0, =0x974
	bl	__Func_8079358
	b	.L1f92
.L1f8c:
	ldr	r0, =0x974
	bl	__Func_8079374
.L1f92:
	mov	r0, #0x12
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x2e
	bne	.L1fa8
	ldr	r0, =0x975
	bl	__Func_8079358
	b	.L1fae
.L1fa8:
	ldr	r0, =0x975
	bl	__Func_8079374
.L1fae:
	bl	OvlFunc_964_200a52c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009f70

.thumb_func_start OvlFunc_964_2009fc4
	push	{lr}
	bl	__Func_80916b0
	bl	OvlFunc_964_20080c4
	bl	OvlFunc_964_2009f70
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009fc4

.thumb_func_start OvlFunc_964_2009fdc
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #8
	str	r3, [sp]
	mov	r5, #0x31
	mov	r0, #0x48
	mov	r1, #0x31
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x2b
	str	r3, [sp, #4]
	mov	r0, #0x71
	mov	r3, #1
	mov	r1, #0x2b
	mov	r2, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x64
	mov	r1, #0
	mov	r2, #0
	bl	__Func_808edac
	mov	r0, #0x65
	mov	r1, #0
	mov	r2, #0
	bl	__Func_808edac
	mov	r1, #0x88
	mov	r2, #0xc6
	mov	r0, #0xf
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0xc6
	mov	r2, #0xae
	mov	r0, #0x10
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_80923e4
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009fdc

.thumb_func_start OvlFunc_964_200a040
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #8
	str	r3, [sp]
	mov	r5, #0x31
	mov	r0, #8
	mov	r1, #0x71
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x2b
	str	r3, [sp, #4]
	mov	r0, #0x31
	mov	r3, #1
	mov	r1, #0x6b
	mov	r2, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r1, #1
	mov	r2, #1
	mov	r0, #0x64
	neg	r1, r1
	neg	r2, r2
	bl	__Func_808edac
	mov	r1, #1
	mov	r2, #1
	mov	r0, #0x65
	neg	r1, r1
	neg	r2, r2
	bl	__Func_808edac
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_200a040

.thumb_func_start OvlFunc_964_200a0a4
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r3, #0x13
	mov	r2, #0x2d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2d
	mov	r2, #0xb
	mov	r3, #8
	mov	r0, #0x53
	bl	__Func_8010704
	mov	r0, #0x13
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #0x13
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x14
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #0x14
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x15
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #0x15
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x16
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #0x16
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x17
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #0x17
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, #0x14
	mov	r3, #1
	mov	r1, #0x38
	mov	r2, #1
	asr	r5, #20
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x13
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r3, #20
	mov	r6, #0
	cmp	r3, #0x19
	bne	.L2194
	mov	r0, #0x13
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x31
	bne	.L2194
	mov	r6, #1
.L2194:
	mov	r0, #0x14
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x17
	bne	.L21b2
	mov	r0, #0x14
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x31
	bne	.L21b2
	add	r6, #1
.L21b2:
	mov	r0, #0x15
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x19
	bne	.L21d0
	mov	r0, #0x15
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x2f
	bne	.L21d0
	add	r6, #1
.L21d0:
	mov	r0, #0x16
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x17
	bne	.L21ee
	mov	r0, #0x16
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x2f
	bne	.L21ee
	add	r6, #1
.L21ee:
	mov	r0, #0x17
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x18
	bne	.L220c
	mov	r0, #0x17
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x30
	bne	.L220c
	add	r6, #1
.L220c:
	cmp	r6, #5
	bne	.L227c
	ldr	r0, =0x984
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2220
	bl	__Func_8091750
	b	.L22e4
.L2220:
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r0, #0xec
	mov	r1, #1
	mov	r2, #0xc3
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #18
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__Func_809163c
	ldr	r0, =0x984
	bl	__Func_8079358
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L33ec
	mov	r1, #0x20
	mov	r2, #0x2e
	bl	__Func_8010560
	mov	r3, #0x20
	mov	r2, #0x2f
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x18
	mov	r1, #0x3c
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r0, #0x28
	bl	__Func_809163c
	b	.L22e0
.L227c:
	ldr	r0, =0x984
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L22e0
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r0, #0xec
	mov	r1, #1
	mov	r2, #0xc3
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #18
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__Func_809163c
	ldr	r0, =0x984
	bl	__Func_8079374
	mov	r0, #0x9f
	bl	__Func_80f9080
	ldr	r0, =.L340c
	mov	r1, #0x20
	mov	r2, #0x2e
	bl	__Func_8010560
	mov	r3, #0x20
	mov	r2, #0x2f
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1f
	mov	r1, #0x2f
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r0, #0x28
	bl	__Func_809163c
.L22e0:
	bl	__Func_8091750
.L22e4:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_200a0a4

.thumb_func_start OvlFunc_964_200a300
	push	{lr}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r3, #0x13
	mov	r2, #0x2d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0x2d
	mov	r2, #0xb
	mov	r3, #8
	bl	__Func_8010704
	bl	OvlFunc_964_20080c4
	bl	OvlFunc_964_200a0a4
	bl	__Func_8091750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_200a300

.thumb_func_start OvlFunc_964_200a330
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	ldr	r0, =0x268b
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_200a330

.thumb_func_start OvlFunc_964_200a354
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x953
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_200a354

.thumb_func_start OvlFunc_964_200a370
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xac
	cmp	r2, r3
	bne	.L2388
	ldr	r0, =.L3c0c
	b	.L238a
.L2388:
	ldr	r0, =.L3ef4
.L238a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_964_200a370

.thumb_func_start OvlFunc_964_200a3a0
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #9
	mov	r2, #0x26
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #5
	mov	r2, #5
	mov	r0, #0x49
	mov	r1, #0x26
	bl	__Func_8010704
	mov	r1, #8
	mov	r0, #9
	bl	OvlFunc_964_2008f10
	mov	r0, #8
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #8
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x24
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #2
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #9
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #9
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	asr	r5, #20
	mov	r0, #2
	mov	r1, #0x24
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_200a3a0

.thumb_func_start OvlFunc_964_200a410
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x1d
	mov	r2, #0x1e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #5
	mov	r2, #6
	mov	r0, #0x5d
	mov	r1, #0x1e
	bl	__Func_8010704
	mov	r1, #0xa
	mov	r0, #0xb
	bl	OvlFunc_964_2008f10
	mov	r0, #0xa
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #0xa
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x24
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #2
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0xb
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #0xb
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	asr	r5, #20
	mov	r0, #2
	mov	r1, #0x24
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_200a410

.thumb_func_start OvlFunc_964_200a480
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x31
	str	r3, [sp, #4]
	mov	r5, #0x19
	mov	r0, #0x59
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x33
	str	r3, [sp, #4]
	mov	r1, #0x33
	mov	r2, #8
	mov	r3, #5
	mov	r0, #0x59
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0xe
	bl	__Func_8092054
	mov	r3, #1
	add	r0, #0x22
	strb	r3, [r0]
	mov	r0, #0xc
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #0xc
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x34
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x16
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0xd
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #0xd
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x34
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x16
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0xe
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #0xe
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	asr	r5, #20
	mov	r0, #0x16
	mov	r1, #0x34
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_200a480

.thumb_func_start OvlFunc_964_200a52c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	mov	r3, #0x2c
	mov	r2, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x13
	mov	r2, #4
	mov	r3, #1
	mov	r0, #0x6c
	bl	__Func_8010704
	mov	r0, #0x11
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #0x11
	bl	__Func_8092054
	ldr	r2, [r0, #0x10]
	asr	r5, #20
	mov	r3, #1
	mov	r1, r5
	asr	r2, #20
	mov	r6, #0xff
	mov	r0, #0
	str	r3, [sp]
	str	r6, [sp, #4]
	mov	r8, r3
	bl	OvlFunc_964_2008244
	mov	r0, #0x12
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #0x12
	bl	__Func_8092054
	ldr	r2, [r0, #0x10]
	asr	r5, #20
	mov	r3, r8
	asr	r2, #20
	mov	r1, r5
	mov	r0, #0
	str	r3, [sp]
	str	r6, [sp, #4]
	bl	OvlFunc_964_2008244
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_200a52c

.thumb_func_start OvlFunc_964_200a59c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r2, #1
	lsl	r3, #2
	str	r3, [r1, r2]
	ldr	r5, =ewram_2000240
	ldr	r6, =0xac
	ldrsh	r2, [r5, r2]
	sub	sp, #8
	cmp	r2, r6
	beq	.L25c2
	ldr	r3, =0xad
	cmp	r2, r3
	bne	.L25d8
.L25c2:
	mov	r0, #0
	bl	__Func_8091494
	ldr	r2, =0x242
	mov	r1, #0x90
	add	r3, r5, r2
	lsl	r1, #2
	mov	r2, #1
	strh	r2, [r3]
	add	r3, r5, r1
	strh	r6, [r3]
.L25d8:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, r6
	beq	.L25e8
	b	.L2a30
.L25e8:
	add	r2, #2
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	r2, r3, #1
	cmp	r2, #0xc
	bls	.L25fa
	bl	.L2fda
.L25fa:
	lsl	r3, r2, #2
	ldr	r2, =.L2604
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L2604:
	.word	.L2638
	.word	.L2638
	.word	.L270e
	.word	.L270e
	.word	.L274e
	.word	.L274e
	.word	.L274e
	.word	.L2792
	.word	.L2792
	.word	.L27d2
	.word	.L27d2
	.word	.L29a8
	.word	.L29a8
.L2638:
	ldr	r0, =0x982
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2694
	mov	r3, #5
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #4
	mov	r2, #0x4a
	mov	r3, #9
	bl	__Func_8010424
	mov	r5, #3
	mov	r6, #2
	mov	r0, #0x12
	mov	r1, #0x53
	mov	r2, #9
	mov	r3, #0x49
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x12
	mov	r1, #0x51
	mov	r2, #9
	mov	r3, #0x4b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x12
	mov	r1, #0x53
	mov	r2, #9
	mov	r3, #0x4d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x12
	mov	r1, #0x53
	mov	r2, #9
	mov	r3, #0x4f
	b	.L26e2
.L2694:
	ldr	r0, =0x983
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L26a2
	bl	.L2fda
.L26a2:
	mov	r3, #5
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0xd
	mov	r2, #0x4a
	mov	r3, #9
	bl	__Func_8010424
	mov	r5, #3
	mov	r6, #2
	mov	r0, #0x12
	mov	r1, #0x55
	mov	r2, #0xb
	mov	r3, #0x4a
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x12
	mov	r1, #0x53
	mov	r2, #0xd
	mov	r3, #0x4b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x12
	mov	r1, #0x55
	mov	r2, #0xb
	mov	r3, #0x4c
.L26e2:
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x12
	mov	r1, #0x53
	mov	r2, #0xb
	mov	r3, #0x4e
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x12
	mov	r1, #0x53
	mov	r2, #0xd
	mov	r3, #0x4f
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	bl	.L2fda
.L270e:
	bl	OvlFunc_964_200a3a0
	mov	r0, #8
	bl	__Func_8092054
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #9
	bl	__Func_8092054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #8
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #9
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #8
	bl	__Func_8092054
	ldr	r5, =OvlFunc_964_2008ec8
	str	r5, [r0, #0x6c]
	mov	r0, #9
	b	.L2a1e
.L274e:
	ldr	r0, =0x982
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L276c
	mov	r3, #0x1e
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #2
	bl	__Func_80105d4
.L276c:
	ldr	r0, =0x983
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L277a
	bl	.L2fda
.L277a:
	mov	r3, #0x20
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #2
	bl	__Func_80105d4
	bl	.L2fda
.L2792:
	bl	OvlFunc_964_200a410
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xb
	bl	__Func_8092054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xa
	bl	__Func_8092054
	ldr	r5, =OvlFunc_964_2008ec8
	str	r5, [r0, #0x6c]
	mov	r0, #0xb
	b	.L2a1e
.L27d2:
	mov	r0, #0x12
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x13
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x15
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x14
	mov	r1, #0xf
	bl	__Func_8092950
	mov	r0, #0x15
	mov	r1, #0xf
	bl	__Func_8092950
	ldr	r0, =0x971
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L289c
	mov	r3, #1
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3b
	mov	r1, #8
	mov	r2, #0x31
	mov	r3, #8
	bl	__Func_8010424
	mov	r3, #0x31
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	mov	r5, #8
	mov	r0, #0x33
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x12
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_80924d4
	mov	r3, #0x2e
	str	r3, [sp]
	mov	r0, #0x2d
	mov	r3, #1
	mov	r1, #4
	mov	r2, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r1, #0xba
	mov	r2, #0x88
	lsl	r1, #18
	lsl	r2, #16
	mov	r0, #0x12
	bl	__Func_80923e4
	mov	r0, #0x12
	bl	__Func_8092054
	ldr	r3, =0xfff00000
	mov	r1, #0xba
	mov	r2, #0x88
	str	r3, [r0, #0xc]
	lsl	r1, #18
	mov	r0, #0x14
	lsl	r2, #16
	bl	__Func_80923e4
.L289c:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L28b8
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0x14
	mov	r1, #5
	bl	__Func_80924d4
.L28b8:
	ldr	r0, =0x202
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L28ca
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_80924d4
.L28ca:
	ldr	r0, =0x972
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2952
	mov	r3, #1
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3b
	mov	r1, #8
	mov	r2, #0x2d
	mov	r3, #0xe
	bl	__Func_8010424
	mov	r3, #0x2d
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	mov	r5, #0xe
	mov	r0, #0x33
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x13
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_80924d4
	mov	r3, #0x30
	str	r3, [sp]
	mov	r0, #0x2d
	mov	r3, #1
	mov	r1, #4
	mov	r2, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r1, #0xc2
	mov	r2, #0xe8
	lsl	r1, #18
	lsl	r2, #16
	mov	r0, #0x13
	bl	__Func_80923e4
	mov	r0, #0x13
	bl	__Func_8092054
	ldr	r3, =0xfff00000
	mov	r1, #0xc2
	mov	r2, #0xe8
	str	r3, [r0, #0xc]
	lsl	r1, #18
	mov	r0, #0x15
	lsl	r2, #16
	bl	__Func_80923e4
	ldr	r0, =0x202
	bl	__Func_8079358
.L2952:
	ldr	r0, =0x201
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L295e
	b	.L2fda
.L295e:
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0x15
	mov	r1, #5
	bl	__Func_80924d4
	b	.L2fda

	.pool_aligned

.L29a8:
	bl	OvlFunc_964_200a480
	mov	r0, #0xc
	bl	__Func_8092054
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xd
	bl	__Func_8092054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xf
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x10
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x11
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xc
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xd
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xe
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xc
	bl	__Func_8092054
	ldr	r5, =OvlFunc_964_2008ec8
	str	r5, [r0, #0x6c]
	mov	r0, #0xd
	bl	__Func_8092054
	str	r5, [r0, #0x6c]
	mov	r0, #0xe
.L2a1e:
	bl	__Func_8092054
	mov	r1, #0xc8
	str	r5, [r0, #0x6c]
	lsl	r1, #4
	ldr	r0, =OvlFunc_964_2008e20
	bl	__Func_80041d8
	b	.L2fda
.L2a30:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0x11
	bls	.L2a40
	b	.L2fda
.L2a40:
	ldr	r2, =.L2a48
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L2a48:
	.word	.L2fda
	.word	.L2a90
	.word	.L2a90
	.word	.L2a90
	.word	.L2bac
	.word	.L2bac
	.word	.L2aee
	.word	.L2aee
	.word	.L2db2
	.word	.L2db2
	.word	.L2db2
	.word	.L2db2
	.word	.L2df6
	.word	.L2e1a
	.word	.L2e1a
	.word	.L2fda
	.word	.L2fda
	.word	.L2fc2
.L2a90:
	ldr	r3, =0x242
	mov	r1, #0x90
	add	r2, r5, r3
	mov	r3, #1
	strh	r3, [r2]
	lsl	r1, #2
	ldr	r2, =0xb0
	add	r3, r5, r1
	strh	r2, [r3]
	ldr	r0, =0x12f
	bl	__Func_8079374
	mov	r0, #0x11
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0x12
	mov	r1, #6
	bl	__Func_8092950
	ldr	r0, =0x974
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2ad0
	mov	r1, #0xb6
	mov	r2, #0x9c
	mov	r0, #0x11
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80923e4
.L2ad0:
	ldr	r0, =0x975
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2ae8
	mov	r1, #0xba
	mov	r2, #0x9c
	mov	r0, #0x12
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80923e4
.L2ae8:
	bl	OvlFunc_964_200a52c
	b	.L2fda
.L2aee:
	mov	r1, #1
	mov	r0, #8
	bl	__Func_8092b08
	mov	r0, #8
	bl	__Func_8092054
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #8
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #9
	mov	r1, #1
	bl	__Func_8092b08
	mov	r1, #0xf
	mov	r0, #9
	bl	__Func_8092950
	mov	r0, #9
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #9
	bl	__Func_8092054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L2b42
	b	.L2fda
.L2b42:
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092950
	mov	r1, #5
	mov	r0, #9
	bl	__Func_80924d4
	mov	r0, #9
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #9
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x1a
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #9
	bl	__Func_8092054
	ldr	r5, =OvlFunc_964_2008ec8
	str	r5, [r0, #0x6c]
	mov	r0, #8
	bl	__Func_8092054
	str	r5, [r0, #0x6c]
	b	.L2fda

	.pool_aligned

.L2bac:
	ldr	r0, =0x109
	bl	__Func_8079338
	mov	r7, r0
	cmp	r7, #0
	beq	.L2bba
	b	.L2daa
.L2bba:
	mov	r0, #0xa
	bl	__Func_8092054
	add	r0, #0x55
	strb	r7, [r0]
	mov	r0, #0xb
	bl	__Func_8092054
	add	r0, #0x55
	strb	r7, [r0]
	mov	r0, #0xa
	bl	__Func_8092054
	ldr	r5, =0xffd00000
	str	r5, [r0, #0xc]
	mov	r0, #0xb
	bl	__Func_8092054
	str	r5, [r0, #0xc]
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r2, #2
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r8, r2
	mov	r1, r8
	orr	r3, r1
	strb	r3, [r0]
	mov	r0, #0xb
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, r8
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__Func_8092054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0xb
	bl	__Func_8092054
	add	r0, #0x59
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r5, #3
	add	r0, #0x64
	strh	r5, [r0]
	mov	r0, #0xb
	bl	__Func_8092054
	add	r0, #0x64
	strh	r5, [r0]
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_8092b08
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_8092b08
	mov	r0, #0xc
	bl	__Func_8092054
	ldr	r6, .L2c8c	@ 0
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0xd
	bl	__Func_8092054
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0xe
	bl	__Func_8092054
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0xc
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xd
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xe
	bl	__Func_8092054
	mov	r1, #0
	b	.L2c98

	.align	2, 0
.L2c8c:
	.word	0
	.pool

.L2c98:
	bl	__Func_800c528
	mov	r0, #0xc
	bl	__Func_8092054
	add	r0, #0x64
	strh	r7, [r0]
	mov	r0, #0xd
	bl	__Func_8092054
	add	r0, #0x64
	strh	r7, [r0]
	mov	r0, #0xe
	bl	__Func_8092054
	ldr	r3, =ewram_2000240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	add	r0, #0x64
	strh	r7, [r0]
	cmp	r3, #5
	beq	.L2ccc
	b	.L2fda
.L2ccc:
	mov	r0, #0xa
	bl	__Func_8092054
	ldr	r3, =0xffe00000
	str	r3, [r0, #0xc]
	mov	r0, #0xb
	bl	__Func_8092054
	ldr	r3, =0xffc00000
	str	r3, [r0, #0xc]
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r3, #2
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r3, #4
	add	r0, #0x64
	mov	r1, #0xc8
	mov	r2, #0x98
	lsl	r1, #16
	lsl	r2, #16
	strh	r3, [r0]
	mov	r0, #0xc
	bl	__Func_80923e4
	mov	r0, #0xc
	bl	__Func_8092054
	mov	r3, #0xb
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0xc
	bl	__Func_8092054
	ldr	r5, =OvlFunc_964_2009a98
	str	r5, [r0, #0x6c]
	mov	r0, #0xc
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r1, r8
	orr	r3, r1
	mov	r2, #0x98
	mov	r1, #0xc8
	lsl	r1, #16
	lsl	r2, #16
	strb	r3, [r0]
	mov	r0, #0xd
	bl	__Func_80923e4
	mov	r0, #0xd
	bl	__Func_8092054
	mov	r3, #0xc
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0xd
	bl	__Func_8092054
	str	r5, [r0, #0x6c]
	mov	r0, #0xd
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, r8
	orr	r3, r2
	mov	r1, #0x88
	mov	r2, #0x98
	lsl	r2, #16
	lsl	r1, #16
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__Func_80923e4
	mov	r0, #0xe
	bl	__Func_8092054
	mov	r3, #0xa
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0xe
	bl	__Func_8092054
	str	r5, [r0, #0x6c]
	mov	r0, #0xe
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r1, r8
	orr	r3, r1
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_809163c
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x201
	bl	__Func_8079358
	ldr	r0, =0x202
	bl	__Func_8079358
.L2daa:
	mov	r0, #0
	bl	OvlFunc_964_2009abc
	b	.L2fda
.L2db2:
	ldr	r0, =0x982
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2dd0
	mov	r3, #0x10
	mov	r2, #0x1e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #2
	bl	__Func_80105d4
.L2dd0:
	ldr	r0, =0x983
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2dee
	mov	r3, #0x16
	mov	r2, #0x1e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #2
	bl	__Func_80105d4
.L2dee:
	ldr	r0, =0x973
	bl	__Func_8079358
	b	.L2fda
.L2df6:
	mov	r3, #8
	mov	r2, #0x71
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #8
	mov	r1, #0x31
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	bl	OvlFunc_964_2009fdc
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_964_2008e20
	lsl	r1, #4
	bl	__Func_80041d8
	b	.L2fda
.L2e1a:
	mov	r0, #1
	bl	__Func_809163c
	ldr	r0, =0x984
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2e84
	mov	r3, #0x20
	mov	r2, #0x2e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #2
	mov	r0, #0x18
	mov	r1, #0x3b
	mov	r2, #1
	bl	__Func_80105d4
	mov	r1, #0xcc
	mov	r2, #0xc6
	mov	r0, #0x13
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0xbc
	mov	r2, #0xc6
	mov	r0, #0x14
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0xcc
	mov	r2, #0xbe
	mov	r0, #0x15
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0xbc
	mov	r2, #0xbe
	mov	r0, #0x16
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0xc4
	mov	r2, #0xc2
	mov	r0, #0x17
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_80923e4
.L2e84:
	mov	r0, #0x13
	bl	__Func_8092054
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__Func_8092054
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x15
	bl	__Func_8092054
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x16
	bl	__Func_8092054
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x17
	bl	__Func_8092054
	add	r0, #0x55
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #4
	mov	r0, #0x13
	bl	__Func_8092950
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0x15
	mov	r1, #4
	bl	__Func_8092950
	mov	r0, #0x16
	mov	r1, #0xa
	bl	__Func_8092950
	mov	r0, #0x17
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_80924d4
	mov	r1, #2
	mov	r0, #0x17
	bl	__Func_80924d4
	mov	r0, #0x13
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #0x13
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x14
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #0x14
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x15
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #0x15
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x16
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #0x16
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x14
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x17
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #0x17
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	asr	r5, #20
	str	r3, [sp, #4]
	mov	r0, #0x14
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	b	.L2fda
.L2fc2:
	mov	r3, #0x31
	mov	r2, #0x6b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x2b
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	bl	OvlFunc_964_2009fdc
.L2fda:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_964_200a59c

	.section .data
	.global .L31f0
	.global .L3230
	.global .L3248
	.global .L336c
	.global .L33b8
	.global .L342c
	.global .L3474
	.global .L3654
	.global .L381c
	.global .L385c
	.global .L38f4
	.global .L3a74

.L31f0:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x31f0, (0x3230-0x31f0)
.L3230:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3230, (0x3248-0x3230)
.L3248:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3248, (0x3350-0x3248)
.L3350:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3350, (0x336c-0x3350)
.L336c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x336c, (0x33b8-0x336c)
.L33b8:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x33b8, (0x33ec-0x33b8)
.L33ec:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x33ec, (0x340c-0x33ec)
.L340c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x340c, (0x342c-0x340c)
.L342c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x342c, (0x3474-0x342c)
.L3474:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3474, (0x3654-0x3474)
.L3654:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3654, (0x381c-0x3654)
.L381c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x381c, (0x385c-0x381c)
.L385c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x385c, (0x38f4-0x385c)
.L38f4:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x38f4, (0x3a74-0x38f4)
.L3a74:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3a74, (0x3c0c-0x3a74)
.L3c0c:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3c0c, (0x3ef4-0x3c0c)
.L3ef4:
	.incbin "overlays/rom_7ed0a0/orig.bin", 0x3ef4
