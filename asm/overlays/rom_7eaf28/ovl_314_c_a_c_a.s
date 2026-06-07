	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_960_20083ac
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa4
	cmp	r2, r3
	bne	.L3c4
	ldr	r0, =.L1610
	b	.L3da
.L3c4:
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.L3ce
	ldr	r0, =.L16b8
	b	.L3da
.L3ce:
	ldr	r3, =0xa6
	cmp	r2, r3
	bne	.L3d8
	ldr	r0, =.L1790
	b	.L3da
.L3d8:
	ldr	r0, =.L15f8
.L3da:
	pop	{r1}
	bx	r1
.func_end OvlFunc_960_20083ac

.thumb_func_start OvlFunc_960_2008400
	push	{r5, r6, lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001ebc
	ldr	r6, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	lsl	r3, #12
	strh	r3, [r0, #6]
	mov	r0, #0x84
	lsl	r0, #2
	bl	__Func_80793b8
	mov	r5, r0
	cmp	r5, #0
	beq	.L448
	cmp	r5, #1
	bne	.L43a
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0x63
	strh	r3, [r2]
	b	.L448
.L43a:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L448
	sub	r5, #1
.L448:
	mov	r0, #0x84
	lsl	r0, #2
	mov	r1, r5
	bl	__Func_80793c8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008400

.thumb_func_start OvlFunc_960_2008464
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r2, =ewram_2000240
	mov	r3, #0xfa
	mov	r9, r2
	lsl	r3, #1
	add	r3, r9
	ldr	r6, [r3]
	mov	r10, r0
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, r10
	bl	__MapActor_GetActor
	ldr	r0, =0x20f
	bl	__Func_8079338
	mov	r8, r0
	cmp	r0, #0
	bne	.L536
	bl	__Func_80916b0
	mov	r0, r6
	ldr	r1, =0x101
	bl	__Func_8093874
	mov	r0, r6
	mov	r1, #9
	bl	__Func_80924d4
	mov	r0, r10
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L4c2
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r6
	bl	__Func_8092128
.L4c2:
	mov	r0, r6
	bl	__Func_80923c4
	mov	r0, #0xf4
	bl	__Func_80f9080
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_960_2008400
	mov	r7, r5
	bl	__StartTask
	add	r7, #0x55
	mov	r2, r8
	strb	r2, [r7]
	mov	r3, #0x80
	ldr	r2, [r5, #0xc]
	lsl	r3, #14
	ldr	r1, [r5, #8]
	add	r2, r3
	mov	r0, r5
	ldr	r3, [r5, #0x10]
	bl	__Func_800d14c
	mov	r0, r6
	bl	__Func_80923c4
	mov	r2, r8
	str	r2, [r5, #0x28]
	mov	r2, #0xf9
	mov	r3, #4
	lsl	r2, #1
	add	r2, r9
	strb	r3, [r7]
	mov	r3, #2
	strb	r3, [r2]
	ldr	r0, =0x20f
	bl	__Func_8079358
	mov	r0, #0x86
	lsl	r0, #2
	mov	r1, r10
	bl	__Func_80793c8
	mov	r0, #0x84
	lsl	r0, #2
	mov	r1, #0xb4
	bl	__Func_80793c8
	bl	__Func_8091750
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xbe
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, r8
	strh	r2, [r3]
.L536:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008464

