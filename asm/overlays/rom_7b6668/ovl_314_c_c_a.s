	.include "macros.inc"

.thumb_func_start OvlFunc_928_20085b0
	push	{lr}
	ldr	r0, =0x895
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L5c4
	ldr	r3, =.L1900
	mov	r2, #0
	add	r3, #0xbe
	strb	r2, [r3]
.L5c4:
	ldr	r0, =.L1900
	pop	{r1}
	bx	r1
.func_end OvlFunc_928_20085b0

.thumb_func_start OvlFunc_928_20085d4
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x17e8
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_20085d4

.thumb_func_start OvlFunc_928_20085f4
	push	{r5, r6, r7, lr}
	mov	r0, #0x14
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r6, r0
	bl	__Func_80916b0
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r7, #0
	str	r7, [r0, #0x6c]
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L628
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x13
	bgt	.L6a2
.L628:
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #0
	mov	r2, #0
	ldrh	r5, [r0, #6]
	mov	r0, #0x12
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x17fb
	bl	__Func_8092b94
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L67e
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8092f84
	mov	r0, #0x12
	bl	__MapActor_GetActor
	add	r0, #0x64
	strh	r7, [r0]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	strh	r5, [r0, #6]
	b	.L692
.L67e:
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
.L692:
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_928_2008500
	str	r3, [r0, #0x6c]
	bl	__Func_8091750
	b	.L916
.L6a2:
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #19
	cmp	r3, #0x1b
	ble	.L756
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #19
	cmp	r3, #0x1d
	bgt	.L756
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x1a
	beq	.L756
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r2, #0
	mov	r1, #0x12
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #5
	bl	__Func_809163c
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r2, [r5, #8]
	ldr	r3, [r0, #8]
	cmp	r2, r3
	bge	.L72a
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r1, [r0, #8]
	asr	r1, #20
	lsl	r1, #4
	sub	r1, #8
	mov	r0, #0
	mov	r2, #0xe8
	bl	__Func_809218c
	mov	r7, #1
	b	.L750
.L72a:
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r1, [r0, #8]
	asr	r1, #20
	lsl	r1, #4
	add	r1, #0x18
	mov	r0, #0
	mov	r2, #0xe8
	bl	__Func_809218c
.L750:
	mov	r0, #0
	bl	__Func_80923c4
.L756:
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r5, #0x80
	lsl	r5, #24
	str	r5, [r0, #0x38]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	str	r5, [r0, #0x3c]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #1
	str	r5, [r0, #0x40]
	mov	r0, #0x12
	bl	__Func_809207c
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xe4
	bl	__Func_80f9080
	ldr	r3, =0x4ccc
	mov	r0, #0x12
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r2, [r0, #0x10]
	asr	r5, #20
	mov	r3, #0x80
	lsl	r3, #12
	asr	r2, #20
	lsl	r5, #20
	add	r5, r3
	lsl	r2, #20
	add	r2, r3
	mov	r1, r5
	mov	r0, #0x14
	bl	__Func_80923e4
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x10
	mov	r1, #0x10
	str	r5, [sp]
	bl	__Func_8010704
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_8092b08
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	ldr	r5, =0x1999
.L7fe:
	mov	r0, #3
	bl	__Func_80030f8
	ldr	r3, [r6, #0x1c]
	ldr	r2, [r6, #0x18]
	add	r3, r5
	str	r3, [r6, #0x1c]
	ldr	r3, =0xffff
	add	r2, r5
	str	r2, [r6, #0x18]
	cmp	r2, r3
	ble	.L7fe
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x46
	bl	__Func_80937b8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x12
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0
	mov	r0, #0x12
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_809259c
	mov	r0, #0x46
	bl	__Func_809163c
	ldr	r0, =0x17fa
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	bl	__Func_809202c
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x1a
	bne	.L87a
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0xd
	ble	.L87a
	mov	r7, #1
.L87a:
	cmp	r7, #0
	beq	.L8c4
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0xa
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, #0
	mov	r2, #0x10
	bl	__Func_809228c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
.L8c4:
	mov	r0, #0x12
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0xe
	beq	.L8ee
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r2, #0xe8
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r0, #0x12
	bl	__Func_80921c4
.L8ee:
	mov	r1, #0x8c
	mov	r2, #0xe8
	lsl	r1, #1
	mov	r0, #0x12
	bl	__Func_80921c4
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079358
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	bl	__Func_8091750
.L916:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_20085f4

.thumb_func_start OvlFunc_928_200894c
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0xd
	bgt	.L964
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_8092b08
.L964:
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_200894c

.thumb_func_start OvlFunc_928_2008968
	push	{r5, lr}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfd
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #3
	mov	r1, #0x11
	str	r5, [sp]
	bl	__Func_8010704
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_928_2008324
	bl	__StartTask
	ldr	r0, =0x201
	bl	__Func_8079358
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_8092b08
	bl	__Func_8091750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_2008968

.thumb_func_start OvlFunc_928_20089dc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x44
	bl	__Func_80916b0
	ldr	r0, =0x202
	bl	__Func_8079338
	mov	r7, r0
	cmp	r7, #0
	beq	.La2a
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x17f4
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__Func_8091750
	b	.Lc9c
.La2a:
	ldr	r0, =0x17f2
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	add	r5, sp, #0x38
	and	r3, r2
	strb	r3, [r0]
	str	r7, [r5]
	str	r7, [r5, #4]
	str	r7, [r5, #8]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, r5
	ldrh	r1, [r0, #6]
	ldr	r0, =0xfff80000
	bl	__Func_800447c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80924d4
	ldr	r1, [r5]
	cmp	r1, #0
	bge	.La7a
	ldr	r2, =0xffff
	add	r1, r2
.La7a:
	ldr	r2, [r5, #8]
	asr	r1, #16
	cmp	r2, #0
	bge	.La86
	ldr	r3, =0xffff
	add	r2, r3
.La86:
	asr	r2, #16
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_80925cc
	add	r2, sp, #0x10
	mov	r3, #1
	str	r3, [r2]
	mov	r3, #0x9c
	mov	r10, r2
	lsl	r3, #17
	ldr	r2, =0x3333
	mov	r5, #0xc0
	mov	r8, r3
	ldr	r6, =0x20001
	lsl	r5, #16
	str	r2, [sp]
	mov	r0, r5
	mov	r1, #0
	mov	r2, r8
	ldr	r3, =0x1999
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r3, =0x1999
	mov	r2, r8
	str	r3, [sp]
	mov	r0, r5
	ldr	r3, =0x3333
	mov	r1, #0
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, #0x84
	bl	__Func_80f9080
	ldr	r5, =OvlFunc_928_2008370
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__StartTask
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r0, #0x48]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0xc0
	mov	r2, #0xc0
	str	r7, [r0, #0x44]
	lsl	r1, #10
	mov	r0, #0xe
	lsl	r2, #9
	bl	__Func_8092064
	mov	r2, #0x9c
	lsl	r2, #1
	mov	r1, #0xa8
	mov	r0, #0xe
	bl	__Func_8092128
	mov	r0, #0xe
	bl	__Func_80923c4
	mov	r0, #0x86
	bl	__Func_80f9080
	ldr	r1, =gScript_928__020096a0
	mov	r0, #0x13
	bl	__Func_809207c
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_928_2008358
	bl	__StartTask
	ldr	r3, =0x11b
	mov	r2, r10
	strh	r3, [r2, #0x18]
	ldr	r3, =.L1714
	str	r3, [r2, #0x1c]
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r2, #0x20]
	mov	r3, #0xa8
	lsl	r3, #16
	mov	r9, r3
	mov	r3, #0xe4
	lsl	r3, #15
	str	r3, [sp, #8]
	mov	r2, #0xa6
	mov	r3, r10
	str	r3, [sp, #0xc]
	lsl	r2, #17
	mov	r3, #0
	mov	r0, r9
	mov	r1, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_common0_10c
	mov	r2, #0x9c
	mov	r1, #0x92
	lsl	r2, #1
	mov	r0, #0xe
	bl	__Func_8092128
	mov	r0, #0xe
	bl	__Func_80923c4
	mov	r0, r5
	bl	__StopTask
	mov	r5, #0x90
	lsl	r5, #16
	mov	r0, r5
	mov	r1, #0
	mov	r2, r8
	mov	r3, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r2, =0xffffcccd
	ldr	r3, =0x1999
	mov	r11, r2
	str	r3, [sp]
	mov	r0, r5
	mov	r1, #0
	mov	r2, r8
	mov	r3, r11
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r2, =0xffff8000
	mov	r10, r2
	mov	r1, #0
	mov	r2, r8
	mov	r3, r10
	mov	r0, r5
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, #0x13
	bl	__Func_80920e8
	mov	r0, #0x7c
	bl	__Func_80f9080
	mov	r5, #0x80
	lsl	r5, #12
	mov	r0, r9
	mov	r1, r5
	mov	r2, r8
	mov	r3, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, r9
	mov	r1, r5
	mov	r2, r8
	ldr	r3, =0x3333
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r1, r5
	mov	r2, r8
	mov	r3, r11
	mov	r0, r9
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r6, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r0, =OvlFunc_928_2008358
	bl	__StopTask
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	mov	r2, r10
	strh	r2, [r3, #0x1e]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r0, #0x44]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r0, #0x48]
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0xe
	bl	__Func_8093040
	ldr	r0, =0x202
	bl	__Func_8079358
	bl	__Func_809202c
	bl	__Func_8091750
.Lc9c:
	add	sp, #0x44
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_20089dc

.thumb_func_start OvlFunc_928_2008cec
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x17f7
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_2008cec

.thumb_func_start OvlFunc_928_2008d0c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r7, r5
	add	r7, #0x55
	ldrb	r3, [r7]
	mov	r0, #0x80
	lsl	r0, #2
	mov	r8, r3
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Ldd8
	ldr	r3, [r5, #8]
	ldr	r1, =0xfff00000
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r1
	mov	r6, sp
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	and	r3, r1
	add	r3, r2
	str	r3, [r6, #8]
	mov	r3, #0x80
	ldrh	r1, [r5, #6]
	lsl	r3, #6
	add	r1, r3
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r0, #0x80
	and	r1, r3
	lsl	r0, #14
	mov	r2, r6
	bl	__Func_800447c
	mov	r0, r5
	mov	r1, r6
	bl	__Func_80120dc
	cmp	r0, #0
	bne	.Ldd8
	bl	__Func_80916b0
	mov	r1, #6
	mov	r0, r5
	bl	__Func_800c300
	mov	r0, #6
	bl	__Func_80030f8
	mov	r0, #0x98
	bl	__Func_80f9080
	mov	r0, r5
	mov	r1, #7
	bl	__Func_800c300
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	ldrb	r2, [r7]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r7]
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c528
	mov	r3, #0xa
	ldrsh	r2, [r6, r3]
	mov	r3, #2
	ldrsh	r1, [r6, r3]
	mov	r0, #0
	bl	__Func_8092158
	mov	r0, r5
	mov	r1, #6
	bl	__Func_800c300
	mov	r0, r5
	mov	r1, #1
	bl	__Func_800c528
	mov	r3, r8
	strb	r3, [r7]
	bl	__Func_8091750
.Ldd8:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_2008d0c

.thumb_func_start OvlFunc_928_2008de8
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r3, [r0]
	lsl	r1, #8
	mov	r0, #0
	lsl	r2, #7
	bl	__Func_8092064
	cmp	r5, #6
	bne	.Le20
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80924d4
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_809228c
	b	.Le2c
.Le20:
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #2
	neg	r2, r2
	bl	__Func_8092208
.Le2c:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, r5
	bl	__Func_8091e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_2008de8

.thumb_func_start OvlFunc_928_2008e4c
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r5, [r3]
	bl	__Func_80916b0
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #6
	bhi	.Lefc
	ldr	r2, =.Le70
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2,0
.Le70:
	.word	.Le8c
	.word	.Le9e
	.word	.Leaa
	.word	.Leb6
	.word	.Lec8
	.word	.Leda
	.word	.Leec
.Le8c:
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L1778
	mov	r1, #0x51
	mov	r2, #0x12
	bl	__Func_8010560
	b	.Lefc
.Le9e:
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L178e
	mov	r1, #0x53
	b	.Lee4
.Leaa:
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L178e
	mov	r1, #0x56
	b	.Lee4
.Leb6:
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L17a4
	mov	r1, #0x54
	mov	r2, #0x18
	bl	__Func_8010560
	b	.Lefc
.Lec8:
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L17a4
	mov	r1, #0x48
	mov	r2, #7
	bl	__Func_8010560
	b	.Lefc
.Leda:
	mov	r0, #0xbc
	bl	__Func_80f9080
	ldr	r0, =.L17ba
	mov	r1, #0x45
.Lee4:
	mov	r2, #0xb
	bl	__Func_8010560
	b	.Lefc
.Leec:
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L17d0
	mov	r1, #0x53
	mov	r2, #7
	bl	__Func_8010560
.Lefc:
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	OvlFunc_928_2008de8
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_2008e4c

.thumb_func_start OvlFunc_928_2008f30
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	sub	sp, #0x10
	bl	__Func_80916b0
	ldr	r1, =gScript_928__020096a0
	mov	r0, #0x13
	bl	__Func_809207c
	ldr	r3, =OvlFunc_928_2008358
	mov	r1, #0xc8
	mov	r11, r3
	lsl	r1, #4
	mov	r0, r11
	bl	__StartTask
	mov	r0, #0x13
	bl	__Func_80920e8
	mov	r0, #0x7c
	bl	__Func_80f9080
	mov	r3, #0xa8
	lsl	r3, #16
	mov	r9, r3
	mov	r3, #0x80
	lsl	r3, #12
	mov	r8, r3
	mov	r3, #0x9c
	lsl	r3, #17
	mov	r10, r3
	ldr	r6, =0x20001
	mov	r5, #0
	mov	r0, r9
	mov	r1, r8
	mov	r2, r10
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r6, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r3, =0x3333
	mov	r0, r9
	mov	r1, r8
	mov	r2, r10
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r6, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	ldr	r3, =0xffffcccd
	mov	r1, r8
	mov	r2, r10
	mov	r0, r9
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r6, [sp, #8]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, r11
	bl	__StopTask
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r1, r9
	mov	r2, r10
	mov	r0, #0x15
	bl	__Func_80923e4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0
	mov	r0, #0xe
	mov	r1, #0x13
	bl	__Func_809280c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x17fd
	bl	__Func_8092b94
	ldr	r0, =0x203
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1014
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1014:
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092f84
	ldr	r0, =0x203
	bl	__Func_8079358
	bl	__Func_809202c
	bl	__Func_8091750
	add	sp, #0x10
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_2008f30

.thumb_func_start OvlFunc_928_2009060
	push	{r5, r6, lr}
	bl	__Func_80916b0
	mov	r1, #1
	mov	r0, #0x12
	bl	__Func_809207c
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r6, #0
	str	r6, [r0, #0x6c]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r5, #0x80
	lsl	r5, #24
	str	r5, [r0, #0x38]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	str	r5, [r0, #0x40]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	str	r6, [r0, #0x24]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	str	r6, [r0, #0x2c]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	str	r6, [r0, #0x30]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r2, #0
	str	r6, [r0, #0x34]
	ldr	r1, =0x103
	mov	r0, #0x12
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0x12
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x8c
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0xe8
	bl	__Func_809218c
	mov	r1, #0x94
	lsl	r1, #1
	mov	r2, #0xe8
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #0x12
	bl	__Func_80923c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80937b8
	ldr	r1, =gScript_928__020095b0
	mov	r0, #0x12
	bl	__Func_809207c
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_928_2008500
	str	r3, [r0, #0x6c]
	bl	__Func_8091750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_2009060

