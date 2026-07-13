	.include "macros.inc"

.thumb_func_start OvlFunc_969_200d6a0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x17
	bl	__MapActor_GetActor
	ldr	r5, =.L6764
	ldr	r3, [r5]
	mov	r6, r0
	mov	r7, #0
	cmp	r3, #0x30
	bls	.L56bc
	b	.L58dc
.L56bc:
	ldr	r2, =.L56c4
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L56c4:
	.word	.L5788
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L57a2
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L57b4
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L57c6
	.word	.L57ee
	.word	.L584e
	.word	.L5896
	.word	.L5896
	.word	.L5896
	.word	.L5896
	.word	.L5896
	.word	.L5896
	.word	.L5896
	.word	.L5896
	.word	.L58dc
	.word	.L589a
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58dc
	.word	.L58d0
.L5788:
	mov	r0, #0xdc
	bl	__PlaySound
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	ldr	r0, =0x2063ff
	b	.L57a6
.L57a2:
	mov	r0, #0x80
	lsl	r0, #9
.L57a6:
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #8
	bl	__Func_8091254
	b	.L58dc
.L57b4:
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
	b	.L58dc
.L57c6:
	mov	r3, #0x98
	lsl	r3, #17
	str	r3, [r6, #8]
	ldr	r3, =0xfe980000
	str	r3, [r6, #0xc]
	mov	r3, #0xa4
	lsl	r3, #16
	str	r3, [r6, #0x10]
	mov	r3, #0x80
	lsl	r3, #9
	mov	r0, r6
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	bl	OvlFunc_969_200d688
	ldr	r1, =gScript_969__0200e2d0
	mov	r0, #0x17
	bl	__MapActor_SetBehavior
	b	.L58dc
.L57ee:
	ldr	r3, [r5]
	sub	r3, #1
	str	r3, [r5]
	ldr	r1, [r6, #0xc]
	cmp	r1, #0
	ble	.L5876
	mov	r1, #0
	ldr	r0, =0x203210
	bl	__Func_8091200
	mov	r0, #0x10
	bl	__Func_8091254
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, #1
	add	r0, #0x62
	strb	r5, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x62
	strb	r5, [r0]
	mov	r0, #2
	bl	__MapActor_GetActor
	add	r0, #0x62
	strb	r5, [r0]
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x62
	strb	r5, [r0]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x62
	strb	r5, [r0]
	mov	r0, #6
	bl	__MapActor_GetActor
	add	r0, #0x62
	strb	r5, [r0]
	b	.L58dc
.L584e:
	ldr	r3, [r5]
	sub	r3, #1
	str	r3, [r5]
	mov	r3, #0xa0
	ldr	r1, [r6, #0xc]
	lsl	r3, #14
	cmp	r1, r3
	ble	.L5876
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	b	.L58dc
.L5876:
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L588a
	mov	r0, #0xf6
	bl	__PlaySound
	ldr	r1, [r6, #0xc]
.L588a:
	mov	r2, #0x90
	lsl	r2, #10
	add	r3, r1, r2
	mov	r7, #1
	str	r3, [r6, #0xc]
	b	.L58dc
.L5896:
	mov	r7, #1
	b	.L58dc
.L589a:
	mov	r0, #0xbb
	bl	__PlaySound
	ldr	r0, =0x7fff
	mov	r1, #0
	bl	__Func_8091200
	mov	r0, #0xc
	bl	__Func_8091254
	b	.L58dc

	.pool_aligned

.L58d0:
	mov	r0, #0x17
	bl	__MapActor_SetIdle
	ldr	r0, =0x237
	bl	__SetFlag
.L58dc:
	cmp	r7, #0
	beq	.L599c
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #4
	ldr	r2, [r6, #0xc]
	lsr	r3, #16
	lsl	r3, #16
	sub	r2, r3
	ldr	r3, =0xfff80000
	mov	r0, #0x8e
	add	r2, r3
	ldr	r1, [r6, #8]
	ldr	r3, [r6, #0x10]
	lsl	r0, #1
	bl	__CreateActor
	mov	r7, r0
	cmp	r7, #0
	beq	.L599c
	ldr	r1, [r7, #0x50]
	mov	r10, r1
	ldr	r1, =gScript_969__0200e1cc
	bl	__Actor_SetScript
	mov	r1, #1
	mov	r0, r7
	bl	__Func_80929d8
	mov	r3, r7
	add	r3, #0x55
	mov	r5, #0
	strb	r5, [r3]
	bl	__Random
	ldr	r3, =0xffff000
	mov	r2, r7
	add	r2, #0x64
	and	r3, r0
	strh	r3, [r2]
	mov	r3, r7
	ldr	r1, .L5970	@ 0
	add	r3, #0x66
	strh	r5, [r3]
	mov	r8, r1
	bl	__Random
	mov	r3, r7
	lsr	r0, #13
	add	r3, #0x62
	strb	r0, [r3]
	ldr	r3, =OvlFunc_969_200b660
	str	r3, [r7, #0x6c]
	bl	__Random
	mov	r3, r0
	lsl	r0, r3, #16
	sub	r0, r3
	lsr	r0, #20
	bl	__sin
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	str	r3, [r7, #0x30]
	mov	r2, #0x32
	ldrsh	r3, [r6, r2]
	str	r3, [r7, #0x30]
	mov	r3, r10
	add	r3, #0x26
	mov	r1, r8
	b	.L5988

	.align	2, 0
.L5970:
	.word	0
	.pool

.L5988:
	strb	r1, [r3]
	mov	r3, r10
	ldrb	r2, [r3, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	mov	r1, r10
	strb	r3, [r1, #9]
.L599c:
	ldr	r2, =.L6764
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	mov	r0, #0
	bl	__MapActor_GetActor
	bl	OvlFunc_969_200d9f0
	mov	r0, #1
	bl	__MapActor_GetActor
	bl	OvlFunc_969_200d9f0
	mov	r0, #2
	bl	__MapActor_GetActor
	bl	OvlFunc_969_200d9f0
	mov	r0, #3
	bl	__MapActor_GetActor
	bl	OvlFunc_969_200d9f0
	mov	r0, #0x15
	bl	__MapActor_GetActor
	bl	OvlFunc_969_200d9f0
	mov	r0, #6
	bl	__MapActor_GetActor
	bl	OvlFunc_969_200d9f0
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200d6a0
.section .text.after_da28, "ax", %progbits

.thumb_func_start OvlFunc_969_200da28
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0x17
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001e70
	mov	r10, r0
	ldr	r5, [r3]
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #4
	lsr	r3, #16
	lsl	r3, #16
	add	r5, #0xe8
	mov	r8, r3
	mov	r0, #2
	ldrsh	r3, [r5, r0]
	cmp	r3, #0x81
	bgt	.L5aac
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L5a7e
	mov	r1, #0x98
	mov	r2, #0xa4
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #0x17
	bl	__MapActor_SetPos
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r5, #0x80
	lsl	r5, #9
	b	.L5a94
.L5a7e:
	mov	r1, #0x98
	mov	r2, #0xab
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #0x17
	bl	__MapActor_SetPos
	mov	r0, #0x17
	bl	__MapActor_GetActor
	ldr	r5, =0x14ccc
.L5a94:
	str	r5, [r0, #0x18]
	mov	r0, #0x17
	bl	__MapActor_GetActor
	str	r5, [r0, #0x1c]
	b	.L5ab6

	.pool_aligned

.L5aac:
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.L5ab6:
	mov	r1, r10
	cmp	r1, #0
	beq	.L5b80
	ldr	r3, =iwram_3001e40
	ldr	r6, [r3]
	mov	r3, #0xf
	and	r6, r3
	cmp	r6, #0
	bne	.L5b80
	mov	r0, r10
	ldr	r2, [r0, #0xc]
	ldr	r1, [r1, #8]
	mov	r3, #0x80
	lsl	r3, #12
	add	r2, r8
	add	r1, r3
	add	r2, r3
	ldr	r3, [r0, #0x10]
	mov	r0, #0x8e
	lsl	r0, #1
	bl	__CreateActor
	mov	r1, #0xc0
	lsl	r1, #11
	mov	r7, r0
	mov	r0, r8
	bl	_divsi3_RAM
	mov	r8, r0
	mov	r1, r8
	lsl	r1, #16
	mov	r8, r1
	cmp	r7, #0
	beq	.L5b80
	ldr	r1, =gScript_969__0200e734
	mov	r0, r7
	ldr	r5, [r7, #0x50]
	bl	__Actor_SetScript
	mov	r1, #5
	mov	r0, r7
	bl	__Func_80929d8
	mov	r3, r7
	add	r3, #0x55
	strb	r6, [r3]
	bl	__Random
	ldr	r3, =0xffff000
	mov	r2, r7
	and	r3, r0
	add	r2, #0x64
	ldr	r0, .L5b5c	@ 0
	strh	r3, [r2]
	mov	r3, r7
	mov	r9, r0
	add	r3, #0x66
	ldr	r0, =0xfffff
	strh	r6, [r3]
	mov	r2, r8
	ldr	r3, =OvlFunc_969_200db90
	mov	r1, r10
	and	r0, r2
	str	r1, [r7, #0x68]
	str	r3, [r7, #0x6c]
	asr	r0, #4
	bl	__sin
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	asr	r3, #16
	str	r3, [r7, #0x30]
	mov	r3, r5
	add	r3, #0x26
	mov	r0, r9
	strb	r0, [r3]
	mov	r1, r10
	ldr	r3, [r1, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	b	.L5b74

	.align	2, 0
.L5b5c:
	.word	0
	.pool

.L5b74:
	ldrb	r1, [r5, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	strb	r3, [r5, #9]
.L5b80:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200da28

.thumb_func_start OvlFunc_969_200db90
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	ldrh	r2, [r6]
	ldr	r1, [r5, #0x68]
	mov	r8, r2
	mov	r0, r8
	mov	r10, r1
	bl	__cos
	ldr	r3, [r5, #0x30]
	add	r3, #0x1c
	mov	r2, r3
	mul	r2, r0
	mov	r1, r10
	ldr	r3, [r1, #8]
	mov	r0, r8
	add	r3, r2
	str	r3, [r5, #8]
	bl	__sin
	mov	r2, #0xa4
	ldr	r3, [r5, #8]
	lsl	r2, #16
	lsl	r0, #4
	add	r0, r2
	str	r0, [r5, #0x10]
	str	r3, [r5, #0x38]
	str	r0, [r5, #0x40]
	ldr	r1, =0xfffffe00
	ldrh	r3, [r6]
	add	r3, r1
	strh	r3, [r6]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200db90

	.section .data
	.global gScript_969__0200dfc4
	.global gScript_969__0200e004
	.global gScript_969__0200e03c
	.global gScript_969__0200e074
	.global gScript_969__0200e088
	.global gScript_969__0200e0ac
	.global gScript_969__0200e0d0
	.global gScript_969__0200e0f4
	.global gScript_969__0200e130
	.global gScript_969__0200e16c
	.global gScript_969__0200e22c
	.global gScript_969__0200e324
	.global gScript_969__0200e360
	.global gScript_969__0200e39c
	.global gScript_969__0200e3c0
	.global gOvl_0200e464
	.global gOvl_0200e478
	.global .L66e8
	.global gOvl_0200e6ec
	.global gOvl_0200e3d4

gScript_969__0200dfc4:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x5fc4, (0x6004-0x5fc4)
gScript_969__0200e004:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6004, (0x603c-0x6004)
gScript_969__0200e03c:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x603c, (0x6074-0x603c)
gScript_969__0200e074:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6074, (0x6088-0x6074)
gScript_969__0200e088:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6088, (0x60ac-0x6088)
gScript_969__0200e0ac:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x60ac, (0x60d0-0x60ac)
gScript_969__0200e0d0:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x60d0, (0x60f4-0x60d0)
gScript_969__0200e0f4:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x60f4, (0x6130-0x60f4)
gScript_969__0200e130:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6130, (0x616c-0x6130)
gScript_969__0200e16c:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x616c, (0x61cc-0x616c)
	.global gScript_969__0200e1cc
gScript_969__0200e1cc:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x61cc, (0x622c-0x61cc)
gScript_969__0200e22c:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x622c, (0x62d0-0x622c)
	.global gScript_969__0200e2d0
gScript_969__0200e2d0:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x62d0, (0x6324-0x62d0)
gScript_969__0200e324:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6324, (0x6360-0x6324)
gScript_969__0200e360:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6360, (0x639c-0x6360)
gScript_969__0200e39c:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x639c, (0x63c0-0x639c)
gScript_969__0200e3c0:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x63c0, (0x63d4-0x63c0)
gOvl_0200e3d4:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x63d4, (0x6464-0x63d4)
gOvl_0200e464:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6464, (0x6478-0x6464)
gOvl_0200e478:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6478, (0x66e8-0x6478)
.L66e8:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x66e8, (0x66ec-0x66e8)
gOvl_0200e6ec:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x66ec, (0x6734-0x66ec)
	.global gScript_969__0200e734
gScript_969__0200e734:
	.incbin "overlays/rom_7f6e64/orig.bin", 0x6734

	.section .bss
	.global .L6760
	.global .L6764

	.lcomm	.L6760, 4
	.lcomm	.L6764, 4
