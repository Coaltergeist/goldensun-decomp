	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ActorCmd_Camera  @ 0x0800daf0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	ldr	r1, [r3]
	mov	r3, r1
	add	r3, #0xec
	ldr	r3, [r3]
	mov	r2, #0xf0
	lsl	r2, #15
	mov	r8, r0
	add	r7, r3, r2
	ldr	r0, [r0, #0x68]
	mov	r3, r1
	add	r3, #0xf0
	ldr	r2, [r0, #0xc]
	ldr	r3, [r3]
	mov	r4, #0xc0
	add	r3, r2
	lsl	r4, #15
	add	r6, r3, r4
	mov	r3, r1
	add	r3, #0xf4
	ldr	r3, [r3]
	ldr	r5, =0xff880000
	add	r4, r3, r5
	mov	r3, r1
	add	r3, #0xf8
	ldr	r3, [r3]
	add	r3, r2
	ldr	r2, =0xffc00000
	add	r1, r3, r2
	mov	r2, r8
	add	r2, #0x55
	mov	r3, #0
	sub	sp, #8
	strb	r3, [r2]
	cmp	r0, #0
	bne	.Ldb48
	b	.Ldca0
.Ldb48:
	ldr	r3, [r0]
	cmp	r3, #0
	bne	.Ldb50
	b	.Ldca0
.Ldb50:
	ldr	r3, [r0, #8]
	ldr	r5, [r0, #0xc]
	mov	r11, r3
	ldr	r0, [r0, #0x10]
	mov	r3, #0x80
	lsl	r3, #24
	mov	r2, r8
	str	r0, [sp, #4]
	str	r3, [r2, #0x38]
	str	r3, [r2, #0x3c]
	str	r3, [r2, #0x40]
	cmp	r11, r7
	bge	.Ldb6c
	mov	r11, r7
.Ldb6c:
	ldr	r3, [sp, #4]
	cmp	r3, r6
	bge	.Ldb74
	str	r6, [sp, #4]
.Ldb74:
	cmp	r11, r4
	ble	.Ldb7a
	mov	r11, r4
.Ldb7a:
	ldr	r4, [sp, #4]
	cmp	r4, r1
	ble	.Ldb82
	str	r1, [sp, #4]
.Ldb82:
	mov	r3, r8
	add	r3, #0x64
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.Ldb9c
	mov	r4, r8
	mov	r3, r11
	str	r3, [r4, #8]
	str	r5, [r4, #0xc]
	ldr	r5, [sp, #4]
	str	r5, [r4, #0x10]
	b	.Ldca0
.Ldb9c:
	mov	r2, r8
	ldr	r3, [r2, #8]
	mov	r4, r11
	sub	r0, r4, r3
	cmp	r0, #0
	bge	.Ldbac
	ldr	r2, =0xffff
	add	r0, r2
.Ldbac:
	mov	r2, r8
	ldr	r3, [r2, #0x10]
	ldr	r4, [sp, #4]
	asr	r0, #16
	mov	r10, r0
	sub	r0, r4, r3
	cmp	r0, #0
	bge	.Ldbc0
	ldr	r2, =0xffff
	add	r0, r2
.Ldbc0:
	asr	r6, r0, #16
	mov	r3, r10
	mov	r0, r10
	mul	r0, r3
	mov	r3, r6
	mul	r3, r6
	add	r0, r3
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	mov	r4, r8
	ldr	r3, [r4, #8]
	mov	r2, r11
	sub	r2, r3
	ldr	r3, [r4, #0xc]
	sub	r5, r3
	mov	r9, r5
	ldr	r3, [r4, #0x10]
	mov	r5, #0x80
	ldr	r4, [sp, #4]
	lsl	r7, r0, #16
	lsl	r5, #15
	mov	r10, r2
	sub	r6, r4, r3
	cmp	r7, r5
	bge	.Ldc16
	ldr	r4, =Func_8000888
	mov	r0, r10
	mov	r1, r10
	.call_via r4
	mov	r3, r0
	mov	r1, r6
	mov	r0, r6
	.call_via r4
	add	r3, r0
	mov	r0, r3
	bl	FastIntSqrtFP1616_RAM 
	mov	r7, r0
.Ldc16:
	mov	r1, r7
	cmp	r7, #0
	bge	.Ldc1e
	add	r1, r7, #7
.Ldc1e:
	mov	r2, r8
	ldr	r3, [r2, #0x30]
	asr	r5, r1, #3
	cmp	r5, r3
	ble	.Ldc2a
	mov	r5, r3
.Ldc2a:
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r7, r3
	bge	.Ldc3e
	mov	r5, r8
	mov	r4, r11
	str	r4, [r5, #8]
	ldr	r2, [sp, #4]
	str	r2, [r5, #0x10]
	b	.Ldc7c
.Ldc3e:
	cmp	r7, r5
	ble	.Ldc6e
	ldr	r3, =Func_80008ac
	mov	r1, r10
	mov	r11, r3
	mov	r0, r7
	bl	_call_via_r11
	ldr	r3, =Func_8000888
	mov	r1, r5
	.call_via r3
	mov	r1, r6
	str	r3, [sp]
	mov	r10, r0
	mov	r0, r7
	bl	_call_via_r11
	mov	r1, r5
	ldr	r3, [sp]
	.call_via r3
	mov	r6, r0
.Ldc6e:
	mov	r4, r8
	ldr	r3, [r4, #8]
	add	r3, r10
	str	r3, [r4, #8]
	ldr	r3, [r4, #0x10]
	add	r3, r6
	str	r3, [r4, #0x10]
.Ldc7c:
	mov	r3, r9
	cmp	r3, #0
	bge	.Ldc84
	neg	r3, r3
.Ldc84:
	mov	r5, #0x80
	lsl	r5, #8
	cmp	r3, r5
	ble	.Ldc98
	mov	r3, r9
	cmp	r3, #0
	bge	.Ldc94
	add	r3, #3
.Ldc94:
	asr	r3, #2
	mov	r9, r3
.Ldc98:
	mov	r2, r8
	ldr	r3, [r2, #0xc]
	add	r3, r9
	str	r3, [r2, #0xc]
.Ldca0:
	mov	r4, r8
	ldrh	r3, [r4, #4]
	mov	r5, r8
	add	r3, #1
	mov	r0, #1
	strh	r3, [r5, #4]
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end ActorCmd_Camera
