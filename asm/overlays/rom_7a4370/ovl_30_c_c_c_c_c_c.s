	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_917_2009878
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
.func_end OvlFunc_917_2009878

.thumb_func_start OvlFunc_917_20098b8
	push	{lr}
	ldr	r3, =iwram_3001ed0
	ldr	r1, [r3]
	cmp	r0, #0
	beq	.L18c8
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L24e0
	b	.L18cc
.L18c8:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L1de0
.L18cc:
	ldr	r2, =0x840000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091200
	bl	OvlFunc_917_2009878
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_20098b8

	.section .data
	.global gScript_917__02009d9c
	.global ActorCmd_ARRAY_917__02009ab8
	.global gScript_917__02009af4
	.global gScript_917__02009b30
	.global gScript_917__02009b6c

ActorCmd_ARRAY_917__02009ab8:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1ab8, (0x1af4-0x1ab8)
gScript_917__02009af4:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1af4, (0x1b30-0x1af4)
gScript_917__02009b30:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1b30, (0x1b6c-0x1b30)
gScript_917__02009b6c:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1b6c, (0x1ba4-0x1b6c)
	.global gOvl_02009ba4
gOvl_02009ba4:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1ba4, (0x1c04-0x1ba4)
	.global gScript_887__02009c04
gScript_887__02009c04:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1c04, (0x1c24-0x1c04)
	.global gOvl_02009c24
gOvl_02009c24:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1c24, (0x1c34-0x1c24)
	.global gOvl_02009c34
	.global MapEntrance_ARRAY_941__02009c34
	.global gScript_885__02009c34
gOvl_02009c34:
MapEntrance_ARRAY_941__02009c34:
gScript_885__02009c34:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1c34, (0x1d3c-0x1c34)
	.global gOvl_02009d3c
gOvl_02009d3c:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1d3c, (0x1d9c-0x1d3c)
gScript_917__02009d9c:
	.incbin "overlays/rom_7a4370/orig.bin", 0x1d9c

	.section .bss
	.global .L24e0
	.global .L1dc0
	.global .L1dcc
	.global .L1dd0
	.global .L1dd4
	.global .L1de0
	.global .L1dc0
	.global .L1dcc
	.global .L1dd0
	.global .L1dd4

	.lcomm	.L1dc0, 0xc
	.lcomm	.L1dcc, 4
	.lcomm	.L1dd0, 4
	.lcomm	.L1dd4, 4
	.lcomm	.Lunused_1dd8, 4
	.lcomm	.L1de0, 0x700
	.lcomm	.L24e0, 0x700

