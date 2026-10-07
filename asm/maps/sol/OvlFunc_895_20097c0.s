	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_895_20097c0
	push	{r5, r6, r7, lr}
	sub	sp, #8
	mov	r5, #0x20
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	mov	r6, r0
	mov	r7, #0x64
	mov	r0, #0x7a
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x68
	str	r3, [sp]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x6c
	str	r3, [sp]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x70
	str	r3, [sp]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x74
	str	r3, [sp]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x78
	str	r3, [sp]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	ldr	r0, =0x311
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_1862
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_1890
	mov	r1, #0xc7
	mov	r2, #0x82
	mov	r0, #9
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
	b	.Lm895_1890
.Lm895_1862:
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_1890
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_1890
	mov	r1, #0xcb
	mov	r2, #0x82
	mov	r0, #9
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm895_1890:
	ldr	r0, =0x313
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_18c2
	mov	r3, #0x68
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_18f2
	mov	r1, #0xcf
	mov	r2, #0x82
	mov	r0, #0xa
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
	b	.Lm895_18f2
.Lm895_18c2:
	ldr	r0, =0x312
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_18f2
	mov	r3, #0x68
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_18f2
	mov	r1, #0xd3
	mov	r2, #0x82
	mov	r0, #0xa
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm895_18f2:
	ldr	r0, =0x315
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_1924
	mov	r3, #0x6c
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_1956
	mov	r1, #0xd7
	mov	r2, #0x82
	mov	r0, #0xb
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
	b	.Lm895_1956
.Lm895_1924:
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_1956
	mov	r3, #0x6c
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_1956
	mov	r1, #0xdb
	mov	r2, #0x82
	mov	r0, #0xb
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm895_1956:
	ldr	r0, =0x317
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_1988
	mov	r3, #0x70
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_19b8
	mov	r1, #0xdf
	mov	r2, #0x82
	mov	r0, #0xc
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
	b	.Lm895_19b8
.Lm895_1988:
	ldr	r0, =0x316
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_19b8
	mov	r3, #0x70
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_19b8
	mov	r1, #0xe3
	mov	r2, #0x82
	mov	r0, #0xc
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm895_19b8:
	ldr	r0, =0x319
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_19ea
	mov	r3, #0x74
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_1a1c
	mov	r1, #0xe7
	mov	r2, #0x82
	mov	r0, #0xd
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
	b	.Lm895_1a1c
.Lm895_19ea:
	mov	r0, #0xc6
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_1a1c
	mov	r3, #0x74
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_1a1c
	mov	r1, #0xeb
	mov	r2, #0x82
	mov	r0, #0xd
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm895_1a1c:
	ldr	r0, =0x31b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_1a4e
	mov	r3, #0x78
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_1a7e
	mov	r1, #0xef
	mov	r2, #0x82
	mov	r0, #0xe
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
	b	.Lm895_1a7e
.Lm895_1a4e:
	ldr	r0, =0x31a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_1a7e
	mov	r3, #0x78
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x79
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r6, #0
	beq	.Lm895_1a7e
	mov	r1, #0xf3
	mov	r2, #0x82
	mov	r0, #0xe
	lsl	r1, #19
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm895_1a7e:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_20097c0

