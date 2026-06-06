	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_915_2008d9c
	push	{lr}
	ldr	r3, =iwram_3001ed0
	ldr	r4, [r3]
	mov	r0, #0xa0
	ldr	r3, =REG_DMA3SAD
	lsl	r0, #19
	mov	r1, r4
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0xe0
	lsl	r2, #1
	add	r1, r4, r2
	ldr	r0, =0x5000200
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091220
	pop	{r0}
	bx	r0
.func_end OvlFunc_915_2008d9c

.thumb_func_start OvlFunc_915_2008ddc
	push	{lr}
	ldr	r3, =iwram_3001ed0
	ldr	r1, [r3]
	cmp	r0, #0
	beq	.Ldec
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L17e0
	b	.Ldf0
.Ldec:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L10e0
.Ldf0:
	ldr	r2, =0x840000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091200
	bl	OvlFunc_915_2008d9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_915_2008ddc

	.section .data
	.global .Lf10
	.global .Lf50
	.global .Lf68
	.global .Lfc8

.Lf10:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0xf10, (0xf50-0xf10)
.Lf50:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0xf50, (0xf68-0xf50)
.Lf68:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0xf68, (0xfc8-0xf68)
.Lfc8:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0xfc8, (0x1028-0xfc8)
.L1028:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0x1028, (0x1038-0x1028)
.L1038:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0x1038, (0x1098-0x1038)
.L1098:
	.incbin "overlays/rom_7a2bf0/orig.bin", 0x1098

	.section .bss
	.global .L17e0
	.global .L10e0

	.lcomm	.Lunused_10d8, 4
	.lcomm	.Lunused_10dc, 4
	.lcomm	.L10e0, 0x700
	.lcomm	.L17e0, 0x700
