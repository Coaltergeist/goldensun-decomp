	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_916_2008f74
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
.func_end OvlFunc_916_2008f74

.thumb_func_start OvlFunc_916_2008fb4
	push	{lr}
	ldr	r3, =iwram_3001ed0
	ldr	r1, [r3]
	cmp	r0, #0
	beq	.Lfc4
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L19d0
	b	.Lfc8
.Lfc4:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L12d0
.Lfc8:
	ldr	r2, =0x840000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091200
	bl	OvlFunc_916_2008f74
	pop	{r0}
	bx	r0
.func_end OvlFunc_916_2008fb4

	.section .data
	.global .L111c
	.global .L1164
	.global .L1168
	.global .L116c
	.global .L1170

.L111c:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x111c, (0x1164-0x111c)
.L1164:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x1164, (0x1168-0x1164)
.L1168:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x1168, (0x116c-0x1168)
.L116c:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x116c, (0x1170-0x116c)
.L1170:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x1170, (0x11d0-0x1170)
.L11d0:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x11d0, (0x11e0-0x11d0)
.L11e0:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x11e0, (0x1240-0x11e0)
.L1240:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x1240

	.section .bss
	.global .L19d0
	.global .L12c0
	.global .L12c4
	.global .L12c8
	.global .L12d0
	.global .L20d0
	.global .L20dc
	.global .L12c0

	.lcomm	.Lunused_12b8, 8
	.lcomm	.L12c0, 4
	.lcomm	.L12c4, 4
	.lcomm	.L12c8, 8
	.lcomm	.L12d0, 0x700
	.lcomm	.L19d0, 0x700
	.lcomm	.L20d0, 8
	.lcomm	.Lunused_20d8, 4
	.lcomm	.L20dc, 4
