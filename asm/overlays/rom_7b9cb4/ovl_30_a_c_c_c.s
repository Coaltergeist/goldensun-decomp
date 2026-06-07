	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200b028
	push	{r5, r6, lr}
	bl	__Func_80916b0
	mov	r1, #0xa4
	mov	r2, #0xb0
	mov	r0, #8
	lsl	r1, #17
	lsl	r2, #15
	bl	__Func_80923e4
	mov	r1, #0xa4
	mov	r2, #0xb0
	lsl	r2, #15
	mov	r0, #9
	lsl	r1, #17
	bl	__Func_80923e4
	mov	r0, #8
	mov	r1, #0
	bl	__Func_80924d4
	ldr	r5, =iwram_3001ebc
	mov	r3, #0xe0
	ldr	r1, [r5]
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x28
	str	r3, [r2]
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L308a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_80923e4
.L308a:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L309e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_80923e4
.L309e:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L30b2
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_80923e4
.L30b2:
	mov	r0, #1
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_8092064
	mov	r0, #2
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_8092064
	ldr	r2, =0x4ccc
	mov	r0, #3
	ldr	r1, =0x9999
	bl	__Func_8092064
	ldr	r1, =.L4054
	mov	r0, #1
	bl	__Func_809207c
	ldr	r1, =.L4084
	mov	r0, #2
	bl	__Func_809207c
	ldr	r1, =.L40b4
	mov	r0, #3
	bl	__Func_80920fc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0xa
	mov	r0, #1
	bl	__Func_8092adc
	ldr	r0, =0x190c
	bl	__Func_8092b94
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L316e
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	b	.L3184
.L316e:
	mov	r0, #2
	mov	r1, #4
	bl	__Func_8092548
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L3184:
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	ldr	r0, =0x1910
	bl	__Func_8092b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0x28
	ldr	r1, =0x101
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, #0xbe
	bl	__Func_80f9080
	mov	r1, #7
	mov	r0, #8
	bl	__Func_8092950
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x121
	bl	__Func_80f9080
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
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, #0x67
	bl	__Func_80f9080
	ldr	r6, =OvlFunc_932_200affc
	mov	r1, #0xc8
	mov	r0, r6
	lsl	r1, #4
	bl	__StartTask
	ldr	r5, =.L40e4
	mov	r0, #9
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #8
	bl	__Func_80920fc
	mov	r0, r6
	bl	__StopTask
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r5, =.L412c
	mov	r0, #1
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_80920fc
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	ldr	r0, =0x12f
	bl	__Func_8079374
	ldr	r3, [r5]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	ldr	r0, =0x909
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200b028

.thumb_func_start OvlFunc_932_200b410
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xbf
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	ldr	r3, =0x1018
	strh	r3, [r2]
	bx	lr
.func_end OvlFunc_932_200b410

.thumb_func_start OvlFunc_932_200b428
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xc0
	ldr	r3, [r0, #0xc]
	lsl	r2, #14
	cmp	r3, r2
	ble	.L3454
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_8092b08
	b	.L345c
.L3454:
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_8092b08
.L345c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200b428

.thumb_func_start OvlFunc_932_200b460
	push	{lr}
	bl	__MapActor_GetActor
	mov	r1, r0
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	mov	r3, #0xff
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0
	bl	__Func_8012078
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200b460

.thumb_func_start OvlFunc_932_200b484
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_80f9080
	mov	r0, #0xe8
	bl	__Func_80f9080
	ldr	r2, [r5, #8]
	ldr	r3, =0xfff00000
	and	r2, r3
	mov	r10, r2
	mov	r2, #0x80
	lsl	r2, #12
	mov	r9, r2
	ldr	r2, [r5, #0x10]
	and	r2, r3
	mov	r11, r2
	mov	r3, #0x80
	add	r10, r9
	lsl	r3, #10
	add	r9, r11
	ldr	r2, [r5, #0xc]
	mov	r1, r10
	str	r3, [r5, #0x34]
	mov	r0, r5
	mov	r3, r9
	bl	__Func_800d14c
	mov	r0, r5
	bl	__Func_800ca6c
	mov	r3, r5
	mov	r6, #0
	add	r3, #0x22
	strb	r6, [r3]
	mov	r2, r9
	mov	r3, r10
	str	r3, [r5, #8]
	str	r2, [r5, #0x10]
	str	r6, [r5, #0x24]
	str	r6, [r5, #0x2c]
	mov	r0, r5
	mov	r1, #2
	bl	__Func_800c300
	mov	r0, #0xf
	bl	__Func_80030f8
	mov	r1, #1
	mov	r0, r5
	bl	__Func_800c300
	mov	r0, #0x1e
	bl	__Func_80030f8
	ldr	r5, [r5, #0x50]
	mov	r2, #1
	mov	r8, r2
	mov	r3, r5
	mov	r2, r8
	add	r3, #0x27
	strb	r2, [r3]
	ldr	r0, [r5, #0x2c]
	bl	__Func_800bc48
	str	r6, [r5, #0x2c]
	mov	r3, r8
	add	r5, #0x25
	strb	r3, [r5]
	mov	r2, #0xfa
	ldr	r3, =ewram_2000240
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__Func_808ba1c
	mov	r5, r0
	mov	r0, #0x98
	bl	__Func_80f9080
	mov	r3, r10
	str	r3, [r5, #8]
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r5, #0x28]
	mov	r3, #0x80
	mov	r2, r9
	lsl	r3, #9
	str	r3, [r5, #0x48]
	ldr	r1, [r5, #0x50]
	str	r2, [r5, #0x10]
	sub	r6, #0xd
	ldrb	r2, [r1, #9]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r5
	mov	r1, #7
	bl	__Func_800c300
	mov	r3, #0xc0
	lsl	r3, #13
	add	r11, r3
	ldr	r2, [r5, #0xc]
	mov	r0, r5
	mov	r1, r10
	mov	r3, r11
	bl	__Func_800d14c
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r5, #6]
	mov	r0, #0x14
	bl	__Func_80030f8
	ldr	r2, [r5, #0x50]
	ldrb	r3, [r2, #9]
	and	r6, r3
	mov	r3, #8
	orr	r6, r3
	strb	r6, [r2, #9]
	mov	r0, #0x9f
	bl	__Func_80f9080
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200b484

