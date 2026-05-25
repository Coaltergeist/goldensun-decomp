	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_7f2f14_e80
	ldr	r0, =.L6740
	bx	lr
.func_end OvlFunc_7f2f14_e80

.thumb_func_start OvlFunc_7f2f14_e88
	push	{r5, lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb5
	cmp	r2, r3
	bne	.Lea0
	ldr	r0, =.L6904
	b	.Ledc
.Lea0:
	ldr	r3, =0xb6
	cmp	r2, r3
	bne	.Leaa
	ldr	r5, =.L69c4
	b	.Led0
.Leaa:
	ldr	r3, =0xb7
	cmp	r2, r3
	bne	.Leb4
	ldr	r5, =.L6b74
	b	.Led0
.Leb4:
	ldr	r3, =0xb8
	cmp	r2, r3
	bne	.Lebe
	ldr	r5, =.L6c04
	b	.Led0
.Lebe:
	ldr	r3, =0xb9
	cmp	r2, r3
	bne	.Lec8
	ldr	r5, =.L6c64
	b	.Led0
.Lec8:
	ldr	r3, =0xba
	cmp	r2, r3
	bne	.Leda
	ldr	r5, =.L6cf4
.Led0:
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	b	.Ledc
.Leda:
	ldr	r0, =.L68ec
.Ledc:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_7f2f14_e88

.thumb_func_start OvlFunc_7f2f14_f1c
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x953
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_7f2f14_f1c

.thumb_func_start OvlFunc_7f2f14_f38
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r1, #3
	mov	r0, #8
	bl	__Func_80925cc
	ldr	r0, =0x266d
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	mov	r6, #0xa
	mov	r5, #8
	bl	__Func_8093040
.Lf5c:
	mov	r1, #0xf
	mov	r0, #8
	bl	__Func_8092950
	mov	r0, #2
	bl	__Func_80030f8
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, r5
	bl	__Func_80030f8
	cmp	r5, #3
	bls	.Lf7e
	sub	r5, #1
.Lf7e:
	sub	r6, #1
	cmp	r6, #0
	bne	.Lf5c
	ldr	r0, =0x981
	bl	__Func_8079358
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r3, #7
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #7
	mov	r1, #0x11
	mov	r2, #2
	mov	r3, #1
	bl	__Func_8010704
	bl	__Func_8091750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7f2f14_f38

.thumb_func_start OvlFunc_7f2f14_fbc
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x2670
	bl	__Func_8092b94
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_7f2f14_fbc

.thumb_func_start OvlFunc_7f2f14_ff0
	push	{r5, lr}
	mov	r0, #0xc
	bl	__Func_8092054
	mov	r5, r0
	bl	__Func_80916b0
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0x36
	beq	.L100e
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #6
	bne	.L1014
.L100e:
	ldr	r0, =0x987
	bl	__Func_8079358
.L1014:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7f2f14_ff0

.thumb_func_start OvlFunc_7f2f14_1024
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
.func_end OvlFunc_7f2f14_1024

.thumb_func_start OvlFunc_7f2f14_1048
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
.func_end OvlFunc_7f2f14_1048

.thumb_func_start OvlFunc_7f2f14_10cc
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
.func_end OvlFunc_7f2f14_10cc

.thumb_func_start OvlFunc_7f2f14_1150
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
	ldr	r3, =OvlFunc_7f2f14_5e4
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
.func_end OvlFunc_7f2f14_1150

.thumb_func_start OvlFunc_7f2f14_1218
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
.func_end OvlFunc_7f2f14_1218

.thumb_func_start OvlFunc_7f2f14_14f4
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
.func_end OvlFunc_7f2f14_14f4

.thumb_func_start OvlFunc_7f2f14_1628
	push	{lr}
	bl	__Func_80916b0
	bl	OvlFunc_7f2f14_374
	mov	r0, #0x14
	bl	__Func_809163c
	bl	__Func_8091750
	bl	OvlFunc_7f2f14_14f4
	pop	{r0}
	bx	r0
.func_end OvlFunc_7f2f14_1628

.thumb_func_start OvlFunc_7f2f14_1644
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
.func_end OvlFunc_7f2f14_1644

.thumb_func_start OvlFunc_7f2f14_16a4
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
.func_end OvlFunc_7f2f14_16a4

.thumb_func_start OvlFunc_7f2f14_1780
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
.func_end OvlFunc_7f2f14_1780

.thumb_func_start OvlFunc_7f2f14_1808
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
	bl	OvlFunc_7f2f14_58
	mov	r3, #0x22
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #5
	mov	r3, #1
	mov	r1, #0x23
	mov	r0, #0x22
	bl	__Func_8010704
	mov	r0, #0
	bl	OvlFunc_7f2f14_94c
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
.func_end OvlFunc_7f2f14_1808

.thumb_func_start OvlFunc_7f2f14_18f8
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
	bl	OvlFunc_7f2f14_910
	bl	__Func_8091750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7f2f14_18f8

.thumb_func_start OvlFunc_7f2f14_196c
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
	bl	OvlFunc_7f2f14_374
	bl	OvlFunc_7f2f14_18f8
	bl	__Func_8091750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_7f2f14_196c

.thumb_func_start OvlFunc_7f2f14_199c
	push	{r5, lr}
	mov	r5, #0
.L19a0:
	mov	r0, r5
	add	r0, #0xb
	bl	__Func_8092054
	add	r5, #1
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r3, #0x2d
	mov	r0, #0
	bl	__Func_8012078
	cmp	r5, #1
	bls	.L19a0
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7f2f14_199c

.thumb_func_start OvlFunc_7f2f14_19c0
	push	{r5, lr}
	mov	r5, #0
.L19c4:
	mov	r0, r5
	add	r0, #0xb
	bl	__Func_8092054
	ldr	r2, =0xfff00000
	ldr	r3, [r0, #0xc]
	cmp	r3, r2
	ble	.L19e0
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r3, #0xff
	mov	r0, #0
	bl	__Func_8012078
.L19e0:
	add	r5, #1
	cmp	r5, #1
	bls	.L19c4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7f2f14_19c0

.thumb_func_start OvlFunc_7f2f14_19f0
	push	{lr}
	bl	__Func_80916b0
	bl	OvlFunc_7f2f14_cc8
	cmp	r0, #0
	bne	.L1a0a
	bl	OvlFunc_7f2f14_199c
	bl	OvlFunc_7f2f14_374
	bl	OvlFunc_7f2f14_19c0
.L1a0a:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_7f2f14_19f0

.thumb_func_start OvlFunc_7f2f14_1a14
	push	{lr}
	mov	r2, #0x23
	add	r2, r0
	mov	r12, r2
	ldrb	r2, [r2]
	mov	r3, #2
	orr	r3, r2
	mov	r2, r12
	strb	r3, [r2]
	mov	r3, r0
	mov	r1, #0
	add	r3, #0x55
	strb	r1, [r3]
	ldr	r2, [r0, #8]
	ldr	r3, [r0, #0x10]
	sub	sp, #8
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #9
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_7f2f14_1a14

.thumb_func_start OvlFunc_7f2f14_1a50
	push	{r5, r6, r7, lr}
	mov	r7, r0
	ldr	r1, [r7, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, #0xc
	and	r3, r2
	cmp	r3, #0xc
	bne	.L1a92
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r5, #0
	mov	r2, #0x80
	lsl	r2, #18
	mov	r1, #0
	mov	r3, #0xdf
	str	r5, [r7, #0x44]
	ldr	r0, [r7, #8]
	bl	OvlFunc_7f2f14_58
	mov	r6, r0
	mov	r0, r7
	bl	OvlFunc_7f2f14_94c
	str	r5, [r7, #8]
	str	r5, [r7, #0x10]
	mov	r0, r6
	bl	__Func_800c0f4
	b	.L1a96
.L1a92:
	bl	OvlFunc_7f2f14_19c0
.L1a96:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7f2f14_1a50

.thumb_func_start OvlFunc_7f2f14_1a9c
	push	{r5, lr}
	bl	__Func_80916b0
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #8
	bne	.L1abe
	bl	OvlFunc_7f2f14_94c
	mov	r0, r5
	bl	OvlFunc_7f2f14_1a14
	b	.L1ac4
.L1abe:
	mov	r0, r5
	bl	OvlFunc_7f2f14_1a50
.L1ac4:
	mov	r0, #0xc
	bl	__Func_8092054
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #7
	bne	.L1ae0
	bl	OvlFunc_7f2f14_94c
	mov	r0, r5
	bl	OvlFunc_7f2f14_1a14
	b	.L1ae6
.L1ae0:
	mov	r0, r5
	bl	OvlFunc_7f2f14_1a50
.L1ae6:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7f2f14_1a9c

.thumb_func_start OvlFunc_7f2f14_1af0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	mov	r1, #0xb2
	ldr	r3, [r3]
	lsl	r1, #1
	add	r1, r3
	mov	r0, #0
	mov	r10, r1
	sub	sp, #0x38
	bl	__Func_8092054
	ldr	r1, =0xfffffecc
	mov	r2, #0xa
	ldrsh	r5, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r3, #0
	str	r3, [r0, #0xc]
	add	r3, r5, r1
	cmp	r3, #7
	bls	.L1b28
	b	.L1d00
.L1b28:
	mov	r3, #0x85
	lsl	r3, #2
	cmp	r2, r3
	bge	.L1b32
	b	.L1d00
.L1b32:
	mov	r1, #0x87
	lsl	r1, #2
	cmp	r2, r1
	blt	.L1b3c
	b	.L1d00
.L1b3c:
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0xc]
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1b4e
	b	.L1d00
.L1b4e:
	bl	__Func_80916b0
	mov	r0, #0xa1
	bl	__Func_80f9080
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079358
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x21
	mov	r3, #0x21
	mov	r2, #0x13
	mov	r0, #0x1a
	bl	__Func_8010424
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xef
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x90
	lsl	r2, #17
	mov	r3, #0x28
	mov	r1, #4
	mov	r8, r2
	mov	r5, #0x1d
	mov	r9, r3
	mov	r7, #0
	add	r6, sp, #0x10
	mov	r11, r1
.L1ba8:
	mov	r2, r10
	ldr	r3, [r2, #8]
	ldr	r1, =0x3333
	add	r3, r1
	str	r3, [r2, #8]
	ldr	r2, =0xffffcccd
	mov	r3, #2
	add	r8, r2
	str	r3, [r6]
	bl	__Func_8004458
	lsl	r2, r0, #1
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r2, r3, #4
	add	r3, r2
	ldr	r1, =0xcccc
	lsl	r2, r3, #8
	add	r3, r2
	add	r3, r1
	str	r3, [r6, #8]
	bl	__Func_8004458
	lsl	r2, r0, #1
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r2, r3, #4
	add	r3, r2
	lsl	r2, r3, #8
	add	r3, r2
	ldr	r2, =0xcccc
	add	r3, r2
	str	r3, [r6, #0xc]
	bl	__Func_8004458
	mov	r3, #0xf8
	lsl	r0, #12
	lsl	r3, #8
	lsr	r0, #16
	add	r0, r3
	strh	r0, [r6, #0x22]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #16
	neg	r3, r3
	str	r3, [sp]
	mov	r3, #0x8a
	lsl	r3, #16
	mov	r2, #0x84
	mov	r1, #0
	str	r3, [sp, #8]
	mov	r0, r8
	lsl	r2, #18
	mov	r3, #0
	str	r1, [sp, #4]
	str	r6, [sp, #0xc]
	bl	OvlFunc_7f2f14_118
	cmp	r7, #0xf0
	bne	.L1c34
	ldr	r2, =0xffd00000
	add	r8, r2
.L1c34:
	mov	r3, r9
	cmp	r3, #0
	bne	.L1c70
	mov	r1, #0x28
	mov	r9, r1
	cmp	r7, #0xf0
	bhi	.L1c5a
	mov	r2, #3
	mov	r3, r11
	sub	r5, #4
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, #0x32
	mov	r2, #0xf
	mov	r3, #0x20
	bl	__Func_8010424
	b	.L1c70
.L1c5a:
	mov	r1, #3
	mov	r2, r11
	add	r5, #4
	str	r1, [sp]
	str	r2, [sp, #4]
	mov	r0, r5
	mov	r1, #0x2d
	mov	r2, #9
	mov	r3, #0x20
	bl	__Func_8010424
.L1c70:
	mov	r0, #1
	bl	__Func_80030f8
	mov	r3, #1
	ldr	r1, =0x1df
	neg	r3, r3
	add	r7, #1
	add	r9, r3
	cmp	r7, r1
	bls	.L1ba8
	mov	r3, r10
	ldr	r2, [r3, #8]
	mov	r1, #0x80
	lsl	r1, #8
	add	r3, r2, r1
	mov	r1, r10
	str	r3, [r1, #8]
	cmp	r3, #0
	bge	.L1c9a
	ldr	r1, =0x17fff
	add	r3, r2, r1
.L1c9a:
	asr	r3, #16
	lsl	r3, #16
	mov	r2, r10
	str	r3, [r2, #8]
	mov	r3, #9
	str	r3, [sp]
	mov	r5, #0x20
	mov	r0, #0xf
	mov	r1, #0x20
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xf
	str	r3, [sp]
	mov	r1, #0x20
	mov	r3, #1
	mov	r2, #3
	mov	r0, #0xc
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_80f9080
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	ldr	r2, =0x202
	add	r3, r1
	str	r2, [r3]
	mov	r0, #0xb
	bl	__Func_8091e9c
	bl	__Func_8091750
.L1d00:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7f2f14_1af0

.thumb_func_start OvlFunc_7f2f14_1d48
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	mov	r2, #0
	mov	r0, #9
	str	r2, [sp, #8]
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, #0
	bl	__Func_8092054
	mov	r11, r0
	bl	__Func_80916b0
	mov	r3, #0x2b
	str	r3, [sp, #4]
	mov	r2, #7
	mov	r3, #5
	mov	r5, #0x2d
	mov	r0, #0x6d
	mov	r1, #0x2b
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x23
	add	r3, r6
	ldrb	r2, [r3]
	mov	r10, r3
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1da8
	mov	r3, #0x2e
	str	r3, [sp]
	mov	r0, #0x2d
	mov	r1, #0x2d
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	b	.L1dc0
.L1da8:
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x2a
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L1dc0:
	ldr	r3, [r6, #8]
	asr	r3, #20
	mov	r9, r3
	cmp	r3, #0x2e
	beq	.L1dcc
	b	.L1efc
.L1dcc:
	ldr	r3, [r6, #0x10]
	asr	r3, #20
	mov	r8, r3
	cmp	r3, #0x2d
	beq	.L1dd8
	b	.L1efc
.L1dd8:
	ldr	r0, =0x301
	bl	__Func_8079338
	mov	r7, r0
	cmp	r7, #0
	beq	.L1de6
	b	.L1efc
.L1de6:
	mov	r2, r11
	ldr	r3, [r2, #0x10]
	asr	r3, #20
	cmp	r3, #0x2d
	bgt	.L1e0a
	mov	r0, #0xba
	mov	r2, #0xb0
	mov	r1, #0
	lsl	r0, #18
	lsl	r2, #18
	mov	r3, #0x14
	bl	OvlFunc_7f2f14_98
	mov	r1, #3
	str	r0, [sp, #8]
	mov	r0, #0
	bl	__Func_8092b08
.L1e0a:
	mov	r0, #9
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r3, r6
	add	r3, #0x22
	mov	r5, r6
	strb	r7, [r3]
	add	r5, #0x55
	mov	r3, #3
	strb	r3, [r5]
	ldr	r3, =0x1999
	mov	r2, r8
	str	r3, [r6, #0x48]
	mov	r3, r9
	mov	r1, #0x2d
	str	r7, [r6, #0x44]
	mov	r0, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	bl	__Func_8010704
	mov	r0, r6
	bl	OvlFunc_7f2f14_94c
	mov	r0, #0xbc
	bl	__Func_80f9080
	ldr	r3, =0xfff00000
	strb	r7, [r5]
	mov	r0, #9
	str	r3, [r6, #0xc]
	mov	r1, #3
	bl	__Func_8092b08
	mov	r3, #2
	mov	r2, r10
	strb	r3, [r2]
	mov	r3, r9
	mov	r2, r8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2d
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x2d
	bl	__Func_8010704
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, [sp, #8]
	bl	__Func_800c0f4
	mov	r3, r6
	add	r3, #0x59
	strb	r7, [r3]
	mov	r2, r10
	ldrb	r3, [r2]
	mov	r5, #2
	orr	r3, r5
	strb	r3, [r2]
	mov	r0, #0xa
	bl	__Func_8092054
	add	r0, #0x59
	strb	r7, [r0]
	mov	r0, #0xa
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r1, #0xca
	orr	r5, r3
	mov	r2, #0xb6
	lsl	r2, #18
	strb	r5, [r0]
	lsl	r1, #18
	mov	r0, #0xa
	bl	__Func_80923e4
	ldr	r1, =.L53c4
	mov	r0, #0xa
	bl	__Func_809207c
	mov	r0, #0xa
	bl	__Func_80920e8
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L5ce8
	mov	r1, #0x6e
	mov	r2, #0x29
	bl	__Func_8010560
	mov	r3, #0x2a
	mov	r2, r9
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x29
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	ldr	r0, =0x301
	bl	__Func_8079358
.L1efc:
	bl	__Func_8091750
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7f2f14_1d48

.thumb_func_start OvlFunc_7f2f14_1f28
	push	{lr}
	sub	sp, #8
	bl	__Func_80916b0
	bl	OvlFunc_7f2f14_cc8
	cmp	r0, #0
	bne	.L1f50
	mov	r3, #0x2d
	mov	r2, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6d
	mov	r1, #0x2b
	mov	r2, #7
	mov	r3, #5
	bl	__Func_8010704
	bl	OvlFunc_7f2f14_374
.L1f50:
	bl	__Func_8091750
	bl	OvlFunc_7f2f14_1d48
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_7f2f14_1f28

.thumb_func_start OvlFunc_7f2f14_1f60
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	mov	r0, #0
	str	r0, [sp, #0x10]
	bl	__Func_8092054
	str	r0, [sp, #0xc]
	bl	__Func_80916b0
	mov	r3, #0x2c
	mov	r2, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x27
	mov	r0, #0x6c
	mov	r2, #0xd
	mov	r3, #7
	bl	__Func_8010704
	mov	r1, #9
	mov	r9, r1
.L1f96:
	mov	r0, r9
	bl	__Func_8092054
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x23
	str	r2, [sp, #8]
	ldrb	r3, [r2]
	cmp	r3, #2
	beq	.L1fc4
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x27
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.L1fdc
.L1fc4:
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x27
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L1fdc:
	ldr	r4, =.L5128
	mov	r5, #0
	ldr	r0, [r6, #8]
	ldr	r3, [r4, r5]
	asr	r2, r0, #20
	mov	r7, #5
	cmp	r2, r3
	bne	.L2000
	ldr	r3, [r6, #0x10]
	ldr	r2, [r4, #4]
	asr	r3, #20
	cmp	r3, r2
	bne	.L2000
	ldr	r3, [r6, #0xc]
	cmp	r3, #0
	blt	.L2000
	mov	r7, #0
	b	.L2024
.L2000:
	add	r5, #1
	cmp	r5, #3
	bhi	.L2024
	lsl	r1, r5, #3
	ldr	r3, [r4, r1]
	asr	r2, r0, #20
	cmp	r2, r3
	bne	.L2000
	ldr	r3, [r6, #0x10]
	add	r2, r1, #4
	ldr	r2, [r4, r2]
	asr	r3, #20
	cmp	r3, r2
	bne	.L2000
	ldr	r3, [r6, #0xc]
	cmp	r3, #0
	blt	.L2000
	mov	r7, r5
.L2024:
	cmp	r7, #5
	bne	.L202a
	b	.L2226
.L202a:
	mov	r5, #9
	b	.L2030
.L202e:
	add	r5, #1
.L2030:
	cmp	r5, #0xb
	bhi	.L2058
	mov	r0, r5
	bl	__Func_8092054
	cmp	r9, r5
	beq	.L202e
	ldr	r2, [r6, #8]
	ldr	r3, [r0, #8]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L202e
	ldr	r2, [r6, #0x10]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.L202e
	mov	r7, #5
.L2058:
	cmp	r7, #5
	bne	.L205e
	b	.L2226
.L205e:
	ldr	r0, [sp, #0xc]
	ldr	r3, [r0, #0x50]
	ldrb	r3, [r3, #9]
	lsl	r3, #28
	lsr	r3, #30
	ldr	r1, =.L5128
	lsl	r7, #3
	mov	r11, r3
	ldr	r2, [r0, #0x10]
	add	r3, r7, #4
	mov	r8, r3
	ldr	r3, [r1, r3]
	asr	r2, #20
	mov	r10, r1
	cmp	r2, r3
	bhi	.L2098
	ldr	r2, [r6, #0x10]
	ldr	r3, =0xfffc0000
	ldr	r1, [r6, #0xc]
	add	r2, r3
	ldr	r0, [r6, #8]
	mov	r3, #0x14
	bl	OvlFunc_7f2f14_98
	mov	r1, #3
	str	r0, [sp, #0x10]
	mov	r0, #0
	bl	__Func_8092b08
.L2098:
	mov	r0, r9
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r3, r6
	add	r3, #0x22
	mov	r0, #0
	mov	r5, r6
	strb	r0, [r3]
	add	r5, #0x55
	mov	r3, #3
	strb	r3, [r5]
	ldr	r3, =0x1999
	mov	r1, #0
	str	r1, [r6, #0x44]
	str	r3, [r6, #0x48]
	mov	r2, r10
	mov	r0, r8
	ldr	r3, [r2, r7]
	ldr	r2, [r2, r0]
	mov	r1, #0x29
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #0x2a
	bl	__Func_8010704
	mov	r0, r6
	bl	OvlFunc_7f2f14_94c
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r3, r6
	mov	r1, #0
	add	r3, #0x59
	strb	r1, [r3]
	ldr	r3, =0xfff00000
	strb	r1, [r5]
	mov	r0, r9
	str	r3, [r6, #0xc]
	mov	r1, #3
	bl	__Func_8092b08
	ldr	r2, [sp, #8]
	mov	r3, #2
	strb	r3, [r2]
	mov	r0, r10
	mov	r1, r8
	ldr	r2, [r0, r1]
	ldr	r3, [r0, r7]
	mov	r1, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #0x2e
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, r11
	bl	__Func_8092b08
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r2, [sp, #0x10]
	cmp	r2, #0
	beq	.L2138
	mov	r0, r2
	bl	__Func_800c0f4
.L2138:
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L214a
	bl	__Func_8091750
	b	.L2236
.L214a:
	mov	r0, #9
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0xb
	bl	__Func_8092054
	add	r6, #0x23
	add	r5, #0x23
	ldrb	r2, [r6]
	ldrb	r3, [r5]
	add	r0, #0x23
	and	r3, r2
	ldrb	r2, [r0]
	mov	r0, #2
	and	r3, r2
	and	r3, r0
	cmp	r3, #0
	beq	.L2226
	mov	r5, #0xde
	mov	r6, #0xaa
	lsl	r5, #2
	lsl	r6, #2
	mov	r1, r6
	mov	r0, r5
	ldr	r2, =.L5488
	bl	OvlFunc_7f2f14_c5c
	mov	r1, r6
	mov	r7, r0
	ldr	r2, =.L5508
	mov	r0, r5
	bl	OvlFunc_7f2f14_c5c
	ldr	r3, [r7]
	mov	r6, r7
	mov	r5, r0
	add	r6, #0x63
	b	.L221c
.L21a0:
	ldrb	r3, [r6]
	cmp	r3, #0
	bne	.L21b0
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L2214
.L21b0:
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x9e
	bl	__Func_80f9080
	ldr	r0, =.L5d12
	mov	r1, #0x6d
	mov	r2, #0x25
	bl	__Func_8010560
	mov	r3, #0x2d
	mov	r2, #0x26
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #0x2d
	mov	r1, #0x25
	bl	__Func_8010704
	mov	r0, #9
	bl	__Func_8092054
	ldr	r5, =.L5128
	ldr	r2, [r0, #8]
	ldr	r3, [r5]
	asr	r2, #20
	cmp	r2, r3
	bne	.L2204
	mov	r0, #9
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	ldr	r2, [r5, #4]
	asr	r3, #20
	cmp	r3, r2
	bne	.L2204
	ldr	r0, =0x302
	bl	__Func_8079358
	b	.L220a
.L2204:
	ldr	r0, =0x303
	bl	__Func_8079358
.L220a:
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_8079358
	b	.L2226
.L2214:
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r3, [r7]
.L221c:
	cmp	r3, #0
	bne	.L21a0
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L21a0
.L2226:
	mov	r1, #1
	add	r9, r1
	mov	r2, r9
	cmp	r2, #0xb
	bhi	.L2232
	b	.L1f96
.L2232:
	bl	__Func_8091750
.L2236:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7f2f14_1f60

.thumb_func_start OvlFunc_7f2f14_226c
	push	{lr}
	sub	sp, #8
	bl	__Func_80916b0
	bl	OvlFunc_7f2f14_cc8
	cmp	r0, #0
	bne	.L2294
	mov	r3, #0x2c
	mov	r2, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6c
	mov	r1, #0x27
	mov	r2, #0xd
	mov	r3, #7
	bl	__Func_8010704
	bl	OvlFunc_7f2f14_374
.L2294:
	bl	__Func_8091750
	bl	OvlFunc_7f2f14_1f60
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_7f2f14_226c

