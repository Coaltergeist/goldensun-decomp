	.include "macros.inc"

.thumb_func_start OvlFunc_899_200852c
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x856
	bl	__GetFlag
	cmp	r0, #0
	beq	.L572
	ldr	r0, =0x851
	bl	__GetFlag
	cmp	r0, #0
	bne	.L56a
	ldr	r0, =0x1276
	bl	__Func_8092b94
	mov	r0, #0x10
	bl	OvlFunc_899_2008354
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x10
	mov	r1, #3
	mov	r2, #0x14
	bl	OvlFunc_899_200c63c
	ldr	r0, =0x851
	bl	__SetFlag
	b	.L578
.L56a:
	ldr	r0, =0x1278
	bl	__Func_8092b94
	b	.L578
.L572:
	ldr	r0, =0x1250
	bl	__Func_8092b94
.L578:
	mov	r0, #0x10
	bl	OvlFunc_899_2008354
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200852c

.thumb_func_start OvlFunc_899_200859c
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x128e
	bl	__Func_8092b94
	mov	r0, #0x12
	bl	OvlFunc_899_2008354
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200859c

.thumb_func_start OvlFunc_899_20085bc
	push	{r5, lr}
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r1, #2
	mov	r0, #0x18
	bl	__Func_80925cc
	ldr	r0, =0x12ac
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #10
	mov	r0, #0x18
	bl	__Func_8092064
	ldrh	r2, [r5, #6]
	mov	r3, #0xf0
	lsl	r3, #8
	ldr	r1, =0xffffb000
	and	r3, r2
	mov	r2, #0xc0
	add	r3, r1
	lsl	r2, #7
	cmp	r3, r2
	bhi	.L61e
	add	r5, #0x64
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	cmp	r3, #2
	bgt	.L648
	ldr	r2, =.L64a8
	lsl	r3, #2
	ldr	r1, [r2, r3]
	mov	r0, #0x18
	bl	__MapActor_SetBehavior
	ldrh	r3, [r5]
	add	r3, #1
	b	.L658
.L61e:
	add	r5, #0x64
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #2
	ble	.L648
	ldr	r2, =.L64a8
	lsl	r3, #2
	ldr	r1, [r2, r3]
	mov	r0, #0x18
	bl	__MapActor_SetBehavior
	ldrh	r3, [r5]
	add	r3, #1
	b	.L658

	.pool_aligned

.L648:
	ldr	r2, =.L64c0
	lsl	r3, #2
	ldr	r1, [r2, r3]
	mov	r0, #0x18
	bl	__MapActor_SetBehavior
	ldrh	r3, [r5]
	sub	r3, #1
.L658:
	strh	r3, [r5]
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #5
	ble	.L66a
	mov	r3, #0
	strh	r3, [r5]
	ldr	r2, .L678	@ 0
.L66a:
	lsl	r3, r2, #16
	cmp	r3, #0
	bge	.L680
	mov	r3, #5
	strh	r3, [r5]
	b	.L680

	.align	2, 0
.L678:
	.word	0
	.pool

.L680:
	mov	r0, #0x18
	bl	__MapActor_WaitScript
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20085bc

.thumb_func_start OvlFunc_899_2008690
	push	{r5, r6, r7, lr}
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r7, #0xf0
	ldrh	r3, [r0, #6]
	mov	r5, r0
	add	r5, #0x64
	lsl	r7, #8
	and	r7, r3
	ldrh	r3, [r5]
	lsl	r3, #16
	asr	r6, r3, #17
	bl	__CutsceneStart
	mov	r1, #2
	mov	r0, #0x19
	bl	__Func_80925cc
	ldr	r0, =0x12ad
	bl	__Func_8092b94
	mov	r0, #0x19
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xe0
	mov	r2, #0xe0
	mov	r0, #0x19
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r0, #0
	ldrsh	r3, [r5, r0]
	cmp	r3, #4
	bhi	.L78e
	ldr	r2, =.L6e4
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L6e4:
	.word	.L71a
	.word	.L742
	.word	.L71a
	.word	.L742
	.word	.L6f8
.L6f8:
	ldr	r2, =0xffffdfff
	ldr	r0, =0x7ffe
	add	r3, r7, r2
	cmp	r3, r0
	bhi	.L70e
	ldr	r1, =gScript_899__0200d8bc
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	mov	r3, #2
	b	.L78c
.L70e:
	ldr	r1, =gScript_899__0200d858
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	mov	r3, #3
	b	.L78c
.L71a:
	ldr	r2, =0xffffdfff
	ldr	r0, =0x7ffe
	add	r3, r7, r2
	cmp	r3, r0
	bhi	.L76a
	mov	r0, #0
	ldrsh	r2, [r5, r0]
	lsl	r3, r6, #2
	add	r3, r2
	ldr	r1, =.L64d8
	lsl	r3, #2
	ldr	r1, [r1, r3]
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	ldrh	r3, [r5]
	lsl	r2, r6, #1
	sub	r3, r2
	add	r3, #1
	b	.L78c
.L742:
	ldr	r0, =0xffff9fff
	ldr	r2, =0x7ffe
	add	r3, r7, r0
	cmp	r3, r2
	bhi	.L76a
	mov	r0, #0
	ldrsh	r2, [r5, r0]
	lsl	r3, r6, #2
	add	r3, r2
	ldr	r1, =.L64d8
	lsl	r3, #2
	ldr	r1, [r1, r3]
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	ldrh	r3, [r5]
	lsl	r2, r6, #1
	sub	r3, r2
	add	r3, #1
	b	.L78c
.L76a:
	mov	r3, #1
	mov	r0, #0
	ldrsh	r2, [r5, r0]
	eor	r3, r6
	lsl	r3, #2
	add	r3, r2
	ldr	r1, =.L64d8
	lsl	r3, #2
	ldr	r1, [r1, r3]
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	ldrh	r3, [r5]
	lsl	r2, r6, #1
	sub	r3, r2
	ldr	r2, =0xffff
	add	r3, r2
.L78c:
	strh	r3, [r5]
.L78e:
	ldrh	r2, [r5]
	mov	r3, #3
	and	r3, r2
	strh	r3, [r5]
	mov	r0, #0x19
	bl	__MapActor_WaitScript
	bl	__Func_8091750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008690

.thumb_func_start OvlFunc_899_20087cc
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1356
	bl	__Func_8092b94
	mov	r0, #0xa
	bl	OvlFunc_899_20083bc
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20087cc

.thumb_func_start OvlFunc_899_20087ec
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1359
	bl	__Func_8092b94
	mov	r0, #0xb
	bl	OvlFunc_899_2008354
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20087ec

.thumb_func_start OvlFunc_899_200880c
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1368
	bl	__Func_8092b94
	mov	r0, #0xe
	bl	OvlFunc_899_20083bc
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200880c

.thumb_func_start OvlFunc_899_200882c
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x857
	bl	__GetFlag
	cmp	r0, #0
	bne	.L8ca
	ldr	r5, =0x1360
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #0x10
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x10
	mov	r2, #0x14
	bl	OvlFunc_899_200c624
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	bl	__Func_8078500
	cmp	r0, #0
	bne	.L8bc
	add	r0, r5, #3
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	bl	__Func_8091750
	b	.L906
.L8bc:
	ldr	r0, =0x857
	bl	__SetFlag
	mov	r0, #0xbd
	mov	r1, #0
	bl	__Func_8091a58
.L8ca:
	ldr	r0, =0x1364
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092c40
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L8fa
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L8fa:
	mov	r0, #0x10
	mov	r1, #0
	bl	__ActorMessage
	bl	__Func_8091750
.L906:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200882c

.thumb_func_start OvlFunc_899_200891c
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_899_200c624
	ldr	r0, =0x85b
	bl	__GetFlag
	cmp	r0, #0
	bne	.L946
	ldr	r0, =0x137c
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092c40
	b	.L954
.L946:
	ldr	r0, =0x1385
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092c40
.L954:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L9c0
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x12
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__Func_8078500
	cmp	r0, #0
	bne	.L9a8
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1384
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__ActorMessage
	b	.L9ec
.L9a8:
	mov	r0, #0xe7
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0xe7
	mov	r1, #0
	bl	__Func_8091a58
	ldr	r0, =0x85b
	bl	__SetFlag
	b	.L9ec
.L9c0:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #0
	bl	__ActorMessage
.L9ec:
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200891c

