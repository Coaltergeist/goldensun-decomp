	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_917_20082c0
	push	{lr}
	bl	__Func_80916b0
	bl	__Func_808e118
	ldr	r0, =0x844
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L2da
	bl	OvlFunc_917_20082ec
	b	.L2de
.L2da:
	bl	OvlFunc_917_2008488
.L2de:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_20082c0

.thumb_func_start OvlFunc_917_20082ec
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0xc0
	mov	r2, #0
	mov	r6, r0
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__Func_80030f8
	mov	r0, #0x11
	bl	__Func_80f9080
	ldr	r5, =.L1dd0
	mov	r3, #1
	mov	r1, #0xc8
	str	r3, [r5]
	lsl	r1, #4
	ldr	r0, =OvlFunc_917_2009218
	bl	__StartTask
	mov	r0, #0x1e
	bl	__Func_80030f8
	mov	r3, #0
	mov	r0, #0xa4
	mov	r1, #1
	mov	r2, #0xeb
	lsl	r2, #16
	str	r3, [r5]
	lsl	r0, #17
	mov	r3, #1
	neg	r1, r1
	bl	__Func_80933f8
	mov	r1, #1
	mov	r0, #0
	bl	__Func_8092b08
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #0x10
	mov	r0, #0
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #10
	mov	r0, #0
	bl	__Func_8092064
	mov	r0, #0x85
	bl	__Func_80f9080
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r6, #0x28]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r6, #0x48]
	mov	r3, #0xa0
	lsl	r3, #8
	mov	r2, #0x81
	str	r3, [r6, #0x44]
	mov	r0, #0
	ldr	r1, =0x14f
	lsl	r2, #1
	bl	__Func_8092158
	ldr	r3, [r6, #0x28]
	cmp	r3, #0
	blt	.L3ac
.L3a0:
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r3, [r6, #0x28]
	cmp	r3, #0
	bge	.L3a0
.L3ac:
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r3, [r6, #0x28]
	cmp	r3, #0
	ble	.L3ac
	mov	r0, #0xa1
	bl	__Func_80f9080
	mov	r1, #0x13
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r5, #0x80
	ldr	r0, =OvlFunc_917_2009218
	bl	__StopTask
	lsl	r5, #7
	mov	r0, #0x28
	bl	__Func_80030f8
	str	r5, [r6, #0x44]
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x50
	bl	__Func_809163c
	ldr	r0, =0x14cc
	bl	__Func_8092b94
	mov	r2, #0x14
	ldr	r0, =0x200e
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x200e
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_808acc4
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__Func_80030f8
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r6, #6]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x48]
	mov	r1, #2
	str	r5, [r6, #0x44]
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #4
	bl	__Func_8092560
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_20082ec

.thumb_func_start OvlFunc_917_2008488
	push	{r5, r6, lr}
	mov	r0, #3
	bl	__Func_8079338
	mov	r1, #0xa4
	lsl	r1, #1
	mov	r2, #0xd4
	mov	r6, r0
	mov	r0, #0
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x11
	bl	__Func_80f9080
	ldr	r0, =0x14ed
	mov	r1, #1
	bl	__Func_801776c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L4e8
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_80923e4
.L4e8:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L4fc
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_80923e4
.L4fc:
	ldr	r1, =ActorCmd_ARRAY_917__02009ab8
	mov	r0, #1
	bl	__Func_809207c
	ldr	r1, =gScript_917__02009af4
	mov	r0, #2
	bl	__Func_809207c
	cmp	r6, #0
	beq	.L53a
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L532
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_80923e4
.L532:
	ldr	r1, =gScript_917__02009b30
	mov	r0, #3
	bl	__Func_809207c
.L53a:
	mov	r0, #2
	bl	__Func_80920e8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0
	bl	OvlFunc_917_20098b8
	mov	r0, #0x20
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__Func_80030f8
	ldr	r5, =.L1dd4
	mov	r3, #0
	mov	r1, #0xc8
	str	r3, [r5]
	lsl	r1, #4
	ldr	r0, =OvlFunc_917_20092b4
	bl	__StartTask
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	ldr	r0, =0x33333
	ldr	r1, =0x6666
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xfe
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xf6
	bl	__Func_80f9080
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #1
	mov	r3, #1
	neg	r1, r1
	ldr	r2, =0x1050000
	ldr	r0, =0x19d0000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xf6
	bl	__Func_80f9080
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0xa3
	mov	r1, #1
	mov	r2, #0xc0
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xf6
	bl	__Func_80f9080
	ldr	r3, [r5]
	cmp	r3, #0x18
	beq	.L614
.L608:
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r3, [r5]
	cmp	r3, #0x18
	bne	.L608
.L614:
	ldr	r0, =OvlFunc_917_20092b4
	bl	__StopTask
	mov	r0, #0xa
	bl	__Func_80030f8
	mov	r5, #0
.L622:
	mov	r0, #0
	bl	OvlFunc_917_20098b8
	mov	r0, #6
	bl	__Func_8091254
	mov	r0, #6
	bl	__Func_80030f8
	mov	r0, #1
	bl	OvlFunc_917_20098b8
	mov	r0, #6
	bl	__Func_8091254
	add	r5, #1
	mov	r0, #6
	bl	__Func_80030f8
	cmp	r5, #3
	bls	.L622
	mov	r0, #0
	bl	OvlFunc_917_20098b8
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x50
	bl	__Func_80030f8
	mov	r0, #0xa4
	mov	r1, #0x80
	mov	r2, #0xd4
	mov	r3, #1
	lsl	r2, #16
	lsl	r1, #12
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #7
	bl	__Func_80f9080
	ldr	r0, =0x14ee
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #3
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #2
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r0, #0xea
	mov	r2, #0xe8
	mov	r3, #1
	lsl	r2, #16
	mov	r1, #0
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xb
	mov	r1, #3
	bl	OvlFunc_917_20092f4
	mov	r2, #0xa
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	ldr	r0, =0x8008
	bl	__Func_8092c40
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L8a4
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8092f84
	b	.L926

	.pool_aligned

.L8a4:
	ldr	r5, =iwram_3001ebc
	mov	r3, #0xec
	ldr	r2, [r5]
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	mov	r0, #3
	ldr	r1, =0x103
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #2
	ldr	r1, =0x103
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r0, #1
	mov	r1, #4
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	cmp	r6, #0
	beq	.L8f8
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8092f84
	b	.L906
.L8f8:
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L906:
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8092f84
.L926:
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xa4
	mov	r1, #0x80
	mov	r2, #0xd4
	lsl	r2, #16
	mov	r3, #1
	lsl	r1, #12
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	bl	OvlFunc_917_20098b8
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__Func_80030f8
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__Func_809163c
	ldr	r2, =.L1dcc
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =.L1dc0
	mov	r3, #0xa4
	lsl	r3, #17
	str	r3, [r2]
	mov	r3, #0xc0
	lsl	r3, #14
	str	r3, [r2, #4]
	ldr	r5, =OvlFunc_917_20095a0
	mov	r3, #0xcd
	lsl	r3, #16
	mov	r1, #0xc8
	str	r3, [r2, #8]
	lsl	r1, #4
	mov	r0, r5
	bl	__StartTask
	mov	r0, #0x64
	bl	__Func_809163c
	mov	r0, r5
	bl	__StopTask
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x64
	bl	__Func_809163c
	mov	r0, #0
	bl	OvlFunc_917_20098b8
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x14fb
	bl	__Func_8092b94
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xea
	mov	r2, #0xe8
	mov	r3, #1
	lsl	r2, #16
	mov	r1, #0
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0xa
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lac0
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_80937b8
	b	.Lad8

	.pool_aligned

.Lac0:
	mov	r0, #1
	mov	r1, #4
	bl	__Func_8092548
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lad8:
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #4
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x1501
	bl	__Func_8092b94
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #4
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #0
	bl	OvlFunc_917_20092f4
	mov	r2, #0x14
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r2, #0x50
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #5
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #5
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	ldr	r0, =0x4008
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, =0x8002
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #4
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x4009
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xa
	mov	r1, #1
	bl	OvlFunc_917_20092f4
	mov	r2, #0xa
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	bl	OvlFunc_917_20098b8
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__Func_80030f8
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__Func_809163c
	ldr	r2, =.L1dcc
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =.L1dc0
	mov	r3, #0x88
	lsl	r3, #16
	str	r3, [r2]
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r2, #4]
	ldr	r5, =OvlFunc_917_20095a0
	mov	r3, #0x81
	lsl	r3, #17
	mov	r1, #0xc8
	str	r3, [r2, #8]
	lsl	r1, #4
	mov	r0, r5
	bl	__StartTask
	mov	r0, #0x64
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #2
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_80937b8
	mov	r2, #0xa
	ldr	r0, =0x8002
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #4
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	ldr	r0, =0x8002
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0xa
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x78
	lsl	r1, #7
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, r5
	bl	__StopTask
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0
	bl	OvlFunc_917_20098b8
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r1, #2
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #3
	bl	OvlFunc_917_20092f4
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #4
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0xa
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xa
	mov	r1, #1
	b	.Leec

	.pool_aligned

.Leec:
	bl	OvlFunc_917_20092f4
	mov	r1, #0
	ldr	r0, =0x8008
	bl	__Func_8092c40
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lf44
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lf44:
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x8008
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x11
	bl	__Func_80f9080
	ldr	r5, =gScript_917__02009b6c
	mov	r0, #1
	mov	r1, r5
	bl	__Func_809207c
	cmp	r6, #0
	beq	.Lfe8
	mov	r0, #3
	mov	r1, r5
	bl	__Func_809207c
.Lfe8:
	mov	r1, r5
	mov	r0, #2
	bl	__Func_80920fc
	mov	r0, #0xa
	mov	r1, #4
	bl	OvlFunc_917_20092f4
	mov	r1, #4
	mov	r0, #0xa
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x1519
	bl	__Func_8092b94
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xb
	mov	r1, #4
	bl	OvlFunc_917_20092f4
	mov	r1, #4
	mov	r0, #0xb
	bl	OvlFunc_917_20092f4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0xa
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	ldr	r0, =0x845
	bl	__Func_8079358
	mov	r0, #1
	bl	__Func_80f9080
	mov	r0, #0xb8
	mov	r1, #0xb9
	bl	OvlFunc_917_200972c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_2008488

.thumb_func_start OvlFunc_917_2009070
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r8, r0
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r10, r0
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0xe
	mov	r1, #0xf
	bl	__Func_8092950
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xe0
	ldr	r3, [r3]
	lsl	r0, #1
	mov	r2, #0x81
	add	r3, r0
	lsl	r2, #2
	str	r2, [r3]
	ldr	r2, =ewram_2000240
	add	r0, #0x80
	ldr	r1, =0x28
	add	r3, r2, r0
	strh	r1, [r3]
	ldr	r3, =0x242
	add	r2, r3
	mov	r3, #4
	strh	r3, [r2]
	ldr	r0, =0x845
	ldr	r6, .L10d4	@ 0
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L10ec
	mov	r0, #3
	bl	OvlFunc_917_2009768
	b	.L10ec

	.align	2, 0
.L10d4:
	.word	0
	.pool

.L10ec:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #6
	strh	r5, [r0, #0x20]
	mov	r0, #9
	bl	__MapActor_GetActor
	strh	r5, [r0, #0x20]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	strh	r5, [r0, #0x20]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	strh	r5, [r0, #0x20]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #8
	mov	r1, #2
	bl	__Func_8092b08
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_8092b08
	mov	r0, #9
	mov	r1, #2
	bl	__Func_8092b08
	mov	r3, r8
	add	r3, #0x55
	strb	r6, [r3]
	mov	r2, r7
	mov	r3, #0xe0
	lsl	r3, #13
	mov	r0, r8
	add	r2, #0x55
	str	r3, [r0, #0xc]
	strb	r6, [r2]
	mov	r2, r10
	add	r2, #0x55
	str	r3, [r7, #0xc]
	strb	r6, [r2]
	mov	r2, r10
	str	r3, [r2, #0xc]
	mov	r0, #9
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #8
	bl	__Func_80924d4
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r5, #8
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r0, #0
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_917_2009070

