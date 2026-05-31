	.include "macros.inc"

.thumb_func_start OvlFunc_965_2008fdc
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb0
	cmp	r2, r3
	bne	.Lff4
	ldr	r0, =.L3694
	b	.L100a
.Lff4:
	ldr	r3, =0xaf
	cmp	r2, r3
	bne	.Lffe
	ldr	r0, =.L3754
	b	.L100a
.Lffe:
	ldr	r3, =0xae
	cmp	r2, r3
	bne	.L1008
	ldr	r0, =.L3784
	b	.L100a
.L1008:
	ldr	r0, =.L388c
.L100a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_965_2008fdc

.thumb_func_start OvlFunc_965_2009030
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	mov	r5, r0
	bl	__Func_80916b0
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #6
	beq	.L104a
	cmp	r3, #0x12
	bne	.L10d6
.L104a:
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x14
	bne	.L10d6
	mov	r3, #0x80
	lsl	r3, #24
	mov	r1, #0x80
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x40]
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0
	bl	__Func_8092560
	ldr	r1, =0x4fff
	ldrh	r0, [r5, #6]
	add	r3, r0, r1
	ldr	r1, =0x1fff0000
	lsl	r3, #16
	ldr	r2, =0x1fff
	cmp	r3, r1
	bls	.L109a
	ldr	r1, =0xffffcfff
	add	r3, r0, r1
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r2
	bhi	.L10b8
.L109a:
	mov	r1, #0x10
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	b	.L10d6
.L10b8:
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
.L10d6:
	bl	OvlFunc_965_200a820
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_2009030

.thumb_func_start OvlFunc_965_20090f4
	push	{lr}
	bl	__Func_80916b0
	bl	OvlFunc_965_20080c4
	bl	OvlFunc_965_2009030
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_20090f4

.thumb_func_start OvlFunc_965_200910c
	push	{r5, lr}
	mov	r0, #9
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0xc
	bgt	.L1136
	mov	r0, #8
	bl	__Func_8092054
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #6
	bne	.L114c
	b	.L113e
.L1136:
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0x12
	bne	.L114c
.L113e:
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x14
	bne	.L114c
	bl	OvlFunc_965_20090f4
	b	.L1150
.L114c:
	bl	__Func_8093e28
.L1150:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200910c

.thumb_func_start OvlFunc_965_2009158
	push	{lr}
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	bl	__Func_80933f8
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092708
	bl	__Func_8091df4
	bl	__Func_8091e20
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_2009158

.thumb_func_start OvlFunc_965_2009184
	push	{lr}
	bl	__Func_80916b0
	bl	OvlFunc_965_2009158
	mov	r0, #0xb
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_2009184

.thumb_func_start OvlFunc_965_200919c
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0xe8
	mov	r2, #0x91
	lsl	r2, #17
	mov	r1, #0
	mov	r3, #0xdf
	lsl	r0, #17
	bl	OvlFunc_965_20089f4
	bl	OvlFunc_965_2009158
	mov	r0, #0xc
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200919c

.thumb_func_start OvlFunc_965_20091c4
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0x8f
	mov	r2, #0x91
	lsl	r2, #17
	mov	r1, #0
	mov	r3, #0xdf
	lsl	r0, #16
	bl	OvlFunc_965_20089f4
	mov	r0, #0xf2
	mov	r2, #0x8f
	lsl	r2, #17
	mov	r1, #0
	mov	r3, #0xfd
	lsl	r0, #15
	bl	OvlFunc_965_20089f4
	bl	OvlFunc_965_2009158
	mov	r0, #0xd
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_20091c4

.thumb_func_start OvlFunc_965_20091fc
	push	{lr}
	bl	__Func_80916b0
	bl	OvlFunc_965_2009158
	mov	r0, #0xf
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_20091fc

.thumb_func_start OvlFunc_965_2009214
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	ldr	r0, =0x2693
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_2009214

.thumb_func_start OvlFunc_965_2009238
	push	{lr}
	ldr	r0, =0x988
	bl	__Func_8079358
	ldr	r0, =0x98a
	bl	__Func_8079358
	bl	__Func_80916b0
	bl	__Func_808e118
	ldr	r0, =0x2702
	bl	__Func_8092b94
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x94
	mov	r2, #0xb0
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r3, #0xc0
	mov	r0, #0xa
	mov	r1, #0x10
	mov	r2, #0
	lsl	r3, #8
	bl	__Func_809233c
	mov	r1, #8
	mov	r3, #0xc0
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0x10
	lsl	r3, #8
	bl	__Func_809233c
	mov	r3, #0xc0
	mov	r0, #2
	mov	r1, #8
	mov	r2, #0x10
	lsl	r3, #8
	bl	__Func_809233c
	mov	r3, #0xc0
	mov	r2, #0x10
	lsl	r3, #8
	mov	r1, #0x18
	mov	r0, #3
	bl	__Func_809233c
	mov	r0, #3
	bl	__Func_80923c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x8c
	mov	r1, #1
	mov	r2, #0x90
	mov	r3, #1
	lsl	r2, #17
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x19
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xd
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r1, =0x107
	mov	r2, #0x28
	mov	r0, #0xd
	bl	__Func_80937b8
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xd
	ldr	r1, =0x101
	mov	r2, #0x4b
	bl	__Func_80937b8
	mov	r0, #0xe
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0x8c
	mov	r1, #1
	mov	r2, #0xa0
	mov	r3, #1
	lsl	r2, #17
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x3c
	mov	r0, #0xe
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L15d0
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L160e

	.pool_aligned

.L15d0:
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
.L160e:
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xe
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xe
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, #0x10
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092304
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x23
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #3
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1726
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L1752
.L1726:
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
.L1752:
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #0xa
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xd
	ldr	r1, =0x14ccc
	ldr	r2, =0xa666
	bl	__Func_8092064
	mov	r2, #0x10
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092304
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xc
	ldr	r1, =0x14ccc
	ldr	r2, =0xa666
	bl	__Func_8092064
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0xc
	bl	__Func_8092304
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x32
	mov	r0, #0xc
	ldr	r1, =0x107
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x19
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1880
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L18ac

	.pool_aligned

.L1880:
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
.L18ac:
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x23
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0x32
	mov	r0, #0xc
	mov	r1, #0xd
	bl	__Func_8092848
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xc
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r0, #0xc
	mov	r1, #0x20
	mov	r2, #0
	bl	__Func_80922c4
	mov	r0, #0xd
	mov	r1, #0x20
	mov	r2, #0
	bl	__Func_8092304
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0x10
	bl	__Func_80922c4
	mov	r0, #0xd
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_8092304
	mov	r1, #0xac
	mov	r2, #0x9c
	mov	r0, #0xd
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0xac
	mov	r2, #0xa8
	lsl	r2, #1
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xe
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xa4
	mov	r2, #0x9c
	mov	r0, #0xe
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xa4
	mov	r2, #0xa4
	mov	r0, #0xb
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #2
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #3
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L1a86
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_8092128
.L1a86:
	mov	r0, #1
	bl	__Func_80923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L1ab6
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_8092128
.L1ab6:
	mov	r0, #2
	bl	__Func_80923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L1ae6
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_8092128
.L1ae6:
	mov	r0, #3
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__Func_80923e4
	mov	r0, #0xa
	bl	__Func_809163c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_2009238

.thumb_func_start OvlFunc_965_2009b10
	push	{lr}
	ldr	r0, =0x989
	bl	__Func_8079358
	bl	__Func_80916b0
	bl	__Func_808e118
	ldr	r0, =0x272f
	bl	__Func_8092b94
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x94
	mov	r2, #0x9c
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x10
	mov	r3, #0
	bl	__Func_809233c
	mov	r1, #0x10
	mov	r2, #8
	mov	r0, #2
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	bl	__Func_809233c
	mov	r1, #0x10
	mov	r2, #0x18
	mov	r3, #0
	neg	r1, r1
	mov	r0, #3
	bl	__Func_809233c
	mov	r0, #3
	bl	__Func_80923c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x8c
	mov	r1, #1
	mov	r2, #0xa4
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0xa
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xa
	mov	r1, #4
	mov	r2, #0xd
	bl	__Func_8092560
	mov	r1, #4
	mov	r2, #0x1e
	mov	r0, #0xa
	bl	__Func_8092560
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0xe
	bl	__Func_80937b8
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xb0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xc
	ldr	r1, =0x101
	mov	r2, #0x32
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x19
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x19
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xa
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, #0x28
	mov	r0, #0xa
	mov	r1, #0
	neg	r2, r2
	bl	__Func_8092304
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_809335c
	mov	r2, #0x20
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0xa
	bl	__Func_8092304
	bl	OvlFunc_965_200a548
	ldr	r0, =0x301
	bl	__Func_8079374
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	bl	__Func_80933f8
	bl	__Func_80916b0
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xa
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xb0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
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
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0
	b	.L1f1c

	.pool_aligned

.L1f1c:
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0x46
	bl	__Func_80937b8
	mov	r0, #0x8c
	mov	r1, #1
	mov	r2, #0x9c
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xd
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #3
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xe
	ldr	r1, =0x103
	mov	r2, #0x32
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L20bc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L20e8
.L20bc:
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
.L20e8:
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x10
	bl	__Func_8092304
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092c40
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xa
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2200
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L223e

	.pool_aligned

.L2200:
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
.L223e:
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092f84
	mov	r0, #0xf
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x19
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x9c
	mov	r2, #0x9c
	mov	r0, #0xa
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x19
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0
	bl	__Func_8092848
	mov	r2, #0
	mov	r1, #2
	mov	r0, #3
	bl	__Func_8092848
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #2
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #3
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L2392
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_8092128
.L2392:
	mov	r0, #1
	bl	__Func_80923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L23c2
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_8092128
.L23c2:
	mov	r0, #2
	bl	__Func_80923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L23f2
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_8092128
.L23f2:
	mov	r0, #3
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__Func_80923e4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_2009b10

.thumb_func_start OvlFunc_965_200a46c
	push	{lr}
	ldr	r0, =0x985
	sub	sp, #8
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L2490
	mov	r3, #0x11
	mov	r2, #0x4e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x24
	mov	r1, #0x4e
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010788
	b	.L24a4
.L2490:
	mov	r3, #0x11
	mov	r2, #0x4e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x22
	mov	r1, #0x4e
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010788
.L24a4:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200a46c

.thumb_func_start OvlFunc_965_200a4b0
	push	{lr}
	sub	sp, #8
	mov	r3, #0x11
	mov	r2, #0x4e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x20
	mov	r1, #0x4e
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010788
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200a4b0

.thumb_func_start OvlFunc_965_200a4d0
	push	{lr}
	ldr	r0, =0x985
	sub	sp, #8
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L2538
	ldr	r0, =0x985
	bl	__Func_8079358
	mov	r0, #0x9d
	bl	__Func_80f9080
	bl	__Func_80916b0
	mov	r1, #0x8c
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0xf0
	bl	__Func_8092128
	mov	r1, #0xa4
	lsl	r1, #1
	mov	r2, #0xf0
	mov	r0, #9
	bl	__Func_8092128
	mov	r0, #8
	bl	__Func_80923c4
	mov	r0, #9
	bl	__Func_80923c4
	mov	r3, #0x11
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x51
	mov	r1, #0xe
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8010704
	bl	__Func_8091750
	ldr	r0, =0x989
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L2538
	bl	OvlFunc_965_2009b10
.L2538:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200a4d0

.thumb_func_start OvlFunc_965_200a548
	push	{lr}
	ldr	r0, =0x985
	sub	sp, #8
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L25ba
	ldr	r0, =0x985
	bl	__Func_8079374
	mov	r0, #0x9d
	bl	__Func_80f9080
	bl	__Func_80916b0
	mov	r1, #0x94
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0xf0
	bl	__Func_8092128
	mov	r1, #0x9c
	lsl	r1, #1
	mov	r2, #0xf0
	mov	r0, #9
	bl	__Func_8092128
	mov	r0, #8
	bl	__Func_80923c4
	mov	r0, #9
	bl	__Func_80923c4
	mov	r3, #0x11
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0xe
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8010704
	bl	__Func_8091750
	ldr	r0, =0x301
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L25b4
	ldr	r0, =0x301
	bl	__Func_8079374
	b	.L25ba
.L25b4:
	ldr	r0, =0x301
	bl	__Func_8079358
.L25ba:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200a548

.thumb_func_start OvlFunc_965_200a5c8
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	sub	sp, #8
	ldr	r5, [r3]
	bl	__Func_80916b0
	ldr	r2, =0xcb8
	add	r5, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L262e
	ldr	r0, =0x985
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L263e
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_801776c
	mov	r0, #0x9b
	bl	__Func_80f9080
	mov	r5, #0x11
	mov	r1, #0x4e
	mov	r2, #1
	mov	r3, #2
	mov	r6, #0x4e
	mov	r0, #0x23
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010788
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0x22
	mov	r1, #0x4e
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010788
	mov	r0, #0xa
	bl	__Func_809163c
	bl	OvlFunc_965_200a4d0
	b	.L263e
.L262e:
	ldr	r0, =0x2756
	bl	__Func_8092b94
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	bl	__Func_8092f84
.L263e:
	bl	__Func_8091750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200a5c8

.thumb_func_start OvlFunc_965_200a660
	push	{r5, r6, lr}
	mov	r5, r0
	ldrh	r3, [r5, #6]
	ldr	r2, =.L2fd4
	lsr	r3, #12
	lsl	r3, #2
	ldr	r0, [r2, r3]
	ldr	r3, =0xffff0000
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	sub	sp, #0xc
	and	r3, r0
	lsl	r0, #16
	mov	r6, sp
	add	r2, r0
	add	r1, r3
	str	r1, [r6]
	str	r2, [r6, #8]
	mov	r3, r5
	add	r3, #0x22
	ldrb	r0, [r3]
	bl	__Func_8011f54
	mov	r1, r5
	str	r0, [r6, #4]
	mov	r0, r6
	bl	OvlFunc_965_200806c
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_965_200a660

