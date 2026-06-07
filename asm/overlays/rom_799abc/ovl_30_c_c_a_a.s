	.include "macros.inc"

.thumb_func_start OvlFunc_905_2008b6c
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
.func_end OvlFunc_905_2008b6c

.thumb_func_start OvlFunc_905_2008bd0
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
	bl	OvlFunc_905_2008a68
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
	bl	OvlFunc_905_2008a68
.Lcca:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_905_2008bd0

.thumb_func_start OvlFunc_905_2008ce0
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
	ldr	r5, =OvlFunc_905_2008bd0
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__StartTask
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
	bl	OvlFunc_905_2008a68
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
.func_end OvlFunc_905_2008ce0

.thumb_func_start OvlFunc_905_2008ecc
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
	bl	OvlFunc_905_2008a68
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
	bl	OvlFunc_905_2008a68
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
	bl	OvlFunc_905_2008a68
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
	bl	OvlFunc_905_2008a68
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
	bl	OvlFunc_905_2008a68
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
	bl	OvlFunc_905_2008a68
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
.func_end OvlFunc_905_2008ecc

.thumb_func_start OvlFunc_905_2009088
	push	{lr}
	bl	__Func_80916b0
	bl	OvlFunc_905_2008ecc
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_905_2009088

.thumb_func_start OvlFunc_905_200909c
	push	{lr}
	bl	__Func_80916b0
	bl	OvlFunc_905_20080c4
	bl	OvlFunc_905_2008ecc
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_905_200909c

