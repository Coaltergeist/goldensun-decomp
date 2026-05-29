	.include "macros.inc"

.thumb_func_start OvlFunc_958_2009384
	push	{lr}
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	pop	{r0}
	bx	r0
.func_end OvlFunc_958_2009384

.thumb_func_start OvlFunc_958_2009394
	push	{r5, lr}
	ldr	r5, =ewram_2000240
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
	bl	__Func_8079358
	mov	r0, #0x9a
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L13c8
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
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
	bl	__Func_8010704
.L13fa:
	ldr	r0, =0x9a2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L142e
	mov	r1, #0xdc
	mov	r2, #0x9a
	lsl	r2, #17
	mov	r0, #8
	lsl	r1, #17
	bl	__Func_80923e4
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80924d4
	mov	r3, #0x1b
	mov	r2, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1d
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L142e:
	ldr	r0, =0x9a5
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1458
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r1, #0xae
	mov	r2, #0x90
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80924d4
.L1458:
	mov	r0, #0xc
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
.L1464:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_958_2009394

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
