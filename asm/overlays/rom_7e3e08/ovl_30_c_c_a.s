	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_957_2008a00
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x93
	cmp	r2, r3
	bne	.La18
	ldr	r0, =.L41b0
	b	.La2e
.La18:
	ldr	r3, =0x95
	cmp	r2, r3
	bne	.La22
	ldr	r0, =.L4270
	b	.La2e
.La22:
	ldr	r3, =0x97
	cmp	r2, r3
	bne	.La2c
	ldr	r0, =.L4318
	b	.La2e
.La2c:
	ldr	r0, =.L4198
.La2e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_957_2008a00

.thumb_func_start OvlFunc_957_2008a54
	push	{lr}
	ldr	r3, =ewram_2001004
	ldrb	r2, [r3]
	ldr	r1, =0x3f42
	ldr	r3, =REG_BLDCNT
	strh	r1, [r3]
	lsl	r2, #24
	asr	r2, #24
	cmp	r2, #0
	bne	.La70
	mov	r2, #0x80
	lsl	r2, #5
	add	r3, #2
	b	.Laa6
.La70:
	cmp	r2, #1
	bne	.La7c
	mov	r2, #0xe0
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #4
	b	.Laa6
.La7c:
	cmp	r2, #2
	bne	.La88
	mov	r2, #0xc0
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #4
	b	.Laa6
.La88:
	cmp	r2, #3
	bne	.La94
	mov	r2, #0xa0
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #4
	b	.Laa6
.La94:
	cmp	r2, #4
	bne	.Laa0
	mov	r2, #0x80
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #4
	b	.Laa6
.Laa0:
	mov	r2, #0xc0
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #3
.Laa6:
	strh	r2, [r3]
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008a54

.thumb_func_start OvlFunc_957_2008abc
	push	{lr}
	ldr	r2, =ewram_2001004
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	strb	r0, [r2]
	ldr	r2, =0xcb8
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.Lad6
	bl	OvlFunc_957_2008a54
.Lad6:
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008abc

.thumb_func_start OvlFunc_957_2008ae8
	push	{lr}
	mov	r0, #0
	bl	OvlFunc_957_2008abc
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008ae8

.thumb_func_start OvlFunc_957_2008af4
	push	{lr}
	mov	r0, #1
	bl	OvlFunc_957_2008abc
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008af4

.thumb_func_start OvlFunc_957_2008b00
	push	{lr}
	mov	r0, #2
	bl	OvlFunc_957_2008abc
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008b00

.thumb_func_start OvlFunc_957_2008b0c
	push	{lr}
	mov	r0, #3
	bl	OvlFunc_957_2008abc
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008b0c

.thumb_func_start OvlFunc_957_2008b18
	push	{lr}
	mov	r0, #4
	bl	OvlFunc_957_2008abc
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008b18

.thumb_func_start OvlFunc_957_2008b24
	push	{lr}
	mov	r0, #5
	bl	OvlFunc_957_2008abc
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008b24

.thumb_func_start OvlFunc_957_2008b30
	push	{r5, lr}
	ldr	r5, =iwram_3001ebc
	mov	r3, #0xe0
	ldr	r1, [r5]
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0x4d
	bl	__Func_808fe38
	ldr	r3, =0x52a
	ldr	r5, [r5, #0x10]
	add	r2, r5, r3
	mov	r3, #5
	strh	r3, [r2]
	ldr	r0, =0x201
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lb7e
	ldr	r3, =0x534
	add	r2, r5, r3
	ldr	r3, =0x1d1d
	strh	r3, [r2]
	ldr	r3, =0x536
	add	r2, r5, r3
	mov	r3, #0x3f
	strh	r3, [r2]
	bl	OvlFunc_957_2008a54
	b	.Lb9a
.Lb7e:
	ldr	r3, =0x534
	add	r2, r5, r3
	ldr	r3, =0x3f3f
	strh	r3, [r2]
	ldr	r3, =0x536
	add	r2, r5, r3
	mov	r3, #0x1f
	strh	r3, [r2]
	ldr	r2, =0x3f42
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	ldr	r2, =0xc04
	add	r3, #2
	strh	r2, [r3]
.Lb9a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008b30

.thumb_func_start OvlFunc_957_2008bc8
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r0
	ldrh	r1, [r3]
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x92
	cmp	r2, r3
	bne	.Lbe6
	mov	r2, #0x80
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #5
	strh	r2, [r3]
.Lbe6:
	lsl	r3, r1, #16
	ldr	r2, =0x97
	asr	r3, #16
	cmp	r3, r2
	bne	.Lc18
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0x11
	mov	r1, #4
	bl	__Func_8092950
	mov	r0, #0x12
	mov	r1, #0xb
	bl	__Func_8092950
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_8092950
.Lc18:
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008bc8

.thumb_func_start OvlFunc_957_2008c2c
	push	{r5, lr}
	ldr	r3, =iwram_3001f30
	mov	r0, #0x80
	lsl	r0, #2
	ldr	r5, [r3]
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lc4a
	bl	OvlFunc_957_2008b30
	mov	r2, r5
	add	r2, #0x34
	mov	r3, #1
	strb	r3, [r2]
.Lc4a:
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x97
	cmp	r2, r3
	bne	.Lc84
	mov	r0, #0x10
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0x11
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0x12
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0x13
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0x14
	mov	r1, #6
	bl	__Func_8092950
.Lc84:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008c2c

.thumb_func_start OvlFunc_957_2008c98
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f30
	ldr	r6, [r3]
	mov	r1, #0x80
	ldr	r5, [r6, #0x10]
	mov	r2, #0
	mov	r3, #0x18
	ldrsh	r0, [r6, r3]
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, r5
	bl	__Func_800c598
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	mov	r0, #0
	bl	__Func_800c150
	mov	r4, r0
	cmp	r4, #0
	beq	.Lce6
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	mov	r1, r4
	ldr	r2, =0x8400001c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x54
	str	r2, [r5, #0x6c]
	str	r4, [r6, #0x10]
	strb	r2, [r3]
.Lce6:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008c98

.thumb_func_start OvlFunc_957_2008cf8
	push	{lr}
	mov	r0, #0xc
	sub	sp, #8
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x1e
	bne	.Ld3c
	ldr	r3, [r0, #0x10]
	asr	r4, r3, #20
	cmp	r4, #0x14
	bne	.Ld3c
	mov	r1, r0
	mov	r2, #2
	add	r1, #0x55
	mov	r3, #0
	strb	r2, [r1]
	str	r3, [r0, #0x14]
	mov	r3, r0
	add	r3, #0x23
	strb	r2, [r3]
	mov	r3, #0x20
	str	r3, [sp]
	mov	r0, #0x1e
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r4, [sp, #4]
	bl	__Func_8010704
	ldr	r0, =0x212
	bl	__Func_8079358
.Ld3c:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008cf8

.thumb_func_start OvlFunc_957_2008d48
	push	{lr}
	bl	OvlFunc_957_20080c4
	bl	OvlFunc_957_2008cf8
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008d48

.thumb_func_start OvlFunc_957_2008d58
	push	{r5, lr}
	ldr	r3, =iwram_3001f30
	mov	r0, #0xb
	sub	sp, #0xc
	ldr	r5, [r3]
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	mov	r1, sp
	str	r3, [r1]
	ldr	r3, [r0, #0xc]
	str	r3, [r1, #4]
	ldr	r3, [r0, #0x10]
	str	r3, [r1, #8]
	bl	__Func_80120dc
	cmp	r0, #0
	ble	.Ld84
	mov	r2, r5
	add	r2, #0x35
	mov	r3, #1
	strb	r3, [r2]
.Ld84:
	add	sp, #0xc
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008d58

.thumb_func_start OvlFunc_957_2008d90
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f30
	mov	r0, #0xb
	ldr	r5, [r3]
	sub	sp, #8
	bl	__Func_8092054
	add	r5, #0x35
	ldrb	r5, [r5]
	lsl	r5, #24
	asr	r5, #24
	mov	r6, r0
	cmp	r5, #0
	bne	.Ldd8
	mov	r3, #0x49
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x4c
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Ldd2
	mov	r2, r6
	mov	r3, #2
	add	r2, #0x55
	strb	r3, [r2]
	mov	r3, r6
	add	r3, #0x23
	strb	r5, [r3]
.Ldd2:
	ldr	r0, =0x211
	bl	__Func_8079358
.Ldd8:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008d90

.thumb_func_start OvlFunc_957_2008de8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	__Func_8092054
	mov	r5, r0
	mov	r7, r5
	add	r7, #0x55
	ldrb	r3, [r7]
	mov	r8, r3
	ldr	r3, [r5, #8]
	mov	r6, sp
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	str	r3, [r6, #8]
	mov	r1, #0xf0
	ldrh	r3, [r5, #6]
	lsl	r1, #8
	mov	r0, #0x80
	and	r1, r3
	lsl	r0, #14
	mov	r2, r6
	bl	__Func_800447c
	mov	r0, r5
	mov	r1, r6
	bl	__Func_80120dc
	cmp	r0, #0
	bne	.Le9c
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
	mov	r2, #2
	ldrsh	r1, [r6, r2]
	mov	r0, #0
	mov	r3, #0xa
	ldrsh	r2, [r6, r3]
	bl	__Func_8092158
	mov	r0, r5
	mov	r1, #6
	bl	__Func_800c300
	mov	r0, r5
	mov	r1, #1
	bl	__Func_800c528
	mov	r2, r8
	strb	r2, [r7]
	bl	__Func_8091750
.Le9c:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008de8

.thumb_func_start OvlFunc_957_2008eac
	push	{r5, lr}
	sub	sp, #0x20
	bl	__Func_80916b0
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_957_2008474
	cmp	r0, #0
	beq	.Led4
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0xc]
	bl	OvlFunc_957_2008608
.Led4:
	bl	__Func_8091750
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008eac

.thumb_func_start OvlFunc_957_2008ee0
	mov	r1, r0
	add	r1, #0x64
	ldrh	r3, [r1]
	ldr	r2, =3
	lsl	r3, #16
	asr	r3, #18
	ldr	r4, =.L4468
	and	r3, r2
	lsl	r3, #2
	ldr	r3, [r4, r3]
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	ldrh	r3, [r1]
	mov	r2, #0xf
	add	r3, #1
	and	r3, r2
	strh	r3, [r1]
	b	.Lf0c

	.pool_aligned

.Lf0c:
	bx	lr
.func_end OvlFunc_957_2008ee0

.thumb_func_start OvlFunc_957_2008f10
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r3, #0xfc
	lsl	r3, #17
	mov	r8, r3
	mov	r3, #0xc0
	lsl	r3, #13
	sub	sp, #0xc
	mov	r9, r1
	mov	r11, r2
	mov	r10, r3
	bl	__Func_8092054
	mov	r3, r8
	mov	r5, sp
	mov	r6, r0
	str	r3, [r5]
	mov	r0, r9
	mov	r3, r10
	mov	r1, r11
	mov	r2, r5
	str	r3, [r5, #8]
	bl	__Func_800447c
	ldr	r3, [r5]
	str	r3, [r6, #8]
	mov	r7, #0x90
	ldr	r3, [r5, #8]
	lsl	r7, #16
	str	r3, [r6, #0xc]
	str	r7, [r6, #0x10]
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008f10

