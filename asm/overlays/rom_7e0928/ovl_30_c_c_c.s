	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_2008ba4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001ebc
	ldr	r2, =ewram_2000240
	ldr	r3, [r3]
	mov	r1, #0xfa
	lsl	r1, #1
	mov	r10, r3
	add	r3, r2, r1
	ldr	r3, [r3]
	sub	r1, #0x32
	mov	r8, r3
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.Lc42
	bl	__Func_80916b0
	lsl	r3, r6, #1
	ldr	r7, =0x2073
	add	r5, r3, r6
	add	r0, r5, r7
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092c40
	mov	r0, r8
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lc2e
	add	r0, r7, #1
	add	r0, r5, r0
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092f84
	mov	r2, #0xe0
	lsl	r2, #1
	mov	r3, #0x80
	add	r2, r10
	lsl	r3, #2
	str	r3, [r2]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r2, r10
	mov	r3, #0xf
	str	r3, [r2]
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, r6
	bl	OvlFunc_common1_78
	bl	__Func_8091dc8
	bl	__Func_8091e20
	b	.Lc3e
.Lc2e:
	add	r0, r7, #2
	add	r0, r5, r0
	bl	__Func_8092b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
.Lc3e:
	bl	__Func_8091750
.Lc42:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008ba4

.thumb_func_start OvlFunc_956_2008c5c
	push	{r5, r6, lr}
	bl	OvlFunc_common1_16f8
	bl	__Func_80916b0
	mov	r1, #0x11
	mov	r0, #3
	bl	OvlFunc_common1_1814
	mov	r6, r0
	bl	OvlFunc_common1_1708
	mov	r5, #9
.Lc76:
	mov	r0, #8
	sub	r5, #1
	bl	__Func_80920e8
	cmp	r5, #0
	bge	.Lc76
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xbf
	mov	r0, #8
	lsl	r1, #3
	mov	r2, #0xc0
	bl	__Func_809218c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xbb
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #3
	bl	__Func_80921c4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80924d4
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r1, #0xbc
	mov	r0, #0
	lsl	r1, #3
	mov	r2, #0xc0
	bl	__Func_809218c
	mov	r1, #0xbe
	mov	r2, #0xc0
	mov	r0, #8
	lsl	r1, #3
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0x10
	bl	__Func_80924d4
	mov	r1, #9
	mov	r0, #8
	bl	__Func_80924d4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	sub	r1, r6
	add	r1, #1
	mov	r0, #0x48
	bl	__Func_8091eb0
	ldr	r3, =ewram_2000240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r5, =0x91
	mov	r1, #4
	mov	r0, r5
	bl	__Func_8091f90
	mov	r0, r5
	mov	r1, #5
	bl	__Func_8091fa8
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__Func_8079358
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008c5c

.thumb_func_start OvlFunc_956_2008d70
	push	{lr}
	bl	OvlFunc_common1_21c8
	cmp	r0, #0
	bne	.Ld7e
	bl	__Func_8093c00
.Ld7e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008d70

.thumb_func_start OvlFunc_956_2008d84
	push	{lr}
	bl	OvlFunc_common1_21c8
	cmp	r0, #0
	bne	.Ld94
	bl	__Func_8093c00
	b	.Ld98
.Ld94:
	bl	OvlFunc_956_200857c
.Ld98:
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008d84

.thumb_func_start OvlFunc_956_2008d9c
	ldr	r0, =.L5488
	bx	lr
.func_end OvlFunc_956_2008d9c

.thumb_func_start OvlFunc_956_2008da4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xa2
	sub	r2, #0xc0
	str	r2, [r3]
	lsl	r0, #1
	sub	sp, #0xc
	bl	__Func_8079358
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_956_2008658
	bl	__Func_80041d8
	mov	r3, #0x78
	mov	r2, #0x3c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #6
	mov	r2, #8
	mov	r1, #0x3c
	mov	r0, #0x4a
	bl	__Func_8010704
	mov	r0, #9
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r1, #0
	mov	r7, r0
	mov	r6, #0x80
	bl	__Func_800c528
	mov	r3, r7
	add	r3, #0x55
	mov	r5, #0
	lsl	r6, #14
	strb	r5, [r3]
	mov	r0, #0xb
	str	r6, [r7, #0xc]
	bl	__Func_8092054
	mov	r1, #0
	mov	r7, r0
	bl	__Func_800c528
	mov	r3, r7
	add	r3, #0x55
	strb	r5, [r3]
	mov	r5, #0x80
	lsl	r5, #11
	str	r5, [r7, #0xc]
	ldr	r0, =0x362
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Le5a
	mov	r1, #5
	mov	r0, #9
	bl	__Func_80924d4
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r7, r0
	str	r5, [r7, #0xc]
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r3, #0xd
	mov	r7, r0
	mov	r2, #0xc
	str	r6, [r7, #0xc]
	mov	r0, #0xf
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xc
	b	.Le80
.Le5a:
	mov	r0, #9
	bl	__Func_8092054
	mov	r3, #0xc0
	mov	r7, r0
	lsl	r3, #9
	str	r3, [r7, #0x18]
	str	r3, [r7, #0x1c]
	ldr	r0, =0x367
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Le8a
	mov	r3, #9
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x18
.Le80:
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.Le9e
.Le8a:
	mov	r3, #9
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x19
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Le9e:
	mov	r0, #0xda
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lf16
	mov	r3, #0xd
	str	r3, [sp]
	mov	r5, #0xc
	mov	r0, #0xf
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #9
	str	r3, [sp]
	mov	r2, #1
	mov	r3, #1
	mov	r1, #0x19
	mov	r0, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0xc
	bl	__Func_8092054
	mov	r1, #0
	mov	r7, r0
	bl	__Func_800c528
	mov	r2, r7
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r7, #0xc]
	mov	r3, r7
	add	r3, #0x23
	mov	r5, #2
	strb	r5, [r3]
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r3, #0x80
	mov	r7, r0
	lsl	r3, #11
	str	r3, [r7, #0xc]
	mov	r3, r7
	add	r3, #0x23
	strb	r5, [r3]
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r3, #0x80
	mov	r7, r0
	lsl	r3, #14
	str	r3, [r7, #0xc]
.Lf16:
	mov	r0, #0xdc
	lsl	r0, #2
	bl	__Func_80793b8
	mov	r6, r0
	cmp	r6, #0
	bne	.Lf26
	mov	r6, #0x13
.Lf26:
	mov	r0, #0xd
	bl	__Func_8092054
	mov	r2, #0x80
	mov	r7, r0
	lsl	r2, #12
	lsl	r3, r6, #20
	add	r3, r2
	mov	r2, r7
	str	r3, [r7, #8]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	sub	r2, #0x32
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0x12
	mov	r5, #0xb
	str	r3, [sp]
	mov	r0, #0x12
	mov	r1, #0xa
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x11
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010704
	mov	r5, #0xf
.Lf6c:
	mov	r0, r5
	bl	__Func_8092054
	mov	r7, r0
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0x10]
	mov	r0, #0
	bl	__Func_8011f54
	ldr	r3, [r7, #0xc]
	cmp	r3, #0
	bne	.Lfc8
	cmp	r0, #0
	bne	.Lfc8
	mov	r2, r7
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, r7
	add	r3, #0x55
	strb	r0, [r3]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	ldr	r3, [r7, #0x10]
	ldr	r2, [r7, #8]
	asr	r3, #20
	asr	r2, #20
	add	r3, #0x34
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Lfc8:
	add	r5, #1
	cmp	r5, #0x11
	ble	.Lf6c
	ldr	r0, =0x361
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L104a
	mov	r3, #0
	mov	r9, r3
	mov	r2, #2
	mov	r3, #0xb
	mov	r5, #0x12
	mov	r8, r2
	mov	r6, #0x21
	mov	r10, r3
.Lfe8:
	mov	r0, r5
	bl	__Func_8092054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	mov	r2, r8
	strb	r2, [r3]
	mov	r1, #2
	bl	__Func_800c300
	add	r0, r5, #5
	bl	__Func_8092054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	mov	r2, r8
	strb	r2, [r3]
	mov	r2, r9
	add	r3, #0x32
	strb	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r7, #0xc]
	mov	r1, #0xa
	bl	__Func_800c300
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0x4a
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	add	r5, #1
	str	r6, [sp]
	bl	__Func_8010704
	add	r6, #2
	cmp	r5, #0x16
	ble	.Lfe8
	mov	r0, #0x1c
	mov	r1, #0xa
	bl	__Func_80924d4
	mov	r0, #0x1c
	bl	__Func_809ad90
	b	.L108a
.L104a:
	mov	r2, #0
	mov	r5, #0x12
	mov	r8, r2
	mov	r6, #2
.L1052:
	mov	r0, r5
	bl	__Func_8092054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	strb	r6, [r3]
	add	r0, r5, #5
	bl	__Func_8092054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	strb	r6, [r3]
	mov	r2, r8
	add	r3, #0x32
	strb	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #14
	add	r5, #1
	str	r3, [r7, #0xc]
	cmp	r5, #0x16
	ble	.L1052
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_956_200804c
	lsl	r1, #4
	bl	__Func_80041d8
.L108a:
	mov	r0, #0xd8
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L10b2
	mov	r0, #0x1d
	mov	r1, #4
	bl	__Func_80924d4
	mov	r3, #0x31
	mov	r2, #0x3d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x3d
	mov	r2, #1
	mov	r3, #4
	bl	__Func_8010704
.L10b2:
	ldr	r0, =0x363
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L10f4
	mov	r0, #1
	bl	__Func_80118c0
	mov	r0, #0x1e
	bl	__Func_8092054
	mov	r7, r0
	mov	r2, r7
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =0x46a0000
	str	r3, [r7, #8]
	mov	r3, #0xb8
	lsl	r3, #16
	str	r3, [r7, #0x10]
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, r7
	mov	r1, #3
	bl	__Func_800c300
	ldr	r1, =.L4bec
	mov	r0, r7
	bl	__Func_800c2d8
	b	.L10fa
.L10f4:
	mov	r0, #2
	bl	__Func_80118c0
.L10fa:
	ldr	r0, =0x369
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L116c
	mov	r0, #0x1f
	bl	__Func_8092054
	mov	r1, #8
	mov	r7, r0
	bl	__Func_800c300
	mov	r2, r7
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0xa
	mov	r5, #0x54
	str	r3, [sp, #4]
	mov	r0, #0x56
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0xc
	str	r3, [sp, #4]
	mov	r0, #0x56
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	b	.L11a0

	.pool_aligned

.L116c:
	mov	r0, #0x1f
	bl	__Func_8092054
	mov	r7, r0
	ldr	r3, [r7, #8]
	mov	r2, #9
	asr	r3, #20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x55
	mov	r1, #9
	mov	r2, #1
	mov	r3, #4
	bl	__Func_8010704
	ldr	r3, [r7, #8]
	mov	r2, #0x3d
	asr	r3, #20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x55
	mov	r1, #9
	mov	r2, #1
	mov	r3, #4
	bl	__Func_8010704
.L11a0:
	mov	r0, #9
	bl	__Func_8092054
	mov	r7, r0
	mov	r3, r7
	mov	r6, #0
	add	r3, #0x55
	mov	r5, #2
	strb	r6, [r3]
	sub	r3, #0x32
	strb	r5, [r3]
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x55
	strb	r6, [r3]
	sub	r3, #0x32
	strb	r5, [r3]
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x55
	strb	r6, [r3]
	sub	r3, #0x32
	strb	r5, [r3]
	mov	r0, #8
	mov	r1, #9
	bl	__Func_80924d4
	ldr	r5, =ewram_2000240
	mov	r2, #0xf9
	lsl	r2, #1
	add	r3, r5, r2
	strb	r6, [r3]
	mov	r1, #3
	mov	r0, #0x27
	bl	OvlFunc_common1_1608
	mov	r1, #0x11
	mov	r0, #0x28
	bl	OvlFunc_common1_1608
	mov	r0, #8
	mov	r1, #2
	bl	__Func_8092950
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #4
	bls	.L1216
	b	.L1350
.L1216:
	ldr	r2, =.L1220
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1220:
	.word	.L1234
	.word	.L12d6
	.word	.L1308
	.word	.L131e
	.word	.L133a
.L1234:
	mov	r2, #0xc0
	lsl	r2, #16
	str	r2, [sp]
	mov	r2, #0x27
	str	r2, [sp, #4]
	mov	r3, #0xbd
	mov	r2, #0x28
	str	r2, [sp, #8]
	lsl	r3, #19
	mov	r1, #8
	mov	r2, #6
	mov	r0, #0
	bl	OvlFunc_common1_1ecc
	mov	r3, #5
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0x7f
	bl	__Func_8010788
	mov	r0, #0x20
	bl	__Func_8092924
	mov	r0, #0x21
	bl	__Func_8092924
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
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L12b6
	mov	r0, #0x11
	bl	__Func_80f9080
	mov	r0, #0
	bl	OvlFunc_common1_78
	bl	OvlFunc_common1_0
	mov	r0, #1
	mov	r1, #0
	bl	__Func_80920c0
	mov	r0, #3
	bl	OvlFunc_common1_ea0
.L12b6:
	mov	r0, #1
	mov	r1, #0
	bl	__Func_80920c0
	mov	r0, #2
	mov	r1, #0
	bl	__Func_80920c0
	mov	r0, #3
	mov	r1, #0
	bl	__Func_80920c0
	ldr	r0, =0xe6
	bl	OvlFunc_common1_1fb4
	b	.L1350
.L12d6:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_common1_148
	bl	__Func_80041d8
	mov	r0, #0x27
	bl	__Func_8092924
	mov	r0, #0x28
	bl	__Func_8092924
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1350
	bl	OvlFunc_common1_0
	mov	r0, #1
	bl	OvlFunc_common1_78
	mov	r0, #0
	bl	OvlFunc_common1_ea0
	b	.L1350
.L1308:
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1350
	mov	r0, #0x20
	bl	OvlFunc_956_2009a0c
	bl	OvlFunc_common1_488
	b	.L1350
.L131e:
	mov	r0, #1
	bl	OvlFunc_956_2009474
	mov	r0, #4
	bl	__Func_8091e9c
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_8079358
	ldr	r0, =0x951
	bl	__Func_8079358
	b	.L1350
.L133a:
	mov	r0, #1
	neg	r0, r0
	bl	OvlFunc_956_2009474
	mov	r0, #5
	bl	__Func_8091e9c
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_8079358
.L1350:
	mov	r0, #0
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_956_2008da4

.thumb_func_start OvlFunc_956_200937c
	mov	r1, r0
	add	r1, #0x64
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	ldr	r3, [r0, #8]
	lsl	r2, #8
	add	r3, r2
	str	r3, [r0, #8]
	mov	r4, #0x66
	add	r4, r0
	mov	r3, #0
	ldrsh	r2, [r4, r3]
	ldr	r3, [r0, #0xc]
	lsl	r2, #8
	add	r3, r2
	str	r3, [r0, #0xc]
	ldr	r2, =0x666
	ldr	r3, [r0, #0x18]
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
	ldrh	r3, [r1]
	add	r3, #5
	strh	r3, [r1]
	ldrh	r3, [r4]
	sub	r3, #1
	strh	r3, [r4]
	mov	r0, #0
	bx	lr
.func_end OvlFunc_956_200937c

.thumb_func_start OvlFunc_956_20093c0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, =.L5b80
	mov	r5, r0
	ldr	r0, [r3]
	ldr	r7, [r5, #8]
	add	r0, #1
	ldr	r5, [r5, #0xc]
	mov	r1, #0xb4
	str	r0, [r3]
	mov	r6, #0x29
	mov	r8, r5
	bl	_Func_8000b1c
	cmp	r0, #0x14
	beq	.L13f8
	cmp	r0, #0x14
	bgt	.L13f2
	cmp	r0, #0xa
	beq	.L13fe
	b	.L145c
.L13f2:
	cmp	r0, #0x1e
	beq	.L13fc
	b	.L145c
.L13f8:
	mov	r6, #0x2a
	b	.L13fe
.L13fc:
	mov	r6, #0x2b
.L13fe:
	mov	r0, r6
	bl	__Func_8092054
	mov	r5, r0
	cmp	r5, #0
	beq	.L145c
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L141e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r6
	bl	__Func_80923e4
.L141e:
	mov	r0, r6
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =0x6666
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, #0x80
	lsl	r3, #11
	add	r2, r7, r3
	str	r2, [r5, #8]
	add	r3, r8
	mov	r2, r5
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	add	r2, #0x64
	mov	r3, #0x19
	strh	r3, [r2]
	add	r2, #2
	mov	r3, #0x80
	strh	r3, [r2]
	ldr	r1, =.L596c
	mov	r0, r6
	bl	__Func_809207c
.L145c:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_20093c0

.thumb_func_start OvlFunc_956_2009474
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	mov	r0, #0x27
	bl	__Func_8092924
	mov	r0, #0x28
	bl	__Func_8092924
	mov	r0, #1
	bl	__Func_807808c
	mov	r0, #0x11
	bl	__Func_80f9080
	bl	__Func_80916b0
	mov	r1, #0xc1
	mov	r2, #0xc0
	mov	r0, #8
	lsl	r1, #19
	lsl	r2, #16
	bl	__Func_80923e4
	cmp	r5, #0
	bge	.L14b6
	mov	r0, #8
	mov	r1, #0xa
	bl	__Func_80924d4
	b	.L14be
.L14b6:
	mov	r0, #8
	mov	r1, #8
	bl	__Func_80924d4
.L14be:
	ldr	r1, =.L5668
	mov	r0, #8
	bl	__Func_809207c
	mov	r1, #0xbc
	mov	r2, #0xc0
	lsl	r2, #16
	lsl	r1, #19
	mov	r0, #0
	bl	__Func_80923e4
	mov	r0, #0
	bl	__Func_8092054
	mov	r5, #0
	strh	r5, [r0, #6]
	ldr	r1, =.L5738
	mov	r0, #0
	bl	__Func_809207c
	mov	r0, #0
	mov	r1, #0x23
	bl	__Func_80924d4
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
	mov	r1, #0xb7
	mov	r2, #0xb8
	mov	r0, #1
	lsl	r1, #19
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xb7
	mov	r2, #0xc8
	mov	r0, #2
	lsl	r1, #19
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xb5
	mov	r2, #0xc0
	lsl	r2, #16
	lsl	r1, #19
	mov	r0, #3
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_8092054
	strh	r5, [r0, #6]
	mov	r0, #2
	bl	__Func_8092054
	strh	r5, [r0, #6]
	mov	r0, #3
	bl	__Func_8092054
	strh	r5, [r0, #6]
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809335c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	mov	r5, #0x80
	add	r3, r2
	lsl	r5, #1
	str	r5, [r3]
	mov	r1, #1
	ldr	r0, =0x10001
	bl	__Func_8091200
	bl	__Func_8091dc8
	bl	__Func_8091e20
	ldr	r0, =0x20f1
	bl	__Func_8092b94
	mov	r0, #0x3c
	bl	__Func_809163c
	ldr	r6, =.L5950
	mov	r0, #0
	mov	r1, r6
	bl	__Func_809207c
	mov	r0, #0
	bl	__Func_8092054
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x18]
	mov	r0, #0
	mov	r10, r3
	bl	__Func_8092054
	mov	r2, r10
	mov	r1, #0x24
	str	r2, [r0, #0x1c]
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0
	bl	__Func_8092054
	mov	r2, #0xc0
	ldr	r3, [r0, #8]
	lsl	r2, #10
	add	r3, r2
	str	r3, [r0, #8]
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r1, =.L5808
	mov	r0, #0
	bl	__Func_809207c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xbc
	mov	r0, #1
	lsl	r1, #3
	mov	r2, #0xb0
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r1, r5
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80920c0
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0xba
	mov	r0, #2
	lsl	r1, #3
	mov	r2, #0xb0
	bl	__Func_80921c4
	mov	r1, #0xbe
	mov	r0, #1
	lsl	r1, #3
	mov	r2, #0xb8
	bl	__Func_809218c
	mov	r1, #0xbc
	mov	r2, #0xb0
	mov	r0, #2
	lsl	r1, #3
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80920c0
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80920c0
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80920c0
	mov	r1, #0xba
	mov	r2, #0xb8
	mov	r0, #3
	lsl	r1, #3
	bl	__Func_80921c4
	mov	r0, #2
	mov	r1, #0
	bl	__Func_80920c0
	mov	r0, #1
	mov	r1, #0
	bl	__Func_80920c0
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80920c0
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80920c0
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80920c0
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80920c0
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r1, =.L58ac
	mov	r0, #0
	bl	__Func_809207c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_80920c0
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #2
	bl	__Func_80920c0
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #3
	bl	__Func_80920c0
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, r6
	mov	r0, #0
	bl	__Func_809207c
	mov	r0, #0x3c
	bl	__Func_809163c
	ldr	r3, =.L5b80
	ldr	r5, =OvlFunc_956_20093c0
	mov	r6, #9
	mov	r1, #0xc8
	str	r6, [r3]
	lsl	r1, #4
	mov	r0, r5
	mov	r8, r3
	bl	__Func_80041d8
	mov	r0, #5
	bl	__Func_809163c
	mov	r0, r5
	bl	__Func_8004278
	mov	r0, #0x37
	bl	__Func_809163c
	mov	r2, #0x3c
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__Func_80041d8
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r5
	bl	__Func_8004278
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, r8
	mov	r1, #0xc8
	str	r6, [r2]
	lsl	r1, #4
	mov	r0, r5
	bl	__Func_80041d8
	mov	r0, #0x23
	bl	__Func_809163c
	mov	r0, r5
	bl	__Func_8004278
	mov	r0, #0x19
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r3, r8
	mov	r1, #0xc8
	str	r6, [r3]
	lsl	r1, #4
	mov	r0, r5
	bl	__Func_80041d8
	mov	r0, #0x23
	bl	__Func_809163c
	mov	r0, r5
	bl	__Func_8004278
	mov	r0, #0x19
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80920c0
	mov	r1, #3
	mov	r0, #2
	bl	__Func_80920c0
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, #0
	bl	__Func_80920c0
	mov	r0, #2
	mov	r1, #0
	bl	__Func_80920c0
	mov	r2, r8
	mov	r1, #0xc8
	str	r6, [r2]
	lsl	r1, #4
	mov	r0, r5
	bl	__Func_80041d8
	mov	r0, #0x23
	bl	__Func_809163c
	mov	r0, r5
	bl	__Func_8004278
	mov	r0, #0x19
	bl	__Func_809163c
	mov	r1, #0x84
	mov	r2, #0x3c
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #1
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80925cc
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80920c0
	mov	r0, #1
	mov	r1, #2
	b	.L18e8

	.pool_aligned

.L18e8:
	bl	__Func_80920c0
	mov	r3, r8
	mov	r1, #0xc8
	str	r6, [r3]
	mov	r0, r5
	lsl	r1, #4
	bl	__Func_80041d8
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_80924d4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xb7
	lsl	r1, #3
	mov	r2, #0xc8
	mov	r0, #3
	bl	__Func_809218c
	mov	r0, #5
	bl	__Func_809163c
	mov	r1, #0xab
	lsl	r1, #3
	mov	r2, #0xb8
	mov	r0, #2
	bl	__Func_809218c
	mov	r0, #3
	bl	__Func_809163c
	mov	r1, #0xbd
	mov	r0, #1
	lsl	r1, #3
	mov	r2, #0xb8
	bl	__Func_80921c4
	mov	r1, #0xab
	mov	r2, #0xb8
	lsl	r1, #3
	mov	r0, #1
	bl	__Func_809218c
	mov	r0, #3
	bl	__Func_80923c4
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, #3
	bl	__Func_80920c0
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xb3
	mov	r0, #3
	lsl	r1, #3
	mov	r2, #0xc8
	bl	__Func_80921c4
	mov	r1, #0xab
	lsl	r1, #3
	mov	r2, #0xb8
	mov	r0, #3
	bl	__Func_809218c
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0xbd
	mov	r2, #0xb0
	mov	r0, #1
	lsl	r1, #19
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xb7
	mov	r2, #0xc0
	mov	r0, #2
	lsl	r1, #19
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xc3
	mov	r2, #0xc8
	lsl	r2, #16
	mov	r0, #3
	lsl	r1, #19
	bl	__Func_80923e4
	bl	__Func_800c5b4
	mov	r1, #2
	mov	r0, r10
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	ldr	r0, =0x214c
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0
	mov	r0, #3
	bl	__Func_8092f84
	mov	r0, #0x3c
	bl	__Func_809163c
	bl	__Func_8091750
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2009474

.thumb_func_start OvlFunc_956_2009a0c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	bl	__Func_8092054
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
	bl	__Func_8092054
	mov	r6, #0xc0
	lsl	r6, #8
	mov	r1, #0
	strh	r6, [r0, #6]
	mov	r0, #0
	bl	__Func_809335c
	bl	__Func_8091dc8
	bl	__Func_8091e20
	ldr	r0, =0x20ed
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
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L1b68
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_8092128
.L1b68:
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L1b88
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_8092128
.L1b88:
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L1ba8
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_8092128
.L1ba8:
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
.func_end OvlFunc_956_2009a0c

.thumb_func_start OvlFunc_956_2009c20
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r7, r0
	cmp	r3, #2
	bne	.L1c40
	bl	OvlFunc_common1_2c4
	b	.L1dd8
.L1c40:
	bl	__Func_80916b0
	mov	r0, r7
	mov	r1, #1
	bl	OvlFunc_common1_4cc
	mov	r6, r0
	cmp	r6, #0
	beq	.L1c54
	b	.L1db8
.L1c54:
	ldr	r0, =0x20b2
	bl	__Func_8092b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x98
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x44
	mov	r2, #0
	mov	r0, #0x68
	bl	OvlFunc_common1_1490
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0xa
	mov	r1, #0x60
	mov	r0, #0xa8
	bl	OvlFunc_common1_14f4
	mov	r0, #0x46
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, r7
	bl	__Func_8092f84
	bl	OvlFunc_common1_1550
	mov	r0, #2
	bl	__Func_80030f8
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r3, r0
	ldr	r2, =0xcccc
	add	r3, #0x55
	strb	r6, [r3]
	ldr	r3, =0x6666
	mov	r10, r2
	str	r2, [r0, #0x30]
	mov	r2, #0x80
	mov	r8, r3
	ldr	r1, [r0, #8]
	str	r3, [r0, #0x34]
	lsl	r2, #11
	ldr	r3, [r0, #0x10]
	bl	__Func_800d14c
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r5, r0
	mov	r3, r5
	add	r3, #0x55
	strb	r6, [r3]
	mov	r2, r10
	str	r2, [r5, #0x30]
	mov	r3, r8
	mov	r2, #0x80
	ldr	r1, [r5, #8]
	lsl	r2, #14
	str	r3, [r5, #0x34]
	ldr	r3, [r5, #0x10]
	bl	__Func_800d14c
	mov	r0, r5
	bl	__Func_800ca6c
	mov	r0, #0x2d
	bl	__Func_809163c
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
	mov	r2, r10
	str	r2, [r0, #0x30]
	mov	r3, r8
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	str	r3, [r0, #0x34]
	lsl	r2, #14
	ldr	r3, [r0, #0x10]
	bl	__Func_800d14c
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r5, r0
	mov	r3, r5
	add	r3, #0x55
	strb	r6, [r3]
	mov	r2, r10
	mov	r3, r8
	str	r2, [r5, #0x30]
	mov	r2, #0x80
	lsl	r2, #11
	ldr	r1, [r5, #8]
	str	r3, [r5, #0x34]
	ldr	r3, [r5, #0x10]
	bl	__Func_800d14c
	mov	r0, r5
	bl	__Func_800ca6c
	mov	r0, #0xf
	bl	__Func_809163c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x44
	mov	r2, #0
	mov	r0, #0x68
	bl	OvlFunc_common1_1490
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x60
	mov	r2, #0xa
	mov	r0, #0xa8
	bl	OvlFunc_common1_14f4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0xa
	mov	r1, #0x44
	mov	r0, #0x68
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
	mov	r1, #1
	bl	OvlFunc_common1_588
	b	.L1dca
.L1db8:
	cmp	r6, #1
	bne	.L1dca
	ldr	r0, =0x20b1
	bl	__Func_8092b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
.L1dca:
	mov	r1, r7
	mov	r2, #1
	mov	r0, r6
	bl	OvlFunc_common1_5e4
	bl	__Func_8091750
.L1dd8:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2009c20

.thumb_func_start OvlFunc_956_2009df8
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.L1e12
	bl	OvlFunc_common1_2c4
	b	.L1f7e
.L1e12:
	bl	__Func_80916b0
	mov	r0, r6
	mov	r1, #2
	bl	OvlFunc_common1_4cc
	mov	r7, r0
	cmp	r7, #0
	beq	.L1e26
	b	.L1f5e
.L1e26:
	ldr	r0, =0x20b7
	bl	__Func_8092b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xbc
	mov	r1, #1
	mov	r2, #0x98
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	mov	r5, #0x8c
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__Func_809163c
	lsl	r5, #1
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, r5
	mov	r2, #0xc8
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, r5
	mov	r2, #0x98
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, #0x94
	lsl	r1, #1
	mov	r2, #0x98
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r0, #0xa
	bl	__Func_809163c
	bl	__Func_8093c00
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	bl	__Func_80933f8
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0xf
	mov	r0, #0
	bl	__Func_8092adc
	bl	__Func_8093c00
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	bl	__Func_80933f8
	mov	r1, #0
	mov	r2, #0xf
	mov	r0, #0
	bl	__Func_8092adc
	bl	__Func_8093c00
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0xf
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x28
	mov	r2, #0
	mov	r0, #0x60
	bl	OvlFunc_common1_1490
	mov	r1, #0x28
	mov	r2, #0xa
	mov	r0, #0x80
	bl	OvlFunc_common1_14f4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x28
	mov	r2, #0xa
	mov	r0, #0xa0
	bl	OvlFunc_common1_14f4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0xa
	mov	r1, #0x48
	mov	r0, #0xa0
	bl	OvlFunc_common1_14f4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092f84
	bl	OvlFunc_common1_1550
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809335c
	mov	r0, r6
	mov	r1, #2
	bl	OvlFunc_common1_588
	b	.L1f70
.L1f5e:
	cmp	r7, #1
	bne	.L1f70
	ldr	r0, =0x20b6
	bl	__Func_8092b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
.L1f70:
	mov	r1, r6
	mov	r2, #2
	mov	r0, r7
	bl	OvlFunc_common1_5e4
	bl	__Func_8091750
.L1f7e:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2009df8

.thumb_func_start OvlFunc_956_2009f90
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
	bne	.L1fae
	bl	OvlFunc_common1_2c4
	b	.L20d2
.L1fae:
	bl	__Func_80916b0
	mov	r0, r7
	mov	r1, #3
	bl	OvlFunc_common1_4cc
	mov	r6, r0
	cmp	r6, #0
	bne	.L20b2
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	ldr	r0, =0x20bb
	mov	r8, r3
	bl	__Func_8092b94
	bl	OvlFunc_956_2008188
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x9a
	mov	r1, #1
	mov	r2, #0xb8
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, r7
	bl	__Func_8092f84
	bl	OvlFunc_956_20081b4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xfc
	lsl	r1, #1
	mov	r2, #0xc8
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	bl	OvlFunc_956_20081c8
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xaa
	mov	r2, #0xc8
	lsl	r1, #2
	mov	r0, #0
	bl	OvlFunc_common1_1578
	mov	r3, #0xc1
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #5
	beq	.L206e
	mov	r5, #0xc1
	lsl	r5, #1
	add	r5, r8
.L205a:
	mov	r0, #1
	add	r6, #1
	bl	__Func_80030f8
	cmp	r6, #0xef
	bgt	.L206e
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #5
	bne	.L205a
.L206e:
	bl	OvlFunc_956_2008b30
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x3c
	mov	r0, #0
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, r7
	bl	__Func_8092f84
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809335c
	mov	r0, r7
	mov	r1, #3
	bl	OvlFunc_common1_588
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #0
	strh	r3, [r2]
	b	.L20c4
.L20b2:
	cmp	r6, #1
	bne	.L20c4
	ldr	r0, =0x20ba
	bl	__Func_8092b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
.L20c4:
	mov	r1, r7
	mov	r2, #3
	mov	r0, r6
	bl	OvlFunc_common1_5e4
	bl	__Func_8091750
.L20d2:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2009f90

.thumb_func_start OvlFunc_956_200a0f0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
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
	bne	.L2116
	bl	OvlFunc_common1_2c4
	b	.L22a6
.L2116:
	bl	__Func_80916b0
	mov	r0, r7
	mov	r1, #4
	bl	OvlFunc_common1_4cc
	mov	r11, r0
	cmp	r0, #0
	beq	.L212a
	b	.L2284
.L212a:
	ldr	r0, =0x20bf
	bl	__Func_8092b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xd6
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xcc
	lsl	r1, #2
	mov	r2, #0xc8
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xd2
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xc8
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #0
	bl	__Func_8092adc
	bl	__Func_8093fa0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #8
	lsl	r2, #7
	mov	r0, #0
	bl	__Func_8092064
	mov	r0, #0
	bl	__Func_8092054
	mov	r5, r0
	ldr	r3, [r5, #0xc]
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0
	lsl	r1, #8
	mov	r8, r3
	ldr	r6, [r5, #8]
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #0xa
	bl	__Func_80924d4
	mov	r2, #0xc0
	lsl	r2, #11
	add	r2, r8
	ldr	r3, [r5, #0x10]
	mov	r1, r6
	mov	r0, r5
	mov	r9, r2
	bl	__Func_800d14c
	mov	r0, r5
	bl	__Func_800ca6c
	mov	r0, #0
	mov	r1, #0xe
	bl	__Func_80924d4
	mov	r3, #0x80
	lsl	r3, #15
	add	r3, r6
	mov	r10, r3
	mov	r2, r9
	ldr	r3, [r5, #0x10]
	mov	r1, r10
	mov	r0, r5
	bl	__Func_800d14c
	mov	r0, r5
	bl	__Func_800ca6c
	mov	r0, #0
	mov	r1, #0xa
	bl	__Func_80924d4
	mov	r2, #0xd8
	lsl	r2, #14
	add	r8, r2
	ldr	r3, [r5, #0x10]
	mov	r2, r8
	mov	r1, r10
	mov	r0, r5
	bl	__Func_800d14c
	mov	r0, r5
	bl	__Func_800ca6c
	mov	r0, #0
	mov	r1, #0xf
	bl	__Func_80924d4
	mov	r3, #0xc0
	lsl	r3, #14
	add	r6, r3
	mov	r2, r8
	ldr	r3, [r5, #0x10]
	mov	r1, r6
	mov	r0, r5
	bl	__Func_800d14c
	mov	r0, r5
	bl	__Func_800ca6c
	mov	r0, #0
	mov	r1, #0xc
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, r7
	bl	__Func_8092f84
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809335c
	mov	r0, r7
	mov	r1, #4
	bl	OvlFunc_common1_588
	b	.L2298
.L2284:
	mov	r2, r11
	cmp	r2, #1
	bne	.L2298
	ldr	r0, =0x20be
	bl	__Func_8092b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
.L2298:
	mov	r1, r7
	mov	r2, #4
	mov	r0, r11
	bl	OvlFunc_common1_5e4
	bl	__Func_8091750
.L22a6:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_200a0f0

.thumb_func_start OvlFunc_956_200a2c4
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	__Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L22ec
	bl	__Func_800c4ac
	mov	r0, r5
	mov	r1, #5
	bl	__Func_800c300
	lsl	r1, r6, #16
	ldr	r2, [r5, #0xc]
	lsl	r3, r7, #16
	mov	r0, r5
	bl	__Func_800d14c
.L22ec:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_200a2c4

.thumb_func_start OvlFunc_956_200a2f4
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	__Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L232a
	bl	__Func_800c4ac
	mov	r0, r5
	mov	r1, #5
	bl	__Func_800c300
	lsl	r1, r6, #16
	ldr	r2, [r5, #0xc]
	lsl	r3, r7, #16
	mov	r0, r5
	bl	__Func_800d14c
	mov	r0, r5
	bl	__Func_800ca6c
	mov	r0, r5
	mov	r1, #1
	bl	__Func_800c300
.L232a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_200a2f4

.thumb_func_start OvlFunc_956_200a330
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r7, r0
	cmp	r3, #2
	bne	.L234e
	bl	OvlFunc_common1_2c4
	b	.L24a2
.L234e:
	bl	__Func_80916b0
	mov	r0, r7
	mov	r1, #5
	bl	OvlFunc_common1_4cc
	mov	r8, r0
	cmp	r0, #0
	beq	.L2362
	b	.L2480
.L2362:
	ldr	r0, =0x20c3
	bl	__Func_8092b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x87
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #19
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xf6
	lsl	r1, #2
	mov	r2, #0xb8
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xf8
	lsl	r1, #2
	mov	r0, #0
	mov	r2, #0xb8
	bl	OvlFunc_956_200a2f4
	mov	r0, #0
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r1, #0x8c
	mov	r2, #0xb8
	lsl	r1, #3
	mov	r0, #0
	bl	OvlFunc_956_200a2c4
	mov	r0, #0x78
	bl	__Func_809163c
	ldr	r1, =0x101
	mov	r0, #0
	bl	__Func_8093874
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r0, #0
	bl	OvlFunc_common1_1314
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_8093874
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #0
	bl	__Func_8092054
	mov	r6, #0x77
	mov	r5, r0
.L241c:
	mov	r1, #0xf8
	ldr	r3, [r5, #8]
	lsl	r1, #18
	cmp	r3, r1
	ble	.L242c
	ldr	r2, =0xfffecccd
	add	r3, r2
	str	r3, [r5, #8]
.L242c:
	mov	r0, #1
	sub	r6, #1
	bl	__Func_80030f8
	cmp	r6, #0
	bge	.L241c
	mov	r0, #0
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0x8c
	mov	r2, #0xb8
	lsl	r1, #3
	mov	r0, #0
	bl	OvlFunc_956_200a2c4
	mov	r1, #0
	mov	r0, r7
	bl	__Func_8092f84
	mov	r0, #0
	bl	OvlFunc_common1_1314
	ldr	r3, =ewram_2000240
	mov	r1, #0xf9
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809335c
	mov	r0, r7
	mov	r1, #5
	bl	OvlFunc_common1_588
	b	.L2494
.L2480:
	mov	r2, r8
	cmp	r2, #1
	bne	.L2494
	ldr	r0, =0x20c2
	bl	__Func_8092b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
.L2494:
	mov	r1, r7
	mov	r2, #5
	mov	r0, r8
	bl	OvlFunc_common1_5e4
	bl	__Func_8091750
.L24a2:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_200a330

.thumb_func_start OvlFunc_956_200a4d0
	push	{r5, r6, lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r5, r0
	cmp	r3, #2
	bne	.L24ea
	bl	OvlFunc_common1_2c4
	b	.L25b6
.L24ea:
	bl	__Func_80916b0
	mov	r0, r5
	mov	r1, #6
	bl	OvlFunc_common1_4cc
	mov	r6, r0
	cmp	r6, #0
	bne	.L2596
	ldr	r0, =0x20c7
	bl	__Func_8092b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xa1
	mov	r1, #1
	mov	r2, #0x98
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #19
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #0x58
	mov	r0, #0xb4
	bl	OvlFunc_common1_1490
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0xa
	mov	r1, #0x54
	mov	r0, #0x20
	bl	OvlFunc_common1_14f4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0x1e
	mov	r1, #0x54
	mov	r0, #0x60
	bl	OvlFunc_common1_14f4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, r5
	bl	__Func_8092f84
	bl	OvlFunc_common1_1550
	mov	r0, #2
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809335c
	mov	r0, r5
	mov	r1, #6
	bl	OvlFunc_common1_588
	b	.L25a8
.L2596:
	cmp	r6, #1
	bne	.L25a8
	ldr	r0, =0x20c6
	bl	__Func_8092b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
.L25a8:
	mov	r1, r5
	mov	r2, #6
	mov	r0, r6
	bl	OvlFunc_common1_5e4
	bl	__Func_8091750
.L25b6:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_200a4d0

	.section .data
	.global .L4c48
	.global .L4c38
	.global .L4c20

.L4bec:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4bec, (0x4c20-0x4bec)
.L4c20:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4c20, (0x4c38-0x4c20)
.L4c38:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4c38, (0x4c48-0x4c38)
.L4c48:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4c48, (0x4cb0-0x4c48)

	.section .data1
	.global .L5480
	.global .L5000
	.global .L5090
	.global .L50a8
	.global .L5480
	.global .L5484

.L5000:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5000, (0x5090-0x5000)
.L5090:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5090, (0x50a8-0x5090)
.L50a8:
	.incbin "overlays/rom_7e0928/orig.bin", 0x50a8, (0x5480-0x50a8)
.L5480:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5480, (0x5484-0x5480)
.L5484:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5484, (0x5488-0x5484)
.L5488:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5488, (0x5668-0x5488)
.L5668:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5668, (0x5738-0x5668)
.L5738:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5738, (0x5808-0x5738)
.L5808:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5808, (0x58ac-0x5808)
.L58ac:
	.incbin "overlays/rom_7e0928/orig.bin", 0x58ac, (0x5950-0x58ac)
.L5950:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5950, (0x596c-0x5950)
.L596c:
	.incbin "overlays/rom_7e0928/orig.bin", 0x596c, (0x59a4-0x596c)

	.section .bss

	.lcomm	.Lunused_5b78, 8
	.lcomm	.L5b80, 16
