	.include "macros.inc"

.thumb_func_start OvlFunc_947_20094c4
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x73
	cmp	r2, r3
	bne	.L14dc
	ldr	r0, =gOvl_0200b06c
	b	.L14fc
.L14dc:
	ldr	r3, =0x74
	cmp	r2, r3
	bne	.L14e6
	ldr	r0, =gOvl_0200b0e4
	b	.L14fc
.L14e6:
	ldr	r3, =0x77
	cmp	r2, r3
	bne	.L14f0
	ldr	r0, =.L3174
	b	.L14fc
.L14f0:
	ldr	r3, =0x7a
	cmp	r2, r3
	bne	.L14fa
	ldr	r0, =.L32dc
	b	.L14fc
.L14fa:
	ldr	r0, =.L3264
.L14fc:
	pop	{r1}
	bx	r1
.func_end OvlFunc_947_20094c4

	.section .data
	.global .L2e7c
	.global .L2eac
	.global .L2ef4
	.global .L2f3c
	.global .L2f84
	.global .L2fcc

.L2e7c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2e7c, (0x2eac-0x2e7c)
.L2eac:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2eac, (0x2ef4-0x2eac)
.L2ef4:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2ef4, (0x2f3c-0x2ef4)
.L2f3c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2f3c, (0x2f84-0x2f3c)
.L2f84:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2f84, (0x2fcc-0x2f84)
.L2fcc:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2fcc, (0x3014-0x2fcc)
	.global gOvl_0200b014
gOvl_0200b014:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3014, (0x306c-0x3014)
	.global gOvl_0200b06c
gOvl_0200b06c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x306c, (0x30e4-0x306c)
	.global gOvl_0200b0e4
gOvl_0200b0e4:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x30e4, (0x3174-0x30e4)
.L3174:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3174, (0x3264-0x3174)
.L3264:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3264, (0x32dc-0x3264)
.L32dc:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x32dc, (0x339c-0x32dc)
