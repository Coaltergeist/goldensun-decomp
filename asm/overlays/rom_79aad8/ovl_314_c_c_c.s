	.include "macros.inc"

.thumb_func_start OvlFunc_906_20084f4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x44
	mov	r11, r0
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r5, r6
	mov	r3, #0
	add	r5, #0x55
	strb	r3, [r5]
	mov	r8, r3
.L516:
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r2, [r6, #0x50]
	ldr	r1, =0xffffff00
	ldrh	r3, [r2, #0x1e]
	add	r3, r1
	strh	r3, [r2, #0x1e]
	ldr	r3, [r6, #0x50]
	ldrh	r0, [r3, #0x1e]
	bl	__Func_800231c
	lsr	r3, r0, #31
	add	r0, r3
	ldr	r3, [r6, #8]
	asr	r0, #1
	sub	r3, r0
	str	r3, [r6, #8]
	mov	r2, #1
	mov	r3, #0x80
	lsl	r3, #24
	add	r8, r2
	str	r3, [r6, #0x38]
	mov	r3, r8
	cmp	r3, #0x11
	bls	.L516
	ldr	r3, =OvlFunc_906_20084c4
	mov	r1, #0xc0
	mov	r2, #0xc0
	str	r3, [r6, #0x6c]
	mov	r0, r11
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r1, #0xbc
	mov	r2, #0x90
	lsl	r1, #1
	mov	r0, r11
	lsl	r2, #1
	bl	__Func_8092128
	ldr	r3, =0xcccc
	str	r3, [r6, #0x48]
	mov	r3, #3
	strb	r3, [r5]
	mov	r3, r6
	add	r3, #0x22
	mov	r2, #0
	strb	r2, [r3]
	mov	r0, r11
	bl	__Func_80923c4
	mov	r1, #0
	mov	r0, r6
	bl	OvlFunc_906_20084d4
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r0, #0xa0
	lsl	r0, #11
	mov	r2, #0x80
	mov	r1, r0
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #0x8d
	bl	__Func_80f9080
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r4, #0
	add	r7, sp, #0x38
	mov	r8, r4
	mov	r10, r7
	mov	r9, r4
.L5ba:
	mov	r1, r8
	lsl	r5, r1, #12
	mov	r0, r5
	bl	__Func_800231c
	mov	r2, r10
	mov	r3, r9
	str	r0, [r2]
	str	r3, [r2, #4]
	mov	r0, r5
	bl	__Func_8002322
	mov	r4, r10
	ldr	r2, [r4]
	str	r0, [r4, #8]
	mov	r3, r2
	cmp	r2, #0
	bge	.L5e0
	add	r3, r2, #3
.L5e0:
	lsr	r5, r0, #31
	add	r5, r0, r5
	asr	r3, #2
	asr	r5, #1
	sub	r3, r2, r3
	sub	r5, r0, r5
	str	r3, [r7]
	str	r5, [r7, #8]
	ldr	r4, [r7, #4]
	ldr	r1, [r6, #0xc]
	ldr	r2, [r6, #0x10]
	ldr	r0, [r6, #8]
	str	r4, [sp]
	mov	r4, r9
	str	r5, [sp, #4]
	str	r4, [sp, #8]
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0x10
	bls	.L5ba
	mov	r3, #0xa0
	lsl	r3, #11
	mov	r1, #0xad
	mov	r2, #0x92
	str	r3, [r6, #0x28]
	lsl	r2, #1
	mov	r0, r11
	lsl	r1, #1
	bl	__Func_8092128
	mov	r0, r11
	bl	__Func_80923c4
	mov	r0, r6
	mov	r1, #0
	bl	OvlFunc_906_20084d4
	mov	r3, r9
	str	r3, [r6, #0x6c]
	ldr	r2, [r6, #0x50]
	mov	r3, #0x80
	lsl	r3, #5
	strh	r3, [r2, #0x1e]
	add	r4, sp, #0x10
	mov	r3, #0xd6
	strh	r3, [r4, #0x18]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r4, #8]
	ldr	r3, =0xcccc
	str	r3, [r4, #0xc]
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r4, #0x10]
	ldr	r3, =0x13333
	str	r3, [r4, #0x14]
	mov	r3, r9
	ldr	r2, [r6, #0x10]
	ldr	r1, [r6, #0xc]
	ldr	r0, [r6, #8]
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0xe0
	lsl	r3, #13
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, #0x9a
	bl	__Func_80f9080
	mov	r0, r11
	mov	r1, #3
	bl	__Func_80924d4
	bl	__Func_8012350
	add	sp, #0x44
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_906_20084f4

	.section .data
	.global .L920
	.global .L948
	.global .L978
	.global .L990
	.global .L9f0
	.global .L818
	.global .L8d8

.L818:
	.incbin "overlays/rom_79aad8/orig.bin", 0x818, (0x8d8-0x818)
.L8d8:
	.incbin "overlays/rom_79aad8/orig.bin", 0x8d8, (0x920-0x8d8)
.L920:
	.incbin "overlays/rom_79aad8/orig.bin", 0x920, (0x948-0x920)
.L948:
	.incbin "overlays/rom_79aad8/orig.bin", 0x948, (0x978-0x948)
.L978:
	.incbin "overlays/rom_79aad8/orig.bin", 0x978, (0x990-0x978)
.L990:
	.incbin "overlays/rom_79aad8/orig.bin", 0x990, (0x9f0-0x990)
.L9f0:
	.incbin "overlays/rom_79aad8/orig.bin", 0x9f0
