	.include "macros.inc"

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
	.incbin "build/usa/reference/overlays/rom_7db0c8/orig.bin", 0x3e44, (0x3e4e-0x3e44)
.Lc1_2:
	.incbin "build/usa/reference/overlays/rom_7db0c8/orig.bin", 0x3e4e, (0x3e76-0x3e4e)
.Lc1_3:
	.incbin "build/usa/reference/overlays/rom_7db0c8/orig.bin", 0x3e76, (0x3ef4-0x3e76)
.Lc1_4:
	.incbin "build/usa/reference/overlays/rom_7db0c8/orig.bin", 0x3ef4, (0x3f14-0x3ef4)
.Lc1_5:
	.incbin "build/usa/reference/overlays/rom_7db0c8/orig.bin", 0x3f14, (0x3fd0-0x3f14)
.Lc1_6:
	.incbin "build/usa/reference/overlays/rom_7db0c8/orig.bin", 0x3fd0, (0x3fe4-0x3fd0)
.Lc1_7:
	.incbin "build/usa/reference/overlays/rom_7db0c8/orig.bin", 0x3fe4, (0x4008-0x3fe4)
.Lc1_8:
	.incbin "build/usa/reference/overlays/rom_7db0c8/orig.bin", 0x4008, (0x4010-0x4008)
	.word	OvlFunc_common1_172c
	.incbin "build/usa/reference/overlays/rom_7db0c8/orig.bin", 0x4014, (0x4154-0x4014)
.Lc1_9:
	.incbin "build/usa/reference/overlays/rom_7db0c8/orig.bin", 0x4154, (0x4194-0x4154)

	.section .data1
	.global .Lc1_15
	.global .Lc1_16
	.global .Lc1_10
	.global .Lc1_11
	.global .Lc1_12
	.global .Lc1_13
	.global .Lc1_14

.Lc1_10:
	.incbin "build/usa/reference/overlays/rom_7db0c8/orig.bin", 0x457c, (0x457e-0x457c)
.Lc1_11:
	.incbin "build/usa/reference/overlays/rom_7db0c8/orig.bin", 0x457e, (0x45aa-0x457e)
.Lc1_12:
	.incbin "build/usa/reference/overlays/rom_7db0c8/orig.bin", 0x45aa, (0x4628-0x45aa)
.Lc1_13:
	.incbin "build/usa/reference/overlays/rom_7db0c8/orig.bin", 0x4628, (0x46a6-0x4628)
.Lc1_14:
	.incbin "build/usa/reference/overlays/rom_7db0c8/orig.bin", 0x46a6, (0x46a8-0x46a6)
.Lc1_15:
	.incbin "build/usa/reference/overlays/rom_7db0c8/orig.bin", 0x46a8, (0x46c8-0x46a8)
	.word	OvlFunc_common1_17c0
	.incbin "build/usa/reference/overlays/rom_7db0c8/orig.bin", 0x46cc, (0x46fc-0x46cc)
.Lc1_16:
	.incbin "build/usa/reference/overlays/rom_7db0c8/orig.bin", 0x46fc, (0x471c-0x46fc)
	.word	OvlFunc_common1_17c0
	.incbin "build/usa/reference/overlays/rom_7db0c8/orig.bin", 0x4720

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
