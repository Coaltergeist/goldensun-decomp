	.include "macros.inc"

.thumb_func_start OvlFunc_918_200985c
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r5, [r6, #0x44]
	ldr	r3, [r6, #8]
	add	r3, r5
	str	r3, [r6, #8]
	ldr	r2, [r6, #0x48]
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r7, [r6, #0x4c]
	ldr	r3, [r6, #0x10]
	mov	r0, r5
	add	r3, r7
	mov	r1, #0x12
	str	r3, [r6, #0x10]
	bl	_Func_8000af0
	sub	r5, r0
	str	r5, [r6, #0x44]
	mov	r3, r7
	cmp	r7, #0
	bge	.L188c
	add	r3, #0xf
.L188c:
	asr	r3, #4
	sub	r3, r7, r3
	str	r3, [r6, #0x4c]
	ldr	r2, [r6, #0x30]
	ldr	r3, [r6, #0x18]
	add	r3, r2
	str	r3, [r6, #0x18]
	ldr	r2, [r6, #0x34]
	ldr	r3, [r6, #0x1c]
	add	r3, r2
	str	r3, [r6, #0x1c]
	ldr	r1, [r6, #0x50]
	mov	r2, r6
	add	r2, #0x64
	ldrh	r3, [r1, #0x1e]
	ldrh	r2, [r2]
	add	r3, r2
	strh	r3, [r1, #0x1e]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_918_200985c

.thumb_func_start OvlFunc_918_20098b8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x44
	bl	__Func_80916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0
	bl	__Func_8092054
	mov	r3, #0x82
	lsl	r3, #16
	str	r3, [r0, #0xc]
	mov	r0, #0
	bl	__Func_8092054
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r0, #0x48]
	mov	r0, #0
	bl	__Func_8092054
	mov	r5, #0
	str	r5, [r0, #0x44]
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x55
	strb	r5, [r0]
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0xcc
	bl	__Func_80f9080
	mov	r0, #0
	bl	__Func_8092054
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0x18
	bl	__Func_809163c
	mov	r0, #0
	bl	__Func_8092054
	mov	r10, r0
	add	r0, sp, #0x1c
	mov	r3, #7
	str	r3, [r0, #4]
	ldr	r3, =OvlFunc_918_200985c
	str	r3, [r0, #0x24]
	ldr	r3, =0xcccc
	str	r3, [r0, #8]
	str	r3, [r0, #0xc]
	mov	r8, r0
	mov	r7, #0
	add	r6, sp, #0x10
.L194c:
	lsl	r5, r7, #12
	mov	r0, r5
	bl	__Func_800231c
	mov	r3, #0
	str	r0, [r6]
	mov	r0, r5
	str	r3, [r6, #4]
	bl	__Func_8002322
	ldr	r3, [r6]
	lsr	r2, r3, #31
	add	r2, r3, r2
	asr	r2, #1
	add	r3, r2
	str	r0, [r6, #8]
	str	r3, [r6]
	mov	r2, r10
	ldr	r5, [r2, #8]
	ldr	r1, [r2, #0xc]
	ldr	r4, [r6, #4]
	ldr	r2, [r2, #0x10]
	str	r0, [sp, #4]
	ldr	r0, =0x1090001
	str	r4, [sp]
	str	r0, [sp, #8]
	mov	r4, r8
	mov	r0, r5
	add	r7, #1
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	cmp	r7, #0x10
	bls	.L194c
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r0, #0
	ldr	r1, =0x101
	bl	__Func_8093874
	mov	r0, #0
	mov	r1, #0x16
	bl	__Func_80924d4
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r0, r0
	neg	r1, r1
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_8093874
	mov	r0, #0
	bl	__Func_8092054
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x48]
	mov	r0, #0
	bl	__Func_8092054
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r0, #0x44]
	bl	__Func_8091750
	add	sp, #0x44
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_918_20098b8

	.section .data
	.global .L1ca8

.L1ca8:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1ca8, (0x1da8-0x1ca8)
