	.include "macros.inc"

.thumb_func_start CrossboneIsleDungeon2_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x73
	cmp	r2, r3
	bne	.Lm947_14dc
	ldr	r0, =gOvl_0200b06c
	b	.Lm947_14fc
.Lm947_14dc:
	ldr	r3, =0x74
	cmp	r2, r3
	bne	.Lm947_14e6
	ldr	r0, =gOvl_0200b0e4
	b	.Lm947_14fc
.Lm947_14e6:
	ldr	r3, =0x77
	cmp	r2, r3
	bne	.Lm947_14f0
	ldr	r0, =.Lm947_3174
	b	.Lm947_14fc
.Lm947_14f0:
	ldr	r3, =0x7a
	cmp	r2, r3
	bne	.Lm947_14fa
	ldr	r0, =.Lm947_32dc
	b	.Lm947_14fc
.Lm947_14fa:
	ldr	r0, =.Lm947_3264
.Lm947_14fc:
	pop	{r1}
	bx	r1
.func_end CrossboneIsleDungeon2_GetActors

	.section .mdata3, "aw", %progbits
	.global .Lm947_2e7c
	.global .Lm947_2eac
	.global .Lm947_2ef4
	.global .Lm947_2f3c
	.global .Lm947_2f84
	.global .Lm947_2fcc

.Lm947_2e7c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2e7c, (0x2eac-0x2e7c)
.Lm947_2eac:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2eac, (0x2ef4-0x2eac)
.Lm947_2ef4:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2ef4, (0x2f3c-0x2ef4)
.Lm947_2f3c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2f3c, (0x2f84-0x2f3c)
.Lm947_2f84:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2f84, (0x2fcc-0x2f84)
.Lm947_2fcc:
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
.Lm947_3174:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3174, (0x3264-0x3174)
.Lm947_3264:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3264, (0x32dc-0x3264)
.Lm947_32dc:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x32dc, (0x339c-0x32dc)
