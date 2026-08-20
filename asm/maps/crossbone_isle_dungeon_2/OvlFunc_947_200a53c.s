	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_200a53c
	push	{r5, lr}
	sub	sp, #0x20
	bl	__CutsceneStart
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_947_2008758
	cmp	r0, #0
	beq	.Lm947_2566
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0xc]
	bl	OvlFunc_947_20088ec
	b	.Lm947_2572
.Lm947_2566:
	bl	OvlFunc_947_200a498
	bl	OvlFunc_947_20083a8
	bl	OvlFunc_947_200a4cc
.Lm947_2572:
	bl	__CutsceneEnd
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a53c

	.section .mdata2, "aw", %progbits
	.global .Lm947_2da8
	.global .Lm947_2dd2
	.global .Lm947_2dfc
	.global .Lm947_2e26
	.global .Lm947_2e50

.Lm947_2da8:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2da8, (0x2dd2-0x2da8)
.Lm947_2dd2:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2dd2, (0x2dfc-0x2dd2)
.Lm947_2dfc:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2dfc, (0x2e26-0x2dfc)
.Lm947_2e26:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2e26, (0x2e50-0x2e26)
.Lm947_2e50:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2e50, (0x2e7c-0x2e50)

	.section .bss
	.global .Lm947_3720
	.global .Lm947_372c
	.global .Lm947_3738

	.space	4

	.global	bss_36d0
bss_36d0:
	.space	0x50
	.ssize	bss_36d0

.Lm947_3720:
	.space	0xc
.Lm947_372c:
	.space	0xc
.Lm947_3738:
	.space	4
