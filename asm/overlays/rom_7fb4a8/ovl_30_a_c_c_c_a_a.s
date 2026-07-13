	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_200808c
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	mov	r5, #1
	and	r3, r2
	mov	r7, r0
	neg	r5, r5
	cmp	r3, #3
	bne	.Lee
	ldr	r3, =REG_SIOCNT
	ldr	r3, [r3]
	ldr	r0, =0x303
	lsl	r3, #26
	lsr	r5, r3, #30
	bl	__SetFlag
	b	.Lf4
.Lb0:
	ldr	r3, =CHAR_ARRAY_ARRAY_971__02009928
	lsl	r2, r7, #2
	add	r6, r2, r3
	cmp	r5, #0
	beq	.Lc2
	ldr	r0, =0x302
	bl	__SetFlag
	b	.Lc8
.Lc2:
	ldr	r0, =0x302
	bl	__ClearFlag
.Lc8:
	ldr	r0, =0x302
	bl	__GetFlag
	mov	r3, #1
	eor	r0, r3
	lsl	r2, r0, #1
	ldr	r3, =ewram_2002024
	add	r2, r0
	lsl	r2, #3
	add	r2, r3
	ldr	r3, =.L1940
	ldrb	r3, [r3, r7]
	lsl	r3, #2
	ldr	r2, [r2, r3]
	ldr	r3, [r6]
	cmp	r2, r3
	bne	.L102
	mov	r0, #1
	b	.L104
.Lee:
	ldr	r0, =0x303
	bl	__ClearFlag
.Lf4:
	cmp	r5, #0
	blt	.L102
	ldr	r0, =0x303
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lb0
.L102:
	mov	r0, #0
.L104:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_200808c

.thumb_func_start OvlFunc_971_2008128
	ldr	r3, =.L1940
	ldr	r2, =CHAR_ARRAY_ARRAY_971__02009928
	lsl	r1, r0, #2
	ldrb	r3, [r3, r0]
	ldr	r4, =ewram_2002224
	ldr	r2, [r1, r2]
	lsl	r3, #2
	str	r2, [r3, r4]
	bx	lr
.func_end OvlFunc_971_2008128

.thumb_func_start OvlFunc_971_2008148
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	mov	r2, #1
	mov	r0, #0
	mov	r8, r3
	mov	r10, r2
	bl	__MapActor_GetActor
	mov	r2, #0xe0
	ldr	r3, [r0, #0x10]
	lsl	r2, #16
	cmp	r3, r2
	ble	.L172
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__ClearFlag
.L172:
	mov	r3, #0xc1
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	beq	.L240
	mov	r0, #0
	bl	OvlFunc_971_200808c
	ldr	r0, =0x303
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1c0
	ldr	r2, =.L1f4c
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	cmp	r3, #0x19
	ble	.L1c6
	ldr	r7, =Func_80008d4
	ldr	r6, =ewram_2002024
	mov	r5, #3
.L1a2:
	mov	r0, r6
	mov	r1, #0x14
	sub	r5, #1
	bl	_call_via_r7
	add	r6, #0x18
	cmp	r5, #0
	bge	.L1a2
	ldr	r2, =.L1f4c
	mov	r3, #0
	str	r3, [r2]
	mov	r0, #4
	bl	OvlFunc_971_2008128
	b	.L1c6
.L1c0:
	ldr	r2, =.L1f4c
	mov	r3, #0
	str	r3, [r2]
.L1c6:
	ldr	r3, =.L1f4c
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L216
	mov	r0, #0
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	beq	.L20c
	mov	r0, #1
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	bne	.L1ec
	mov	r0, #2
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	beq	.L20c
.L1ec:
	ldr	r0, =0x201
	bl	__SetFlag
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	beq	.L206
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #1
	strh	r3, [r2]
.L206:
	mov	r3, #1
	mov	r10, r3
	b	.L216
.L20c:
	ldr	r0, =0x201
	bl	__ClearFlag
	mov	r2, #0
	mov	r10, r2
.L216:
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.L240
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	beq	.L240
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L240
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #1
	strh	r3, [r2]
.L240:
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	bne	.L254
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	beq	.L292
.L254:
	ldr	r0, =0x173
	bl	__GetFlag
	cmp	r0, #0
	bne	.L292
	mov	r0, #0
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	bne	.L292
	ldr	r3, =.L1f4c
	ldr	r3, [r3]
	cmp	r3, #0x18
	ble	.L292
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #2
	strh	r3, [r2]
	ldr	r0, =0x205
	bl	__SetFlag
	ldr	r0, =0x201
	bl	__ClearFlag
	ldr	r0, =0x202
	bl	__ClearFlag
	mov	r0, #4
	bl	OvlFunc_971_2008128
.L292:
	ldr	r0, =0x205
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2a6
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #2
	strh	r3, [r2]
.L2a6:
	mov	r0, r10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2008148

.thumb_func_start OvlFunc_971_20082d8
	push	{lr}
	ldr	r0, =0x203
	bl	__GetFlag
	cmp	r0, #0
	bne	.L32e
	ldr	r2, =.L1f50
	ldr	r3, [r2]
	mov	r1, #0x96
	add	r3, #1
	lsl	r1, #1
	str	r3, [r2]
	cmp	r3, r1
	bne	.L2fe
	str	r0, [r2]
	mov	r0, #0x80
	lsl	r0, #2
	bl	__ClearFlag
.L2fe:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L32e
	bl	__CutsceneStart
	ldr	r0, =0x292e
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #5
	bl	__WaitFrames
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	bl	__CutsceneEnd
.L32e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_20082d8

