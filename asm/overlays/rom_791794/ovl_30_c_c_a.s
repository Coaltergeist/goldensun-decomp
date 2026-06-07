	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_897_2008f64
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, #0x10
.Lf6e:
	mov	r0, r7
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, r7
	bl	__Func_80920a0
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, r5
	mov	r1, #2
	bl	__Func_800c300
	ldr	r1, [r5, #0x50]
	mov	r0, #0xd
	ldrb	r3, [r1, #9]
	neg	r0, r0
	mov	r2, r0
	and	r3, r2
	mov	r2, r5
	strb	r3, [r1, #9]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x30]
	mov	r3, #0xc0
	lsl	r3, #8
	str	r3, [r5, #0x34]
	ldr	r3, =0x1cccc
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, #0xe8
	lsl	r3, #16
	str	r3, [r5, #8]
	mov	r3, #0xa0
	lsl	r3, #13
	str	r3, [r5, #0xc]
	mov	r3, #0x84
	lsl	r3, #16
	add	r7, #1
	str	r3, [r5, #0x10]
	cmp	r7, #0x1f
	bls	.Lf6e
	mov	r0, #0x91
	bl	__Func_80f9080
	ldr	r1, =Func_8000888
	mov	r7, #0
	mov	r10, r1
.Lfd8:
	mov	r0, r7
	add	r0, #0x10
	bl	__MapActor_GetActor
	mov	r6, r0
	ldr	r0, =0xffffc000
	ldr	r2, [r6, #0x50]
	lsl	r5, r7, #12
	add	r3, r5, r0
	strh	r3, [r2, #0x1e]
	mov	r0, r5
	bl	__Func_800231c
	mov	r1, #0x80
	lsl	r1, #17
	.call_via r10
	mov	r8, r0
	mov	r0, r5
	bl	__Func_8002322
	mov	r1, #0x80
	lsl	r1, #17
	.call_via r10
	ldr	r1, [r6, #8]
	ldr	r3, [r6, #0x10]
	add	r1, r8
	add	r3, r0
	ldr	r2, [r6, #0xc]
	mov	r0, r6
	add	r7, #1
	bl	__Func_800d14c
	cmp	r7, #0xf
	bls	.Lfd8
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x10
	bl	__Func_80923c4
	mov	r1, #0x80
	mov	r3, #0x80
	lsl	r1, #9
	lsl	r3, #24
	mov	r7, #0x10
	mov	r10, r1
	mov	r6, #0
	mov	r8, r3
.L103e:
	mov	r0, r7
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, r7
	bl	__Func_80920a0
	add	r7, #1
	mov	r1, r8
	mov	r0, r10
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
	str	r6, [r5, #8]
	str	r6, [r5, #0xc]
	str	r6, [r5, #0x10]
	str	r6, [r5, #0x24]
	str	r6, [r5, #0x28]
	str	r6, [r5, #0x2c]
	str	r1, [r5, #0x38]
	str	r1, [r5, #0x3c]
	str	r1, [r5, #0x40]
	cmp	r7, #0x1f
	bls	.L103e
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_2008f64

.thumb_func_start OvlFunc_897_2009084
	push	{lr}
	ldr	r2, =.L3b68
	mov	r3, #0x3f
	str	r3, [r2]
	ldr	r3, =.L3b00
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, =.L3b6c
	str	r2, [r3]
	ldr	r2, =.L3b70
	mov	r3, #0x78
	str	r3, [r2]
	ldr	r2, =.L3ac0
	mov	r3, #0
	mov	r1, #0
.L10a2:
	add	r3, #1
	stmia	r2!, {r1}
	cmp	r3, #0xf
	bls	.L10a2
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_2009084

.thumb_func_start OvlFunc_897_20090c4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ec4
	ldr	r5, [r3]
	ldr	r3, =.L3b00
	mov	r1, #0xa
	ldr	r0, [r3]
	sub	sp, #4
	bl	_Func_8000b60
	cmp	r0, #0
	beq	.L10fc
	ldr	r1, =0x40c
	mov	r2, #0
	add	r3, r5, r1
	str	r2, [r3]
	lsl	r1, r0, #16
	mov	r2, #0x80
	mov	r0, r1
	lsl	r2, #9
	bl	__Func_8012330
	b	.L1112
.L10fc:
	ldr	r3, =0x40c
	mov	r0, #1
	add	r2, r5, r3
	mov	r1, #1
	mov	r3, #1
	str	r3, [r2]
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
.L1112:
	ldr	r2, =.L3b00
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L111e
	sub	r3, #3
	str	r3, [r2]
.L111e:
	ldr	r1, =.L3ac0
	mov	r0, #0
	mov	r8, r0
	mov	r10, r1
	mov	r2, #0
.L1128:
	mov	r3, r8
	lsl	r6, r3, #2
	mov	r0, r10
	ldr	r3, [r0, r6]
	cmp	r3, #0
	beq	.L1198
	mov	r0, r8
	add	r0, #0x10
	str	r2, [sp]
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r1, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r1, #24
	ldr	r2, [sp]
	cmp	r3, r1
	bne	.L1198
	ldr	r7, [r5, #0x40]
	cmp	r7, r3
	bne	.L1198
	mov	r0, r10
	ldr	r3, [r0, r6]
	add	r3, #1
	str	r3, [r0, r6]
	cmp	r3, #2
	bne	.L1168
	mov	r0, r5
	mov	r1, #3
	bl	__Func_800c300
	ldr	r2, [sp]
.L1168:
	mov	r1, r10
	ldr	r3, [r1, r6]
	cmp	r3, #0x13
	bne	.L1190
	str	r2, [r5, #8]
	str	r2, [r5, #0xc]
	str	r2, [r5, #0x10]
	str	r2, [r5, #0x24]
	str	r2, [r5, #0x28]
	str	r2, [r5, #0x2c]
	str	r7, [r5, #0x38]
	str	r7, [r5, #0x3c]
	str	r7, [r5, #0x40]
	mov	r0, r5
	mov	r1, #0xf
	str	r2, [sp]
	bl	__Func_80929d8
	ldr	r2, [sp]
	b	.L1198
.L1190:
	cmp	r3, #0x14
	bne	.L1198
	mov	r3, r10
	str	r2, [r3, r6]
.L1198:
	mov	r3, r8
	add	r3, #1
	lsl	r3, #24
	lsr	r3, #24
	mov	r8, r3
	cmp	r3, #0xf
	bls	.L1128
	ldr	r3, =.L3b68
	ldr	r0, =0x3e7
	ldr	r2, [r3]
	cmp	r2, r0
	bne	.L11b2
	b	.L1314
.L11b2:
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	and	r3, r2
	cmp	r3, #0
	beq	.L11be
	b	.L1314
.L11be:
	ldr	r2, =Func_8000888
	mov	r1, #0
	ldr	r6, =.L3ac0
	mov	r8, r1
	mov	r9, r2
.L11c8:
	bl	__Random
	ldr	r1, =0xffff
	bl	_Func_8000b50
	lsl	r0, #16
	asr	r0, #16
	mov	r11, r0
	mov	r0, r8
	add	r0, #0x10
	bl	__MapActor_GetActor
	mov	r3, r8
	lsl	r5, r3, #2
	mov	r7, r0
	ldr	r0, [r6, r5]
	mov	r10, r0
	cmp	r0, #0
	beq	.L11f0
	b	.L1304
.L11f0:
	ldr	r0, =0x246
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1200
	mov	r0, #0xf6
	bl	__Func_80f9080
.L1200:
	mov	r3, #1
	str	r3, [r6, r5]
	mov	r3, r7
	mov	r1, r10
	add	r3, #0x55
	strb	r1, [r3]
	mov	r2, #0x80
	mov	r3, #0x80
	lsl	r2, #12
	lsl	r3, #9
	str	r2, [r7, #0x30]
	str	r3, [r7, #0x34]
	mov	r0, r7
	mov	r1, #0
	bl	__Func_800c528
	ldr	r1, [r7, #0x50]
	mov	r0, #0xd
	ldrb	r3, [r1, #9]
	neg	r0, r0
	mov	r2, r0
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r7
	mov	r1, #2
	bl	__Func_800c300
	mov	r0, r7
	ldr	r1, =.L3a00
	bl	__Func_800c2d8
	mov	r1, r11
	lsl	r6, r1, #16
	lsr	r6, #16
	mov	r0, r6
	bl	__Func_800231c
	mov	r5, r0
	bl	__Random
	mov	r1, r0
	lsl	r1, #8
	lsr	r1, #16
	mov	r2, #0x80
	lsl	r2, #17
	lsl	r1, #16
	mov	r0, r5
	add	r1, r2
	.call_via r9
	ldr	r3, =0x1450000
	add	r0, r3
	str	r0, [r7, #8]
	mov	r0, r10
	str	r0, [r7, #0xc]
	mov	r0, r6
	bl	__Func_8002322
	mov	r5, r0
	bl	__Random
	mov	r1, r0
	lsl	r1, #8
	lsr	r1, #16
	mov	r2, #0x80
	lsl	r2, #17
	lsl	r1, #16
	mov	r0, r5
	add	r1, r2
	.call_via r9
	mov	r3, #0x97
	lsl	r3, #17
	add	r0, r3
	str	r0, [r7, #0x10]
	mov	r0, r6
	bl	__Func_800231c
	mov	r5, r0
	bl	__Random
	mov	r1, r0
	mov	r0, #0x3f
	and	r1, r0
	mov	r2, #0x80
	lsl	r2, #12
	lsl	r1, #16
	mov	r0, r5
	add	r1, r2
	.call_via r9
	mov	r5, r0
	mov	r0, r6
	bl	__Func_8002322
	mov	r6, r0
	bl	__Random
	mov	r3, #0x3f
	mov	r1, r0
	and	r1, r3
	mov	r2, #0x80
	lsl	r2, #12
	lsl	r1, #16
	mov	r0, r6
	add	r1, r2
	.call_via r9
	ldr	r3, =0x1450000
	mov	r1, #0x8f
	add	r5, r3
	lsl	r1, #17
	add	r3, r0, r1
	mov	r2, #0
	mov	r0, r7
	mov	r1, r5
	bl	__Func_800d14c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_80929d8
	ldr	r2, =.L3b00
	mov	r3, #0x1e
	str	r3, [r2]
	b	.L1314
.L1304:
	mov	r3, r8
	add	r3, #1
	lsl	r3, #24
	lsr	r3, #24
	mov	r8, r3
	cmp	r3, #0xf
	bhi	.L1314
	b	.L11c8
.L1314:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_20090c4

.thumb_func_start OvlFunc_897_200935c
	push	{r5, lr}
	ldr	r2, =.L3b70
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L136c
	sub	r3, #1
	str	r3, [r2]
	b	.L13fc
.L136c:
	ldr	r5, =.L3b6c
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L137a
	sub	r3, #1
	str	r3, [r5]
	b	.L1384
.L137a:
	bl	__Random
	lsl	r0, #2
	lsr	r0, #16
	str	r0, [r5]
.L1384:
	ldr	r3, =.L3b6c
	ldr	r2, [r3]
	cmp	r2, #2
	beq	.L13b0
	cmp	r2, #2
	bhi	.L1396
	cmp	r2, #1
	beq	.L13c8
	b	.L13e0
.L1396:
	cmp	r2, #3
	bne	.L13e0
	ldr	r3, =.L3b68
	str	r2, [r3]
	ldr	r5, =.L3b70
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #2
	lsr	r3, #16
	add	r3, #0x28
	b	.L13fa
.L13b0:
	ldr	r2, =.L3b68
	mov	r3, #0xf
	str	r3, [r2]
	ldr	r5, =.L3b70
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	add	r3, #0x50
	b	.L13fa
.L13c8:
	ldr	r2, =.L3b68
	mov	r3, #0x3f
	str	r3, [r2]
	ldr	r5, =.L3b70
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #4
	lsr	r3, #16
	add	r3, #0xa0
	b	.L13fa
.L13e0:
	ldr	r2, =.L3b68
	mov	r3, #0x7f
	str	r3, [r2]
	ldr	r5, =.L3b70
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #5
	mov	r2, #0xa0
	lsr	r3, #16
	lsl	r2, #1
	add	r3, r2
.L13fa:
	str	r3, [r5]
.L13fc:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200935c

.thumb_func_start OvlFunc_897_2009410
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001ec4
	ldr	r3, [r3]
	mov	r0, #0xf
	sub	sp, #8
	mov	r9, r3
	bl	__MapActor_GetActor
	mov	r10, r0
	ldr	r0, =OvlFunc_897_200935c
	bl	__StopTask
	ldr	r2, =.L3b68
	mov	r3, #3
	str	r3, [r2]
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0x11
	bl	__Func_80f9080
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r0, =OvlFunc_897_20090c4
	bl	__StopTask
	mov	r5, #0
.L145e:
	mov	r0, r5
	add	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	add	r3, r5, #1
	lsl	r3, #24
	lsr	r5, r3, #24
	cmp	r5, #0xf
	bls	.L145e
	mov	r0, #1
	bl	__Func_80030f8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_80923e4
	mov	r0, #0
	bl	OvlFunc_897_200a820
	mov	r0, #1
	bl	OvlFunc_897_200a820
	ldr	r3, =0x40c
	mov	r5, #0
	add	r3, r9
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #9
	str	r5, [r3]
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x50
	bl	__Func_809163c
	bl	OvlFunc_897_200ac9c
	bl	__Func_8093554
	mov	r3, r0
	add	r3, #0x55
	strb	r5, [r3]
	mov	r3, #0xe7
	lsl	r3, #16
	str	r3, [r0, #8]
	mov	r3, #0x90
	lsl	r3, #16
	str	r3, [r0, #0x10]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x38]
	str	r3, [r0, #0x3c]
	str	r3, [r0, #0x40]
	str	r5, [r0, #0xc]
	str	r5, [r0, #0x24]
	str	r5, [r0, #0x2c]
	mov	r0, #4
	bl	__Func_80030f8
	bl	__Func_800fe9c
	mov	r0, #4
	bl	__Func_80030f8
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r8, r0
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, r8
	mov	r1, #0xc0
	ldr	r2, [r0, #0x50]
	ldr	r7, [r6, #0x50]
	lsl	r1, #7
.L1528:
	ldrh	r3, [r2, #0x1e]
	mov	r0, #0x80
	lsl	r0, #1
	add	r3, r0
	strh	r3, [r2, #0x1e]
	ldrh	r3, [r7, #0x1e]
	ldr	r0, =0xffffff00
	add	r3, r0
	strh	r3, [r7, #0x1e]
	mov	r0, r8
	ldr	r3, [r0, #8]
	add	r3, r1
	str	r3, [r0, #8]
	ldr	r3, [r6, #8]
	sub	r3, r1
	str	r3, [r6, #8]
	mov	r0, #1
	str	r1, [sp, #4]
	str	r2, [sp]
	bl	__Func_80030f8
	add	r5, #1
	ldr	r1, [sp, #4]
	ldr	r2, [sp]
	cmp	r5, #0x13
	bls	.L1528
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #1
	bl	__Func_8092064
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	mov	r5, #0
	strh	r5, [r3, #0x1e]
	mov	r0, #1
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	mov	r1, #6
	strh	r5, [r3, #0x1e]
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092560
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	mov	r0, #0
	mov	r1, #0xf6
	mov	r2, #0x96
	bl	__Func_8092128
	mov	r2, #0x96
	mov	r0, #1
	mov	r1, #0xdc
	bl	__Func_8092158
	mov	r0, #0
	mov	r1, #2
	bl	__Func_8092b08
	mov	r1, #2
	mov	r0, #1
	bl	__Func_8092b08
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r0, #0
	bl	__Func_80920a0
	mov	r0, #1
	bl	__Func_80920a0
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x90
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #5
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	ldr	r5, =0x10f8
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1696
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	add	r0, r5, #1
	bl	__Func_8092b94
	b	.L16a4
.L1696:
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	add	r0, r5, #2
	bl	__Func_8092b94
.L16a4:
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_8093040
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r0, =0x10fb
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092560
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0
	bl	__Func_80937b8
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #5
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L17c0
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0x80
	lsl	r1, #5
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #4
	bl	__Func_80924d4
	ldr	r0, =0x10fd
	bl	__Func_8092b94
	b	.L1806

	.pool_aligned

.L17c0:
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0x80
	lsl	r1, #5
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #4
	bl	__Func_80924d4
	ldr	r0, =0x10fe
	bl	__Func_8092b94
.L1806:
	mov	r2, #0x28
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x8e
	mov	r1, #1
	mov	r2, #0xb8
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #15
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xfe
	mov	r1, #1
	mov	r2, #0xa2
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #15
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r0, #0x98
	mov	r1, #1
	mov	r2, #0x93
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xc8
	mov	r1, #1
	mov	r2, #0xd7
	lsl	r2, #16
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0x91
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	ldr	r0, =0x1110000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	ldr	r0, =0x10ff
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xf0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xf0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r5, =0x40c
	mov	r0, #0x17
	bl	__Func_80f9080
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0
	bl	OvlFunc_897_200ad48
	add	r5, r9
	mov	r3, #0
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	str	r3, [r5]
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0x28
	mov	r2, #0
	bl	OvlFunc_897_200ad48
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	mov	r0, #0
	mov	r1, #0xf3
	mov	r2, #0x90
	bl	__Func_8092128
	mov	r1, #0xca
	mov	r2, #0x90
	mov	r0, #1
	bl	__Func_8092128
	mov	r0, #0
	bl	__Func_80923c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r3, #1
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	str	r3, [r5]
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_8092064
	mov	r0, #1
	mov	r1, #0xdc
	mov	r2, #0x96
	bl	__Func_809218c
	mov	r2, #0x96
	mov	r0, #0
	mov	r1, #0xf6
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1b4c
	mov	r1, #0x80
	lsl	r1, #5
	mov	r0, #1
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	b	.L1b6c

	.pool_aligned

.L1b4c:
	mov	r1, #0x80
	lsl	r1, #5
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #4
	bl	__Func_80924d4
	ldr	r0, =0x1103
	bl	__Func_8092b94
.L1b6c:
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xdc
	mov	r2, #0x98
	lsl	r1, #15
	lsl	r2, #16
	mov	r0, #0xf
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0xf
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #0xf
	mov	r1, #0xab
	mov	r2, #0x98
	bl	__Func_8092128
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092adc
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Func_800c528
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r0, #1
	mov	r1, #0xd9
	mov	r2, #0xb6
	bl	__Func_809218c
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xd9
	mov	r1, #1
	mov	r2, #0xb0
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_8093874
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092560
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092560
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #4
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0xe7
	mov	r2, #0xaf
	bl	__Func_80921c4
	mov	r1, #0xe0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	ldr	r0, =0x1104
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_8093874
	ldr	r6, =0x40c
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0x14
	mov	r2, #0
	bl	OvlFunc_897_200ad48
	add	r6, r9
	mov	r3, #0
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	str	r3, [r6]
	lsl	r2, #9
	lsl	r1, #9
	lsl	r0, #9
	mov	r8, r3
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_809259c
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r3, #1
	mov	r0, #1
	mov	r1, #1
	str	r3, [r6]
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x64
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0
	bl	OvlFunc_897_200ad48
	mov	r0, r8
	str	r0, [r6]
	mov	r1, #0x80
	mov	r0, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #1
	bl	__Func_8092064
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #4
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092560
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x96
	bl	__Func_8092128
	mov	r1, #0xe7
	mov	r2, #0xb4
	mov	r0, #1
	bl	__Func_8092128
	mov	r0, #1
	bl	__Func_80923c4
	mov	r2, #0
	mov	r1, #0x28
	mov	r0, #0
	bl	OvlFunc_897_200ad48
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r1, #2
	mov	r0, #0
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0x6b
	bl	__Func_80f9080
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_897_200a93c
	bl	__StartTask
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xf
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xba
	mov	r1, #1
	mov	r2, #0xa6
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r1, #0x82
	mov	r2, #0x71
	mov	r0, #0xf
	bl	__Func_8092128
	mov	r0, #0xf
	bl	__Func_80923c4
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r3, r8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	str	r3, [r6]
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_8012330
	mov	r1, #1
	ldr	r0, =0x20119e
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x14
	bl	__Func_809163c
	bl	OvlFunc_897_200aff0
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_8092548
	mov	r5, #0
	b	.L1f78

	.pool_aligned

.L1f78:
	mov	r0, r10
	bl	OvlFunc_897_200ad94
	add	r5, #1
	mov	r0, #1
	bl	__Func_80030f8
	cmp	r5, #0x27
	bls	.L1f78
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_897_200b00c
	bl	__StartTask
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x1e
	bl	__Func_809163c
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =OvlFunc_897_200a93c
	bl	__StopTask
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
	mov	r5, #0xf
.L1fc8:
	mov	r0, #0
	bl	OvlFunc_897_200a84c
	mov	r0, r5
	bl	__Func_80030f8
	mov	r0, #1
	bl	OvlFunc_897_200a84c
	mov	r0, r5
	bl	__Func_80030f8
	mov	r0, #1
	sub	r5, #1
	neg	r0, r0
	cmp	r5, r0
	bne	.L1fc8
	mov	r0, #0
	bl	OvlFunc_897_200a84c
	ldr	r2, =0x40c
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, r5
	ldr	r2, =0xe666
	mov	r1, r5
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r1, #3
	mov	r0, #0xf
	bl	__Func_8092548
	ldr	r0, =OvlFunc_897_200b00c
	bl	__StopTask
	mov	r0, #1
	bl	__Func_80030f8
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092950
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092f84
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xda
	mov	r2, #0xb5
	mov	r3, #1
	lsl	r0, #16
	mov	r1, r5
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xf
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xa9
	mov	r2, #0x97
	mov	r0, #0xf
	bl	__Func_8092128
	mov	r0, #0xf
	bl	__Func_80923c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #5
	mov	r0, #0xf
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xf0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xe0
	mov	r2, #0x9e
	lsl	r2, #16
	mov	r3, #1
	mov	r1, r5
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0
	bl	OvlFunc_897_200a9a4
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092f84
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2164
	mov	r0, #0x28
	bl	__Func_809163c
	b	.L2172

	.pool_aligned

.L2164:
	ldr	r0, =0x110c
	mov	r1, #1
	bl	__Func_801776c
	mov	r0, #0x28
	bl	__Func_809163c
.L2172:
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x90
	ldr	r2, [r0, #0xc]
	lsl	r3, #14
	ldr	r1, [r0, #8]
	add	r2, r3
	ldr	r3, [r0, #0x10]
	mov	r0, #0x16
	bl	__Func_800c150
	mov	r7, r0
	cmp	r7, #0
	beq	.L21f8
	mov	r1, #0xc1
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_80048b0
	ldr	r6, [r7, #0x50]
	mov	r2, r6
	mov	r3, #0
	add	r2, #0x26
	strb	r3, [r2]
	add	r2, #1
	strb	r3, [r2]
	ldrb	r2, [r6, #5]
	sub	r3, #0x21
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	mov	r2, #0xd
	neg	r2, r2
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	mov	r5, r0
	strb	r3, [r6, #9]
	mov	r0, #0xde
	bl	__Func_801a370
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r6, #0x1c]
	bl	__Func_8003fa4
	mov	r0, #0x11
	bl	__Func_8002dd8
	mov	r0, #0
	mov	r1, #0x1c
	bl	__Func_80924d4
	mov	r0, r7
	mov	r1, #3
	bl	__Func_808f140
	mov	r0, #0
	mov	r1, #0x1c
	bl	__Func_80924d4
.L21f8:
	mov	r0, #1
	mov	r1, #0x14
	mov	r2, #0
	bl	OvlFunc_897_200ad48
	ldr	r0, =0x6666
	mov	r6, #0x80
	mov	r5, #0
	mov	r8, r0
	lsl	r6, #9
.L220c:
	mov	r0, r10
	bl	OvlFunc_897_200ad94
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, r10
	bl	OvlFunc_897_200ad94
	mov	r0, #1
	bl	__Func_80030f8
	mov	r3, r8
	str	r3, [r7, #0x18]
	str	r3, [r7, #0x1c]
	mov	r0, r10
	bl	OvlFunc_897_200ad94
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, r10
	bl	OvlFunc_897_200ad94
	add	r5, #1
	mov	r0, #1
	bl	__Func_80030f8
	str	r6, [r7, #0x18]
	str	r6, [r7, #0x1c]
	cmp	r5, #0x17
	bls	.L220c
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8092950
	mov	r1, #0x14
	mov	r2, #0
	mov	r0, #0
	bl	OvlFunc_897_200ad48
	ldr	r0, =0x110d
	bl	__Func_8092b94
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	cmp	r7, #0
	beq	.L2278
	mov	r0, r7
	bl	__Func_800c0f4
.L2278:
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092f84
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0xf
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r6, #0xe8
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	lsl	r6, #1
	bl	__Func_80933d4
	mov	r1, r6
	mov	r0, #0xe8
	bl	OvlFunc_897_200ac1c
	ldr	r5, =0x2c7
	mov	r0, #1
	bl	OvlFunc_897_200a9a4
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, r5
	mov	r1, #0x90
	bl	OvlFunc_897_200ac1c
	mov	r0, #2
	bl	OvlFunc_897_200a9a4
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, r5
	mov	r1, r6
	bl	OvlFunc_897_200ac1c
	mov	r0, #3
	bl	OvlFunc_897_200a9a4
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #5
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r2, =0x1590000
	ldr	r1, =0x2460000
	mov	r0, #1
	bl	__Func_80923e4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xe7
	mov	r2, #0xb4
	mov	r0, #1
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_80030f8
	mov	r0, #0xdb
	mov	r1, #0xab
	bl	OvlFunc_897_200ac1c
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092f84
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r2, =0x40c
	mov	r3, #0
	add	r2, r9
	str	r3, [r2]
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_8012330
	mov	r1, #1
	ldr	r0, =0x20119e
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x6b
	bl	__Func_80f9080
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_897_200a970
	bl	__StartTask
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xb8
	mov	r1, #1
	mov	r2, #0x84
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092560
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #0xf5
	mov	r0, #0
	mov	r2, #0x91
	bl	__Func_8092128
	mov	r1, #0xd7
	mov	r2, #0xa8
	mov	r0, #1
	bl	__Func_8092128
	mov	r0, #1
	bl	__Func_80923c4
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r1, #0xb8
	mov	r2, #0x57
	mov	r0, #0xf
	bl	__Func_8092128
	mov	r0, #0xf
	bl	__Func_80923c4
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_8092548
	mov	r5, #0
.L2490:
	mov	r0, r10
	bl	OvlFunc_897_200ad94
	add	r5, #1
	mov	r0, #1
	bl	__Func_80030f8
	cmp	r5, #0x27
	bls	.L2490
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_897_200b00c
	bl	__StartTask
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x1e
	bl	__Func_809163c
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =OvlFunc_897_200a970
	bl	__StopTask
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r5, #7
.L24e0:
	mov	r0, #0
	bl	OvlFunc_897_200a8dc
	mov	r0, r5
	bl	__Func_80030f8
	mov	r0, #1
	bl	OvlFunc_897_200a8dc
	mov	r0, r5
	bl	__Func_80030f8
	mov	r0, #1
	sub	r5, #1
	neg	r0, r0
	cmp	r5, r0
	bne	.L24e0
	mov	r0, #0
	bl	OvlFunc_897_200a8dc
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #9
	lsl	r1, #9
	bl	__Func_8012330
	mov	r1, #3
	mov	r0, #0xf
	bl	__Func_8092548
	ldr	r0, =OvlFunc_897_200b00c
	bl	__StopTask
	mov	r0, #1
	bl	__Func_80030f8
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092950
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_8012330
	b	.L2578

	.pool_aligned

.L2578:
	mov	r1, #1
	ldr	r0, =0x20119e
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x6b
	bl	__Func_80f9080
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_897_200a93c
	bl	__StartTask
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xf
	mov	r1, #0x7f
	mov	r2, #0x6e
	bl	__Func_8092158
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_8092548
	mov	r5, #0
.L25c8:
	mov	r0, r10
	bl	OvlFunc_897_200ad94
	add	r5, #1
	mov	r0, #1
	bl	__Func_80030f8
	cmp	r5, #0x27
	bls	.L25c8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_897_200b00c
	bl	__StartTask
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #0x1e
	bl	__Func_809163c
	ldr	r0, =OvlFunc_897_200a93c
	bl	__StopTask
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r5, #7
.L2618:
	mov	r0, #0
	bl	OvlFunc_897_200a84c
	mov	r0, r5
	bl	__Func_80030f8
	mov	r0, #1
	bl	OvlFunc_897_200a84c
	mov	r0, r5
	bl	__Func_80030f8
	mov	r3, #1
	sub	r5, #1
	neg	r3, r3
	cmp	r5, r3
	bne	.L2618
	mov	r0, #0
	bl	OvlFunc_897_200a84c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x6b
	bl	__Func_80f9080
	mov	r0, #0x3f
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_8012330
	mov	r1, #1
	ldr	r0, =0x20119e
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x6b
	bl	__Func_80f9080
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_897_200a970
	bl	__StartTask
	mov	r1, #3
	mov	r0, #0xf
	bl	__Func_8092548
	ldr	r5, =OvlFunc_897_200b00c
	mov	r0, r5
	bl	__StopTask
	mov	r0, #1
	bl	__Func_80030f8
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092950
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0xf
	mov	r1, #0xb8
	mov	r2, #0x57
	bl	__Func_8092158
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xf
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xf
	bl	__Func_8092548
	mov	r0, r5
	bl	__StopTask
	mov	r0, #1
	bl	__Func_80030f8
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092950
	mov	r0, #0x8d
	bl	__Func_80f9080
	mov	r0, #0x64
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xf
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r5, #0
.L275c:
	mov	r0, r10
	bl	OvlFunc_897_200ad94
	add	r5, #1
	mov	r0, #1
	bl	__Func_80030f8
	cmp	r5, #0x27
	bls	.L275c
	ldr	r5, =OvlFunc_897_200b00c
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__StartTask
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x64
	bl	__Func_80030f8
	mov	r1, #1
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__Func_80030f8
	mov	r0, r5
	bl	__StopTask
	ldr	r2, =0x40c
	mov	r3, #1
	add	r2, r9
	mov	r0, #1
	mov	r1, #1
	str	r3, [r2]
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	bl	__Func_8012350
	bl	OvlFunc_897_200b000
	ldr	r0, =0x814
	bl	__Func_8079358
	ldr	r0, =0x83f
	bl	__Func_8079358
	mov	r0, #5
	bl	__Func_8091e9c
	mov	r0, #0x80
	lsl	r0, #1
	bl	__Func_8079358
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_2009410

.thumb_func_start OvlFunc_897_200a820
	push	{r5, r6, lr}
	mov	r5, r0
	bl	__MapActor_GetActor
	mov	r1, #0xe8
	mov	r2, #0xfa
	mov	r6, r0
	lsl	r1, #16
	mov	r0, r5
	lsl	r2, #15
	bl	__Func_80923e4
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r6, #6]
	mov	r0, r5
	mov	r1, #3
	bl	__Func_8092b08
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200a820

.thumb_func_start OvlFunc_897_200a84c
	push	{r5, r6, lr}
	sub	sp, #8
	cmp	r0, #0
	beq	.L288a
	mov	r5, #1
	mov	r0, #8
	mov	r1, #0x2f
	mov	r2, #0x40
	mov	r3, #7
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r6, #2
	mov	r0, #7
	mov	r1, #0x30
	mov	r2, #0x3f
	mov	r3, #8
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #7
	mov	r1, #0x31
	mov	r2, #0x3f
	mov	r3, #9
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	b	.L28ce
.L288a:
	mov	r5, #1
	mov	r0, #0x38
	mov	r1, #0
	mov	r2, #0x40
	mov	r3, #7
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x38
	mov	r1, #0
	mov	r2, #0x3f
	mov	r3, #8
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x38
	mov	r1, #0
	mov	r2, #0x3f
	mov	r3, #9
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x3a
	mov	r1, #0x19
	mov	r2, #0x40
	mov	r3, #8
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
.L28ce:
	bl	__Func_800fe9c
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200a84c

.thumb_func_start OvlFunc_897_200a8dc
	push	{r5, lr}
	sub	sp, #8
	cmp	r0, #0
	beq	.L290a
	mov	r5, #2
	mov	r0, #9
	mov	r1, #0x2d
	mov	r2, #0x41
	mov	r3, #5
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r3, #1
	str	r3, [sp]
	mov	r0, #0xb
	mov	r1, #0x2e
	mov	r2, #0x43
	mov	r3, #6
	str	r5, [sp, #4]
	bl	__Func_8010424
	b	.L292e
.L290a:
	mov	r5, #2
	mov	r0, #0x59
	mov	r1, #2
	mov	r2, #0x41
	mov	r3, #5
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r3, #1
	str	r3, [sp]
	mov	r0, #0x66
	mov	r1, #0x20
	mov	r2, #0x43
	mov	r3, #6
	str	r5, [sp, #4]
	bl	__Func_8010424
.L292e:
	bl	__Func_800fe9c
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200a8dc

.thumb_func_start OvlFunc_897_200a93c
	push	{lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L2966
	bl	__Random
	mov	r1, #0x64
	bl	_Func_8000b50
	cmp	r0, #0x32
	bls	.L2960
	mov	r0, #1
	bl	OvlFunc_897_200a84c
	b	.L2966
.L2960:
	mov	r0, #0
	bl	OvlFunc_897_200a84c
.L2966:
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200a93c

.thumb_func_start OvlFunc_897_200a970
	push	{lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.L299a
	bl	__Random
	mov	r1, #0x64
	bl	_Func_8000b50
	cmp	r0, #0x32
	bls	.L2994
	mov	r0, #1
	bl	OvlFunc_897_200a8dc
	b	.L299a
.L2994:
	mov	r0, #0
	bl	OvlFunc_897_200a8dc
.L299a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200a970

.thumb_func_start OvlFunc_897_200a9a4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	mov	r6, #0
.L29b2:
	mov	r0, r6
	add	r0, #0x10
	add	r6, #1
	bl	__Func_8092924
	cmp	r6, #0xf
	bls	.L29b2
	cmp	r7, #1
	beq	.L29d6
	cmp	r7, #1
	bcc	.L29d2
	cmp	r7, #2
	beq	.L29da
	cmp	r7, #3
	beq	.L29e4
	b	.L29ec
.L29d2:
	ldr	r0, =0x4039d2
	b	.L29dc
.L29d6:
	ldr	r0, =0x4049d2
	b	.L29dc
.L29da:
	ldr	r0, =0x404a4e
.L29dc:
	mov	r1, #1
	bl	__Func_8091200
	b	.L29ec
.L29e4:
	ldr	r0, =0x403a52
	mov	r1, #1
	bl	__Func_8091200
.L29ec:
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0xd6
	bl	__Func_80f9080
	ldr	r0, =.L3684
	mov	r6, #0
	mov	r9, r6
	mov	r10, r0
.L2a00:
	mov	r2, r10
	ldr	r1, [r2]
	mov	r3, #0
	ldr	r2, [r2, #4]
	cmp	r7, #1
	beq	.L2a26
	cmp	r7, #1
	bcc	.L2a1a
	cmp	r7, #2
	beq	.L2a30
	cmp	r7, #3
	beq	.L2a3a
	b	.L2a42
.L2a1a:
	mov	r3, #0xe8
	lsl	r3, #16
	add	r1, r3
	mov	r3, #0x90
	lsl	r3, #16
	b	.L2a42
.L2a26:
	mov	r4, #0xe8
	lsl	r4, #16
	mov	r3, #0xe8
	add	r1, r4
	b	.L2a40
.L2a30:
	ldr	r0, =0x2c70000
	mov	r3, #0x90
	add	r1, r0
	lsl	r3, #16
	b	.L2a42
.L2a3a:
	ldr	r3, =0x2c70000
	add	r1, r3
	mov	r3, #0xe8
.L2a40:
	lsl	r3, #17
.L2a42:
	ldr	r4, =.L3b40
	lsl	r5, r6, #2
	mov	r0, r9
	str	r0, [r4, r5]
	mov	r0, #0x8e
	lsl	r0, #1
	mov	r8, r4
	bl	__Func_800c150
	ldr	r3, =.L3b10
	str	r0, [r3, r5]
	mov	r3, r0
	mov	r2, r9
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r1, [r0, #0x50]
	mov	r3, r1
	add	r3, #0x26
	strb	r2, [r3]
	mov	r4, #0xd
	ldrb	r2, [r1, #9]
	neg	r4, r4
	mov	r3, r4
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	strb	r2, [r1, #9]
	mov	r1, #6
	bl	__Func_800c300
	mov	r0, #6
	bl	__Func_80030f8
	add	r6, #1
	mov	r0, #8
	add	r10, r0
	cmp	r6, #9
	bls	.L2a00
	cmp	r7, #0
	bne	.L2aaa
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
.L2aaa:
	mov	r0, #0x14
	bl	__Func_80030f8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_897_200aba0
	bl	__StartTask
	mov	r0, #0xf6
	mov	r5, #1
	bl	__Func_80f9080
	mov	r2, r8
	str	r5, [r2]
	mov	r0, #6
	bl	__Func_80030f8
	mov	r3, r8
	str	r5, [r3, #4]
	mov	r0, #6
	bl	__Func_80030f8
	mov	r4, r8
	str	r5, [r4, #8]
	mov	r0, #6
	bl	__Func_80030f8
	mov	r0, r8
	str	r5, [r0, #0xc]
	mov	r0, #6
	bl	__Func_80030f8
	mov	r2, r8
	str	r5, [r2, #0x10]
	mov	r0, #6
	bl	__Func_80030f8
	mov	r3, r8
	str	r5, [r3, #0x14]
	mov	r0, #6
	bl	__Func_80030f8
	mov	r4, r8
	str	r5, [r4, #0x18]
	mov	r0, #6
	bl	__Func_80030f8
	mov	r0, r8
	str	r5, [r0, #0x1c]
	mov	r0, #6
	bl	__Func_80030f8
	mov	r2, r8
	str	r5, [r2, #0x20]
	mov	r0, #6
	bl	__Func_80030f8
	mov	r3, r8
	str	r5, [r3, #0x24]
	mov	r0, #6
	bl	__Func_80030f8
	mov	r5, r8
.L2b28:
	ldr	r3, [r5]
	mov	r6, #0
	b	.L2b38
.L2b2e:
	add	r6, #1
	cmp	r6, #9
	bhi	.L2b40
	lsl	r3, r6, #2
	ldr	r3, [r5, r3]
.L2b38:
	cmp	r3, #0
	beq	.L2b2e
	mov	r6, #0xde
	lsl	r6, #2
.L2b40:
	mov	r4, #0xde
	lsl	r4, #2
	cmp	r6, r4
	bne	.L2b50
	mov	r0, #1
	bl	__Func_80030f8
	b	.L2b28
.L2b50:
	mov	r0, #0x28
	bl	__Func_80030f8
	ldr	r0, =OvlFunc_897_200aba0
	bl	__StopTask
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200a9a4

.thumb_func_start OvlFunc_897_200aba0
	push	{r5, r6, r7, lr}
	ldr	r2, =.L3b40
	ldr	r3, =.L3b10
	mov	r14, r2
	mov	r5, #0xa0
	ldr	r6, =0x4ccc
	mov	r4, #0
	lsl	r5, #13
	mov	r0, r14
	mov	r12, r3
	mov	r1, #0
.L2bb6:
	mov	r7, r14
	ldr	r3, [r1, r7]
	cmp	r3, #0
	beq	.L2bfe
	mov	r7, r12
	ldr	r2, [r7, r1]
	cmp	r3, #8
	bhi	.L2be4
	ldr	r3, [r2, #0x18]
	ldr	r7, =0xffffe334
	add	r3, r7
	str	r3, [r2, #0x18]
	mov	r7, #0x80
	ldr	r3, [r2, #0x1c]
	lsl	r7, #8
	add	r3, r7
	str	r3, [r2, #0x1c]
	ldr	r3, [r2, #0xc]
	add	r3, r6
	str	r3, [r2, #0xc]
	ldr	r3, [r2, #0x3c]
	add	r3, r6
	b	.L2bee
.L2be4:
	ldr	r3, [r2, #0xc]
	add	r3, r5
	str	r3, [r2, #0xc]
	ldr	r3, [r2, #0x3c]
	add	r3, r5
.L2bee:
	str	r3, [r2, #0x3c]
	ldr	r3, [r0, r1]
	add	r3, #1
	str	r3, [r0, r1]
	cmp	r3, #0xe
	bls	.L2bfe
	mov	r3, #0
	str	r3, [r0, r1]
.L2bfe:
	add	r4, #1
	add	r1, #4
	cmp	r4, #9
	bls	.L2bb6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200aba0

.thumb_func_start OvlFunc_897_200ac1c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r8, r1
	mov	r6, r0
	bl	__Func_8093554
	mov	r3, r8
	lsl	r3, #16
	mov	r8, r3
	lsl	r6, #16
	mov	r1, #1
	mov	r2, r8
	mov	r5, r0
	mov	r3, #1
	mov	r0, r6
	neg	r1, r1
	bl	__Func_80933f8
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__Func_80030f8
	mov	r3, r8
	str	r3, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x40]
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x2c]
	mov	r0, #5
	str	r6, [r5, #8]
	bl	__Func_80030f8
	bl	__Func_800fe9c
	mov	r0, #5
	bl	__Func_80030f8
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x1e
	bl	__Func_80030f8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200ac1c

.thumb_func_start OvlFunc_897_200ac9c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	mov	r3, #0xa
	str	r3, [sp]
	mov	r5, #0
	mov	r0, #0xe
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xb
	str	r3, [sp]
	mov	r0, #0xe
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xc
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xd
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #8
	str	r3, [sp, #4]
	mov	r5, #0xe
	mov	r8, r3
	mov	r0, #0xd
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r6, #0x1c
	mov	r0, #0xd
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r5, #0x2c
	mov	r0, #0x2b
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x2b
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200ac9c

