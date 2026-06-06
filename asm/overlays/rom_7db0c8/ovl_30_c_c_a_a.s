	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_954_200804c
	push	{r5, r6, r7, lr}
	ldr	r7, =.L441c
	ldr	r3, [r7]
	sub	sp, #8
	cmp	r3, #6
	beq	.Lae
	cmp	r3, #6
	bhi	.L62
	cmp	r3, #0
	beq	.Lde
	b	.L122
.L62:
	cmp	r3, #0x3c
	beq	.L6c
	cmp	r3, #0x42
	bne	.L122
	b	.Lae
.L6c:
	mov	r6, #0x32
	mov	r5, #0x26
	mov	r0, #0x5c
	mov	r1, #0x21
	mov	r2, #2
	mov	r3, #2
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010788
	mov	r3, #0x36
	str	r3, [sp]
	mov	r0, #0x5c
	mov	r1, #0x21
	mov	r2, #2
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_8010788
	mov	r3, #0xc
	str	r3, [sp, #4]
	mov	r0, #0x32
	mov	r1, #0x19
	mov	r2, #6
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_8010704
	mov	r0, #0x10
	mov	r1, #0xb
	bl	__Func_80924d4
	b	.L122
.Lae:
	mov	r3, #0x32
	str	r3, [sp]
	mov	r5, #0x26
	mov	r0, #0x5c
	mov	r1, #0x1f
	mov	r2, #2
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_8010788
	mov	r3, #0x36
	str	r3, [sp]
	mov	r0, #0x5c
	mov	r1, #0x1f
	mov	r2, #2
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_8010788
	mov	r0, #0x10
	mov	r1, #0xa
	bl	__Func_80924d4
	b	.L122
.Lde:
	mov	r6, #0x32
	mov	r5, #0x26
	mov	r0, #0x5c
	mov	r1, #0x1d
	mov	r2, #2
	mov	r3, #2
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010788
	mov	r3, #0x36
	str	r3, [sp]
	mov	r2, #2
	mov	r3, #2
	mov	r0, #0x5c
	mov	r1, #0x1d
	str	r5, [sp, #4]
	bl	__Func_8010788
	mov	r0, #0x10
	mov	r1, #0xc
	bl	__Func_80924d4
	mov	r3, #0xc
	str	r3, [sp, #4]
	mov	r0, #0x32
	mov	r3, #1
	mov	r1, #0x18
	mov	r2, #6
	str	r6, [sp]
	bl	__Func_8010704
	mov	r3, #0x78
	str	r3, [r7]
.L122:
	ldr	r3, [r7]
	sub	r3, #1
	str	r3, [r7]
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_200804c

.thumb_func_start OvlFunc_954_2008134
	push	{r5, lr}
	ldr	r3, =.L441c
	ldr	r5, =OvlFunc_954_200804c
	mov	r2, #0
	str	r2, [r3]
	mov	r0, r5
	bl	__Func_8004278
	bl	_call_via_r5
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2008134

.thumb_func_start OvlFunc_954_2008158
	push	{lr}
	ldr	r3, =.L441c
	mov	r2, #0x42
	mov	r1, #0xc8
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_954_200804c
	bl	__Func_80041d8
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2008158

.thumb_func_start OvlFunc_954_2008178
	push	{r5, r6, lr}
	mov	r0, #0xa
	bl	__Func_80030f8
	ldr	r2, =.L441c
	ldr	r3, [r2]
	mov	r5, #0
	cmp	r3, #0x16
	beq	.L19e
	mov	r6, r2
.L18c:
	mov	r0, #1
	add	r5, #1
	bl	__Func_80030f8
	cmp	r5, #0x77
	bgt	.L19e
	ldr	r3, [r6]
	cmp	r3, #0x16
	bne	.L18c
.L19e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2008178

.thumb_func_start OvlFunc_954_20081a8
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x17
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r1, #0xd
	mov	r2, #3
	mov	r0, #0x1b
	bl	__Func_8010704
	mov	r0, #9
	bl	__Func_8092054
	mov	r5, r0
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	mov	r0, #0
	bl	__Func_8011f54
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	bne	.L202
	cmp	r0, #0
	bne	.L202
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
.L202:
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r5, r0
	ldr	r1, [r5, #8]
	mov	r0, #0xc4
	asr	r1, #20
	lsl	r0, #2
	bl	__Func_80793c8
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
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_20081a8

.thumb_func_start OvlFunc_954_2008238
	push	{lr}
	bl	OvlFunc_common1_2060
	bl	OvlFunc_954_20081a8
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2008238

.thumb_func_start OvlFunc_954_2008248
	push	{lr}
	sub	sp, #8
	mov	r3, #0x2f
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x2f
	bl	__Func_8010704
	ldr	r0, =0x303
	bl	__Func_8079358
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2008248

.thumb_func_start OvlFunc_954_2008270
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, =0x301
	sub	sp, #8
	bl	__Func_8079358
	mov	r0, #0xd
	bl	__Func_8092054
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x96
	mov	r1, #1
	mov	r2, #0xc8
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_80933f8
	mov	r0, r5
	mov	r1, #3
	bl	__Func_800c300
	bl	__Func_8093530
	mov	r2, #0
	mov	r10, r2
	mov	r3, r5
	mov	r2, r10
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r6, =0xcccc
	ldr	r3, =0x6666
	mov	r2, #0x80
	ldr	r1, [r5, #8]
	mov	r8, r3
	str	r3, [r5, #0x34]
	str	r6, [r5, #0x30]
	ldr	r3, [r5, #0x10]
	mov	r0, r5
	lsl	r2, #12
	bl	__Func_800d14c
	mov	r0, #0xe
	bl	__Func_8092054
	mov	r5, r0
	mov	r3, r5
	mov	r2, r10
	add	r3, #0x55
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
	mov	r3, #0x29
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2b
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	bl	__Func_8091750
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2008270

.thumb_func_start OvlFunc_954_200833c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	str	r2, [sp]
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	str	r1, [sp, #4]
	lsl	r2, #1
	add	r3, r2
	mov	r5, r0
	ldr	r0, [r3]
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, r5
	bl	__Func_8092054
	mov	r7, r0
	bl	__Func_80916b0
	ldr	r3, [sp, #4]
	lsl	r3, #16
	mov	r11, r3
	ldr	r3, [r6, #8]
	ldr	r2, =0xfff00000
	add	r3, r11
	mov	r5, #0x80
	lsl	r5, #12
	and	r3, r2
	add	r1, r3, r5
	ldr	r3, [sp]
	lsl	r3, #16
	mov	r9, r3
	ldr	r3, [r6, #0x10]
	add	r3, r9
	mov	r10, r2
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r6, #0x30]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r5
	mov	r8, r2
	str	r2, [r6, #0x34]
	mov	r0, r6
	ldr	r2, [r6, #0xc]
	bl	__Func_800d14c
	mov	r0, r6
	mov	r1, #0x1b
	bl	__Func_800c300
	ldr	r3, [r7, #8]
	mov	r2, r10
	add	r3, r11
	and	r3, r2
	add	r1, r3, r5
	ldr	r3, [r7, #0x10]
	add	r3, r9
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r7, #0x30]
	mov	r2, r8
	add	r3, r5
	str	r2, [r7, #0x34]
	mov	r0, r7
	ldr	r2, [r7, #0xc]
	bl	__Func_800d14c
	ldr	r3, [sp, #4]
	cmp	r3, #0
	blt	.L3e0
	ldr	r2, [sp]
	cmp	r2, #0
	bge	.L3ea
.L3e0:
	mov	r0, r7
	mov	r1, #4
	bl	__Func_800c300
	b	.L3f2
.L3ea:
	mov	r0, r7
	mov	r1, #3
	bl	__Func_800c300
.L3f2:
	mov	r0, #0xe2
	bl	__Func_80f9080
	mov	r0, r6
	bl	__Func_800ca6c
	mov	r1, #2
	mov	r0, r7
	bl	__Func_800c300
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_80f9080
	bl	__Func_8091750
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_200833c

.thumb_func_start OvlFunc_954_200842c
	push	{r5, r6, lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #8
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	mov	r6, #0x30
	asr	r0, r3, #20
	neg	r6, r6
	cmp	r0, #8
	bgt	.L44c
	mov	r6, #0x30
.L44c:
	str	r0, [sp, #4]
	mov	r3, #1
	mov	r5, #0x40
	mov	r0, #0x43
	mov	r1, #8
	mov	r2, #3
	str	r5, [sp]
	bl	__Func_8010704
	mov	r2, r6
	mov	r1, #0
	mov	r0, #0x11
	bl	OvlFunc_954_200833c
	mov	r0, #0x11
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r0, r3, #20
	str	r0, [sp, #4]
	mov	r1, #0x18
	mov	r0, #0x40
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_200842c

.thumb_func_start OvlFunc_954_2008490
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #8
	bl	__Func_8092054
	ldr	r1, =iwram_3001ae8
	ldr	r3, [r0, #8]
	asr	r7, r3, #20
	ldr	r3, [r1]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L4b6
	mov	r5, #1
	neg	r5, r5
.L4b6:
	ldr	r3, [r1]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L4c2
	mov	r5, #1
.L4c2:
	mov	r0, #0x11
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r6, r3, #20
	cmp	r7, #0x3f
	bne	.L4d8
	cmp	r6, #0xb
	beq	.L52e
	mov	r6, #0xa0
	b	.L4f8
.L4d8:
	cmp	r7, #0x43
	bne	.L4ec
	cmp	r6, #0xb
	bne	.L4e8
	mov	r3, #1
	neg	r3, r3
	cmp	r5, r3
	beq	.L52e
.L4e8:
	mov	r6, #0x60
	b	.L4f8
.L4ec:
	cmp	r6, #0xb
	bne	.L4f4
	mov	r6, #0x60
	b	.L4f6
.L4f4:
	mov	r6, #0xa0
.L4f6:
	neg	r6, r6
.L4f8:
	mov	r3, #3
	mov	r5, #9
	mov	r0, #0x48
	mov	r1, #9
	mov	r2, #1
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r1, r6
	mov	r2, #0
	mov	r0, #0x12
	bl	OvlFunc_954_200833c
	mov	r0, #0x12
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	mov	r1, #0x19
	asr	r7, r3, #20
	mov	r0, #0x3f
	mov	r2, #1
	mov	r3, #3
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.L52e:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2008490

.thumb_func_start OvlFunc_954_2008540
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r5, [r3]
	mov	r0, r5
	sub	sp, #0xc
	bl	__Func_8092054
	str	r0, [sp, #8]
	mov	r0, #0xc
	bl	__Func_8092054
	mov	r7, r0
	ldr	r0, =0x302
	bl	__Func_8079358
	bl	__Func_80916b0
	mov	r1, #8
	mov	r0, r5
	bl	__Func_80924d4
	mov	r0, #6
	bl	__Func_809163c
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r7, #0x30]
	ldr	r3, =0x3333
	mov	r0, #0xef
	str	r3, [r7, #0x34]
	mov	r8, r3
	bl	__Func_80f9080
	mov	r0, r7
	mov	r1, #2
	bl	__Func_800c300
	ldr	r1, [r7, #8]
	ldr	r2, =0xffd00000
	ldr	r3, [r7, #0x10]
	add	r1, r2
	mov	r0, r7
	mov	r2, #0
	bl	__Func_800d14c
	mov	r0, #6
	bl	__Func_809163c
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80924d4
	ldr	r1, =0xccc
	mov	r0, #0x1b
	bl	__Func_80048f4
	mov	r3, #0xf0
	lsl	r3, #1
	add	r0, r3
	ldr	r0, [r0]
	mov	r1, r7
	bl	__Func_800c4bc
	mov	r0, r5
	ldr	r1, =0x4ccc
	mov	r2, r8
	bl	__Func_8092064
	ldr	r2, [sp, #8]
	ldr	r3, =0xffe80000
	ldr	r1, [r2, #8]
	mov	r0, r2
	add	r1, r3
	ldr	r3, [r2, #0x10]
	mov	r2, #0
	bl	__Func_800d14c
	mov	r0, r5
	bl	__Func_80923c4
	mov	r0, r5
	mov	r1, #1
	bl	__Func_80924d4
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
	bl	__Func_8091750
	mov	r5, #7
	mov	r0, #0x25
	mov	r1, #7
	mov	r2, #1
	mov	r3, #4
	mov	r6, #0x22
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
	ldr	r0, =0x301
	bl	__Func_8079338
	mov	r10, r0
	cmp	r0, #0
	beq	.L6ea
	bl	__Func_80916b0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x8a
	mov	r1, #1
	mov	r2, #0xc8
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r5, #0x26
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x60
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #3
	bl	__Func_809163c
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x61
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #3
	bl	__Func_809163c
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x62
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #3
	bl	__Func_809163c
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x63
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #3
	bl	__Func_809163c
	mov	r0, #0x64
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0xf
	bl	__Func_809163c
	bl	__Func_8091750
	b	.L7f8
.L6ea:
	ldr	r0, =0x301
	bl	__Func_8079358
	bl	__Func_80916b0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x96
	mov	r1, #1
	mov	r2, #0xc8
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xd
	bl	__Func_8092054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	ldr	r2, =0xcccc
	ldr	r3, =0x6666
	str	r2, [r7, #0x30]
	mov	r9, r2
	mov	r2, #0x80
	str	r3, [r7, #0x34]
	ldr	r1, [r7, #8]
	lsl	r2, #12
	mov	r8, r3
	ldr	r3, [r7, #0x10]
	bl	__Func_800d14c
	mov	r0, r7
	mov	r1, #3
	bl	__Func_800c300
	mov	r5, #0x26
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x60
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #3
	bl	__Func_809163c
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x61
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #3
	bl	__Func_809163c
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x62
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #3
	bl	__Func_809163c
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x63
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #3
	bl	__Func_809163c
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x64
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0xe
	bl	__Func_8092054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	mov	r2, r9
	mov	r3, r8
	str	r2, [r7, #0x30]
	mov	r2, #0x80
	ldr	r1, [r7, #8]
	lsl	r2, #14
	str	r3, [r7, #0x34]
	ldr	r3, [r7, #0x10]
	bl	__Func_800d14c
	mov	r0, r7
	bl	__Func_800ca6c
	mov	r0, #0xf
	bl	__Func_809163c
	bl	__Func_8091750
	mov	r3, #0x29
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2b
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L7f8:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2008540

