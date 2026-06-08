	.include "macros.inc"

.thumb_func_start OvlFunc_959_20090a8
	push	{lr}
	mov	r1, #0x84
	mov	r2, #0xc6
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0xea
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, #0xea
	bl	__Func_8091a58
	ldr	r0, =0xf2e
	bl	__Func_8079358
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_20090a8

.thumb_func_start OvlFunc_959_2009108
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L111a
	ldr	r2, =0xfffff
	add	r3, r2
.L111a:
	ldr	r0, [r0, #8]
	asr	r2, r3, #20
	cmp	r0, #0
	bge	.L1126
	ldr	r3, =0xfffff
	add	r0, r3
.L1126:
	sub	r3, r2, #5
	asr	r0, #20
	cmp	r3, #2
	bhi	.L1136
	cmp	r0, #0xa
	bgt	.L1136
	mov	r0, #1
	b	.L1146
.L1136:
	mov	r3, r0
	sub	r3, #8
	cmp	r3, #1
	bhi	.L1144
	mov	r0, #1
	cmp	r2, #0x16
	bgt	.L1146
.L1144:
	mov	r0, #0
.L1146:
	pop	{r1}
	bx	r1
.func_end OvlFunc_959_2009108

.thumb_func_start OvlFunc_959_2009150
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r2, =iwram_3001e70
	mov	r1, #0xb2
	ldr	r3, [r2]
	lsl	r1, #1
	add	r6, r3, r1
	ldr	r3, =iwram_3001e40
	ldr	r2, [r2, #0x4c]
	ldr	r3, [r3]
	mov	r8, r2
	mov	r2, #1
	and	r3, r2
	mov	r10, r0
	cmp	r3, #0
	beq	.L1188
	str	r2, [r6, #0x18]
	str	r2, [r6, #0x1c]
	b	.L1190
.L1188:
	mov	r3, #1
	neg	r3, r3
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
.L1190:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L11b8
	mov	r3, #0xbf
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L11b8
	mov	r3, #0xc0
	lsl	r3, #1
	add	r3, r8
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L11c8
.L11b8:
	mov	r3, r7
	add	r3, #0x5b
	mov	r2, #1
	strb	r2, [r3]
	mov	r3, r10
	add	r3, #0x5b
	strb	r2, [r3]
	b	.L12b8
.L11c8:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L12b8
	mov	r5, r7
	mov	r3, r10
	add	r5, #0x5b
	add	r3, #0x5b
	strb	r0, [r5]
	strb	r0, [r3]
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L120a
	ldrb	r3, [r5]
	cmp	r3, #0
	bne	.L120a
	ldr	r0, [r7, #8]
	bl	OvlFunc_common2_304
	mov	r3, r1
	mov	r2, r0
	ldr	r0, =0x41610000
	ldr	r1, =0
	bl	OvlFunc_common2_28c
	bl	OvlFunc_common2_380
	str	r0, [r6, #0x20]
.L120a:
	bl	OvlFunc_959_2009108
	cmp	r0, #0
	bne	.L12b8
	ldr	r3, =gState
	mov	r2, #0x93
	lsl	r2, #2
	add	r5, r3, r2
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L1272
	mov	r0, #9
	bl	OvlFunc_959_2009918
	cmp	r0, #0
	beq	.L123e
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L123e
	mov	r2, #0xbf
	lsl	r2, #1
	ldr	r3, =0x2092
	add	r2, r8
	b	.L12b6
.L123e:
	mov	r0, #0xa
	bl	OvlFunc_959_2009918
	cmp	r0, #0
	beq	.L1262
	ldr	r3, =gState
	mov	r1, #0x93
	lsl	r1, #2
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L1272
	mov	r2, #0xbf
	lsl	r2, #1
	ldr	r3, =0x2092
	add	r2, r8
	b	.L12b6
.L1262:
	ldr	r3, =gState
	mov	r1, #0x93
	lsl	r1, #2
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L12a2
.L1272:
	mov	r0, #9
	bl	OvlFunc_959_20098e4
	cmp	r0, #0
	beq	.L128a
	ldr	r0, =0x215
	bl	__Func_8079358
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_8079358
.L128a:
	mov	r0, #0xa
	bl	OvlFunc_959_20098e4
	cmp	r0, #0
	beq	.L12a2
	ldr	r0, =0x215
	bl	__Func_8079358
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_8079358
.L12a2:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L12b8
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #0x5b
.L12b6:
	strh	r3, [r2]
.L12b8:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009150

.thumb_func_start OvlFunc_959_20092e0
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #9
	bl	__Func_80920a0
	mov	r2, #0
	mov	r0, #9
	mov	r1, #0
	bl	__Func_809228c
	mov	r0, #9
	mov	r1, #0
	bl	__Func_80924d4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #9
	bl	__Func_80937b8
	mov	r0, #0xa
	bl	OvlFunc_959_2009b24
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_20092e0

.thumb_func_start OvlFunc_959_2009324
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x11
	bl	__MapActor_GetActor
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.L133e
	ldr	r1, =0xfffff
	add	r3, r1
.L133e:
	asr	r2, r3, #20
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L134a
	ldr	r1, =0xfffff
	add	r3, r1
.L134a:
	ldr	r0, [r0, #8]
	asr	r3, #20
	cmp	r0, #0
	bge	.L1356
	ldr	r1, =0xfffff
	add	r0, r1
.L1356:
	asr	r0, #20
	cmp	r2, #0x34
	bne	.L136c
	cmp	r0, #0x39
	bne	.L136c
	cmp	r3, #0x22
	ble	.L136c
	cmp	r3, #0x28
	bgt	.L136c
	mov	r0, #1
	b	.L1380
.L136c:
	cmp	r2, #0x39
	bne	.L137e
	cmp	r0, #0x34
	bne	.L137e
	cmp	r3, #0x22
	ble	.L137e
	mov	r0, #1
	cmp	r3, #0x28
	ble	.L1380
.L137e:
	mov	r0, #0
.L1380:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_959_2009324

.thumb_func_start OvlFunc_959_200938c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x11
	bl	__MapActor_GetActor
	ldr	r2, =iwram_3001e70
	mov	r1, #0xb2
	ldr	r3, [r2]
	ldr	r2, [r2, #0x4c]
	lsl	r1, #1
	add	r6, r3, r1
	mov	r8, r2
	mov	r7, r0
	bl	__Func_8093554
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L13be
	str	r2, [r6, #0x18]
	str	r2, [r6, #0x1c]
	b	.L13c6
.L13be:
	mov	r3, #1
	neg	r3, r3
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
.L13c6:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L13ee
	mov	r3, #0xbf
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L13ee
	mov	r3, #0xc0
	lsl	r3, #1
	add	r3, r8
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L13f8
.L13ee:
	mov	r2, r7
	add	r2, #0x5b
	mov	r3, #1
	strb	r3, [r2]
	b	.L149e
.L13f8:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L149e
	mov	r5, r7
	add	r5, #0x5b
	strb	r0, [r5]
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1430
	ldrb	r3, [r5]
	cmp	r3, #0
	bne	.L1430
	ldr	r2, [r7, #8]
	mov	r3, #0xd0
	lsl	r3, #18
	sub	r3, r2
	str	r3, [r6, #0x20]
	ldr	r2, [r7, #0x10]
	mov	r3, #0x90
	lsl	r3, #18
	sub	r3, r2
	str	r3, [r6, #0x24]
.L1430:
	bl	OvlFunc_959_2009324
	cmp	r0, #0
	bne	.L149e
	mov	r0, #0x11
	bl	OvlFunc_959_2009980
	mov	r0, #0x11
	bl	OvlFunc_959_2009918
	cmp	r0, #0
	beq	.L1460
	ldr	r3, =gState
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L1470
	sub	r2, #0xce
	ldr	r3, =0x2092
	add	r2, r8
	b	.L149c
.L1460:
	ldr	r3, =gState
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.L1488
.L1470:
	mov	r0, #0x11
	bl	OvlFunc_959_20098e4
	cmp	r0, #0
	beq	.L1488
	ldr	r0, =0x215
	bl	__Func_8079358
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_8079358
.L1488:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L149e
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #0x5c
.L149c:
	strh	r3, [r2]
.L149e:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200938c

