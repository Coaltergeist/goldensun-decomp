	.include "macros.inc"
	.include "gba.inc"

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
	ble	.Lm971_148_172
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__ClearFlag
.Lm971_148_172:
	mov	r3, #0xc1
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	beq	.Lm971_148_240
	mov	r0, #0
	bl	OvlFunc_971_200808c
	ldr	r0, =0x303
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm971_148_1c0
	ldr	r2, =.L1f4c
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	cmp	r3, #0x19
	ble	.Lm971_148_1c6
	ldr	r7, =Func_80008d4
	ldr	r6, =ewram_2002024
	mov	r5, #3
.Lm971_148_1a2:
	mov	r0, r6
	mov	r1, #0x14
	sub	r5, #1
	bl	_call_via_r7
	add	r6, #0x18
	cmp	r5, #0
	bge	.Lm971_148_1a2
	ldr	r2, =.L1f4c
	mov	r3, #0
	str	r3, [r2]
	mov	r0, #4
	bl	OvlFunc_971_2008128
	b	.Lm971_148_1c6
.Lm971_148_1c0:
	ldr	r2, =.L1f4c
	mov	r3, #0
	str	r3, [r2]
.Lm971_148_1c6:
	ldr	r3, =.L1f4c
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.Lm971_148_216
	mov	r0, #0
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	beq	.Lm971_148_20c
	mov	r0, #1
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	bne	.Lm971_148_1ec
	mov	r0, #2
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	beq	.Lm971_148_20c
.Lm971_148_1ec:
	ldr	r0, =0x201
	bl	__SetFlag
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm971_148_206
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #1
	strh	r3, [r2]
.Lm971_148_206:
	mov	r3, #1
	mov	r10, r3
	b	.Lm971_148_216
.Lm971_148_20c:
	ldr	r0, =0x201
	bl	__ClearFlag
	mov	r2, #0
	mov	r10, r2
.Lm971_148_216:
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm971_148_240
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm971_148_240
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm971_148_240
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #1
	strh	r3, [r2]
.Lm971_148_240:
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm971_148_254
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm971_148_292
.Lm971_148_254:
	ldr	r0, =0x173
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm971_148_292
	mov	r0, #0
	bl	OvlFunc_971_200808c
	cmp	r0, #0
	bne	.Lm971_148_292
	ldr	r3, =.L1f4c
	ldr	r3, [r3]
	cmp	r3, #0x18
	ble	.Lm971_148_292
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
.Lm971_148_292:
	ldr	r0, =0x205
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm971_148_2a6
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #2
	strh	r3, [r2]
.Lm971_148_2a6:
	mov	r0, r10
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2008148
