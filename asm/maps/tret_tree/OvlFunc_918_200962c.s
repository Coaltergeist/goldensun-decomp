	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_918_200962c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r7, =.Lm918_2dcc
	ldr	r5, [r7]
	mov	r0, #0
	mov	r11, r0
	mov	r1, #0xa
	mov	r0, r5
	bl	_divsi3_RAM
	mov	r6, r0
	cmp	r5, #0x2c
	bls	.Lm918_1652
	b	.Lm918_17b2
.Lm918_1652:
	ldr	r2, =.Lm918_165c
	lsl	r3, r5, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm918_165c:
	.word	.Lm918_1710
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_1710
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_1710
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_1710
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_1710
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17b2
	.word	.Lm918_17aa
.Lm918_1710:
	mov	r0, #0xdc
	bl	__PlaySound
	mov	r3, #6
	mov	r7, #0
	sub	r1, r3, r6
	cmp	r7, r1
	bcs	.Lm918_17aa
	mov	r3, #0xb4
	mov	r2, #0
	lsl	r3, #1
	ldr	r6, =.Lm918_2dc0
	mov	r9, r2
	mov	r8, r1
	mov	r10, r3
.Lm918_172e:
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	ldr	r0, =0x11d
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm918_17a4
	mov	r1, r11
	ldr	r0, [r5, #0x50]
	bl	__Func_8096c48
	mov	r3, r5
	add	r3, #0x55
	mov	r11, r0
	mov	r0, r9
	strb	r0, [r3]
	ldr	r1, [r5, #0x50]
	mov	r0, #0xd
	ldrb	r3, [r1, #9]
	neg	r0, r0
	mov	r2, r0
	and	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r3, r5
	add	r3, #0x64
	mov	r2, r9
	strh	r2, [r3]
	mov	r1, r8
	mov	r0, r10
	bl	_udivsi3_RAM
	mul	r0, r7
	mov	r1, r10
	lsl	r0, #16
	bl	_udivsi3_RAM
	mov	r3, r5
	add	r3, #0x66
	strh	r0, [r3]
	ldr	r3, [r6]
	str	r3, [r5, #0x38]
	ldr	r3, [r6, #4]
	str	r3, [r5, #0x3c]
	ldr	r3, [r6, #8]
	str	r3, [r5, #0x40]
	ldr	r3, =0x19999
	str	r3, [r5, #0x30]
	ldr	r3, =OvlFunc_918_20095ac
	str	r3, [r5, #0x6c]
.Lm918_17a4:
	add	r7, #1
	cmp	r7, r8
	bcc	.Lm918_172e
.Lm918_17aa:
	ldr	r0, =0x121
	bl	__PlaySound
	ldr	r7, =.Lm918_2dcc
.Lm918_17b2:
	ldr	r3, [r7]
	add	r3, #1
	str	r3, [r7]
	cmp	r3, #0x78
	ble	.Lm918_17c0
	mov	r3, #0
	str	r3, [r7]
.Lm918_17c0:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_918_200962c

	.section .mdata1, "aw", %progbits
	.global gScript_918__02009db4
	.global gScript_898__02009db4
	.global gScript_918__02009ddc
	.global gScript_918__02009e04
	.global gScript_918__02009e2c
	.global gScript_918__02009e54
	.global gScript_918__02009ec8

gScript_918__02009db4:
gScript_898__02009db4:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1db4, (0x1ddc-0x1db4)
gScript_918__02009ddc:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1ddc, (0x1e04-0x1ddc)
gScript_918__02009e04:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1e04, (0x1e2c-0x1e04)
gScript_918__02009e2c:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1e2c, (0x1e54-0x1e2c)
gScript_918__02009e54:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1e54, (0x1ec8-0x1e54)
gScript_918__02009ec8:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1ec8, (0x1f00-0x1ec8)
.Lm918_1f00:
	.incbin "overlays/rom_7a5214/orig.bin", 0x1f00, (0x25cc-0x1f00)
	.global gOvl_0200a5cc
gOvl_0200a5cc:
	.incbin "overlays/rom_7a5214/orig.bin", 0x25cc, (0x29d4-0x25cc)
	.global gOvl_0200a9d4
gOvl_0200a9d4:
	.incbin "overlays/rom_7a5214/orig.bin", 0x29d4, (0x2a14-0x29d4)
	.global gOvl_0200aa14
gOvl_0200aa14:
	.incbin "overlays/rom_7a5214/orig.bin", 0x2a14, (0x2a58-0x2a14)
	.global gOvl_0200aa58
gOvl_0200aa58:
	.incbin "overlays/rom_7a5214/orig.bin", 0x2a58, (0x2ae8-0x2a58)
	.global gOvl_0200aae8
gOvl_0200aae8:
	.incbin "overlays/rom_7a5214/orig.bin", 0x2ae8, (0x2db8-0x2ae8)
.Lm918_2db8:
	.incbin "overlays/rom_7a5214/orig.bin", 0x2db8

	.section .bss
	.global .Lm918_2dc0
	.global .Lm918_2dcc
	.global .Lm918_2dd0
	.global .Lm918_2dd0

	.lcomm	.Lm918_2dc0, 0xc
	.lcomm	.Lm918_2dcc, 4
	.lcomm	.Lm918_2dd0, 4
