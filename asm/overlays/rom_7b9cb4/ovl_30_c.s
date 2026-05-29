	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200b5ac
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	ldrh	r3, [r7, #6]
	mov	r2, #0x80
	lsl	r2, #7
	add	r6, r3, r2
	mov	r3, #0xc0
	lsl	r3, #8
	sub	sp, #0xc
	and	r6, r3
	ldr	r3, [r7, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	mov	r0, #0xc0
	mov	r1, r6
	lsl	r0, #13
	mov	r2, r5
	str	r3, [r5, #8]
	bl	__Func_800447c
	ldr	r3, [r5]
	mov	r1, #0x80
	lsl	r1, #12
	ldr	r2, =0xfff00000
	add	r3, r1
	and	r3, r2
	mov	r9, r3
	ldr	r3, [r5, #8]
	add	r3, r1
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, r7
	mov	r1, #5
	mov	r10, r3
	add	r6, r2
	bl	__Func_800c300
	mov	r0, #0xb8
	bl	__Func_80f9080
	mov	r3, #0xf
	mov	r8, r3
.L3610:
	mov	r2, #0x80
	lsl	r2, #3
	add	r6, r2
	mov	r0, #0xc0
	mov	r2, r10
	mov	r3, r9
	str	r2, [r5, #8]
	lsl	r0, #13
	mov	r1, r6
	mov	r2, r5
	str	r3, [r5]
	bl	__Func_800447c
	ldr	r3, [r5]
	str	r3, [r7, #8]
	mov	r2, #0x80
	ldr	r3, [r5, #8]
	lsl	r2, #7
	str	r3, [r7, #0x10]
	add	r3, r6, r2
	strh	r3, [r7, #6]
	mov	r0, #1
	bl	__Func_80030f8
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0
	bge	.L3610
	mov	r0, #0xe9
	bl	__Func_80f9080
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200b5ac

.thumb_func_start OvlFunc_932_200b668
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	ldrh	r3, [r7, #6]
	ldr	r2, =0xffffc000
	add	r6, r3, r2
	mov	r3, #0xc0
	lsl	r3, #8
	sub	sp, #0xc
	and	r6, r3
	ldr	r3, [r7, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	mov	r0, #0xc0
	mov	r1, r6
	lsl	r0, #13
	mov	r2, r5
	str	r3, [r5, #8]
	bl	__Func_800447c
	ldr	r3, [r5]
	mov	r1, #0x80
	lsl	r1, #12
	ldr	r2, =0xfff00000
	add	r3, r1
	and	r3, r2
	mov	r9, r3
	ldr	r3, [r5, #8]
	add	r3, r1
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, r7
	mov	r1, #6
	mov	r10, r3
	add	r6, r2
	bl	__Func_800c300
	mov	r0, #0xb8
	bl	__Func_80f9080
	mov	r3, #0xf
	mov	r8, r3
.L36ca:
	ldr	r2, =0xfffffc00
	mov	r0, #0xc0
	add	r6, r2
	mov	r2, r10
	mov	r3, r9
	str	r2, [r5, #8]
	lsl	r0, #13
	mov	r1, r6
	mov	r2, r5
	str	r3, [r5]
	bl	__Func_800447c
	ldr	r3, [r5]
	str	r3, [r7, #8]
	ldr	r2, =0xffffc000
	ldr	r3, [r5, #8]
	str	r3, [r7, #0x10]
	add	r3, r6, r2
	strh	r3, [r7, #6]
	mov	r0, #1
	bl	__Func_80030f8
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0
	bge	.L36ca
	mov	r0, #0xe9
	bl	__Func_80f9080
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200b668

.thumb_func_start OvlFunc_932_200b724
	push	{lr}
	add	r0, #0x66
	mov	r3, #0x21
	strh	r3, [r0]
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_80f9080
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200b724

.thumb_func_start OvlFunc_932_200b738
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	mov	r0, #0xc0
	lsl	r0, #8
	mov	r9, r0
	ldrh	r3, [r7, #6]
	mov	r1, r9
	ldr	r0, [r7, #0xc]
	and	r1, r3
	sub	sp, #0xc
	mov	r9, r1
	cmp	r0, #0
	bge	.L375e
	ldr	r2, =0xffff
	add	r0, r2
.L375e:
	mov	r3, r7
	asr	r0, #16
	add	r3, #0x64
	mov	r10, r0
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	mov	r1, r10
	sub	r3, r1
	ldr	r2, =.L51b4
	lsl	r3, #2
	add	r3, #0x40
	ldr	r2, [r2, r3]
	mov	r10, r2
	mov	r2, #0x66
	add	r2, r7
	mov	r8, r2
	mov	r1, r8
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	ldrh	r2, [r2]
	cmp	r3, #0
	beq	.L37b0
	sub	r3, r2, #1
	mov	r0, #0xa0
	mov	r2, r8
	strh	r3, [r2]
	lsl	r0, #13
	lsl	r3, #16
	cmp	r3, r0
	bne	.L37a0
	mov	r0, #0xb8
	bl	__Func_80f9080
.L37a0:
	mov	r2, r8
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #0
	bne	.L37b0
	mov	r0, #0xe9
	bl	__Func_80f9080
.L37b0:
	ldr	r3, [r7, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	mov	r1, #0xc0
	str	r3, [r5, #8]
	mov	r0, r10
	lsl	r1, #8
	ldr	r3, =Func_8000888
	.call_via r3
	mov	r1, r9
	mov	r2, r5
	bl	__Func_800447c
	ldr	r1, [r5]
	str	r1, [r7, #8]
	ldr	r2, [r5, #8]
	mov	r0, #2
	str	r2, [r7, #0x10]
	bl	__Func_8011f54
	mov	r1, #0xc0
	mov	r6, r0
	lsl	r1, #9
	mov	r0, r10
	ldr	r3, =Func_8000888
	.call_via r3
	neg	r0, r0
	mov	r1, r9
	mov	r2, r5
	bl	__Func_800447c
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	mov	r0, #2
	bl	__Func_8011f54
	mov	r2, r8
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #0x14
	bgt	.L3832
	cmp	r6, r0
	bne	.L381c
	mov	r0, r7
	mov	r1, #2
	bl	__Func_800c300
	b	.L3832
.L381c:
	cmp	r6, r0
	ble	.L382a
	mov	r0, r7
	mov	r1, #3
	bl	__Func_800c300
	b	.L3832
.L382a:
	mov	r0, r7
	mov	r1, #4
	bl	__Func_800c300
.L3832:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200b738

.thumb_func_start OvlFunc_932_200b850
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #0xc
	mov	r8, r1
	mov	r9, r0
	bl	__Func_8092054
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r6, r0
	ldr	r0, [r3]
	bl	__Func_808ba1c
	mov	r10, r0
	bl	__Func_80916b0
	mov	r3, #1
	neg	r3, r3
	cmp	r8, r3
	bne	.L3886
	ldrh	r2, [r6, #6]
	mov	r8, r2
.L3886:
	mov	r7, #0
	mov	r5, sp
	b	.L3898

	.pool_aligned

.L3890:
	mov	r3, #0x80
	lsl	r3, #7
	add	r8, r3
	add	r7, #1
.L3898:
	cmp	r7, #3
	bgt	.L38c4
	ldr	r3, [r6, #8]
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, #0x80
	str	r3, [r5, #8]
	lsl	r0, #13
	mov	r1, r8
	mov	r2, r5
	bl	__Func_800447c
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	mov	r0, #2
	bl	__Func_8011f54
	ldr	r3, [r6, #0xc]
	cmp	r0, r3
	bne	.L3890
.L38c4:
	cmp	r7, #4
	beq	.L39b6
	mov	r2, r6
	mov	r3, #2
	add	r2, #0x22
	strb	r3, [r2]
	mov	r5, #0
	mov	r2, r10
	str	r5, [r2, #8]
	str	r5, [r2, #0x10]
	mov	r1, #0x10
	ldr	r0, [r6, #0x50]
	bl	__Func_800b8ac
	mov	r0, r9
	mov	r1, #1
	bl	__Func_809335c
	bl	__Func_8093530
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #13
	lsl	r1, #10
	bl	__Func_80933d4
	mov	r3, r8
	strh	r3, [r6, #6]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r6, #0x30]
	ldr	r3, =0xccc
	ldr	r2, .L391c	@ 0
	str	r3, [r6, #0x34]
	mov	r3, r6
	add	r3, #0x5b
	strb	r2, [r3]
	ldr	r2, [r6, #0xc]
	cmp	r2, #0
	bge	.L3928
	ldr	r3, =0xffff
	add	r2, r3
	b	.L3928

	.align	2, 0
.L391c:
	.word	0
	.pool

.L3928:
	mov	r3, r6
	asr	r2, #16
	add	r3, #0x64
	strh	r2, [r3]
	add	r3, #2
	strh	r5, [r3]
	ldr	r3, [r6, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, #0xc0
	str	r3, [r5, #8]
	lsl	r0, #13
	mov	r1, r8
	mov	r2, r5
	bl	__Func_800447c
	ldr	r1, [r5]
	ldr	r2, [r6, #0xc]
	ldr	r3, [r5, #8]
	mov	r0, r6
	bl	__Func_800d14c
	mov	r0, r6
	bl	__Func_800ca6c
	mov	r0, #0xe9
	bl	__Func_80f9080
.L3966:
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	mov	r0, #2
	bl	__Func_8012038
	cmp	r0, #0x62
	beq	.L3988
	cmp	r0, #0x62
	bgt	.L3982
	cmp	r0, #0x60
	beq	.L3998
	cmp	r0, #0x61
	beq	.L3990
	b	.L399e
.L3982:
	cmp	r0, #0x63
	beq	.L39ac
	b	.L399e
.L3988:
	mov	r0, r6
	bl	OvlFunc_932_200b5ac
	b	.L399e
.L3990:
	mov	r0, r6
	bl	OvlFunc_932_200b668
	b	.L399e
.L3998:
	mov	r0, r6
	bl	OvlFunc_932_200b724
.L399e:
	mov	r0, r6
	bl	OvlFunc_932_200b738
	mov	r0, #1
	bl	__Func_80030f8
	b	.L3966
.L39ac:
	mov	r0, r6
	bl	OvlFunc_932_200b484
	bl	__Func_8091750
.L39b6:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200b850

.thumb_func_start OvlFunc_932_200b9c8
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ed0
	ldr	r4, =.L525c
	ldr	r6, [r3]
	mov	r2, #0
	ldrsh	r3, [r4, r2]
	cmp	r3, #0
	bgt	.L3a28
.L39d8:
	ldr	r1, =.L5260
	ldrh	r3, [r1]
	ldr	r5, =.L3d28
	add	r2, r3, #1
	lsl	r3, #16
	asr	r3, #16
	ldrsb	r0, [r5, r3]
	mov	r3, #1
	neg	r3, r3
	strh	r2, [r1]
	cmp	r0, r3
	bne	.L3a0c
	ldr	r3, .L39f8	@ 0
	strh	r3, [r1]
	b	.L39d8

	.align	2, 0
.L39f8:
	.word	0
	.pool

.L3a0c:
	add	r3, r2, #1
	strh	r3, [r1]
	lsl	r3, r2, #16
	asr	r3, #16
	ldrsb	r3, [r5, r3]
	ldr	r4, =.L525c
	lsl	r0, #1
	strh	r3, [r4]
	add	r0, r6, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x5000006
	ldr	r2, =0x80000009
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L3a28:
	ldrh	r3, [r4]
	sub	r3, #1
	strh	r3, [r4]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200b9c8

.thumb_func_start OvlFunc_932_200ba44
	push	{lr}
	ldr	r2, =0
	ldr	r3, =.L5260
	strh	r2, [r3]
	ldr	r3, =.L525c
	mov	r1, #0xc8
	strh	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_932_200b9c8
	bl	__Func_80041d8
	b	.L3a6c

	.pool_aligned

.L3a6c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200ba44

	.section .data
	.global .L3d34
	.global .L3d48
	.global .L3d78
	.global .L3dec
	.global .L401c
	.global .L4054
	.global .L4084
	.global .L40b4
	.global .L40e4
	.global .L412c
	.global .L4164
	.global .L4194
	.global .L420c
	.global .L426c
	.global .L4314
	.global .L43ec
	.global .L4464
	.global .L4524
	.global .L459c
	.global .L4644
	.global .L4704
	.global .L477c
	.global .L480c
	.global .L483c
	.global .L485c
	.global .L4928
	.global .L4940
	.global .L49a0
	.global .L4a00
	.global .L4a60
	.global .L4aa8
	.global .L4b68
	.global .L4b98
	.global .L4c40
	.global .L4cd0
	.global .L4d18
	.global .L4d24
	.global .L4d6c
	.global .L4d9c
	.global .L4dc0
	.global .L4e5c
	.global .L4ebc
	.global .L4f34
	.global .L4fb8
	.global .L506c
	.global .L50cc
	.global .L512c
	.global .L5150
	.global .L51b0

.L3d28:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x3d28, (0x3d34-0x3d28)
.L3d34:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x3d34, (0x3d48-0x3d34)
.L3d48:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x3d48, (0x3d78-0x3d48)
.L3d78:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x3d78, (0x3dec-0x3d78)
.L3dec:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x3dec, (0x401c-0x3dec)
.L401c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x401c, (0x4054-0x401c)
.L4054:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4054, (0x4084-0x4054)
.L4084:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4084, (0x40b4-0x4084)
.L40b4:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x40b4, (0x40e4-0x40b4)
.L40e4:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x40e4, (0x412c-0x40e4)
.L412c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x412c, (0x4164-0x412c)
.L4164:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4164, (0x4194-0x4164)
.L4194:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4194, (0x420c-0x4194)
.L420c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x420c, (0x426c-0x420c)
.L426c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x426c, (0x4314-0x426c)
.L4314:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4314, (0x43ec-0x4314)
.L43ec:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x43ec, (0x4464-0x43ec)
.L4464:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4464, (0x4524-0x4464)
.L4524:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4524, (0x459c-0x4524)
.L459c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x459c, (0x4644-0x459c)
.L4644:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4644, (0x4704-0x4644)
.L4704:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4704, (0x477c-0x4704)
.L477c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x477c, (0x480c-0x477c)
.L480c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x480c, (0x483c-0x480c)
.L483c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x483c, (0x485c-0x483c)
.L485c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x485c, (0x4928-0x485c)
.L4928:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4928, (0x4940-0x4928)
.L4940:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4940, (0x49a0-0x4940)
.L49a0:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x49a0, (0x4a00-0x49a0)
.L4a00:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4a00, (0x4a60-0x4a00)
.L4a60:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4a60, (0x4aa8-0x4a60)
.L4aa8:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4aa8, (0x4b68-0x4aa8)
.L4b68:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4b68, (0x4b98-0x4b68)
.L4b98:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4b98, (0x4c40-0x4b98)
.L4c40:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4c40, (0x4cd0-0x4c40)
.L4cd0:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4cd0, (0x4d18-0x4cd0)
.L4d18:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4d18, (0x4d24-0x4d18)
.L4d24:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4d24, (0x4d6c-0x4d24)
.L4d6c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4d6c, (0x4d9c-0x4d6c)
.L4d9c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4d9c, (0x4dc0-0x4d9c)
.L4dc0:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4dc0, (0x4e5c-0x4dc0)
.L4e5c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4e5c, (0x4ebc-0x4e5c)
.L4ebc:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4ebc, (0x4f34-0x4ebc)
.L4f34:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4f34, (0x4fb8-0x4f34)
.L4fb8:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x4fb8, (0x506c-0x4fb8)
.L506c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x506c, (0x50cc-0x506c)
.L50cc:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x50cc, (0x512c-0x50cc)
.L512c:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x512c, (0x5150-0x512c)
.L5150:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x5150, (0x51b0-0x5150)
.L51b0:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x51b0, (0x51b4-0x51b0)
.L51b4:
	.incbin "overlays/rom_7b9cb4/orig.bin", 0x51b4

	.section .bss
	.global .L5238
	.global .L523c
	.global .L5240

	.lcomm	.L5238, 4
	.lcomm	.L523c, 4
	.lcomm	.L5240, 0x1c
	.lcomm	.L525c, 4
	.lcomm	.L5260, 4
