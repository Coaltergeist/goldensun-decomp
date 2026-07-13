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
	bl	__MapActor_WaitMovement
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0xea
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r0, #0xea
	bl	__Func_8091a58
	ldr	r0, =0xf2e
	bl	__SetFlag
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_20090a8

	.section .text.after_9108, "ax", %progbits
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
	bl	__GetFlag
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
	bl	__GetFlag
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
	bl	__GetFlag
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
	bl	__SetFlag
	mov	r0, #0x85
	lsl	r0, #2
	bl	__SetFlag
.L128a:
	mov	r0, #0xa
	bl	OvlFunc_959_20098e4
	cmp	r0, #0
	beq	.L12a2
	ldr	r0, =0x215
	bl	__SetFlag
	mov	r0, #0x85
	lsl	r0, #2
	bl	__SetFlag
.L12a2:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__GetFlag
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
