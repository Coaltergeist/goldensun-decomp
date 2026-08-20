	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_21c8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =gState
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	__MapActor_GetActor
	mov	r6, r0
	ldrh	r3, [r6, #6]
	mov	r2, #0x80
	lsl	r2, #6
	add	r7, r3, r2
	mov	r3, #0xc0
	lsl	r3, #8
	ldr	r1, =0xfff00000
	and	r7, r3
	ldr	r3, [r6, #8]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r1
	mov	r5, sp
	add	r3, r2
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, #0x80
	and	r3, r1
	add	r3, r2
	lsl	r0, #13
	mov	r8, r1
	mov	r2, r5
	mov	r1, r7
	str	r3, [r5, #8]
	bl	__vec3_translate
	mov	r0, r5
	mov	r1, r6
	bl	OvlFunc_common1_2018
	cmp	r0, #0
	bne	.Lc1_2252
	ldr	r3, [r6, #8]
	mov	r2, r8
	mov	r1, #0x80
	lsl	r1, #12
	and	r3, r2
	add	r3, r1
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, #0x80
	and	r3, r2
	add	r3, r1
	lsl	r0, #14
	mov	r1, r7
	mov	r2, r5
	str	r3, [r5, #8]
	bl	__vec3_translate
	mov	r0, r5
	mov	r1, r6
	bl	OvlFunc_common1_2018
.Lc1_2252:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_common1_21c8

	.section .data
	.global .Lc1_4
	.global .Lc1_5
	.global .Lc1_7
	.global .Lc1_8
	.global .Lc1_1
	.global .Lc1_2
	.global .Lc1_3
	.global .Lc1_6

.Lc1_1:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x3e44, (0x3e4e-0x3e44)
.Lc1_2:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x3e4e, (0x3e76-0x3e4e)
.Lc1_3:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x3e76, (0x3ef4-0x3e76)
.Lc1_4:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x3ef4, (0x3f14-0x3ef4)
.Lc1_5:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x3f14, (0x3fd0-0x3f14)
.Lc1_6:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x3fd0, (0x3fe4-0x3fd0)
.Lc1_7:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x3fe4, (0x4008-0x3fe4)
.Lc1_8:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x4008, (0x4010-0x4008)
	.word	OvlFunc_common1_172c
	.incbin "overlays/rom_7db0c8/orig.bin", 0x4014, (0x4154-0x4014)
.Lc1_9:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x4154, (0x4194-0x4154)

	.section .data1
	.global .Lc1_15
	.global .Lc1_16
	.global .Lc1_10
	.global .Lc1_11
	.global .Lc1_12
	.global .Lc1_13
	.global .Lc1_14

.Lc1_10:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x457c, (0x457e-0x457c)
.Lc1_11:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x457e, (0x45aa-0x457e)
.Lc1_12:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x45aa, (0x4628-0x45aa)
.Lc1_13:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x4628, (0x46a6-0x4628)
.Lc1_14:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x46a6, (0x46a8-0x46a6)
.Lc1_15:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x46a8, (0x46c8-0x46a8)
	.word	OvlFunc_common1_17c0
	.incbin "overlays/rom_7db0c8/orig.bin", 0x46cc, (0x46fc-0x46cc)
.Lc1_16:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x46fc, (0x471c-0x46fc)
	.word	OvlFunc_common1_17c0
	.incbin "overlays/rom_7db0c8/orig.bin", 0x4720

	.section .bss
	.global .Lc1_17
	.global .Lc1_18
	.global .Lc1_19
	.global .Lc1_20
	.global .Lc1_21
	.global .Lc1_22
	.global .Lc1_23
	.global .Lc1_24
	.global .Lc1_25
	.global .Lc1_26
	.global .Lc1_27
	.global .Lc1_28
	.global .Lc1_29
	.global .Lc1_30
	.global .Lc1_31
	.global .Lc1_32
	.global .Lc1_33
	.global .Lc1_34
	.global .Lc1_35
	.global .Lc1_36
	.global .Lc1_37
	.global .Lc1_38
	.global .Lc1_39
	.global .Lc1_41
	.global .Lc1_42
	.global .Lc1_43
	.global .Lc1_44
	.global .Lc1_45
	.global .Lc1_46
	.global .Lc1_47
	.global .Lc1_48
	.global .Lc1_49

	.lcomm	.Lc1_17, 4
	.lcomm	.Lc1_18, 4
	.lcomm	.Lc1_19, 4
	.lcomm	.Lc1_20, 4
	.lcomm	.Lc1_21, 4
	.lcomm	.Lc1_22, 4
	.lcomm	.Lc1_23, 4
	.lcomm	.Lc1_24, 4
	.lcomm	.Lc1_25, 4
	.lcomm	.Lc1_26, 4
	.lcomm	.Lc1_27, 4
	.lcomm	.Lc1_28, 4
	.lcomm	.Lc1_29, 4
	.lcomm	.Lc1_30, 4
	.lcomm	.Lc1_31, 4
	.lcomm	.Lc1_32, 4
	.lcomm	.Lc1_33, 4
	.lcomm	.Lc1_34, 4
	.lcomm	.Lc1_35, 4
	.lcomm	.Lc1_36, 4
	.lcomm	.Lc1_37, 4
	.lcomm	.Lc1_38, 4
	.lcomm	.Lc1_39, 4
	.lcomm	.Lc1_41, 0xc
	.lcomm	.Lc1_42, 4
	.lcomm	.Lc1_43, 0x30
	.lcomm	.Lc1_44, 4
	.lcomm	.Lc1_45, 4
	.lcomm	.Lc1_46, 4
	.lcomm	.Lc1_47, 4
	.lcomm	.Lc1_48, 4
	.lcomm	.Lc1_49, 4
