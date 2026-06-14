	.include "macros.inc"

.thumb_func_start OvlFunc_944_200915c
	push	{r5, r6, lr}
	mov	r6, #0
	cmp	r0, #1
	beq	.L1176
	cmp	r0, #1
	bcc	.L1172
	cmp	r0, #2
	beq	.L117a
	cmp	r0, #3
	beq	.L1186
	b	.L118a
.L1172:
	ldr	r6, =0x92c
	b	.L118a
.L1176:
	ldr	r6, =0x935
	b	.L118a
.L117a:
	ldr	r6, =0x917
	b	.L118a
.L117e:
	ldr	r3, =.L18f8
	lsl	r2, r5, #2
	ldr	r0, [r3, r2]
	b	.L119e
.L1186:
	mov	r6, #0x99
	lsl	r6, #4
.L118a:
	mov	r5, #0
.L118c:
	add	r0, r6, r5
	bl	__GetFlag
	cmp	r0, #0
	bne	.L117e
	add	r5, #1
	cmp	r5, #8
	bls	.L118c
	mov	r0, #0
.L119e:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_944_200915c

	.section .data
	.global .L16f4
	.global .L1844

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
.L16f4:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x16f4, (0x176c-0x16f4)
	.global gOvl_0200976c
gOvl_0200976c:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x176c, (0x1844-0x176c)
.L1844:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x1844, (0x188c-0x1844)
	.global gOvl_0200988c
gOvl_0200988c:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x188c, (0x18f8-0x188c)
.L18f8:
	.incbin "overlays/rom_7ca63c/orig.bin", 0x18f8

	.section .bss
	.global .L1920
	.global .L1924
	.global .L1928
	.global .L1930
	.global .L1938
	.global .L1940
	.global .L1930
	.global .L1938

	.lcomm	.L1920, 4
	.lcomm	.L1924, 4
	.lcomm	.L1928, 4
	.lcomm	.L1930, 8
	.lcomm	.L1938, 8
	.lcomm	.L1940, 4
