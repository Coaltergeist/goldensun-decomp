	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_955_2008b38
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0x28
	bl	__Func_8092924
	mov	r0, #0x29
	bl	__Func_8092924
	mov	r0, #1
	bl	__Func_807808c
	bl	__Func_80916b0
	mov	r1, #0xb0
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #15
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xf0
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #15
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_809280c
	cmp	r5, #0
	bge	.Lb9c
	mov	r0, #8
	mov	r1, #0xa
	bl	__Func_80924d4
	mov	r0, #0
	mov	r1, #0x23
	bl	__Func_80924d4
	b	.Lbac
.Lb9c:
	mov	r0, #8
	mov	r1, #8
	bl	__Func_80924d4
	mov	r0, #0
	mov	r1, #0x1c
	bl	__Func_80924d4
.Lbac:
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0xd0
	mov	r2, #0xc0
	mov	r1, #0
	lsl	r2, #16
	mov	r3, #0
	lsl	r0, #15
	bl	__Func_80933f8
	mov	r0, r5
	bl	OvlFunc_common1_fac
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2008b38

.thumb_func_start OvlFunc_955_2008bd4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
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
	mov	r3, #0x64
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0xb
	mov	r2, #0xc
	mov	r3, #4
	bl	__Func_8010704
	mov	r3, #0x78
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x30
	mov	r2, #5
	mov	r1, #0xa
	mov	r3, #6
	bl	__Func_8010704
	mov	r2, #2
	mov	r6, #0x1a
	mov	r7, #0
	mov	r8, r2
.Lc24:
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r1, #4
	mov	r5, r0
	bl	__Func_800c300
	mov	r3, r5
	add	r3, #0x55
	strb	r7, [r3]
	mov	r1, r8
	sub	r3, #0x32
	add	r6, #1
	str	r7, [r5, #0xc]
	strb	r1, [r3]
	cmp	r6, #0x1e
	ble	.Lc24
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r0, #0xcc
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lca0
	mov	r0, #0x1e
	bl	__MapActor_GetActor
	mov	r3, #0xa8
	mov	r5, r0
	lsl	r3, #17
	str	r3, [r5, #8]
	ldr	r3, =0xfff80000
	str	r3, [r5, #0xc]
	mov	r3, #0x84
	lsl	r3, #17
	str	r3, [r5, #0x10]
	mov	r2, #0x10
	mov	r3, #0x14
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #0x15
	mov	r2, #0x50
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x14
	mov	r1, #0x50
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.Lcb4
.Lca0:
	mov	r0, #0x1e
	bl	__MapActor_GetActor
	mov	r1, #3
	mov	r5, r0
	bl	__Func_800c300
	mov	r3, #0x80
	lsl	r3, #13
	str	r3, [r5, #0xc]
.Lcb4:
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, #2
	mov	r8, r3
	add	r0, #0x23
	mov	r1, r8
	mov	r2, #0
	strb	r1, [r0]
	ldr	r0, =0x335
	mov	r10, r2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lce6
	mov	r3, #0x23
	mov	r2, #0x4d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x23
	mov	r1, #0x4e
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Lce6:
	ldr	r0, =0x333
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Ld0c
	mov	r0, #0x13
	mov	r1, #4
	bl	__Func_80924d4
	mov	r3, #0x20
	mov	r2, #0x4d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x20
	mov	r1, #0x25
	mov	r2, #1
	mov	r3, #4
	bl	__Func_8010704
.Ld0c:
	ldr	r0, =0x331
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Ld4a
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r2, r10
	add	r0, #0x55
	strb	r2, [r0]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r3, r8
	add	r0, #0x23
	strb	r3, [r0]
	mov	r1, #5
	mov	r0, #0x14
	bl	__Func_80924d4
	mov	r3, #0x2c
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Ld4a:
	ldr	r0, =0x332
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Ld88
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, r10
	add	r0, #0x55
	strb	r1, [r0]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r2, r8
	add	r0, #0x23
	strb	r2, [r0]
	mov	r1, #5
	mov	r0, #0x15
	bl	__Func_80924d4
	mov	r3, #0x32
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Ld88:
	mov	r0, #0x20
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r2, r3, #20
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r10
	strb	r1, [r3]
	sub	r3, #0x32
	mov	r1, r8
	strb	r1, [r3]
	mov	r3, #0xa
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x34
	bl	__Func_8010704
	mov	r0, #0x21
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r2, r3, #20
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r10
	strb	r1, [r3]
	sub	r3, #0x32
	mov	r1, r8
	strb	r1, [r3]
	mov	r3, #0xd
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x34
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
	mov	r0, #0xd0
	lsl	r0, #2
	bl	__Func_80793b8
	mov	r6, r0
	cmp	r6, #0
	bne	.Ldf0
	mov	r6, #0x49
.Ldf0:
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r2, #0x80
	lsl	r3, r6, #20
	lsl	r2, #12
	mov	r5, r0
	add	r3, r2
	str	r3, [r5, #8]
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r10
	strb	r1, [r3]
	mov	r2, r8
	sub	r3, #0x32
	strb	r2, [r3]
	mov	r0, #0x47
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	mov	r7, #0x10
	str	r6, [sp]
	str	r7, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0xd2
	lsl	r0, #2
	bl	__Func_80793b8
	mov	r6, r0
	cmp	r6, #0
	bne	.Le32
	mov	r6, #0x4c
.Le32:
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r1, #0x80
	lsl	r3, r6, #20
	lsl	r1, #12
	mov	r5, r0
	add	r3, r1
	str	r3, [r5, #8]
	mov	r3, r5
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	mov	r1, r8
	sub	r3, #0x32
	strb	r1, [r3]
	mov	r0, #0x47
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r7, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0xd4
	lsl	r0, #2
	bl	__Func_80793b8
	mov	r6, r0
	cmp	r6, #0
	bne	.Le72
	mov	r6, #0x4f
.Le72:
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r2, #0x80
	lsl	r2, #12
	lsl	r3, r6, #20
	mov	r5, r0
	add	r3, r2
	str	r3, [r5, #8]
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r10
	strb	r1, [r3]
	mov	r2, r8
	sub	r3, #0x32
	strb	r2, [r3]
	mov	r0, #0x47
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r7, [sp, #4]
	bl	__Func_8010704
	bl	OvlFunc_955_200862c
	mov	r0, #0x1f
	mov	r1, #0xa
	bl	__Func_80924d4
	mov	r0, #0xcd
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lf02
	mov	r3, #0xd
	mov	r6, #0x16
	mov	r8, r3
	mov	r7, #0x3a
.Lec2:
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r1, #4
	bl	__Func_800c300
	mov	r1, r8
	str	r1, [sp, #4]
	mov	r0, #0x38
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	add	r6, #1
	str	r7, [sp]
	bl	__Func_8010704
	add	r7, #2
	cmp	r6, #0x19
	ble	.Lec2
	mov	r0, #0x1f
	mov	r1, #0xa
	bl	__Func_80924d4
	mov	r0, #0x1f
	bl	__Func_809ad90
	b	.Lf40
.Lf02:
	mov	r2, #2
	mov	r7, #0x80
	mov	r6, #0x16
	mov	r8, r2
	lsl	r7, #8
.Lf0c:
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r3, r5
	add	r3, #0x23
	mov	r1, r8
	strb	r1, [r3]
	mov	r1, #4
	bl	__Func_800c300
	ldr	r3, =0x3333
	add	r6, #1
	str	r7, [r5, #0x30]
	str	r3, [r5, #0x34]
	cmp	r6, #0x19
	ble	.Lf0c
	ldr	r5, =OvlFunc_955_2008714
	ldr	r1, =0xc85
	mov	r0, r5
	bl	__StartTask
	mov	r0, r5
	mov	r1, #1
	bl	__Func_8004358
.Lf40:
	mov	r0, #8
	mov	r1, #9
	bl	__Func_80924d4
	ldr	r5, =ewram_2000240
	mov	r3, #0xf9
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0x59
	mov	r0, #0x29
	bl	OvlFunc_common1_1608
	mov	r1, #0x4d
	mov	r0, #0x28
	bl	OvlFunc_common1_1608
	mov	r1, #1
	mov	r0, #8
	bl	__Func_8092950
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r5, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #4
	bls	.Lf7e
	b	.L10c0
.Lf7e:
	ldr	r2, =.Lf88
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lf88:
	.word	.Lfc8
	.word	.L105c
	.word	.L108e
	.word	.L10a4
	.word	.L10b2

	.pool_aligned

.Lfc8:
	mov	r2, #0x80
	lsl	r2, #17
	str	r2, [sp]
	mov	r2, #0x28
	str	r2, [sp, #4]
	mov	r3, #0xd0
	mov	r2, #0x29
	str	r2, [sp, #8]
	lsl	r3, #15
	mov	r1, #8
	mov	r2, #5
	mov	r0, #0
	bl	OvlFunc_common1_1ecc
	mov	r3, #0x4f
	mov	r2, #6
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0x7f
	bl	__Func_8010788
	mov	r0, #0x22
	bl	__Func_8092924
	mov	r0, #0x23
	bl	__Func_8092924
	mov	r0, #0x24
	bl	__Func_8092924
	mov	r0, #0x25
	bl	__Func_8092924
	mov	r0, #0x26
	bl	__Func_8092924
	mov	r0, #0x27
	bl	__Func_8092924
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L103c
	mov	r0, #0x11
	bl	__Func_80f9080
	mov	r0, #0
	bl	OvlFunc_common1_78
	bl	OvlFunc_common1_0
	mov	r0, #2
	bl	OvlFunc_common1_ea0
.L103c:
	mov	r0, #1
	mov	r1, #0
	bl	__Func_80920c0
	mov	r0, #2
	mov	r1, #0
	bl	__Func_80920c0
	mov	r0, #3
	mov	r1, #0
	bl	__Func_80920c0
	ldr	r0, =0xe5
	bl	OvlFunc_common1_1fb4
	b	.L10c0
.L105c:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_common1_148
	bl	__StartTask
	mov	r0, #0x28
	bl	__Func_8092924
	mov	r0, #0x29
	bl	__Func_8092924
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L10c0
	bl	OvlFunc_common1_0
	mov	r0, #1
	bl	OvlFunc_common1_78
	mov	r0, #0
	bl	OvlFunc_common1_ea0
	b	.L10c0
.L108e:
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L10c0
	mov	r0, #0x22
	bl	OvlFunc_955_20090dc
	bl	OvlFunc_common1_488
	b	.L10c0
.L10a4:
	mov	r0, #2
	bl	OvlFunc_955_2008b38
	mov	r0, #4
	bl	__Func_8091e9c
	b	.L10c0
.L10b2:
	mov	r0, #2
	neg	r0, r0
	bl	OvlFunc_955_2008b38
	mov	r0, #5
	bl	__Func_8091e9c
.L10c0:
	mov	r0, #0
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_955_2008bd4

.thumb_func_start OvlFunc_955_20090dc
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
	mov	r1, r6
	add	r2, r5, r3
	mov	r0, #0
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
	mov	r1, r6
	add	r2, r5, r3
	mov	r0, #3
	bl	__Func_80923e4
	ldr	r2, =0xffb00000
	add	r5, r2
	mov	r2, r5
	mov	r1, r6
	mov	r0, r7
	bl	__Func_80923e4
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r6, #0xc0
	lsl	r6, #8
	mov	r1, #0
	strh	r6, [r0, #6]
	mov	r0, #0
	bl	__Func_809335c
	bl	__Func_8091dc8
	bl	__Func_8091e20
	ldr	r0, =0x20e9
	bl	__Func_8092b94
	mov	r0, r7
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, r7
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, r7
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, r7
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
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
	beq	.L1238
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_8092128
.L1238:
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1258
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_8092128
.L1258:
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1278
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_8092128
.L1278:
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
	mov	r0, r7
	mov	r1, r6
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
.func_end OvlFunc_955_20090dc

.thumb_func_start OvlFunc_955_20092f0
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.L130a
	bl	OvlFunc_common1_2c4
	b	.L1412
.L130a:
	bl	__Func_80916b0
	mov	r0, r6
	mov	r1, #1
	bl	OvlFunc_common1_4cc
	mov	r7, r0
	cmp	r7, #0
	bne	.L13f2
	ldr	r0, =0x209e
	bl	__Func_8092b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x99
	mov	r1, #1
	mov	r2, #0xb8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #19
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x9f
	lsl	r1, #3
	mov	r2, #0xa8
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r5, #0xa1
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r5, #3
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, r5
	mov	r2, #0xb8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, r5
	mov	r2, #0xd8
	sub	r5, #0x40
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r2, #0xd8
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, r5
	mov	r2, #0xf8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, #0x95
	mov	r2, #0xf8
	lsl	r1, #3
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r0, #3
	bl	__Func_809163c
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r1, #0x1c
	mov	r0, #0
	bl	__Func_80924d4
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_8093874
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092f84
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809335c
	mov	r0, r6
	mov	r1, #1
	bl	OvlFunc_common1_588
	b	.L1404
.L13f2:
	cmp	r7, #1
	bne	.L1404
	ldr	r0, =0x209d
	bl	__Func_8092b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
.L1404:
	mov	r1, r6
	mov	r2, #1
	mov	r0, r7
	bl	OvlFunc_common1_5e4
	bl	__Func_8091750
.L1412:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_20092f0

.thumb_func_start OvlFunc_955_2009424
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.L143e
	bl	OvlFunc_common1_2c4
	b	.L1524
.L143e:
	bl	__Func_80916b0
	mov	r0, r6
	mov	r1, #2
	bl	OvlFunc_common1_4cc
	mov	r7, r0
	cmp	r7, #0
	bne	.L1504
	ldr	r0, =0x20a2
	bl	__Func_8092b94
	bl	OvlFunc_955_20088ec
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xf6
	mov	r1, #1
	mov	r2, #0xe8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092f84
	mov	r5, #0x87
	bl	OvlFunc_955_2008950
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
	lsl	r5, #3
	mov	r2, #0x84
	lsl	r2, #1
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r0, #0xf
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, r5
	mov	r2, #0xd8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, #0x85
	lsl	r1, #3
	mov	r2, #0xd8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	bl	OvlFunc_955_2008970
	bl	__Func_8093c00
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	bl	__Func_80933f8
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092f84
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809335c
	mov	r0, r6
	mov	r1, #2
	bl	OvlFunc_common1_588
	b	.L1516
.L1504:
	cmp	r7, #1
	bne	.L1516
	ldr	r0, =0x20a1
	bl	__Func_8092b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
.L1516:
	mov	r1, r6
	mov	r2, #2
	mov	r0, r7
	bl	OvlFunc_common1_5e4
	bl	__Func_8091750
.L1524:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2009424

.thumb_func_start OvlFunc_955_2009538
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r7, r0
	cmp	r3, #2
	bne	.L1556
	bl	OvlFunc_common1_2c4
	b	.L16be
.L1556:
	bl	__Func_80916b0
	mov	r0, r7
	mov	r1, #3
	bl	OvlFunc_common1_4cc
	mov	r8, r0
	cmp	r0, #0
	beq	.L156a
	b	.L169c
.L156a:
	ldr	r0, =0x20a6
	bl	__Func_8092b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xbc
	mov	r1, #1
	mov	r2, #0xc0
	lsl	r2, #16
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xbc
	mov	r1, #1
	mov	r2, #0xe0
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #18
	neg	r1, r1
	mov	r5, #0xd6
	mov	r6, #0x84
	bl	__Func_80933f8
	lsl	r5, #2
	bl	__Func_8093530
	lsl	r6, #1
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, r5
	mov	r2, r6
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, r5
	mov	r2, r6
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r2, #0xe8
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xd2
	lsl	r1, #2
	mov	r2, #0xe8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x40
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0x21
	bl	OvlFunc_955_2008310
	mov	r0, #0xbc
	mov	r1, #1
	mov	r2, #0xd8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #18
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
	mov	r1, #0xbe
	lsl	r1, #2
	mov	r2, #0xe8
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, r7
	bl	__Func_8092f84
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809335c
	mov	r1, #0xd2
	mov	r2, #0xe8
	mov	r0, #0x21
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r0, r7
	mov	r1, #3
	bl	OvlFunc_common1_588
	b	.L16b0
.L169c:
	mov	r3, r8
	cmp	r3, #1
	bne	.L16b0
	ldr	r0, =0x20a5
	bl	__Func_8092b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
.L16b0:
	mov	r1, r7
	mov	r2, #3
	mov	r0, r8
	bl	OvlFunc_common1_5e4
	bl	__Func_8091750
.L16be:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2009538

.thumb_func_start OvlFunc_955_20096d4
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.L16ee
	bl	OvlFunc_common1_2c4
	b	.L1884
.L16ee:
	bl	__Func_80916b0
	mov	r0, r6
	mov	r1, #4
	bl	OvlFunc_common1_4cc
	mov	r7, r0
	cmp	r7, #0
	beq	.L1702
	b	.L1864
.L1702:
	ldr	r0, =0x20aa
	bl	__Func_8092b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x86
	mov	r1, #1
	mov	r2, #0xf0
	lsl	r2, #16
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x2d
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0x86
	mov	r1, #1
	mov	r2, #0xc0
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_80933f8
	mov	r5, #0x84
	bl	__Func_8093530
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
	lsl	r5, #1
	mov	r1, #0x9e
	lsl	r1, #2
	mov	r2, r5
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x9a
	mov	r0, #0
	lsl	r1, #2
	mov	r2, r5
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	bl	__Func_8093fa0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #7
	lsl	r1, #4
	bl	__Func_80933d4
	mov	r0, #0x86
	mov	r1, #1
	mov	r2, #0xa0
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092064
	mov	r1, #0xa
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	ldr	r2, [r0, #0xc]
	lsl	r3, #15
	ldr	r1, [r0, #8]
	add	r2, r3
	ldr	r3, [r0, #0x10]
	bl	__Func_800d14c
	mov	r0, #0
	bl	__Func_80923c4
	bl	__Func_8093fa0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	neg	r0, r0
	neg	r1, r1
	bl	__Func_80933f8
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xf4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092708
	mov	r0, #0x86
	mov	r1, #1
	mov	r2, #0xa0
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_80933f8
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092f84
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809335c
	mov	r0, r6
	mov	r1, #4
	bl	OvlFunc_common1_588
	b	.L1876
.L1864:
	cmp	r7, #1
	bne	.L1876
	ldr	r0, =0x20a9
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
.func_end OvlFunc_955_20096d4

.thumb_func_start OvlFunc_955_2009898
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_2000240
	mov	r10, r2
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r3, [r3]
	mov	r9, r3
	mov	r5, r0
	mov	r0, r9
	mov	r6, r1
	sub	sp, #4
	bl	__MapActor_GetActor
	mov	r8, r0
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r1, [r7, #8]
	lsr	r3, r6, #31
	add	r3, r6, r3
	asr	r2, r1, #20
	asr	r3, #1
	mov	r0, #0
	cmp	r2, r3
	beq	.L18dc
	mov	r0, #1
.L18dc:
	mov	r3, r10
	lsl	r3, #16
	lsl	r6, #16
	mov	r10, r3
	cmp	r0, #0
	beq	.L18f8
	sub	r3, r6, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r2, #0
	mov	r11, r3
	str	r2, [sp]
	b	.L190a
.L18f8:
	mov	r3, #0
	mov	r11, r3
	ldr	r3, [r7, #0x10]
	mov	r2, r10
	sub	r3, r2, r3
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [sp]
.L190a:
	mov	r1, #8
	mov	r0, r9
	bl	__Func_80924d4
	mov	r0, #6
	bl	__Func_809163c
	ldr	r5, =0x3333
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r7, #0x30]
	str	r5, [r7, #0x34]
	mov	r0, #0xef
	bl	__Func_80f9080
	mov	r0, r7
	mov	r1, #3
	bl	__Func_800c300
	mov	r3, r10
	mov	r1, r6
	mov	r2, #0
	mov	r0, r7
	bl	__Func_800d14c
	mov	r0, #6
	bl	__Func_809163c
	mov	r0, r9
	mov	r1, #2
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, r9
	lsl	r1, #8
	bl	__Func_8092064
	mov	r0, r8
	mov	r1, #2
	bl	__Func_800c300
	mov	r2, r8
	ldr	r1, [r2, #8]
	ldr	r3, [r2, #0x10]
	ldr	r2, [sp]
	add	r1, r11
	add	r3, r2
	mov	r0, r8
	mov	r2, #0
	bl	__Func_800d14c
	mov	r0, r8
	bl	__Func_800ca6c
	mov	r0, r8
	mov	r1, #1
	bl	__Func_800c300
	mov	r0, r7
	bl	__Func_800ca6c
	mov	r1, #1
	mov	r0, r7
	bl	__Func_800c300
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_80f9080
	mov	r0, #0xd5
	bl	__Func_80f9080
	mov	r0, #0xf
	bl	__Func_809163c
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2009898

.thumb_func_start OvlFunc_955_20099bc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r7, r0
	cmp	r3, #2
	bne	.L19da
	bl	OvlFunc_common1_2c4
	b	.L1b1a
.L19da:
	bl	__Func_80916b0
	mov	r0, r7
	mov	r1, #5
	bl	OvlFunc_common1_4cc
	mov	r8, r0
	cmp	r0, #0
	beq	.L19ee
	b	.L1af8
.L19ee:
	ldr	r0, =0x20ae
	bl	__Func_8092b94
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xa4
	mov	r1, #1
	mov	r2, #0x84
	lsl	r2, #17
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0x9c
	mov	r1, #1
	mov	r2, #0xb0
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #17
	neg	r1, r1
	mov	r5, #0xcc
	mov	r6, #0x84
	bl	__Func_80933f8
	lsl	r5, #1
	bl	__Func_8093530
	lsl	r6, #1
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, r5
	mov	r2, r6
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, r5
	mov	r2, #0xd8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xb4
	lsl	r1, #1
	mov	r0, #0x10
	mov	r2, #0xd0
	bl	OvlFunc_955_2009898
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x2d
	bl	__Func_80937b8
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	sub	r5, #0x20
	bl	__Func_8092064
	mov	r1, r5
	mov	r2, #0xd8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, r5
	mov	r2, #0xf8
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, #0x9c
	mov	r2, #0xf8
	lsl	r1, #1
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, #0
	mov	r0, r7
	bl	__Func_8092f84
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809335c
	mov	r1, #0xc4
	mov	r2, #0xd0
	mov	r0, #0x10
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r0, r7
	mov	r1, #5
	bl	OvlFunc_common1_588
	b	.L1b0c
.L1af8:
	mov	r3, r8
	cmp	r3, #1
	bne	.L1b0c
	ldr	r0, =0x20ad
	bl	__Func_8092b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
.L1b0c:
	mov	r1, r7
	mov	r2, #5
	mov	r0, r8
	bl	OvlFunc_common1_5e4
	bl	__Func_8091750
.L1b1a:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_20099bc

	.section .data
	.global .L40c0

.L40c0:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x40c0, (0x40c4-0x40c0)

	.section .data1
	.global .L4834
	.global .L4838
	.global .L4474
	.global .L448c
	.global .L4414

.L4414:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x4414, (0x4474-0x4414)
.L4474:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x4474, (0x448c-0x4474)
.L448c:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x448c, (0x4834-0x448c)
.L4834:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x4834, (0x4838-0x4834)
.L4838:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x4838, (0x483c-0x4838)
.L483c:
	.incbin "overlays/rom_7ddb88/orig.bin", 0x483c, (0x4a1c-0x483c)
