	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_2009024
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	ldr	r0, =0x2682
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009024

.thumb_func_start OvlFunc_968_2009048
	push	{r5, r6, lr}
	ldr	r0, =0x161
	sub	sp, #8
	bl	__Func_8079374
	mov	r3, #0x17
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x23
	mov	r1, #8
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
	mov	r5, #3
	mov	r6, #1
	mov	r0, #0x23
	mov	r1, #8
	mov	r2, #0x17
	mov	r3, #8
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x63
	mov	r1, #8
	mov	r2, #0x57
	mov	r3, #8
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r3, #0x2e
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x39
	mov	r1, #0x37
	mov	r2, #3
	mov	r3, #3
	bl	__Func_8010704
	mov	r0, #0x39
	mov	r1, #0x37
	mov	r2, #0x2e
	mov	r3, #0x37
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x79
	mov	r1, #0x37
	mov	r2, #0x6e
	mov	r3, #0x37
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009048

.thumb_func_start OvlFunc_968_20090cc
	push	{r5, r6, lr}
	ldr	r0, =0x161
	sub	sp, #8
	bl	__Func_8079358
	mov	r3, #0x17
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x24
	mov	r1, #8
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
	mov	r5, #3
	mov	r6, #1
	mov	r0, #0x24
	mov	r1, #8
	mov	r2, #0x17
	mov	r3, #8
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x64
	mov	r1, #8
	mov	r2, #0x57
	mov	r3, #8
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r3, #0x2e
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x35
	mov	r1, #0x37
	mov	r2, #3
	mov	r3, #3
	bl	__Func_8010704
	mov	r0, #0x35
	mov	r1, #0x37
	mov	r2, #0x2e
	mov	r3, #0x37
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x75
	mov	r1, #0x37
	mov	r2, #0x6e
	mov	r3, #0x37
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_20090cc

.thumb_func_start OvlFunc_968_2009150
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	mov	r5, r0
	bl	__Func_80916b0
	ldr	r1, =.L521c
	mov	r0, #0
	bl	__Func_809207c
	mov	r0, #0
	bl	__Func_80920e8
	mov	r0, #0
	mov	r1, #6
	bl	__Func_8092950
	mov	r1, #0x80
	lsl	r1, #11
	mov	r2, #0x80
	str	r1, [r5, #0x28]
	mov	r0, #0
	lsl	r2, #10
	bl	__Func_8092064
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x36
	bgt	.L11a0
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r2, #0xd2
	b	.L11b2
.L11a0:
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r2, #0xee
.L11b2:
	mov	r3, #0xa
	ldrsh	r1, [r5, r3]
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_809163c
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r3, =OvlFunc_968_20085e4
	mov	r1, #0x81
	str	r3, [r5, #0x6c]
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #0
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0
	mov	r1, #4
	bl	__Func_8092548
	mov	r3, #0
	str	r3, [r5, #0x6c]
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009150

.thumb_func_start OvlFunc_968_2009218
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r7, [r3]
	ldr	r3, =0xcba
	add	r2, r7, r3
	mov	r3, #0
	strh	r3, [r2]
	ldr	r2, =0xcb6
	mov	r5, #1
	add	r3, r7, r2
	strh	r5, [r3]
	sub	sp, #8
	bl	__Func_80916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	ldr	r0, =0x2688
	mov	r1, #1
	bl	__Func_801776c
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #0
	ldr	r0, =0x10005
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x64
	bl	__Func_809163c
	mov	r0, #0x8e
	bl	__Func_80f9080
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x46
	bl	__Func_809163c
	ldr	r0, =0x982
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L12ae
	ldr	r0, =0x983
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L12ae
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	and	r3, r5
	cmp	r3, #0
	beq	.L12a8
	ldr	r0, =0x982
	bl	__Func_8079358
	b	.L12ae
.L12a8:
	ldr	r0, =0x983
	bl	__Func_8079358
.L12ae:
	ldr	r0, =0x982
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L138e
	ldr	r0, =0x982
	bl	__Func_8079358
	ldr	r0, =0x983
	bl	__Func_8079374
	mov	r3, #7
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x67
	mov	r1, #0x1b
	mov	r2, #0x59
	mov	r3, #0x1b
	bl	__Func_8010424
	mov	r5, #3
	mov	r6, #2
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1b
	mov	r3, #0x5c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1d
	mov	r3, #0x5d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1b
	mov	r3, #0x5e
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1b
	mov	r3, #0x60
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1d
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x19
	mov	r3, #0x5b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x29
	mov	r1, #0x5c
	mov	r2, #0x19
	mov	r3, #0x5d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x19
	mov	r3, #0x5f
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x19
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x1b
	mov	r3, #0x60
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x1d
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	b	.L1462
.L138e:
	ldr	r0, =0x983
	bl	__Func_8079358
	ldr	r0, =0x982
	bl	__Func_8079374
	mov	r3, #7
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6f
	mov	r1, #0x1b
	mov	r2, #0x59
	mov	r3, #0x1b
	bl	__Func_8010424
	mov	r5, #3
	mov	r6, #2
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x19
	mov	r3, #0x5b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x19
	mov	r3, #0x5d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x19
	mov	r3, #0x5f
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x19
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1b
	mov	r3, #0x60
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1d
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x29
	mov	r1, #0x5e
	mov	r2, #0x1b
	mov	r3, #0x5c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x1d
	mov	r3, #0x5d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x29
	mov	r1, #0x5e
	mov	r2, #0x1b
	mov	r3, #0x5e
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x1b
	mov	r3, #0x60
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x1d
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
.L1462:
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_80933d4
	mov	r0, #0xe4
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x21e0000
	mov	r3, #1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r0, #0xe4
	mov	r1, #1
	lsl	r0, #17
	neg	r1, r1
	ldr	r2, =0x1a70000
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
	bl	__Func_8091750
	ldr	r3, =0xcb6
	add	r2, r7, r3
	mov	r3, #0
	strh	r3, [r2]
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009218

.thumb_func_start OvlFunc_968_20094f4
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0xc
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x35
	beq	.L150a
	b	.L1612
.L150a:
	ldr	r0, =0x986
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1612
	ldr	r0, =0x986
	bl	__Func_8079358
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L152e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_80923e4
.L152e:
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xce
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0x58
	bl	__Func_80921c4
	mov	r1, #0xce
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0x68
	bl	__Func_80921c4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x2691
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0xce
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0x58
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L15fe
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_8092128
.L15fe:
	mov	r0, #1
	bl	__Func_80923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	bl	__Func_8091750
.L1612:
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_20094f4

.thumb_func_start OvlFunc_968_2009628
	push	{lr}
	bl	__Func_80916b0
	bl	OvlFunc_968_2008374
	mov	r0, #0x14
	bl	__Func_809163c
	bl	__Func_8091750
	bl	OvlFunc_968_20094f4
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009628

.thumb_func_start OvlFunc_968_2009644
	push	{r5, lr}
	mov	r0, #0xd
	sub	sp, #8
	bl	__Func_8092054
	mov	r5, r0
	bl	__Func_80916b0
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0x2a
	bne	.L1692
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =0xfffe0000
	mov	r0, #0x80
	str	r3, [r5, #0x14]
	str	r3, [r5, #0xc]
	lsl	r0, #2
	bl	__Func_8079358
	mov	r3, #3
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2c
	mov	r1, #0x75
	mov	r2, #0x29
	mov	r3, #0x75
	bl	__Func_8010424
.L1692:
	bl	__Func_8091750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009644

.thumb_func_start OvlFunc_968_20096a4
	push	{r5, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_8092054
	mov	r5, r0
	mov	r1, #0xa
	ldrsh	r3, [r5, r1]
	mov	r1, #0x12
	ldrsh	r2, [r5, r1]
	ldr	r1, =0xfffffd5c
	add	r3, r1
	cmp	r3, #7
	bhi	.L16d0
	mov	r3, #0xc5
	lsl	r3, #2
	cmp	r2, r3
	blt	.L16d0
	mov	r1, #0xc7
	lsl	r1, #2
	cmp	r2, r1
	blt	.L1710
.L16d0:
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x35
	mov	r1, #0x32
	mov	r2, #0x2a
	mov	r3, #0x31
	bl	__Func_8010424
	mov	r3, #3
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x75
	mov	r2, #0x29
	mov	r3, #0x75
	mov	r0, #0x37
	bl	__Func_8010424
	ldr	r0, =0x201
	bl	__Func_8079374
	mov	r0, r5
	add	r0, #0x55
	ldrb	r1, [r0]
	mov	r3, #1
	mov	r2, #0
	orr	r3, r1
	strb	r3, [r0]
	str	r2, [r5, #0x14]
	str	r2, [r5, #0xc]
	b	.L176c
.L1710:
	ldr	r0, =0x201
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L176c
	bl	__Func_80916b0
	mov	r0, #5
	bl	__Func_809163c
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x34
	mov	r1, #0x32
	mov	r2, #0x2a
	mov	r3, #0x31
	bl	__Func_8010424
	mov	r3, #3
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x75
	mov	r2, #0x29
	mov	r3, #0x75
	mov	r0, #0x34
	bl	__Func_8010424
	ldr	r0, =0x201
	bl	__Func_8079358
	mov	r0, #0xa1
	bl	__Func_80f9080
	mov	r1, r5
	add	r1, #0x55
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	ldr	r3, =0xfffe0000
	str	r3, [r5, #0x14]
	str	r3, [r5, #0xc]
	bl	__Func_8091750
.L176c:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_20096a4

.thumb_func_start OvlFunc_968_2009780
	push	{lr}
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	ldr	r3, =0xcba
	add	r1, r2, r3
	mov	r3, #0
	strh	r3, [r1]
	ldr	r3, =0xcb6
	add	r2, r3
	mov	r3, #1
	strh	r3, [r2]
	bl	__Func_80916b0
	ldr	r0, =0x267d
	bl	__Func_8092b94
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xe0
	mov	r2, #0
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xe0
	mov	r1, #1
	mov	r2, #0xd8
	lsl	r2, #17
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009780

.thumb_func_start OvlFunc_968_2009808
	push	{r5, r6, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_8092054
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r1, r1
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #0
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r3, #0x80
	lsl	r3, #7
	mov	r1, #0xc0
	mov	r2, #0xc0
	strh	r3, [r5, #6]
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r2, #0x8a
	lsl	r2, #2
	mov	r3, #0xa
	ldrsh	r1, [r5, r3]
	mov	r0, #0
	bl	__Func_8092158
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x16
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r5, #6]
	mov	r0, #0
	mov	r1, #5
	bl	__Func_80924d4
	mov	r1, #0x18
	mov	r0, #0
	bl	__Func_80924ec
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r3, =0x9999
	ldr	r2, [r5, #0x10]
	str	r3, [r5, #0x48]
	mov	r3, #0x90
	mov	r6, #0
	lsl	r3, #15
	add	r2, r3
	str	r6, [r5, #0x44]
	ldr	r0, [r5, #8]
	mov	r1, #0
	mov	r3, #0xdf
	bl	OvlFunc_968_2008058
	mov	r3, #0x22
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #5
	mov	r3, #1
	mov	r1, #0x23
	mov	r0, #0x22
	bl	__Func_8010704
	mov	r0, #0
	bl	OvlFunc_968_200894c
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0x14
	bl	__Func_8091e9c
	bl	__Func_8091df4
	bl	__Func_8091e20
	bl	__Func_8091750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009808

.thumb_func_start OvlFunc_968_20098f8
	push	{r5, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_8092054
	bl	__Func_80916b0
	mov	r3, #0xc
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0x2c
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #0xb
	mov	r2, #0x33
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0x33
	mov	r2, #2
	mov	r3, #2
	bl	__Func_8010704
	mov	r5, #0
.L1930:
	mov	r0, r5
	add	r0, #8
	bl	__Func_8092054
	ldr	r2, [r0, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0xc
	mov	r1, #0x32
	mov	r2, #1
	mov	r3, #1
	add	r5, #1
	bl	__Func_8010704
	cmp	r5, #2
	bls	.L1930
	mov	r0, #0xa
	mov	r1, #9
	bl	OvlFunc_968_2008910
	bl	__Func_8091750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_20098f8

.thumb_func_start OvlFunc_968_200996c
	push	{lr}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r3, #0xc
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0x2c
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8010704
	bl	OvlFunc_968_2008374
	bl	OvlFunc_968_20098f8
	bl	__Func_8091750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200996c

