	.include "macros.inc"

.thumb_func_start OvlFunc_890_200a614
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	bl	__Func_80916b0
	mov	r0, #0x8f
	mov	r1, #1
	mov	r2, #0x86
	mov	r3, #0
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r0, =0x7fff
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__Func_80030f8
	mov	r1, #0x8c
	mov	r2, #0x86
	mov	r0, #1
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, =iwram_3001ebc
	mov	r1, #0xe4
	ldr	r3, [r0]
	lsl	r1, #1
	mov	r7, #1
	str	r7, [r3, r1]
	mov	r8, r0
	mov	r10, r1
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r1, #1
	ldr	r0, =0x2051cc
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__Func_80030f8
	ldr	r0, =0x201
	bl	__Func_8079358
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x202
	bl	__Func_8079374
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x64
	bl	__Func_80030f8
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x90
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x50
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #5
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	ldr	r0, =0x1119
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091c7c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0x6b
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__Func_809163c
	bl	__Func_809509c
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #4
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092560
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #0x96
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x82
	bl	__Func_8092128
	mov	r1, #0x85
	lsl	r1, #1
	mov	r2, #0x90
	mov	r0, #1
	bl	__Func_8092128
	mov	r0, #1
	bl	__Func_80923c4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r0, #0x8d
	bl	__Func_8091ff0
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_890_200a5fc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	mov	r6, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L288c
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_8092128
.L288c:
	mov	r0, #1
	bl	__Func_80923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, r8
	ldr	r3, [r0, #0x14]
	mov	r1, #0xe0
	lsl	r1, #4
	ldr	r0, =0xe02
	add	r2, r3, r1
	strh	r6, [r2]
	add	r2, r3, r0
	add	r0, #2
	strh	r6, [r2]
	add	r2, r3, r0
	mov	r0, #0xa8
	ldr	r1, .L28f0	@ 0
	lsl	r0, #6
	strh	r6, [r2]
	add	r2, r3, r0
	strb	r1, [r2]
	ldr	r1, =0x2a01
	add	r0, #2
	add	r2, r3, r1
	add	r1, #2
	strb	r7, [r2]
	add	r2, r3, r0
	add	r3, r1
	strb	r7, [r2]
	strb	r7, [r3]
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r6, [r3]
	mov	r2, r8
	ldr	r1, [r2]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x44
	str	r3, [r2]
	mov	r0, r10
	mov	r3, #0x10
	str	r3, [r1, r0]
	bl	__Func_8091750
	b	.L2918

	.align	2, 0
.L28f0:
	.word	0
	.pool

.L2918:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_200a614

.thumb_func_start OvlFunc_890_200a924
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x896
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L293c
	ldr	r0, =0xffd
	bl	__Func_8092b94
	b	.L2942
.L293c:
	ldr	r0, =0xfff
	bl	__Func_8092b94
.L2942:
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0x10
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_200a924

	.section .data
	.global .L2afc

.L2afc:
	.incbin "overlays/rom_78b2ac/orig.bin", 0x2afc, (0x2bec-0x2afc)
.L2bec:
	.incbin "overlays/rom_78b2ac/orig.bin", 0x2bec, (0x2c14-0x2bec)
.L2c14:
	.incbin "overlays/rom_78b2ac/orig.bin", 0x2c14, (0x2d34-0x2c14)
.L2d34:
	.incbin "overlays/rom_78b2ac/orig.bin", 0x2d34

	.section .bss
	.global .L2ddc
	.global .L2de0
	.global .L2de4
	.global .L2de8
	.global .L2dec

	.lcomm	.L2ddc, 4
	.lcomm	.L2de0, 4
	.lcomm	.L2de4, 4
	.lcomm	.L2de8, 4
	.lcomm	.L2dec, 4
