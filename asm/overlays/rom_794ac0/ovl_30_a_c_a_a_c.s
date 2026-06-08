	.include "macros.inc"

.thumb_func_start OvlFunc_899_20082a4
	push	{lr}
	bl	__Func_8091660
	ldr	r0, =0x12bb
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20082a4

.thumb_func_start OvlFunc_899_20082c0
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x92b
	mov	r1, #1
	bl	__Func_801776c
	ldr	r0, =0x94b
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20082c0

.thumb_func_start OvlFunc_899_20082e8
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x929
	mov	r1, #1
	bl	__Func_801776c
	ldr	r0, =0x949
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20082e8

.thumb_func_start OvlFunc_899_2008310
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x11
	bgt	.L32a
	cmp	r3, #0xf
	blt	.L32a
	ldr	r0, =.L61fc
	b	.L33a
.L32a:
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L338
	ldr	r0, =.L6250
	b	.L33a
.L338:
	ldr	r0, =.L5e30
.L33a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_2008310

.thumb_func_start OvlFunc_899_2008354
	push	{r5, lr}
	mov	r5, r0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, r5
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_899_200c624
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008354

.thumb_func_start OvlFunc_899_2008378
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r0
	bl	__MapActor_GetActor
	mov	r3, #0
	mov	r5, r0
	add	r5, #0x5b
	mov	r8, r3
	mov	r3, #1
	strb	r3, [r5]
	bl	__Func_80916b0
	mov	r0, r6
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #2
	bl	__Func_809163c
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	mov	r3, r8
	strb	r3, [r5]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008378

.thumb_func_start OvlFunc_899_20083bc
	push	{r5, lr}
	mov	r5, r0
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_899_200c624
	mov	r1, #0
	mov	r0, r5
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L3ec
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L3ec:
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20083bc

.thumb_func_start OvlFunc_899_2008400
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1247
	bl	__Func_8092b94
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80924d4
	mov	r0, #0xb
	bl	OvlFunc_899_20083bc
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008400

.thumb_func_start OvlFunc_899_2008428
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1253
	bl	__Func_8092b94
	mov	r0, #0xf
	bl	OvlFunc_899_20083bc
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008428

.thumb_func_start OvlFunc_899_2008454
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L476
	mov	r0, #6
	mov	r1, #0x15
	bl	__Func_80b0278
	b	.L49c
.L476:
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L48e
	ldr	r0, =0x1284
	bl	__Func_8092b94
	mov	r0, #0x15
	bl	OvlFunc_899_20083bc
	b	.L49c
.L48e:
	ldr	r0, =0x1374
	bl	__Func_8092b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092f84
.L49c:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008454

.thumb_func_start OvlFunc_899_20084bc
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x855
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L4d4
	ldr	r0, =0x1243
	bl	__Func_8092b94
	b	.L4da
.L4d4:
	ldr	r0, =0x1353
	bl	__Func_8092b94
.L4da:
	mov	r0, #9
	bl	OvlFunc_899_2008354
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20084bc

