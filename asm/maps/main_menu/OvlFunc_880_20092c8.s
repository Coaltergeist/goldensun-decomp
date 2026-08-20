	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_880_20092c8
	push	{r5, r6, r7, lr}
	mov	r4, r0
	mov	r5, #0
	ldr	r0, =0xffff
	cmp	r4, #0
	beq	.L1300
	mov	r7, #0x80
	ldr	r6, =0xffffefdf
	lsl	r7, #8
.L12da:
	ldrb	r3, [r1]
	lsl	r3, #8
	eor	r0, r3
	mov	r2, #0
.L12e2:
	mov	r3, r0
	and	r3, r7
	cmp	r3, #0
	beq	.L12f0
	lsl	r3, r0, #1
	add	r0, r3, r6
	b	.L12f2
.L12f0:
	lsl	r0, #1
.L12f2:
	add	r2, #1
	cmp	r2, #8
	bne	.L12e2
	add	r5, #1
	add	r1, #1
	cmp	r5, r4
	bne	.L12da
.L1300:
	mvn	r0, r0
	lsl	r0, #16
	lsr	r0, #16
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_880_20092c8

	.section .data
	.global gOvl_02009658

.L14d4:
	.incbin "overlays/rom_7795e8/orig.bin", 0x14d4, (0x14dc-0x14d4)
.L14dc:
	.incbin "overlays/rom_7795e8/orig.bin", 0x14dc, (0x1658-0x14dc)
gOvl_02009658:
	.incbin "overlays/rom_7795e8/orig.bin", 0x1658, (0x1688-0x1658)
	.global gScript_958__02009688
gScript_958__02009688:
	.incbin "overlays/rom_7795e8/orig.bin", 0x1688, (0x168c-0x1688)
	.global gOvl_0200968c
gOvl_0200968c:
	.incbin "overlays/rom_7795e8/orig.bin", 0x168c, (0x16a4-0x168c)
	.global gOvl_020096a4
gOvl_020096a4:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16a4, (0x16b0-0x16a4)
.L16b0:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16b0, (0x16b2-0x16b0)
.L16b2:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16b2, (0x16b4-0x16b2)
.L16b4:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16b4, (0x16b6-0x16b4)
.L16b6:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16b6, (0x16b8-0x16b6)
	.global gScript_930__020096b8
gScript_930__020096b8:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16b8, (0x16ba-0x16b8)
.L16ba:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16ba, (0x16bc-0x16ba)
.L16bc:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16bc, (0x16c0-0x16bc)
.L16c0:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16c0, (0x16d0-0x16c0)
	.global gOvl_020096d0
gOvl_020096d0:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16d0, (0x16dc-0x16d0)
.L16dc:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16dc, (0x16ec-0x16dc)
.L16ec:
	.incbin "overlays/rom_7795e8/orig.bin", 0x16ec
