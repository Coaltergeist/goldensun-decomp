	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80111b4  @ 0x080111b4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e80
	ldr	r1, [r3]
	sub	sp, #0x24
	str	r1, [sp, #0x14]
	mov	r2, r3
	sub	r2, #0x14
	ldr	r2, [r2]
	str	r2, [sp, #0x10]
	sub	r3, #0x10
	ldr	r6, [r3]
	add	r1, #0xc
	ldr	r2, [r6]
	ldr	r3, [sp, #0x10]
	mov	r10, r1
	mov	r1, #0xc8
	lsl	r1, #4
	str	r2, [sp, #0xc]
	add	r1, r3, r1
	mov	r2, #0xd2
	str	r1, [sp, #8]
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r3, [r3]
	mov	r1, #0xd3
	str	r3, [sp, #4]
	lsl	r1, #2
	add	r3, r6, r1
	ldr	r3, [r3]
	str	r3, [sp]
	bl	Func_80114a0
	ldr	r2, [sp, #0xc]
	cmp	r2, #0
	bne	.L11208
	b	.L112e0
.L11208:
	ldr	r3, [r2, #8]
	mov	r8, r3
	ldr	r3, [r6, #4]
	ldr	r7, [r2]
	cmp	r3, #0
	beq	.L1123a
	bl	Random
	mov	r5, r0
	bl	Random
	ldr	r4, [r6, #4]
	mov	r1, r0
	ldr	r3, =Func_8000888
	mov	r0, r4
	sub	r1, r5, r1
	.call_via r3
	add	r7, r0
	ldr	r1, [r6, #0xc]
	mov	r0, r4
	.call_via r3
	str	r0, [r6, #4]
.L1123a:
	ldr	r3, [r6, #8]
	cmp	r3, #0
	beq	.L11266
	bl	Random
	mov	r5, r0
	bl	Random
	ldr	r4, [r6, #8]
	mov	r1, r0
	ldr	r3, =Func_8000888
	mov	r0, r4
	sub	r1, r5, r1
	.call_via r3
	add	r8, r0
	ldr	r1, [r6, #0xc]
	mov	r0, r4
	.call_via r3
	str	r0, [r6, #8]
.L11266:
	mov	r0, r7
	cmp	r7, #0
	bge	.L11270
	ldr	r1, =0xfffff
	add	r0, r7, r1
.L11270:
	asr	r4, r0, #20
	mov	r0, r8
	cmp	r0, #0
	bge	.L1127c
	ldr	r0, =0xfffff
	add	r0, r8
.L1127c:
	mov	r2, #0xe4
	add	r2, r6
	ldr	r1, [r2]
	mov	r11, r2
	mov	r3, r1
	mov	r2, #0x80
	eor	r3, r7
	lsl	r2, #13
	asr	r0, #20
	and	r3, r2
	mov	r9, r0
	cmp	r3, #0
	beq	.L112ac
	cmp	r1, r7
	bge	.L112a4
	mov	r0, r4
	add	r0, #0x10
	bl	Func_8011164
	b	.L112ac
.L112a4:
	mov	r0, r4
	sub	r0, #0x10
	bl	Func_8011164
.L112ac:
	mov	r5, r6
	add	r5, #0xe8
	ldr	r1, [r5]
	mov	r2, r8
	mov	r3, r1
	eor	r3, r2
	mov	r2, #0x80
	lsl	r2, #13
	and	r3, r2
	cmp	r3, #0
	beq	.L112d8
	cmp	r1, r8
	bge	.L112d0
	mov	r0, r9
	add	r0, #0xc
	bl	Func_80110e0
	b	.L112d8
.L112d0:
	mov	r0, r9
	sub	r0, #0x12
	bl	Func_80110e0
.L112d8:
	mov	r3, r11
	mov	r1, r8
	str	r7, [r3]
	str	r1, [r5]
.L112e0:
	ldr	r2, =gPhysVec
	mov	r3, #0x78
	str	r3, [r2, #0xc]
	mov	r3, #0x60
	str	r3, [r2, #0x10]
	ldr	r2, [sp]
	lsr	r1, r2, #31
	add	r1, r2, r1
	ldr	r0, [sp, #4]
	asr	r1, #1
	lsl	r2, #1
	bl	Func_8005258
	ldr	r2, [sp, #0xc]
	ldmia	r2!, {r3}
	mov	r1, r2
	str	r1, [sp, #0xc]
	mov	r7, #0
	mov	r1, r10
	str	r3, [r1]
	str	r7, [r1, #4]
	ldr	r3, [r2, #4]
	str	r3, [r1, #8]
	bl	InitMatrixStack
	mov	r0, r10
	bl	MatrixTranslatev
	mov	r2, #0x8d
	lsl	r2, #1
	add	r3, r6, r2
	ldrh	r0, [r3]
	bl	MatrixYaw
	mov	r3, #0x8c
	lsl	r3, #1
	add	r6, r3
	ldrh	r0, [r6]
	bl	MatrixPitch
	add	r0, sp, #0x18
	str	r7, [r0]
	str	r7, [r0, #4]
	ldr	r1, [sp]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r1, r2
	str	r3, [r0, #8]
	ldr	r1, [sp, #0x14]
	ldr	r3, =Func_80009c0
	bl	_call_via_r3
	bl	InitMatrixStack
	mov	r1, r10
	ldr	r0, [sp, #0x14]
	bl	MatrixSetLook
	ldr	r3, =iwram_3001af4
	ldrh	r0, [r6]
	mov	r8, r3
	ldr	r3, [r3]
	cmp	r3, r0
	beq	.L11388
	bl	cos
	mov	r5, r0
	ldrh	r0, [r6]
	bl	sin
	ldr	r3, =Func_80008ac
	mov	r1, r0
	mov	r0, r5
	bl	_call_via_r3
	mov	r1, r10
	ldr	r2, [sp, #0x10]
	bl	Func_80123f4
	ldr	r3, =iwram_3001f60
	str	r7, [r3]
	ldrh	r3, [r6]
	mov	r1, r8
	str	r3, [r1]
.L11388:
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	ldr	r1, =gPtrs
	lsl	r3, r2, #2
	add	r3, r2
	ldr	r2, [sp, #8]
	add	r1, #0xb8
	lsl	r3, #10
	add	r3, r2, r3
	ldr	r4, [r1]
	ldr	r2, [sp, #0x10]
	ldr	r0, [sp, #0x14]
	mov	r1, r10
	bl	_call_via_r4
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80111b4
