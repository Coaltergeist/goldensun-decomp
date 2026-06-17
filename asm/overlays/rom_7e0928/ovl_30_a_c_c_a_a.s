	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_200804c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xfa
	ldr	r5, [r3]
	ldr	r3, =gState
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r4, r3, #20
	ldr	r3, =.L5484
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.Lfc
	ldr	r3, =.L5480
	ldr	r2, [r3]
	mov	r1, #3
	add	r2, #1
	and	r2, r1
	str	r2, [r3]
	ldr	r3, =.L4c20
	mov	r2, #0xb
	mov	r6, #0x12
	mov	r9, r3
	mov	r10, r2
	mov	r7, #0x21
.L8e:
	ldr	r3, =.L5480
	ldr	r2, [r3]
	mov	r8, r3
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #1
	add	r3, r6, r3
	sub	r3, #0x12
	mov	r2, r9
	ldrsb	r5, [r2, r3]
	mov	r0, r6
	mov	r1, r5
	bl	__MapActor_SetAnim
	mov	r1, r5
	add	r0, r6, #5
	add	r1, #8
	bl	__MapActor_SetAnim
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0x20
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #2
	str	r7, [sp]
	bl	__Func_8010704
	cmp	r5, #7
	beq	.Ldc
	mov	r2, r10
	str	r2, [sp, #4]
	mov	r0, #0x4a
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp]
	bl	__Func_8010704
.Ldc:
	add	r6, #1
	add	r7, #2
	cmp	r6, #0x16
	ble	.L8e
	mov	r3, r8
	ldr	r2, [r3]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r1, =.L4c20
	lsl	r3, #1
	add	r3, #5
	ldrsb	r1, [r1, r3]
	mov	r0, #0x1c
	bl	__MapActor_SetAnim
	b	.L14c
.Lfc:
	ldr	r3, =.L5480
	ldr	r2, [r3]
	mov	r3, #0xc1
	lsl	r3, #1
	add	r3, r5
	mov	r12, r3
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r1, =.L4c20
	ldr	r2, =0x31ffff
	lsl	r3, #1
	ldr	r7, =0x13fffe
	mov	r6, #0x12
	add	r1, r3, r1
	mov	r14, r2
.L11a:
	ldrb	r3, [r1]
	lsl	r3, #24
	asr	r5, r3, #24
	ldr	r3, [r0, #8]
	lsl	r2, r6, #21
	sub	r3, r2
	add	r3, r14
	add	r1, #1
	cmp	r3, r7
	bhi	.L146
	cmp	r4, #0xb
	bne	.L13a
	cmp	r5, #4
	bne	.L13a
	mov	r3, r12
	strh	r5, [r3]
.L13a:
	cmp	r4, #0xc
	bne	.L146
	cmp	r5, #5
	bne	.L146
	mov	r2, r12
	strh	r5, [r2]
.L146:
	add	r6, #1
	cmp	r6, #0x16
	ble	.L11a
.L14c:
	ldr	r2, =.L5484
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	cmp	r3, #0x11
	bls	.L15c
	mov	r3, #0
	str	r3, [r2]
.L15c:
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_200804c

