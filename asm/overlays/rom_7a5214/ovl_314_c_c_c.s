	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_918_2009244
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xbf
	ldr	r2, [r3]
	ldr	r3, [r3, #0x14]
	lsl	r1, #1
	mov	r8, r3
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #4
	cmp	r3, #0
	beq	.L1268
	b	.L1400
.L1268:
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #0x1f
	and	r3, r2
	cmp	r3, #0
	beq	.L1276
	b	.L1400
.L1276:
	ldr	r1, =0x5000020
	mov	r3, #0x20
	mov	r2, #0
	add	r8, r3
	mov	r9, r1
	mov	r10, r2
.L1282:
	ldr	r3, =.L2db8
	ldr	r3, [r3]
	ldr	r1, =.L1f00
	lsl	r3, #2
	add	r2, r3, #4
	ldr	r4, [r1, r3]
	add	r3, #8
	ldr	r6, [r1, r3]
	mov	r3, r10
	ldr	r7, [r1, r2]
	cmp	r3, #0x2f
	bls	.L12da
	lsr	r5, r4, #31
	mov	r0, r4
	mov	r1, #3
	str	r4, [sp]
	add	r5, r4, r5
	bl	_divsi3_RAM
	asr	r5, #1
	ldr	r4, [sp]
	add	r5, r0
	sub	r4, r5
	mov	r0, r7
	mov	r1, #3
	str	r4, [sp]
	bl	_divsi3_RAM
	lsr	r5, r7, #31
	add	r5, r7, r5
	asr	r5, #1
	add	r5, r0
	mov	r1, #3
	mov	r0, r6
	bl	_divsi3_RAM
	sub	r7, r5
	lsr	r5, r6, #31
	add	r5, r6, r5
	asr	r5, #1
	add	r5, r0
	sub	r6, r5
	ldr	r4, [sp]
	b	.L1384
.L12da:
	mov	r1, r10
	cmp	r1, #0x1f
	bls	.L1330
	mov	r0, r4
	mov	r1, #3
	str	r4, [sp]
	bl	_divsi3_RAM
	ldr	r4, [sp]
	mov	r3, r4
	cmp	r4, #0
	bge	.L12f4
	add	r3, r4, #3
.L12f4:
	asr	r3, #2
	add	r3, r0, r3
	sub	r4, r3
	mov	r0, r7
	mov	r1, #3
	str	r4, [sp]
	bl	_divsi3_RAM
	mov	r3, r7
	ldr	r4, [sp]
	cmp	r7, #0
	bge	.L130e
	add	r3, r7, #3
.L130e:
	asr	r3, #2
	add	r3, r0, r3
	mov	r1, #3
	mov	r0, r6
	sub	r7, r3
	str	r4, [sp]
	bl	_divsi3_RAM
	mov	r3, r6
	ldr	r4, [sp]
	cmp	r6, #0
	bge	.L1328
	add	r3, r6, #3
.L1328:
	asr	r3, #2
	add	r3, r0, r3
	sub	r6, r3
	b	.L1384
.L1330:
	mov	r2, r10
	cmp	r2, #0xf
	bls	.L1384
	mov	r5, r4
	cmp	r4, #0
	bge	.L133e
	add	r5, r4, #3
.L133e:
	mov	r0, r4
	mov	r1, #5
	str	r4, [sp]
	bl	_divsi3_RAM
	asr	r5, #2
	ldr	r4, [sp]
	add	r5, r0
	sub	r4, r5
	mov	r5, r7
	cmp	r7, #0
	bge	.L1358
	add	r5, r7, #3
.L1358:
	mov	r0, r7
	mov	r1, #5
	str	r4, [sp]
	bl	_divsi3_RAM
	asr	r5, #2
	add	r5, r0
	sub	r7, r5
	ldr	r4, [sp]
	mov	r5, r6
	cmp	r6, #0
	bge	.L1372
	add	r5, r6, #3
.L1372:
	mov	r0, r6
	mov	r1, #5
	str	r4, [sp]
	bl	_divsi3_RAM
	asr	r5, #2
	add	r5, r0
	ldr	r4, [sp]
	sub	r6, r5
.L1384:
	mov	r1, r8
	ldrh	r3, [r1]
	mov	r2, #0x1f
	mov	r0, r3
	lsr	r1, r3, #5
	and	r0, r2
	lsr	r3, #10
	and	r1, r2
	and	r3, r2
	add	r0, r4
	add	r1, r7
	add	r3, r6
	cmp	r0, #0x1f
	ble	.L13a2
	mov	r0, #0x1f
.L13a2:
	cmp	r1, #0x1f
	ble	.L13a8
	mov	r1, #0x1f
.L13a8:
	cmp	r3, #0x1f
	ble	.L13ae
	mov	r3, #0x1f
.L13ae:
	cmp	r0, #0
	bge	.L13b4
	mov	r0, #0
.L13b4:
	cmp	r1, #0
	bge	.L13ba
	mov	r1, #0
.L13ba:
	cmp	r3, #0
	bge	.L13c0
	mov	r3, #0
.L13c0:
	lsl	r2, r1, #5
	lsl	r3, #10
	orr	r3, r2
	mov	r1, #1
	mov	r2, r9
	orr	r3, r0
	add	r10, r1
	strh	r3, [r2]
	mov	r3, #2
	mov	r2, r10
	add	r9, r3
	add	r8, r3
	cmp	r2, #0x3e
	bhi	.L13de
	b	.L1282
.L13de:
	ldr	r5, =.L2db8
	bl	__Random
	mov	r3, #7
	and	r0, r3
	lsl	r2, r0, #1
	ldr	r3, [r5]
	add	r2, r0
	add	r3, r2
	str	r3, [r5]
	ldr	r2, =.L1f00
	lsl	r3, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0x63
	bne	.L1400
	mov	r3, #0
	str	r3, [r5]
.L1400:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_918_2009244

.thumb_func_start OvlFunc_918_2009424
	push	{lr}
	cmp	r0, #0xc
	bls	.L142c
	b	.L159c
.L142c:
	ldr	r2, =.L1434
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1434:
	.word	.L1468
	.word	.L14e8
	.word	.L1480
	.word	.L1498
	.word	.L14b0
	.word	.L14f2
	.word	.L159c
	.word	.L150a
	.word	.L158a
	.word	.L1522
	.word	.L153a
	.word	.L1552
	.word	.L1594
.L1468:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_SetAnim
	b	.L159c
.L1480:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #5
	bl	__MapActor_SetAnim
	b	.L159c
.L1498:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_SetAnim
	b	.L159c
.L14b0:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
.L14e8:
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	b	.L159c
.L14f2:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	b	.L159c
.L150a:
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #8
	bl	__MapActor_SetAnim
	b	.L159c
.L1522:
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #9
	bl	__MapActor_SetAnim
	b	.L159c
.L153a:
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #0xa
	bl	__MapActor_SetAnim
	b	.L159c
.L1552:
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #8
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #8
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
.L158a:
	mov	r0, #8
	mov	r1, #6
	bl	__MapActor_SetAnim
	b	.L159c
.L1594:
	mov	r0, #8
	mov	r1, #6
	bl	__MapActor_SetAnim
.L159c:
	mov	r0, #0xc
	bl	__WaitFrames
	pop	{r0}
	bx	r0
.func_end OvlFunc_918_2009424

.thumb_func_start OvlFunc_918_20095ac
	push	{r5, r6, r7, lr}
	mov	r6, r0
	mov	r7, r6
	add	r7, #0x64
	mov	r1, #0
	ldrsh	r2, [r7, r1]
	sub	sp, #0xc
	cmp	r2, #0x4f
	bgt	.L1610
	ldr	r3, [r6, #0x38]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0x3c]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x40]
	str	r3, [r5, #8]
	mov	r3, r6
	add	r3, #0x66
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	lsl	r1, r2, #1
	add	r1, r2
	lsl	r1, #8
	add	r1, r3
	lsl	r0, r2, #16
	mov	r2, r5
	bl	__vec3_translate
	ldr	r3, [r5]
	str	r3, [r6, #8]
	ldr	r3, [r5, #4]
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x10]
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	ldrh	r2, [r7]
	cmp	r3, #0x27
	bgt	.L160a
	ldr	r2, =0xfffffae2
	ldr	r3, [r6, #0x18]
	add	r3, r2
	str	r3, [r6, #0x18]
	ldr	r3, [r6, #0x1c]
	add	r3, r2
	str	r3, [r6, #0x1c]
	ldrh	r2, [r7]
.L160a:
	add	r3, r2, #1
	strh	r3, [r7]
	b	.L161e
.L1610:
	ldr	r3, [r6, #0x50]
	ldrb	r0, [r3, #0x1c]
	bl	__Func_8003f3c
	mov	r0, r6
	bl	__DeleteActor
.L161e:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_918_20095ac

.thumb_func_start OvlFunc_918_200962c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r7, =.L2dcc
	ldr	r5, [r7]
	mov	r0, #0
	mov	r11, r0
	mov	r1, #0xa
	mov	r0, r5
	bl	_divsi3_RAM
	mov	r6, r0
	cmp	r5, #0x2c
	bls	.L1652
	b	.L17b2
.L1652:
	ldr	r2, =.L165c
	lsl	r3, r5, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L165c:
	.word	.L1710
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L1710
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L1710
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L1710
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L1710
	.word	.L17b2
	.word	.L17b2
	.word	.L17b2
	.word	.L17aa
.L1710:
	mov	r0, #0xdc
	bl	__PlaySound
	mov	r3, #6
	mov	r7, #0
	sub	r1, r3, r6
	cmp	r7, r1
	bcs	.L17aa
	mov	r3, #0xb4
	mov	r2, #0
	lsl	r3, #1
	ldr	r6, =.L2dc0
	mov	r9, r2
	mov	r8, r1
	mov	r10, r3
.L172e:
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	ldr	r0, =0x11d
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L17a4
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
	bl	__Func_800c528
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r3, r5
	add	r3, #0x64
	mov	r2, r9
	strh	r2, [r3]
	mov	r1, r8
	mov	r0, r10
	bl	_Func_8000b60
	mul	r0, r7
	mov	r1, r10
	lsl	r0, #16
	bl	_Func_8000b60
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
.L17a4:
	add	r7, #1
	cmp	r7, r8
	bcc	.L172e
.L17aa:
	ldr	r0, =0x121
	bl	__PlaySound
	ldr	r7, =.L2dcc
.L17b2:
	ldr	r3, [r7]
	add	r3, #1
	str	r3, [r7]
	cmp	r3, #0x78
	ble	.L17c0
	mov	r3, #0
	str	r3, [r7]
.L17c0:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_918_200962c

	.section .data
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
.L1f00:
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
.L2db8:
	.incbin "overlays/rom_7a5214/orig.bin", 0x2db8

	.section .bss
	.global .L2dc0
	.global .L2dcc
	.global .L2dd0
	.global .L2dd0

	.lcomm	.L2dc0, 0xc
	.lcomm	.L2dcc, 4
	.lcomm	.L2dd0, 4
