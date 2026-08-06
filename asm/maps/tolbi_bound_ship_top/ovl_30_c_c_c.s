	.include "macros.inc"

.thumb_func_start OvlFunc_944_200915c
	push	{r5, r6, lr}
	mov	r6, #0
	cmp	r0, #1
	beq	.Lm944_1176
	cmp	r0, #1
	bcc	.Lm944_1172
	cmp	r0, #2
	beq	.Lm944_117a
	cmp	r0, #3
	beq	.Lm944_1186
	b	.Lm944_118a
.Lm944_1172:
	ldr	r6, =0x92c
	b	.Lm944_118a
.Lm944_1176:
	ldr	r6, =0x935
	b	.Lm944_118a
.Lm944_117a:
	ldr	r6, =0x917
	b	.Lm944_118a
.Lm944_117e:
	ldr	r3, =.Lm944_18f8
	lsl	r2, r5, #2
	ldr	r0, [r3, r2]
	b	.Lm944_119e
.Lm944_1186:
	mov	r6, #0x99
	lsl	r6, #4
.Lm944_118a:
	mov	r5, #0
.Lm944_118c:
	add	r0, r6, r5
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm944_117e
	add	r5, #1
	cmp	r5, #8
	bls	.Lm944_118c
	mov	r0, #0
.Lm944_119e:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_944_200915c

	.section .data
	.global .Lm944_16f4
	.global .Lm944_1844

	.global ActorCmd_ARRAY_944__02009314
	.global ActorCmd_ARRAY_967__02009314
ActorCmd_ARRAY_944__02009314:
ActorCmd_ARRAY_967__02009314:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x1314, (0x139c-0x1314)
	.global gScript_944__0200939c
gScript_944__0200939c:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x139c, (0x13a4-0x139c)
	.global gScript_944__020093a4
gScript_944__020093a4:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x13a4, (0x13ac-0x13a4)
	.global gScript_944__020093ac
gScript_944__020093ac:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x13ac, (0x1450-0x13ac)
	.global gScript_944__02009450
gScript_944__02009450:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x1450, (0x1480-0x1450)
	.global gScript_944__02009480
gScript_944__02009480:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x1480, (0x14b0-0x1480)
	.global gScript_944__020094b0
gScript_944__020094b0:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x14b0, (0x14e0-0x14b0)
	.global gScript_944__020094e0
gScript_944__020094e0:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x14e0, (0x1510-0x14e0)
	.global gScript_944__02009510
gScript_944__02009510:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x1510, (0x1540-0x1510)
	.global gScript_944__02009540
gScript_944__02009540:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x1540, (0x1570-0x1540)
	.global gScript_944__02009570
gScript_944__02009570:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x1570, (0x15c0-0x1570)
	.global gOvl_020095c0
gOvl_020095c0:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x15c0, (0x1680-0x15c0)
	.global gOvl_02009680
gOvl_02009680:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x1680, (0x16a0-0x1680)
	.global gScript_928__020096a0
gScript_928__020096a0:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x16a0, (0x16c4-0x16a0)
	.global gOvl_020096c4
gOvl_020096c4:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x16c4, (0x16f4-0x16c4)
.Lm944_16f4:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x16f4, (0x176c-0x16f4)
	.global gOvl_0200976c
gOvl_0200976c:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x176c, (0x1844-0x176c)
.Lm944_1844:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x1844, (0x188c-0x1844)
	.global gOvl_0200988c
gOvl_0200988c:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x188c, (0x18f8-0x188c)
.Lm944_18f8:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x18f8

	.section .bss
	.global .Lm944_1920
	.global .Lm944_1924
	.global .Lm944_1928
	.global .Lm944_1930
	.global .Lm944_1938
	.global .Lm944_1940
	.global .Lm944_1930
	.global .Lm944_1938

	.lcomm	.Lm944_1920, 4
	.lcomm	.Lm944_1924, 4
	.lcomm	.Lm944_1928, 4
	.lcomm	.Lm944_1930, 8
	.lcomm	.Lm944_1938, 8
	.lcomm	.Lm944_1940, 4
