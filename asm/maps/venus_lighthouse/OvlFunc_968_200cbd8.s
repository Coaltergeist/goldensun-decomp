	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_200cbd8
	push	{r5, r6, r7, lr}
	mov	r5, r0
	ldr	r3, [r5, #8]
	sub	sp, #0xc
	mov	r0, sp
	str	r3, [r0]
	ldr	r1, =0xfff00000
	ldr	r3, [r5, #0xc]
	add	r3, r1
	str	r3, [r0, #4]
	ldr	r3, [r5, #0x10]
	mov	r1, #0
	str	r3, [r0, #8]
	bl	OvlFunc_968_200832c
	mov	r7, r0
	ldr	r6, [r7, #0x50]
	ldr	r3, [r6, #0x28]
	mov	r1, #0x80
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	lsl	r1, #1
	cmp	r3, r1
	beq	.Lm968_4c0a
	b	.Lm968_4d4c
.Lm968_4c0a:
	ldr	r2, [r5, #0x24]
	mov	r4, r2
	cmp	r2, #0
	bge	.Lm968_4c14
	neg	r4, r2
.Lm968_4c14:
	ldr	r3, [r5, #0x2c]
	mov	r1, r3
	cmp	r3, #0
	bge	.Lm968_4c1e
	neg	r1, r3
.Lm968_4c1e:
	cmp	r4, r1
	ble	.Lm968_4c38
	mov	r3, r2
	cmp	r3, #0
	bge	.Lm968_4c2c
	ldr	r2, =0xffff
	add	r3, r2
.Lm968_4c2c:
	cmp	r3, #0
	bge	.Lm968_4c34
	ldr	r4, =.Lm968_51a4
	b	.Lm968_4c4a
.Lm968_4c34:
	ldr	r4, =.Lm968_51a8
	b	.Lm968_4c4a
.Lm968_4c38:
	cmp	r3, #0
	bge	.Lm968_4c40
	ldr	r1, =0xffff
	add	r3, r1
.Lm968_4c40:
	cmp	r3, #0
	bge	.Lm968_4c48
	ldr	r4, =.Lm968_51ac
	b	.Lm968_4c4a
.Lm968_4c48:
	ldr	r4, =.Lm968_51b0
.Lm968_4c4a:
	ldrb	r1, [r4]
	mov	r0, r1
	cmp	r0, #0
	beq	.Lm968_4c74
	mov	r2, r6
	add	r2, #0x24
	ldrb	r3, [r2]
	cmp	r3, r0
	beq	.Lm968_4c6e
	mov	r6, r2
.Lm968_4c5e:
	add	r4, #1
	ldrb	r1, [r4]
	mov	r2, r1
	cmp	r2, #0
	beq	.Lm968_4c74
	ldrb	r3, [r6]
	cmp	r3, r2
	bne	.Lm968_4c5e
.Lm968_4c6e:
	mov	r3, r1
	cmp	r3, #0
	bne	.Lm968_4c7e
.Lm968_4c74:
	mov	r0, r5
	ldr	r1, =gScript_968__0200d564
	bl	__Actor_SetScript
	b	.Lm968_4d54
.Lm968_4c7e:
	ldr	r3, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb9
	cmp	r2, r3
	bne	.Lm968_4ce8
	ldr	r0, =.Lm968_5128
	mov	r4, #0
	ldr	r6, [r5, #8]
	ldr	r3, [r0, r4]
	asr	r2, r6, #20
	cmp	r2, r3
	bne	.Lm968_4ca8
	ldr	r3, [r5, #0x10]
	ldr	r2, [r0, #4]
	asr	r3, #20
	cmp	r3, r2
	beq	.Lm968_4cc4
.Lm968_4ca8:
	add	r4, #1
	cmp	r4, #3
	bhi	.Lm968_4cc4
	lsl	r1, r4, #3
	ldr	r3, [r0, r1]
	asr	r2, r6, #20
	cmp	r2, r3
	bne	.Lm968_4ca8
	ldr	r3, [r5, #0x10]
	add	r2, r1, #4
	ldr	r2, [r0, r2]
	asr	r3, #20
	cmp	r3, r2
	bne	.Lm968_4ca8
.Lm968_4cc4:
	mov	r6, #0
	lsl	r4, #2
	b	.Lm968_4cd0
.Lm968_4cca:
	add	r3, r1, #1
	str	r3, [r0, r4]
	add	r6, #1
.Lm968_4cd0:
	ldr	r0, =.Lm968_772c
	ldr	r1, [r0, r4]
	ldrb	r2, [r1]
	cmp	r2, #0
	beq	.Lm968_4c74
	ldr	r3, [r7, #0x50]
	add	r3, #0x24
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.Lm968_4cca
	ldr	r3, =.Lm968_777c
	b	.Lm968_4d3e
.Lm968_4ce8:
	ldr	r0, =.Lm968_5164
	mov	r4, #0
	ldr	r6, [r5, #8]
	ldr	r3, [r0, r4]
	asr	r2, r6, #20
	cmp	r2, r3
	bne	.Lm968_4d00
	ldr	r3, [r5, #0x10]
	ldr	r2, [r0, #4]
	asr	r3, #20
	cmp	r3, r2
	beq	.Lm968_4d1c
.Lm968_4d00:
	add	r4, #1
	cmp	r4, #7
	bhi	.Lm968_4d1c
	lsl	r1, r4, #3
	ldr	r3, [r0, r1]
	asr	r2, r6, #20
	cmp	r2, r3
	bne	.Lm968_4d00
	ldr	r3, [r5, #0x10]
	add	r2, r1, #4
	ldr	r2, [r0, r2]
	asr	r3, #20
	cmp	r3, r2
	bne	.Lm968_4d00
.Lm968_4d1c:
	mov	r6, #0
	lsl	r4, #2
	b	.Lm968_4d28
.Lm968_4d22:
	add	r3, r1, #1
	str	r3, [r0, r4]
	add	r6, #1
.Lm968_4d28:
	ldr	r0, =.Lm968_778c
	ldr	r1, [r0, r4]
	ldrb	r2, [r1]
	cmp	r2, #0
	beq	.Lm968_4c74
	ldr	r3, [r7, #0x50]
	add	r3, #0x24
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.Lm968_4d22
	ldr	r3, =.Lm968_77ec
.Lm968_4d3e:
	ldr	r2, [r3, r4]
	lsl	r3, r6, #2
	ldr	r1, [r3, r2]
	mov	r0, r5
	bl	__Actor_SetScript
	b	.Lm968_4d54
.Lm968_4d4c:
	ldr	r1, =gScript_968__0200d564
	mov	r0, r5
	bl	__Actor_SetScript
.Lm968_4d54:
	mov	r0, #0
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_200cbd8

	.section .data
	.global .Lm968_5148
	.global .Lm968_5164
	.global .Lm968_577c
	.global gScript_968__0200d7c8
	.global gScript_968__0200dac8
	.global .Lm968_5d3c
	.global .Lm968_6e44
	.global .Lm968_6f1c
	.global .Lm968_7120
	.global .Lm968_7300
	.global .Lm968_73b4
	.global .Lm968_74f8
	.global .Lm968_5128
	.global gScript_968__0200d21c
	.global gScript_968__0200d3c4
	.global gScript_968__0200d488
	.global gScript_968__0200d508
	.global .Lm968_5ce8
	.global .Lm968_5d12
	.global gOvl_0200e740
	.global .Lm968_68ec
	.global gScript_945__0200e904
	.global .Lm968_69c4
	.global .Lm968_6b74
	.global .Lm968_6c04
	.global .Lm968_6c64
	.global .Lm968_6cf4
	.global .Lm968_50e8
	.global .Lm968_51d4
	.global .Lm968_5d68
	.global .Lm968_5dc8
	.global .Lm968_6020
	.global .Lm968_6230
	.global .Lm968_6350
	.global .Lm968_6548

	.incbin "overlays/rom_7f2f14/orig.bin", 0x5040, (0x50e8-0x5040)
.Lm968_50e8:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x50e8, (0x5128-0x50e8)
.Lm968_5128:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5128, (0x5148-0x5128)
.Lm968_5148:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5148, (0x5164-0x5148)
.Lm968_5164:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5164, (0x51a4-0x5164)
.Lm968_51a4:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x51a4, (0x51a8-0x51a4)
.Lm968_51a8:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x51a8, (0x51ac-0x51a8)
.Lm968_51ac:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x51ac, (0x51b0-0x51ac)
.Lm968_51b0:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x51b0, (0x51d4-0x51b0)
.Lm968_51d4:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x51d4, (0x521c-0x51d4)
gScript_968__0200d21c:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x521c, (0x52cc-0x521c)
.Lm968_52cc:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x52cc, (0x53c4-0x52cc)
gScript_968__0200d3c4:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x53c4, (0x5488-0x53c4)
gScript_968__0200d488:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5488, (0x5508-0x5488)
gScript_968__0200d508:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5508, (0x5564-0x5508)
	.global gScript_968__0200d564
gScript_968__0200d564:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5564, (0x577c-0x5564)
.Lm968_577c:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x577c, (0x57c8-0x577c)
gScript_968__0200d7c8:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x57c8, (0x5ac8-0x57c8)
gScript_968__0200dac8:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5ac8, (0x5ce8-0x5ac8)
.Lm968_5ce8:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5ce8, (0x5d12-0x5ce8)
.Lm968_5d12:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5d12, (0x5d3c-0x5d12)
.Lm968_5d3c:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5d3c, (0x5d68-0x5d3c)
.Lm968_5d68:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5d68, (0x5dc8-0x5d68)
.Lm968_5dc8:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5dc8, (0x6020-0x5dc8)
.Lm968_6020:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6020, (0x6230-0x6020)
.Lm968_6230:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6230, (0x6350-0x6230)
.Lm968_6350:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6350, (0x6548-0x6350)
.Lm968_6548:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6548, (0x6740-0x6548)
gOvl_0200e740:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6740, (0x68ec-0x6740)
.Lm968_68ec:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x68ec, (0x6904-0x68ec)
gScript_945__0200e904:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6904, (0x69c4-0x6904)
.Lm968_69c4:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x69c4, (0x6b74-0x69c4)
.Lm968_6b74:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6b74, (0x6c04-0x6b74)
.Lm968_6c04:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6c04, (0x6c64-0x6c04)
.Lm968_6c64:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6c64, (0x6cf4-0x6c64)
.Lm968_6cf4:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6cf4, (0x6e44-0x6cf4)
.Lm968_6e44:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6e44, (0x6f1c-0x6e44)
.Lm968_6f1c:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6f1c, (0x7120-0x6f1c)
.Lm968_7120:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x7120, (0x7300-0x7120)
.Lm968_7300:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x7300, (0x73b4-0x7300)
.Lm968_73b4:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x73b4, (0x74f8-0x73b4)
.Lm968_74f8:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x74f8, (0x772c-0x74f8)
.Lm968_772c:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x772c, (0x777c-0x772c)
.Lm968_777c:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x777c, (0x778c-0x777c)
.Lm968_778c:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x778c, (0x77ec-0x778c)
.Lm968_77ec:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x77ec
