	.include "macros.inc"

.thumb_func_start OvlFunc_939_2008350
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x68
	cmp	r2, r3
	beq	.L36e
	ldr	r3, =0x9f
	cmp	r2, r3
	bne	.L36e
	ldr	r0, =.L1e04
	b	.L370
.L36e:
	ldr	r0, =.L1dcc
.L370:
	pop	{r1}
	bx	r1
.func_end OvlFunc_939_2008350

.thumb_func_start OvlFunc_939_2008388
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x68
	cmp	r2, r3
	beq	.L3a6
	ldr	r3, =0x9f
	cmp	r2, r3
	bne	.L3a6
	ldr	r0, =.L1f64
	b	.L3a8
.L3a6:
	ldr	r0, =.L1e14
.L3a8:
	pop	{r1}
	bx	r1
.func_end OvlFunc_939_2008388

.thumb_func_start OvlFunc_939_20083c0
	push	{lr}
	bl	__Func_80916b0
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_80923e4
	ldr	r0, =0xfd1
	bl	__Func_8079358
	mov	r0, #0xb5
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, #0xb5
	bl	__Func_8091a58
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20083c0

.thumb_func_start OvlFunc_939_20083f4
	push	{r5, r6, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, #0
	bl	__Func_8092054
	mov	r3, #0xe
	mov	r5, #4
	str	r3, [sp]
	mov	r0, #0x11
	mov	r1, #4
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xf
	str	r3, [sp]
	mov	r0, #0xf
	mov	r1, #3
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xd
	str	r3, [sp]
	mov	r0, #0xf
	mov	r1, #3
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	cmp	r6, #0
	beq	.L458
	mov	r0, r6
	mov	r1, #0
	bl	__Func_800c528
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #2
	strb	r3, [r2]
	sub	r2, #0x32
	mov	r3, #1
	strb	r3, [r2]
.L458:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079358
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20083f4

.thumb_func_start OvlFunc_939_2008468
	push	{lr}
	mov	r0, #0
	bl	__Func_8092054
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #13
	cmp	r3, r2
	blt	.L48a
	mov	r0, #8
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	b	.L494
.L48a:
	mov	r0, #8
	bl	__Func_8092054
	mov	r3, #1
	add	r0, #0x23
.L494:
	strb	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008468

.thumb_func_start OvlFunc_939_200849c
	push	{r5, r6, r7, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L4b0
	ldr	r2, =0xfffff
	add	r3, r2
.L4b0:
	ldr	r0, [r0, #0x10]
	asr	r6, r3, #20
	cmp	r0, #0
	bge	.L4bc
	ldr	r3, =0xfffff
	add	r0, r3
.L4bc:
	asr	r5, r0, #20
	ldr	r0, =0xf27
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L4fc
	cmp	r6, #7
	bne	.L4da
	cmp	r5, #0x10
	bne	.L4da
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x10
	bl	__Func_8092304
.L4da:
	mov	r1, #1
	mov	r2, #1
	mov	r0, #0x66
	neg	r1, r1
	neg	r2, r2
	bl	__Func_808edac
	mov	r3, #7
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1c
	mov	r1, #0x1f
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L4fc:
	mov	r3, #4
	str	r3, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #4
	mov	r2, #1
	mov	r3, #1
	mov	r7, #0x2e
	str	r7, [sp]
	bl	__Func_80105d4
	mov	r3, #0xd
	str	r3, [sp]
	mov	r2, #3
	mov	r3, #3
	mov	r0, #0x22
	mov	r1, #0x25
	str	r2, [sp, #4]
	bl	__Func_8010704
	mov	r1, #0xe8
	mov	r2, #0x90
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #15
	bl	__Func_80923e4
	mov	r0, #8
	bl	__Func_8092054
	mov	r3, #0
	str	r3, [r0, #0xc]
	ldr	r0, =0x202
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L57c
	mov	r6, #1
	mov	r5, #0xe
	mov	r0, #0x29
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x21
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0x2f
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r7, [sp, #4]
	bl	__Func_80105d4
	b	.L5be
.L57c:
	mov	r1, #0xe0
	mov	r2, #0x86
	lsl	r1, #14
	lsl	r2, #17
	mov	r0, #0x13
	bl	__Func_80923e4
	mov	r0, #0x13
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x13
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L5be
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #8
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #13
	str	r3, [r0, #0xc]
	sub	r2, #0x32
	mov	r3, #2
	strb	r3, [r2]
	ldr	r3, =0x13333
	str	r3, [r0, #0x18]
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r0, #0x1c]
.L5be:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_939_2008468
	bl	__Func_80041d8
	ldr	r0, =0x201
	bl	__Func_8079374
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_200849c

.thumb_func_start OvlFunc_939_20085f0
	push	{lr}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_8092054
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r3, #0x2e
	mov	r2, #4
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x26
	mov	r1, #0x26
	mov	r2, #1
	mov	r3, #1
	bl	__Func_80105d4
	mov	r3, #0xd
	str	r3, [sp]
	mov	r2, #3
	mov	r0, #0x25
	mov	r1, #0x25
	mov	r3, #3
	str	r2, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xe
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x25
	mov	r1, #0x25
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #7
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #8
	mov	r1, #0x10
	mov	r2, #1
	bl	__Func_8010704
	mov	r0, #0x66
	mov	r1, #0
	mov	r2, #0
	bl	__Func_808edac
	mov	r3, #1
	mov	r2, #0xf
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #2
	mov	r2, #3
	mov	r1, #0x2a
	mov	r0, #0x20
	bl	__Func_80105d4
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079374
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80924d4
	mov	r0, #8
	bl	__Func_8092054
	mov	r3, #0
	str	r3, [r0, #0x6c]
	mov	r0, #8
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c598
	ldr	r0, =OvlFunc_939_2008468
	bl	__Func_8004278
	ldr	r0, =0x201
	bl	__Func_8079358
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20085f0

.thumb_func_start OvlFunc_939_20086bc
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x947
	mov	r1, #1
	bl	__Func_801776c
	ldr	r0, =0x29e1
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20086bc

.thumb_func_start OvlFunc_939_20086e4
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x9f
	cmp	r2, r3
	bne	.L702
	ldr	r0, =0x941
	bl	__Func_8079338
	ldr	r0, =.L23b4
	b	.L718
.L702:
	ldr	r3, =0x68
	cmp	r2, r3
	bne	.L716
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L716
	ldr	r0, =.L21bc
	b	.L718
.L716:
	ldr	r0, =.L1fc4
.L718:
	pop	{r1}
	bx	r1
.func_end OvlFunc_939_20086e4

.thumb_func_start OvlFunc_939_2008738
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0x11
	bl	__Func_80937b8
	ldr	r0, =0x1b9c
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008738

.thumb_func_start OvlFunc_939_2008764
	push	{r5, lr}
	bl	__Func_80916b0
	ldr	r0, =0x85a
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L784
	ldr	r0, =0x1be1
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092f84
	b	.L7d8
.L784:
	ldr	r0, =0x1b9f
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L7d0
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xec
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	ldrh	r2, [r3]
	add	r2, #1
	mov	r1, #0
	strh	r2, [r3]
	mov	r0, #0x12
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L7d0
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L7d0:
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092f84
.L7d8:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008764

.thumb_func_start OvlFunc_939_20087f4
	push	{lr}
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L81e
	ldr	r0, =0x85a
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L80e
	ldr	r0, =0x1be2
	b	.L810
.L80e:
	ldr	r0, =0x1ba5
.L810:
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092f84
	b	.L82c
.L81e:
	ldr	r0, =0x250c
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092f84
.L82c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20087f4

.thumb_func_start OvlFunc_939_2008844
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1ba6
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008844

.thumb_func_start OvlFunc_939_2008864
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1baa
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008864

.thumb_func_start OvlFunc_939_2008884
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1bb0
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008884

.thumb_func_start OvlFunc_939_20088a4
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_80925cc
	ldr	r0, =0x24d1
	bl	__Func_8092b94
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20088a4

.thumb_func_start OvlFunc_939_20088cc
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x24d3
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20088cc

.thumb_func_start OvlFunc_939_20088ec
	push	{r5, lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L906
	ldr	r0, =0x2411
	bl	__Func_8092b94
	b	.L952
.L906:
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L94c
	ldr	r0, =0x94d
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L94c
	mov	r2, #0x3c
	ldr	r1, =0x101
	mov	r0, #8
	bl	__Func_80937b8
	ldr	r5, =0x24db
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	add	r5, #1
	mov	r0, #8
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, r5
	bl	__Func_8092b94
	ldr	r0, =0x9af
	bl	__Func_8079358
	b	.L952
.L94c:
	ldr	r0, =0x1bb5
	bl	__Func_8092b94
.L952:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20088ec

.thumb_func_start OvlFunc_939_2008980
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L99a
	ldr	r0, =0x2412
	bl	__Func_8092b94
	b	.L9b2
.L99a:
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L9ac
	ldr	r0, =0x24dd
	bl	__Func_8092b94
	b	.L9b2
.L9ac:
	ldr	r0, =0x1bb6
	bl	__Func_8092b94
.L9b2:
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008980

.thumb_func_start OvlFunc_939_20089d4
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.La54
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.La54
	ldr	r0, =0x94d
	bl	__Func_8079338
	cmp	r0, #0
	bne	.La54
	ldr	r0, =0x9af
	bl	__Func_8079338
	cmp	r0, #0
	bne	.La36
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xbf
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	strh	r0, [r3]
	bl	__Func_8097608
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #8
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	ldr	r0, =0x24db
	bl	__Func_8092b94
	ldr	r0, =0x9af
	bl	__Func_8079358
	b	.La3c
.La36:
	ldr	r0, =0x24e7
	bl	__Func_8092b94
.La3c:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #8
	mov	r1, #1
	bl	__Func_809259c
	ldr	r0, =0x24dc
	bl	__Func_8092b94
	b	.La5a
.La54:
	ldr	r0, =0x1bbf
	bl	__Func_8092b94
.La5a:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20089d4

.thumb_func_start OvlFunc_939_2008a90
	push	{lr}
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Laa4
	ldr	r0, =0x24e8
	bl	__Func_8092b94
	b	.Laaa
.Laa4:
	ldr	r0, =0x1bc0
	bl	__Func_8092b94
.Laaa:
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008a90

.thumb_func_start OvlFunc_939_2008ac4
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.Lad6
	ldr	r2, =0xfffff
	add	r3, r2
.Lad6:
	ldr	r0, =0x243
	asr	r5, r3, #20
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lafa
	cmp	r5, #0xa
	bne	.Lafa
	ldr	r0, =0x243
	bl	__Func_8079358
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x14
	strh	r2, [r3]
.Lafa:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008ac4

.thumb_func_start OvlFunc_939_2008b0c
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80924d4
	ldr	r0, =0x24cf
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r2, #0x64
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80924d4
	mov	r2, #0xc
	mov	r1, #0
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80924d4
	ldr	r0, =0x243
	bl	__Func_8079374
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008b0c

.thumb_func_start OvlFunc_939_2008b6c
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r7, [r3]
	bl	__Func_80916b0
	mov	r5, #8
	mov	r6, #0
.Lb7a:
	mov	r0, r5
	bl	__Func_8092054
	cmp	r0, #0
	beq	.Lb8a
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
.Lb8a:
	add	r5, #1
	cmp	r5, #0x41
	bls	.Lb7a
	mov	r0, #0x9e
	bl	__Func_80f9080
	mov	r3, #0xb6
	lsl	r3, #1
	add	r6, r7, r3
	mov	r3, #0
	ldrsh	r5, [r6, r3]
	sub	r5, #4
	lsl	r4, r5, #3
	ldr	r0, =.L250c
	add	r3, r4, #4
	ldrh	r1, [r0, r3]
	add	r3, r0
	ldrh	r2, [r3, #2]
	ldr	r0, [r0, r4]
	bl	__Func_8010560
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #8
	mov	r0, #0
	lsl	r2, #7
	bl	__Func_8092064
	mov	r0, #0
	bl	__Func_8092054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80924d4
	cmp	r5, #6
	beq	.Lbec
	mov	r2, #8
	mov	r0, #0
	mov	r1, #2
	neg	r2, r2
	bl	__Func_8092208
	mov	r0, #0xa
	bl	__Func_809163c
.Lbec:
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	bl	__Func_8091e9c
	bl	__Func_8091df4
	bl	__Func_8091e20
	bl	__Func_8091750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008b6c

.thumb_func_start OvlFunc_939_2008c10
	push	{r5, lr}
	ldr	r0, =0x202
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lc5c
	ldr	r0, =0x201
	bl	__Func_8079338
	mov	r5, r0
	cmp	r5, #0
	bne	.Lc5c
	ldr	r2, =0x1999
	ldr	r1, =0x3333
	mov	r0, #0
	bl	__Func_8092064
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80924d4
	mov	r2, #8
	mov	r0, #0
	mov	r1, #2
	neg	r2, r2
	bl	__Func_8092208
	mov	r0, #0xd
	bl	__Func_809163c
	mov	r0, #0xc
	bl	__Func_8091e9c
.Lc5c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008c10

.thumb_func_start OvlFunc_939_2008c74
	push	{r5, r6, lr}
	ldr	r0, =0x242
	sub	sp, #8
	bl	__Func_8079358
	bl	__Func_80916b0
	ldr	r2, =0x1999
	ldr	r1, =0x3333
	mov	r0, #0
	bl	__Func_8092064
	mov	r0, #0
	bl	__Func_8092054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80924d4
	mov	r2, #8
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0
	bl	__Func_80922c4
	mov	r0, #0x9e
	bl	__Func_80f9080
	mov	r5, #0x29
	mov	r6, #4
	mov	r1, #4
	mov	r2, #2
	mov	r3, #2
	mov	r0, #0x35
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #6
	mov	r2, #2
	mov	r3, #2
	mov	r0, #0x35
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #1
	bl	__Func_8091e9c
	bl	__Func_8091df4
	bl	__Func_8091e20
	bl	__Func_8091750
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008c74

.thumb_func_start OvlFunc_939_2008d08
	push	{lr}
	bl	__Func_8093c00
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008d08

.thumb_func_start OvlFunc_939_2008d14
	push	{lr}
	ldr	r0, =0x201
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Ld26
	mov	r0, #0x53
	bl	__Func_80f9080
.Ld26:
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008d14

.thumb_func_start OvlFunc_939_2008d30
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, =0x201
	sub	sp, #8
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Ld46
	b	.Le98
.Ld46:
	ldr	r0, =0x202
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Ld52
	b	.Le98
.Ld52:
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_80923e4
	mov	r0, #0xd2
	bl	__Func_80f9080
	mov	r0, #1
	bl	__Func_80030f8
	mov	r6, #1
	mov	r5, #0xe
	mov	r0, #0x20
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x21
	str	r3, [sp]
	mov	r8, r3
	mov	r0, #0x23
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x2e
	str	r3, [sp, #4]
	mov	r10, r3
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	mov	r0, #0x26
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r0, #0xa
	bl	__Func_80030f8
	mov	r0, #0x29
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	mov	r0, #0x2f
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r0, #0xa
	bl	__Func_80030f8
	mov	r0, #0x32
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x35
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	mov	r0, #0x38
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r0, #0xa
	bl	__Func_80030f8
	mov	r0, #0x20
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x23
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	mov	r0, #0x26
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r0, #0xa
	bl	__Func_80030f8
	mov	r0, #0x29
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r0, #0xa
	bl	__Func_80030f8
	ldr	r0, =0x202
	bl	__Func_8079358
.Le98:
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008d30

.thumb_func_start OvlFunc_939_2008eb0
	push	{r5, lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #8
	cmp	r3, #0
	bne	.Lf8c
	bl	__Func_80916b0
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #2
	bl	__Func_80937b8
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0xf
	mov	r0, #9
	bl	__Func_80937b8
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0x98
	mov	r2, #0xa8
	bl	__Func_809218c
	mov	r2, #0xa8
	mov	r1, #0xa8
	mov	r0, #9
	bl	__Func_809218c
	mov	r0, #8
	bl	__Func_80923c4
	mov	r0, #9
	bl	__Func_80923c4
	mov	r0, #8
	bl	__Func_80920a0
	mov	r0, #8
	mov	r1, #0
	bl	__Func_80924d4
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #9
	bl	__Func_80920a0
	mov	r0, #9
	mov	r1, #0
	bl	__Func_80924d4
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #9
	bl	__Func_8092adc
	ldr	r0, =0x24da
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092f84
	mov	r0, #0x90
	lsl	r0, #2
	bl	__Func_8079358
	mov	r3, #7
	str	r3, [sp]
	mov	r5, #0xb
	mov	r0, #6
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #8
	str	r3, [sp]
	mov	r0, #6
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #9
	str	r3, [sp]
	mov	r0, #6
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	bl	__Func_8091750
.Lf8c:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008eb0

