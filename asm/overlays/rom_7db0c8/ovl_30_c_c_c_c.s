	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_954_2008a3c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	mov	r0, #0xa2
	str	r2, [r3]
	lsl	r0, #1
	sub	sp, #0xc
	bl	__Func_8079358
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	mov	r0, #0
	bl	__Func_8011f54
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	bne	.Laa0
	cmp	r0, #0
	bne	.Laa0
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, r5
	add	r3, #0x55
	strb	r0, [r3]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Laa0:
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_80793b8
	mov	r6, r0
	cmp	r6, #0
	bne	.Lab0
	mov	r6, #0x19
.Lab0:
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r2, #0x80
	lsl	r2, #12
	mov	r9, r2
	lsl	r3, r6, #20
	mov	r5, r0
	add	r3, r9
	mov	r1, #0
	str	r3, [r5, #8]
	mov	r8, r1
	mov	r3, r5
	add	r3, #0x55
	mov	r2, r8
	strb	r2, [r3]
	mov	r7, #2
	sub	r3, #0x32
	strb	r7, [r3]
	mov	r3, #0xc
	str	r3, [sp, #4]
	mov	r2, #1
	mov	r0, #0xe
	mov	r1, #0xd
	mov	r10, r3
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_8010704
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_954_200804c
	bl	__StartTask
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x22
	mov	r3, #1
	strb	r3, [r2]
	ldr	r0, =0x303
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lb40
	mov	r0, r5
	mov	r1, #4
	bl	__Func_800c300
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c528
	mov	r3, r5
	add	r3, #0x59
	mov	r1, r8
	strb	r1, [r3]
	mov	r2, #3
	sub	r3, #0x36
	strb	r2, [r3]
	mov	r3, #0x2f
	mov	r2, r10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Lb40:
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r3, [r5, #0x10]
	asr	r2, r3, #20
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r8
	strb	r1, [r3]
	sub	r3, #0x32
	strb	r7, [r3]
	mov	r3, #0x40
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x18
	mov	r2, #3
	mov	r3, #1
	mov	r0, #0x40
	bl	__Func_8010704
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r2, r3, #20
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r8
	strb	r1, [r3]
	sub	r3, #0x32
	strb	r7, [r3]
	mov	r3, #9
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x3f
	mov	r1, #0x19
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
	ldr	r0, =0x302
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lbd6
	mov	r6, #0x22
	mov	r5, #7
	mov	r0, #0x25
	mov	r1, #7
	mov	r2, #1
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x25
	str	r3, [sp]
	mov	r0, #0x24
	mov	r1, #7
	mov	r2, #1
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x26
	str	r3, [sp, #4]
	mov	r0, #0x64
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	bl	__Func_80105d4
.Lbd6:
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r0, =0x301
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lc1a
	mov	r3, #0x29
	mov	r2, r10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2b
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r8
	strb	r1, [r3]
	ldr	r3, =0x6666
	str	r3, [r5, #0x34]
	ldr	r3, =0xcccc
	mov	r2, r9
	str	r3, [r5, #0x30]
	str	r2, [r5, #0xc]
	mov	r0, r5
	mov	r1, #3
	bl	__Func_800c300
	b	.Lc22
.Lc1a:
	mov	r0, r5
	mov	r1, #2
	bl	__Func_800c300
.Lc22:
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r1, #0x78
	mov	r0, #0x18
	bl	OvlFunc_common1_1608
	mov	r1, #0x7f
	mov	r0, #0x19
	bl	OvlFunc_common1_1608
	ldr	r3, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #4
	bls	.Lc52
	b	.Ld74
.Lc52:
	ldr	r2, =.Lc5c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lc5c:
	.word	.Lc70
	.word	.Ld10
	.word	.Ld42
	.word	.Ld58
	.word	.Ld66
.Lc70:
	mov	r2, #0xc0
	lsl	r2, #16
	str	r2, [sp]
	mov	r2, #0x18
	str	r2, [sp, #4]
	mov	r3, #0xa3
	mov	r2, #0x19
	str	r2, [sp, #8]
	lsl	r3, #19
	mov	r1, #8
	mov	r2, #4
	mov	r0, #0
	bl	OvlFunc_common1_1ecc
	mov	r3, #0x13
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0x7f
	bl	__Func_8010788
	mov	r0, #0x13
	bl	__Func_8092924
	mov	r0, #0x14
	bl	__Func_8092924
	mov	r0, #0x15
	bl	__Func_8092924
	mov	r0, #0x16
	bl	__Func_8092924
	mov	r0, #0x17
	bl	__Func_8092924
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lcf0
	mov	r0, #0x11
	bl	__Func_80f9080
	mov	r0, #0
	bl	OvlFunc_common1_78
	bl	OvlFunc_common1_0
	mov	r0, #1
	bl	OvlFunc_954_2008a10
	mov	r0, #2
	bl	OvlFunc_954_2008a10
	mov	r0, #3
	bl	OvlFunc_954_2008a10
	mov	r0, #1
	bl	OvlFunc_common1_ea0
.Lcf0:
	mov	r0, #1
	mov	r1, #0
	bl	__Func_80920c0
	mov	r0, #2
	mov	r1, #0
	bl	__Func_80920c0
	mov	r0, #3
	mov	r1, #0
	bl	__Func_80920c0
	ldr	r0, =0xe4
	bl	OvlFunc_common1_1fb4
	b	.Ld74
.Ld10:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_common1_148
	bl	__StartTask
	mov	r0, #0x18
	bl	__Func_8092924
	mov	r0, #0x19
	bl	__Func_8092924
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Ld74
	bl	OvlFunc_common1_0
	mov	r0, #1
	bl	OvlFunc_common1_78
	mov	r0, #0
	bl	OvlFunc_common1_ea0
	b	.Ld74
.Ld42:
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Ld74
	mov	r0, #0x13
	bl	OvlFunc_954_2008db8
	bl	OvlFunc_common1_488
	b	.Ld74
.Ld58:
	mov	r0, #1
	bl	OvlFunc_954_2008974
	mov	r0, #4
	bl	__Func_8091e9c
	b	.Ld74
.Ld66:
	mov	r0, #1
	neg	r0, r0
	bl	OvlFunc_954_2008974
	mov	r0, #5
	bl	__Func_8091e9c
.Ld74:
	mov	r0, #0
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_954_2008a3c

.thumb_func_start OvlFunc_954_2008db8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	bl	__MapActor_GetActor
	mov	r3, #0xa
	ldrsh	r2, [r0, r3]
	mov	r9, r2
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r10, r2
	bl	__Func_80916b0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r7
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
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
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r3, r10
	lsl	r5, r3, #16
	mov	r2, r9
	ldr	r3, =0xffd00000
	lsl	r6, r2, #16
	mov	r0, #0
	add	r2, r5, r3
	mov	r1, r6
	bl	__Func_80923e4
	ldr	r3, =0xffd80000
	ldr	r2, =0xfff00000
	add	r3, r5
	mov	r8, r3
	add	r1, r6, r2
	mov	r0, #1
	mov	r2, r8
	bl	__Func_80923e4
	mov	r2, #0x80
	lsl	r2, #13
	add	r1, r6, r2
	mov	r0, #2
	mov	r2, r8
	bl	__Func_80923e4
	ldr	r3, =0xffe00000
	mov	r0, #3
	add	r2, r5, r3
	mov	r1, r6
	bl	__Func_80923e4
	ldr	r2, =0xffb00000
	add	r5, r2
	mov	r2, r5
	mov	r1, r6
	mov	r0, r7
	bl	__Func_80923e4
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r0, #6]
	mov	r1, #0
	mov	r0, #0
	bl	__Func_809335c
	bl	__Func_8091dc8
	bl	__Func_8091e20
	ldr	r0, =0x20cb
	bl	__Func_8092b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0x3c
	mov	r0, #3
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, r7
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0x3c
	mov	r0, #2
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #2
	mov	r0, r7
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r7
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0x3c
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0x3c
	mov	r0, #3
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r0, r7
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8093054
	cmp	r0, #0
	beq	.Lf28
	b	.L1088
.Lf28:
	ldr	r0, =0x20d5
	bl	__Func_8092b94
	mov	r1, #3
	mov	r0, #2
	bl	__Func_80924d4
	mov	r0, #2
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, #2
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_80924d4
	mov	r0, #1
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, r7
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, r7
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x9c
	mov	r1, #1
	mov	r2, #0xd0
	lsl	r2, #15
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xc2
	mov	r1, #1
	mov	r2, #0xd0
	lsl	r2, #15
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_80933f8
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8093530
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x9b
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r0, #19
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, r7
	lsl	r1, #7
	bl	__Func_809280c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xa3
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r0, #19
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r2, #0
	mov	r0, r7
	mov	r1, #0
	bl	__Func_809280c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809335c
	mov	r0, r7
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8093054
	cmp	r0, #0
	beq	.L1072
	b	.Lf28
.L1072:
	mov	r1, #2
	mov	r0, r7
	bl	__Func_80925cc
	ldr	r0, =0x20d4
	bl	__Func_8092b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
.L1088:
	ldr	r0, =0x20e1
	bl	__Func_8092b94
	mov	r0, r7
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #3
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #3
	mov	r0, #3
	bl	__Func_80924d4
	mov	r0, #1
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, #2
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_80924d4
	mov	r0, #1
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #6
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1148
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_8092128
.L1148:
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1168
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_8092128
.L1168:
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1188
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_8092128
.L1188:
	mov	r5, r9
	sub	r5, #0x10
	mov	r2, r10
	mov	r0, r7
	mov	r1, r5
	sub	r2, #0x40
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r2, r10
	mov	r0, r7
	mov	r1, r5
	sub	r2, #0x10
	bl	__Func_80921c4
	mov	r0, r7
	mov	r1, r9
	mov	r2, r10
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, r7
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__Func_8091750
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2008db8

.thumb_func_start OvlFunc_954_2009214
	push	{r5, r6, r7, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.L122e
	bl	OvlFunc_common1_2c4
	b	.L13d0
.L122e:
	bl	__Func_80916b0
	mov	r0, r6
	mov	r1, #1
	bl	OvlFunc_common1_4cc
	mov	r7, r0
	cmp	r7, #0
	beq	.L1242
	b	.L13b0
.L1242:
	ldr	r0, =0x208c
	bl	__Func_8092b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xa4
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #17
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x8c
	lsl	r1, #1
	mov	r2, #0xc8
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xb4
	lsl	r1, #1
	mov	r2, #0xc8
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x9c
	lsl	r1, #1
	mov	r2, #0xc8
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r5, #0x94
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r5, #1
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, r5
	mov	r2, #0xb8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, r5
	mov	r2, #0x98
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, #0x9c
	lsl	r1, #1
	mov	r2, #0x98
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0xf
	mov	r0, #0
	bl	__Func_8092adc
	bl	OvlFunc_common1_2060
	mov	r0, #0
	bl	OvlFunc_common1_1314
	bl	OvlFunc_common1_2060
	mov	r0, #0
	bl	OvlFunc_common1_1314
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x98
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xb8
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0xc0
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0xc8
	bl	__Func_80921c4
	mov	r2, #0xf
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8092adc
	bl	OvlFunc_common1_2060
	mov	r0, #0
	bl	OvlFunc_common1_1314
	bl	OvlFunc_common1_2060
	mov	r0, #0
	bl	OvlFunc_common1_1314
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092f84
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809335c
	mov	r1, #0x9c
	mov	r2, #0xa8
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r0, r6
	mov	r1, #1
	bl	OvlFunc_common1_588
	b	.L13c2
.L13b0:
	cmp	r7, #1
	bne	.L13c2
	ldr	r0, =0x208b
	bl	__Func_8092b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
.L13c2:
	mov	r1, r6
	mov	r2, #1
	mov	r0, r7
	bl	OvlFunc_common1_5e4
	bl	__Func_8091750
.L13d0:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2009214

.thumb_func_start OvlFunc_954_20093e4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r7, r0
	cmp	r3, #2
	bne	.L1404
	bl	OvlFunc_common1_2c4
	b	.L15be
.L1404:
	bl	__Func_80916b0
	mov	r0, r7
	mov	r1, #2
	bl	OvlFunc_common1_4cc
	mov	r10, r0
	cmp	r0, #0
	beq	.L1418
	b	.L159c
.L1418:
	ldr	r0, =0x2090
	bl	__Func_8092b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x94
	mov	r1, #1
	mov	r2, #0xf0
	lsl	r2, #15
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0x98
	mov	r1, #1
	mov	r2, #0xd8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x40
	mov	r2, #0
	mov	r0, #0x38
	bl	OvlFunc_common1_1490
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0xa
	mov	r1, #0x60
	mov	r0, #0xa0
	bl	OvlFunc_common1_14f4
	mov	r0, #0x46
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, r7
	bl	__Func_8092f84
	bl	OvlFunc_common1_1550
	mov	r0, #2
	bl	__Func_80030f8
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	ldr	r6, =0xcccc
	ldr	r3, =0x6666
	mov	r2, #0x80
	mov	r8, r3
	ldr	r1, [r0, #8]
	str	r3, [r0, #0x34]
	lsl	r2, #12
	ldr	r3, [r0, #0x10]
	str	r6, [r0, #0x30]
	bl	__Func_800d14c
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r3, r5
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	mov	r3, r8
	mov	r2, #0x80
	ldr	r1, [r5, #8]
	lsl	r2, #14
	str	r3, [r5, #0x34]
	str	r6, [r5, #0x30]
	ldr	r3, [r5, #0x10]
	bl	__Func_800d14c
	mov	r0, r5
	bl	__Func_800ca6c
	mov	r0, #0x2d
	bl	__Func_809163c
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	mov	r3, r8
	mov	r2, #0xc0
	ldr	r1, [r0, #8]
	str	r3, [r0, #0x34]
	lsl	r2, #13
	ldr	r3, [r0, #0x10]
	str	r6, [r0, #0x30]
	bl	__Func_800d14c
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r3, r5
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	mov	r3, r8
	mov	r2, #0
	ldr	r1, [r5, #8]
	str	r3, [r5, #0x34]
	str	r6, [r5, #0x30]
	ldr	r3, [r5, #0x10]
	bl	__Func_800d14c
	mov	r0, r5
	bl	__Func_800ca6c
	mov	r0, #0xf
	bl	__Func_809163c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x40
	mov	r2, #0
	mov	r0, #0x38
	bl	OvlFunc_common1_1490
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x60
	mov	r2, #0xa
	mov	r0, #0xa0
	bl	OvlFunc_common1_14f4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0xa
	mov	r1, #0x40
	mov	r0, #0x38
	bl	OvlFunc_common1_14f4
	mov	r0, #0x46
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, r7
	bl	__Func_8092f84
	bl	OvlFunc_common1_1550
	mov	r0, #2
	bl	__Func_80030f8
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809335c
	mov	r0, r7
	mov	r1, #2
	bl	OvlFunc_common1_588
	b	.L15b0
.L159c:
	mov	r2, r10
	cmp	r2, #1
	bne	.L15b0
	ldr	r0, =0x208f
	bl	__Func_8092b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
.L15b0:
	mov	r1, r7
	mov	r2, #2
	mov	r0, r10
	bl	OvlFunc_common1_5e4
	bl	__Func_8091750
.L15be:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_20093e4

.thumb_func_start OvlFunc_954_20095e0
	push	{r5, r6, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r5, r0
	cmp	r3, #2
	bne	.L15fa
	bl	OvlFunc_common1_2c4
	b	.L16d6
.L15fa:
	bl	__Func_80916b0
	mov	r0, r5
	mov	r1, #3
	bl	OvlFunc_common1_4cc
	mov	r6, r0
	cmp	r6, #0
	bne	.L16b6
	ldr	r0, =0x2095
	bl	__Func_8092b94
	bl	OvlFunc_954_2008134
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xd2
	mov	r1, #1
	mov	r2, #0xd8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0
	mov	r0, r5
	bl	__Func_8092f84
	bl	OvlFunc_954_2008158
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xb8
	lsl	r1, #2
	mov	r2, #0xc8
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	bl	OvlFunc_954_2008178
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xcc
	lsl	r1, #2
	mov	r2, #0xc8
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0x3c
	mov	r0, #0
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, r5
	bl	__Func_8092f84
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809335c
	mov	r0, r5
	mov	r1, #3
	bl	OvlFunc_common1_588
	b	.L16c8
.L16b6:
	cmp	r6, #1
	bne	.L16c8
	ldr	r0, =0x2094
	bl	__Func_8092b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
.L16c8:
	mov	r1, r5
	mov	r2, #3
	mov	r0, r6
	bl	OvlFunc_common1_5e4
	bl	__Func_8091750
.L16d6:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_20095e0

.thumb_func_start OvlFunc_954_20096ec
	push	{r5, r6, r7, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.L1706
	bl	OvlFunc_common1_2c4
	b	.L1884
.L1706:
	bl	__Func_80916b0
	mov	r0, r6
	mov	r1, #4
	bl	OvlFunc_common1_4cc
	mov	r7, r0
	cmp	r7, #0
	beq	.L171a
	b	.L1864
.L171a:
	ldr	r0, =0x2099
	bl	__Func_8092b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x88
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #19
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #0x48
	mov	r0, #0x78
	bl	OvlFunc_common1_1490
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092f84
	bl	OvlFunc_common1_1550
	mov	r0, #0xf
	bl	__Func_809163c
	mov	r1, #0xf6
	lsl	r1, #2
	mov	r2, #0xc8
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r5, #0xfa
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	lsl	r5, #2
	bl	__Func_8092064
	mov	r1, r5
	mov	r2, #0xc0
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, r5
	mov	r2, #0xb0
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, #0xfe
	lsl	r1, #2
	mov	r2, #0xa8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r0, #0xf
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #0x12
	bl	OvlFunc_954_200833c
	mov	r0, #0x88
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #19
	neg	r1, r1
	bl	__Func_80933f8
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x95
	lsl	r1, #3
	mov	r2, #0xa8
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092f84
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809335c
	mov	r1, #0xfe
	mov	r2, #0xa8
	mov	r0, #0x12
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r0, r6
	mov	r1, #4
	bl	OvlFunc_common1_588
	b	.L1876
.L1864:
	cmp	r7, #1
	bne	.L1876
	ldr	r0, =0x2098
	bl	__Func_8092b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
.L1876:
	mov	r1, r6
	mov	r2, #4
	mov	r0, r7
	bl	OvlFunc_common1_5e4
	bl	__Func_8091750
.L1884:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_20096ec

	.section .data
	.global .L441c
	.global gOvl_0200c194

gOvl_0200c194:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x4194, (0x41dc-0x4194)
	.global gOvl_0200c1dc
gOvl_0200c1dc:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x41dc, (0x41f4-0x41dc)
	.global gOvl_0200c1f4
gOvl_0200c1f4:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x41f4, (0x441c-0x41f4)
.L441c:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x441c, (0x4420-0x441c)
	.global gOvl_0200c420
gOvl_0200c420:
	.incbin "overlays/rom_7db0c8/orig.bin", 0x4420, (0x457c-0x4420)
