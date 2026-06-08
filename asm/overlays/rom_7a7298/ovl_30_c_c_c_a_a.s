	.include "macros.inc"

.thumb_func_start OvlFunc_921_200828c
	push	{lr}
	bl	__Func_80916b0
	mov	r2, #0xa
	mov	r1, #0
	mov	r0, #9
	bl	__Func_809280c
	ldr	r0, =0x152a
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_200828c

.thumb_func_start OvlFunc_921_20082b8
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x881
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L31c
	ldr	r0, =0x163c
	bl	__Func_8092b94
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xa
	bl	__Func_8093874
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_809280c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8093054
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #9
	bl	__Func_80924d4
	b	.L36e
.L31c:
	ldr	r0, =0x152d
	bl	__Func_8092b94
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xa
	bl	__Func_8093874
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_809280c
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #9
	bl	__Func_80924d4
.L36e:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_20082b8

.thumb_func_start OvlFunc_921_2008384
	push	{lr}
	ldr	r0, =0x881
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3b8
	bl	__Func_80916b0
	mov	r1, #0
	mov	r2, #0
	mov	r0, #9
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x1644
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8093054
	bl	__Func_8091750
	b	.L4d6
.L3b8:
	ldr	r0, =0x82b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3fe
	bl	__Func_80916b0
	mov	r0, #9
	mov	r1, #7
	bl	__Func_80924d4
	mov	r2, #0x45
	mov	r1, #0xa
	ldr	r0, =.L31c0
	bl	__Func_8010560
	ldr	r0, =0x156c
	bl	__Func_8092b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #9
	mov	r1, #8
	bl	__Func_80924d4
	ldr	r0, =.L31d6
	mov	r1, #0xa
	mov	r2, #0x45
	bl	__Func_8010560
	bl	__Func_8091750
	b	.L4d6
.L3fe:
	bl	__Func_80916b0
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0xa
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =gScript_921__0200a4f4
	mov	r0, #9
	bl	__Func_809207c
	ldr	r0, =0x1534
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092f84
	mov	r0, #8
	bl	__Func_80920a0
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r1, #0xd0
	mov	r2, #0xa
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	ldr	r1, =gScript_921__0200a564
	mov	r0, #0
	bl	__Func_809207c
	ldr	r2, =0xcccc
	mov	r0, #8
	ldr	r1, =0x19999
	bl	__Func_8092064
	ldr	r1, =.L2508
	mov	r0, #8
	bl	__Func_80920fc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0
	mov	r0, #8
	mov	r1, #2
	bl	__Func_8092560
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092f84
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r2, #2
	eor	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x82c
	bl	__Func_8079358
	bl	__Func_8091750
.L4d6:
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_2008384

.thumb_func_start OvlFunc_921_2008510
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x153f
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_2008510

.thumb_func_start OvlFunc_921_2008530
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x154d
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_2008530

