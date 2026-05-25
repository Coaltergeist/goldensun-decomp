	.include "macros.inc"

.thumb_func_start OvlFunc_799abc_b5c
	ldr	r0, =.L1750
	bx	lr
.func_end OvlFunc_799abc_b5c

.thumb_func_start OvlFunc_799abc_b64
	ldr	r0, =.L176c
	bx	lr
.func_end OvlFunc_799abc_b64

.thumb_func_start OvlFunc_799abc_b6c
	push	{r5, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	cmp	r5, #0
	bge	.Lb80
	ldr	r3, =0xfffff
	add	r5, r3
.Lb80:
	asr	r5, #20
	bl	__Func_80916b0
	cmp	r5, #0x14
	bne	.Lba4
	mov	r3, #0x12
	mov	r2, #6
	str	r3, [sp]
	mov	r0, #0x12
	mov	r1, #0x28
	mov	r3, #3
	str	r2, [sp, #4]
	bl	__Func_8010704
	ldr	r0, =0x302
	bl	__Func_8079374
	b	.Lbbc
.Lba4:
	mov	r3, #0x12
	mov	r2, #6
	str	r3, [sp]
	mov	r0, #0x18
	mov	r1, #0x28
	mov	r3, #3
	str	r2, [sp, #4]
	bl	__Func_8010704
	ldr	r0, =0x302
	bl	__Func_8079358
.Lbbc:
	bl	__Func_8091750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_799abc_b6c

.thumb_func_start OvlFunc_799abc_bd0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001e40
	ldr	r7, [r3]
	mov	r9, r3
	mov	r3, #7
	and	r7, r3
	sub	sp, #0xc
	cmp	r7, #0
	bne	.Lcca
	mov	r0, #9
	bl	__Func_8092054
	mov	r5, r0
	bl	__Func_8004458
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r5, [r5, #8]
	lsl	r3, #2
	lsr	r3, #16
	lsl	r3, #16
	mov	r8, r5
	mov	r0, #9
	add	r8, r3
	bl	__Func_8092054
	mov	r10, r0
	mov	r0, #9
	bl	__Func_8092054
	mov	r3, #0xc0
	ldr	r6, [r0, #0x10]
	lsl	r3, #11
	add	r6, r3
	bl	__Func_8004458
	lsl	r2, r0, #2
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r2
	lsl	r5, r3, #6
	sub	r5, r3
	lsl	r5, #3
	add	r5, r2
	bl	__Func_8004458
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r10
	ldr	r1, [r3, #0xc]
	neg	r5, r5
	str	r0, [sp, #4]
	mov	r3, #0
	mov	r0, r8
	mov	r2, r6
	str	r7, [sp, #8]
	str	r5, [sp]
	bl	OvlFunc_799abc_a68
	mov	r3, r9
	ldr	r7, [r3]
	mov	r3, #0xf
	and	r7, r3
	cmp	r7, #0
	bne	.Lcca
	mov	r0, #9
	bl	__Func_8092054
	mov	r5, r0
	bl	__Func_8004458
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r5, [r5, #8]
	lsl	r3, #2
	lsr	r3, #16
	lsl	r3, #16
	mov	r8, r5
	mov	r0, #9
	add	r8, r3
	bl	__Func_8092054
	mov	r10, r0
	mov	r0, #9
	bl	__Func_8092054
	mov	r3, #0xc0
	ldr	r6, [r0, #0x10]
	lsl	r3, #11
	add	r6, r3
	bl	__Func_8004458
	lsl	r2, r0, #2
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r2
	lsl	r5, r3, #6
	sub	r5, r3
	lsl	r5, #3
	add	r5, r2
	bl	__Func_8004458
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r10
	ldr	r1, [r3, #0xc]
	neg	r5, r5
	str	r0, [sp, #4]
	mov	r2, r6
	mov	r0, r8
	mov	r3, #0
	str	r5, [sp]
	str	r7, [sp, #8]
	bl	OvlFunc_799abc_a68
.Lcca:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_799abc_bd0

.thumb_func_start OvlFunc_799abc_ce0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r0, #9
	sub	sp, #0xc
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	cmp	r5, #0
	bge	.Lcfe
	ldr	r3, =0xfffff
	add	r5, r3
.Lcfe:
	asr	r5, #20
	bl	__Func_80916b0
	cmp	r5, #0x19
	beq	.Ld0a
	b	.Lea8
.Ld0a:
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r3, #0
	mov	r9, r3
	add	r0, #0x22
	mov	r3, #1
	strb	r3, [r0]
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #0xe
	mov	r0, #0xb
	bl	__Func_8092950
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c548
	mov	r1, #0xcf
	mov	r2, #0xf0
	lsl	r2, #16
	lsl	r1, #17
	mov	r0, #0xb
	bl	__Func_80923e4
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r5, =OvlFunc_799abc_bd0
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__Func_80041d8
	mov	r0, #0x8d
	bl	__Func_80f9080
	mov	r1, #1
	mov	r2, #0
	mov	r0, #9
	bl	__Func_809228c
	mov	r0, #9
	bl	__Func_80923c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r2, #0
	mov	r0, #9
	bl	__Func_809228c
	mov	r0, #9
	bl	__Func_80923c4
	mov	r0, #9
	bl	__Func_8092054
	mov	r3, r9
	str	r3, [r0, #0x44]
	mov	r0, #9
	bl	__Func_8092054
	ldr	r3, =0x9999
	str	r3, [r0, #0x48]
	mov	r0, #3
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #7
	mov	r0, #9
	bl	__Func_8092064
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_80f9080
	mov	r1, #0xd0
	mov	r2, #0xc8
	lsl	r1, #1
	mov	r0, #9
	bl	__Func_8092128
	mov	r0, #9
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, r5
	bl	__Func_8004278
	mov	r0, #0xc
	bl	__Func_809163c
	mov	r0, #0xbd
	bl	__Func_80f9080
	mov	r0, #9
	bl	__Func_8092054
	mov	r5, r0
	bl	__Func_8004458
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r5, [r5, #8]
	lsl	r3, #2
	lsr	r3, #16
	lsl	r3, #16
	mov	r8, r5
	mov	r0, #9
	add	r8, r3
	bl	__Func_8092054
	mov	r10, r0
	mov	r0, #9
	bl	__Func_8092054
	mov	r3, #0xc0
	ldr	r6, [r0, #0x10]
	lsl	r3, #11
	add	r6, r3
	bl	__Func_8004458
	lsl	r2, r0, #2
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r2
	lsl	r5, r3, #6
	sub	r5, r3
	lsl	r5, #3
	add	r5, r2
	bl	__Func_8004458
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r10
	ldr	r1, [r3, #0xc]
	mov	r2, r6
	mov	r3, r9
	str	r0, [sp, #4]
	neg	r5, r5
	mov	r0, r8
	str	r3, [sp, #8]
	str	r5, [sp]
	bl	OvlFunc_799abc_a68
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x9a
	bl	__Func_80f9080
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_80923e4
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079358
	mov	r3, #0x15
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x15
	mov	r1, #0x2d
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
.Lea8:
	bl	__Func_8091750
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_799abc_ce0

.thumb_func_start OvlFunc_799abc_ecc
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	mov	r0, #0xa
	sub	sp, #0xc
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.Leec
	ldr	r0, =0xfffff
	add	r3, r0
.Leec:
	mov	r0, #0xa
	asr	r5, r3, #20
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.Lefe
	ldr	r2, =0xfffff
	add	r3, r2
.Lefe:
	asr	r3, #20
	cmp	r5, #0x26
	beq	.Lf06
	b	.L105c
.Lf06:
	cmp	r3, #0xe
	beq	.Lf0c
	b	.L105c
.Lf0c:
	mov	r0, #0xa
	bl	__Func_8092054
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0xc]
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0xa
	bl	__Func_8092054
	ldr	r3, [r0, #0xc]
	mov	r0, #0xbc
	str	r3, [r5, #0x3c]
	bl	__Func_80f9080
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0xa
	bl	__Func_8092054
	ldr	r4, [r6, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0
	ldr	r1, [r5, #0xc]
	mov	r8, r0
	str	r0, [sp]
	str	r0, [sp, #4]
	mov	r3, #0x80
	mov	r0, #1
	str	r0, [sp, #8]
	mov	r11, r0
	lsl	r3, #8
	mov	r0, r4
	bl	OvlFunc_799abc_a68
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0xa
	bl	__Func_8092054
	ldr	r2, [r0, #0x10]
	ldr	r0, =0x6666
	ldr	r1, [r5, #0xc]
	ldr	r3, [r6, #8]
	mov	r9, r0
	str	r0, [sp]
	mov	r0, r8
	str	r0, [sp, #4]
	mov	r0, r11
	str	r0, [sp, #8]
	mov	r0, r3
	mov	r3, r9
	bl	OvlFunc_799abc_a68
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0xa
	bl	__Func_8092054
	ldr	r2, [r0, #0x10]
	ldr	r0, =0xffff999a
	mov	r10, r0
	mov	r0, r9
	ldr	r1, [r5, #0xc]
	ldr	r3, [r6, #8]
	str	r0, [sp]
	mov	r0, r8
	str	r0, [sp, #4]
	mov	r0, r11
	str	r0, [sp, #8]
	mov	r0, r3
	mov	r3, r10
	bl	OvlFunc_799abc_a68
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0xa
	bl	__Func_8092054
	ldr	r4, [r6, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r8
	ldr	r1, [r5, #0xc]
	str	r0, [sp]
	str	r0, [sp, #4]
	mov	r0, r11
	str	r0, [sp, #8]
	ldr	r3, =0xffff8000
	mov	r0, r4
	bl	OvlFunc_799abc_a68
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0xa
	bl	__Func_8092054
	ldr	r2, [r0, #0x10]
	mov	r0, r10
	ldr	r1, [r5, #0xc]
	ldr	r3, [r6, #8]
	str	r0, [sp]
	mov	r0, r8
	str	r0, [sp, #4]
	mov	r0, r11
	str	r0, [sp, #8]
	mov	r0, r3
	mov	r3, r9
	bl	OvlFunc_799abc_a68
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0xa
	bl	__Func_8092054
	ldr	r2, [r0, #0x10]
	mov	r0, r10
	ldr	r3, [r6, #8]
	ldr	r1, [r5, #0xc]
	str	r0, [sp]
	mov	r0, r8
	str	r0, [sp, #4]
	mov	r0, r11
	str	r0, [sp, #8]
	mov	r0, r3
	mov	r3, r10
	bl	OvlFunc_799abc_a68
	ldr	r0, =0x301
	bl	__Func_8079358
.L105c:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_799abc_ecc

.thumb_func_start OvlFunc_799abc_1088
	push	{lr}
	bl	__Func_80916b0
	bl	OvlFunc_799abc_ecc
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_799abc_1088

.thumb_func_start OvlFunc_799abc_109c
	push	{lr}
	bl	__Func_80916b0
	bl	OvlFunc_799abc_c4
	bl	OvlFunc_799abc_ecc
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_799abc_109c

.thumb_func_start OvlFunc_799abc_10b4
	push	{lr}
	bl	__Func_8093c00
	pop	{r0}
	bx	r0
.func_end OvlFunc_799abc_10b4

.thumb_func_start OvlFunc_799abc_10c0
	ldr	r0, =.L1814
	bx	lr
.func_end OvlFunc_799abc_10c0

.thumb_func_start OvlFunc_799abc_10c8
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r2, =.L18ec
	ldr	r5, [r3]
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	cmp	r3, #0xf0
	beq	.L111a
	cmp	r3, #0xf0
	bgt	.L10e8
	cmp	r3, #0x3c
	beq	.L10f8
	cmp	r3, #0xb4
	beq	.L1110
	b	.L112e
.L10e8:
	mov	r2, #0x87
	lsl	r2, #1
	cmp	r3, r2
	beq	.L111a
	add	r2, #0xd2
	cmp	r3, r2
	beq	.L1126
	b	.L112e
.L10f8:
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #2
	mov	r2, #0
	bl	__Func_80937b8
	b	.L112e
.L1110:
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_809259c
	b	.L112e
.L111a:
	mov	r0, #0xd
	mov	r1, #4
	mov	r2, #0
	bl	__Func_8092560
	b	.L112e
.L1126:
	mov	r0, #0xd
	mov	r1, #4
	bl	__Func_80924d4
.L112e:
	ldr	r3, =ewram_2000240
	mov	r2, #0x8d
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L1148
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x63
	strh	r3, [r2]
.L1148:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_799abc_10c8

.thumb_func_start OvlFunc_799abc_115c
	push	{lr}
	ldr	r0, =OvlFunc_799abc_10c8
	bl	__Func_8004278
	bl	__Func_80916b0
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	ldr	r0, =0x132f
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfd
	and	r3, r2
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r3, [r0]
	lsl	r1, #10
	mov	r0, #0xd
	lsl	r2, #9
	bl	__Func_8092064
	mov	r1, #0x96
	mov	r0, #0xd
	lsl	r1, #2
	mov	r2, #0xd8
	bl	__Func_80921c4
	mov	r1, #0x96
	mov	r0, #0xd
	lsl	r1, #2
	mov	r2, #0xf8
	bl	__Func_80921c4
	mov	r1, #0x8e
	mov	r2, #0x94
	mov	r0, #0xd
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_80923e4
	mov	r0, #0xa
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x869
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_799abc_115c

.thumb_func_start OvlFunc_799abc_121c
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x44
	str	r3, [r2]
	sub	r3, #0x3c
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	mov	r0, #9
	sub	sp, #8
	bl	__Func_8092054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0x10
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x302
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1272
	mov	r1, #0xac
	mov	r2, #0xd0
	mov	r0, #8
	lsl	r1, #17
	lsl	r2, #15
	bl	__Func_80923e4
	mov	r3, #0x12
	mov	r2, #6
	str	r3, [sp]
	mov	r0, #0x18
	mov	r1, #0x28
	mov	r3, #3
	str	r2, [sp, #4]
	bl	__Func_8010704
	b	.L1284
.L1272:
	mov	r3, #0x12
	mov	r2, #6
	str	r3, [sp]
	mov	r0, #0x12
	mov	r1, #0x28
	mov	r3, #3
	str	r2, [sp, #4]
	bl	__Func_8010704
.L1284:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L12ae
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r3, #0x15
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x15
	mov	r1, #0x2d
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
.L12ae:
	ldr	r0, =0x301
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L131a
	mov	r1, #0x9a
	mov	r2, #0xe8
	lsl	r2, #16
	mov	r0, #0xa
	lsl	r1, #18
	bl	__Func_80923e4
	ldr	r6, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	ldrh	r3, [r3]
	mov	r2, #0x80
	sub	r3, #2
	lsl	r3, #16
	lsl	r2, #9
	cmp	r3, r2
	bhi	.L131c
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r3, #2
	add	r0, #0x22
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__Func_8092054
	ldr	r3, [r0, #0xc]
	sub	r3, #1
	str	r3, [r0, #0xc]
	mov	r0, #0xa
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #2
	orr	r5, r3
	mov	r2, #0xe
	mov	r3, #0x24
	strb	r5, [r0]
	mov	r1, #0x30
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x24
	mov	r2, #5
	mov	r3, #1
	bl	__Func_8010704
	b	.L131c
.L131a:
	ldr	r6, =ewram_2000240
.L131c:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x63
	bne	.L1368
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #9
	bl	__Func_80923e4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #9
	bl	__Func_8092054
	mov	r3, #2
	add	r0, #0x22
	mov	r1, #0xcc
	strb	r3, [r0]
	lsl	r1, #1
	mov	r0, #9
	mov	r2, #0xc0
	bl	__Func_8092158
	mov	r0, #0x3c
	bl	__Func_809163c
	bl	OvlFunc_799abc_ce0
.L1368:
	mov	r2, #0x8d
	lsl	r2, #2
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L1386
	ldr	r3, =.L18ec
	mov	r2, #0
	mov	r1, #0xc8
	str	r2, [r3]
	ldr	r0, =OvlFunc_799abc_10c8
	lsl	r1, #4
	bl	__Func_80041d8
.L1386:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_799abc_121c

	.section .data
	.global .L1554
	.global .L1594
	.global .L15ac
	.global .L160c
	.global .L1690

.L1554:
	.incbin "overlays/rom_799abc/orig.bin", 0x1554, (0x1594-0x1554)
.L1594:
	.incbin "overlays/rom_799abc/orig.bin", 0x1594, (0x15ac-0x1594)
.L15ac:
	.incbin "overlays/rom_799abc/orig.bin", 0x15ac, (0x160c-0x15ac)
.L160c:
	.incbin "overlays/rom_799abc/orig.bin", 0x160c, (0x1690-0x160c)
.L1690:
	.incbin "overlays/rom_799abc/orig.bin", 0x1690, (0x1750-0x1690)
.L1750:
	.incbin "overlays/rom_799abc/orig.bin", 0x1750, (0x176c-0x1750)
.L176c:
	.incbin "overlays/rom_799abc/orig.bin", 0x176c, (0x1814-0x176c)
.L1814:
	.incbin "overlays/rom_799abc/orig.bin", 0x1814, (0x18ec-0x1814)
.L18ec:
	.incbin "overlays/rom_799abc/orig.bin", 0x18ec
