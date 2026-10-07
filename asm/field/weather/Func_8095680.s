	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8095680  @ 0x08095680
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r5, =gState
	mov	r0, #0x8d
	lsl	r0, #2
	add	r3, r5, r0
	ldrh	r2, [r3]
	mov	r1, #0
	ldrsh	r7, [r3, r1]
	mov	r3, #0xf0
	lsl	r3, #8
	and	r7, r3
	ldr	r3, =0xfff
	mov	r10, r3
	mov	r0, r10
	and	r0, r2
	mov	r10, r0
	ldr	r0, =0x109
	bl	_GetFlag
	cmp	r0, #0
	beq	.L9574c
	cmp	r7, #0
	bne	.L9574c
	ldr	r3, =0x7ff
	mov	r7, #0x80
	mov	r1, r10
	lsl	r7, #4
	and	r7, r1
	and	r1, r3
	ldr	r3, =0xfffffed4
	mov	r10, r1
	add	r3, r10
	cmp	r3, #0x50
	bhi	.L9574c
	ldr	r2, =0x236
	add	r3, r5, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0
	ble	.L9574c
	sub	r2, #0x42
	mov	r1, #8
	add	r2, r5
	mov	r8, r1
	mov	r9, r2
.L956e2:
	mov	r0, r8
	bl	Func_808d394
	mov	r5, r0
	cmp	r5, #0
	beq	.L95742
	mov	r0, #2
	ldrsh	r3, [r5, r0]
	ldr	r2, =0xfffffed4
	sub	r3, #0x30
	add	r2, r10
	cmp	r3, r2
	bne	.L95742
	mov	r0, r8
	bl	GetFieldActor
	mov	r6, r0
	cmp	r6, #0
	beq	.L95742
	cmp	r7, #0
	bne	.L95722
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #3
	str	r7, [r6, #0x14]
	strb	r3, [r2]
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	bl	_Actor_SetPos
	b	.L9573a
.L95722:
	mov	r1, r9
	ldr	r0, [r1]
	bl	GetFieldActor
	ldr	r3, [r0, #0x10]
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0xc]
	ldr	r0, =0xffe00000
	add	r3, r0
	mov	r0, r6
	bl	_Actor_SetPos
.L9573a:
	mov	r0, r6
	mov	r1, #1
	bl	_Actor_SetAnim
.L95742:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0x41
	ble	.L956e2
.L9574c:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8095680

