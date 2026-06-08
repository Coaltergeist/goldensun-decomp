	.include "macros.inc"

.thumb_func_start OvlFunc_920_200846c
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x31
	cmp	r2, r3
	bne	.L486
	bl	OvlFunc_920_20084b4
	b	.L49c
.L486:
	ldr	r3, =0x30
	cmp	r2, r3
	bne	.L492
	bl	OvlFunc_920_20084e8
	b	.L49c
.L492:
	ldr	r3, =0x2f
	cmp	r2, r3
	bne	.L49c
	bl	OvlFunc_920_2008538
.L49c:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_920_200846c

.thumb_func_start OvlFunc_920_20084b4
	push	{lr}
	ldr	r0, =0x305
	sub	sp, #8
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L4de
	mov	r3, #8
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1f
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r0, #8
	mov	r1, #0
	bl	__Func_80924d4
.L4de:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_20084b4

.thumb_func_start OvlFunc_920_20084e8
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80924d4
	ldr	r0, =0x882
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L51e
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	b	.L52a
.L51e:
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
.L52a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_20084e8

.thumb_func_start OvlFunc_920_2008538
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	mov	r0, #0x12
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x12
	mov	r1, #5
	bl	__Func_80924d4
	mov	r0, #0x13
	mov	r1, #5
	bl	__Func_80924d4
	mov	r0, #0x14
	mov	r1, #5
	bl	__Func_80924d4
	mov	r0, #0x15
	mov	r1, #5
	bl	__Func_80924d4
	mov	r0, #0x16
	mov	r1, #5
	bl	__Func_80924d4
	mov	r0, #0x17
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0x18
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0x19
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0x1a
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80924d4
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80924d4
	mov	r0, #0x12
	bl	OvlFunc_920_2008904
	mov	r0, #0x13
	bl	OvlFunc_920_2008904
	mov	r0, #0x14
	bl	OvlFunc_920_2008904
	mov	r0, #0x15
	bl	OvlFunc_920_2008904
	mov	r0, #0x16
	bl	OvlFunc_920_2008904
	mov	r0, #0x17
	bl	OvlFunc_920_2008904
	mov	r0, #0x18
	bl	OvlFunc_920_2008904
	mov	r0, #0x19
	bl	OvlFunc_920_2008904
	mov	r0, #0x1a
	bl	OvlFunc_920_2008904
	mov	r0, #9
	bl	OvlFunc_920_2008904
	mov	r0, #0xa
	bl	OvlFunc_920_2008904
	mov	r0, #0xb
	bl	OvlFunc_920_2008904
	mov	r0, #0xc
	bl	OvlFunc_920_2008904
	mov	r0, #0xd
	bl	OvlFunc_920_2008904
	mov	r0, #0xe
	bl	OvlFunc_920_2008904
	ldr	r0, =0x883
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L6e8
	mov	r2, #0
	mov	r0, #8
	mov	r1, #0
	bl	__Func_80923e4
	mov	r1, #5
	mov	r0, #0xf
	bl	__Func_80924d4
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	ldr	r3, =0xfffc0000
	str	r3, [r0, #0xc]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_8092b08
	mov	r3, #0x12
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.L704
.L6e8:
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80924d4
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_80924d4
.L704:
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_80924d4
	ldr	r0, =0x302
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L746
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_80924d4
	mov	r3, #0x16
	mov	r5, #0x24
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x18
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #2
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	b	.L774
.L746:
	mov	r0, #0x11
	mov	r1, #5
	bl	__Func_80924d4
	mov	r3, #0x16
	mov	r5, #0x24
	str	r3, [sp, #4]
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x18
	str	r3, [sp, #4]
	mov	r0, #1
	mov	r1, #2
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
.L774:
	ldr	r0, =0x303
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L78a
	mov	r2, #0xbc
	mov	r0, #0xb
	ldr	r1, =0x23a0000
	lsl	r2, #17
	bl	__Func_80923e4
.L78a:
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L7a2
	mov	r2, #0xbc
	mov	r0, #0xc
	ldr	r1, =0x23a0000
	lsl	r2, #17
	bl	__Func_80923e4
.L7a2:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_2008538

