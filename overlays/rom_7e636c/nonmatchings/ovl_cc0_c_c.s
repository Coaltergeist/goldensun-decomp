	.include "macros.inc"

.thumb_func_start OvlFunc_11c8
	ldr	r2, [r0, #0x50]
	ldr	r1, =0xfffffc00
	ldrh	r3, [r2, #0x1e]
	add	r3, r1
	strh	r3, [r2, #0x1e]
	bx	lr
.func_end OvlFunc_11c8

.thumb_func_start OvlFunc_11d8
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r6, r1
	mov	r5, #0x28
.L11e0:
	cmp	r5, #0
	beq	.L11f2
	mov	r0, #1
	bl	__Func_30f8
	ldr	r3, [r7, #0xc]
	sub	r5, #1
	cmp	r3, r6
	bgt	.L11e0
.L11f2:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_11d8

.thumb_func_start OvlFunc_11f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	mov	r11, r0
	bl	__Func_92054
	mov	r6, r0
	mov	r5, r6
	mov	r3, #0
	add	r5, #0x55
	strb	r3, [r5]
	mov	r8, r3
.L121a:
	mov	r0, #1
	bl	__Func_30f8
	ldr	r2, [r6, #0x50]
	ldr	r1, =0xffffff00
	ldrh	r3, [r2, #0x1e]
	add	r3, r1
	strh	r3, [r2, #0x1e]
	ldr	r3, [r6, #0x50]
	ldrh	r0, [r3, #0x1e]
	bl	__Func_231c
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
	cmp	r3, #8
	bls	.L121a
	ldr	r3, =OvlFunc_11c8
	mov	r0, #0x88
	str	r3, [r6, #0x6c]
	bl	__Func_f9080
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r11
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0xec
	mov	r2, #0x90
	lsl	r1, #1
	mov	r0, r11
	lsl	r2, #1
	bl	__Func_92128
	ldr	r3, =0xcccc
	str	r3, [r6, #0x48]
	mov	r3, #3
	strb	r3, [r5]
	mov	r3, r6
	add	r3, #0x22
	mov	r2, #0
	strb	r2, [r3]
	mov	r0, r11
	bl	__Func_923c4
	mov	r1, #0x80
	lsl	r1, #14
	mov	r0, r6
	bl	OvlFunc_11d8
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	mov	r4, #0
	add	r7, sp, #0x10
	mov	r8, r4
	mov	r10, r7
	mov	r9, r4
.L12bc:
	mov	r1, r8
	lsl	r5, r1, #12
	mov	r0, r5
	bl	__Func_231c
	mov	r2, r10
	mov	r3, r9
	str	r0, [r2]
	str	r3, [r2, #4]
	mov	r0, r5
	bl	__Func_2322
	mov	r4, r10
	ldr	r2, [r4]
	str	r0, [r4, #8]
	mov	r3, r2
	cmp	r2, #0
	bge	.L12e2
	add	r3, r2, #3
.L12e2:
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
	bls	.L12bc
	mov	r1, #0xdc
	mov	r2, #0x9a
	lsl	r2, #1
	mov	r0, r11
	lsl	r1, #1
	bl	__Func_92128
	mov	r0, r11
	bl	__Func_923c4
	mov	r1, #0x80
	lsl	r1, #14
	mov	r0, r6
	bl	OvlFunc_11d8
	mov	r3, r9
	ldr	r2, [r6, #0x50]
	str	r3, [r6, #0x6c]
	mov	r3, #0x80
	lsl	r3, #5
	strh	r3, [r2, #0x1e]
	mov	r0, #0x9a
	bl	__Func_f9080
	mov	r0, r11
	mov	r1, #3
	bl	__Func_924d4
	bl	__Func_12350
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, r11
	mov	r1, #2
	bl	__Func_924d4
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_11f8

.thumb_func_start OvlFunc_1380
	bx	lr
.func_end OvlFunc_1380

.thumb_func_start OvlFunc_1384
	push	{lr}
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	pop	{r0}
	bx	r0
.func_end OvlFunc_1384

.thumb_func_start OvlFunc_1394
	push	{r5, lr}
	ldr	r5, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x98
	sub	sp, #8
	cmp	r2, r3
	bne	.L13c8
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__Func_79358
	mov	r0, #0x9a
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L13c8
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L13c8:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x9e
	cmp	r2, r3
	bne	.L1464
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #1
	bne	.L13fa
	mov	r3, #0x6b
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6c
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L13fa:
	ldr	r0, =0x9a2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L142e
	mov	r1, #0xdc
	mov	r2, #0x9a
	lsl	r2, #17
	mov	r0, #8
	lsl	r1, #17
	bl	__Func_923e4
	mov	r0, #8
	mov	r1, #2
	bl	__Func_924d4
	mov	r3, #0x1b
	mov	r2, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1d
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L142e:
	ldr	r0, =0x9a5
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1458
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xae
	mov	r2, #0x90
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_924d4
.L1458:
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
.L1464:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1394

	.section .data
	.global .L191c
	.global .L195c
	.global .L1974
	.global .L19d4
	.global .L1a4c
	.global .L1aac
	.global .L1b3c
	.global .L1b48
	.global .L1bcc
	.global .L1c80
	.global .L1ce0
	.global .L1784
	.global .L17b4
	.global .L17fc
	.global .L1874

.L1784:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1784, (0x17b4-0x1784)
.L17b4:
	.incbin "overlays/rom_7e636c/orig.bin", 0x17b4, (0x17fc-0x17b4)
.L17fc:
	.incbin "overlays/rom_7e636c/orig.bin", 0x17fc, (0x1874-0x17fc)
.L1874:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1874, (0x191c-0x1874)
.L191c:
	.incbin "overlays/rom_7e636c/orig.bin", 0x191c, (0x195c-0x191c)
.L195c:
	.incbin "overlays/rom_7e636c/orig.bin", 0x195c, (0x1974-0x195c)
.L1974:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1974, (0x19d4-0x1974)
.L19d4:
	.incbin "overlays/rom_7e636c/orig.bin", 0x19d4, (0x1a4c-0x19d4)
.L1a4c:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1a4c, (0x1aac-0x1a4c)
.L1aac:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1aac, (0x1b3c-0x1aac)
.L1b3c:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1b3c, (0x1b48-0x1b3c)
.L1b48:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1b48, (0x1bcc-0x1b48)
.L1bcc:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1bcc, (0x1c80-0x1bcc)
.L1c80:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1c80, (0x1ce0-0x1c80)
.L1ce0:
	.incbin "overlays/rom_7e636c/orig.bin", 0x1ce0
