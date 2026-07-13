	.include "macros.inc"

	.section .text.after, "ax", %progbits

.thumb_func_start CheckEquipmentCritBoost  @ 0x08079cbc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r2, #0x80
	lsl	r2, #2
	sub	sp, #4
	mov	r7, r0
	mov	r6, #0
	mov	r5, #0xd8
	mov	r8, r2
	mov	r1, #0xe
.L79cd2:
	ldrh	r3, [r5, r7]
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.L79cfe
	ldrh	r0, [r5, r7]
	str	r1, [sp]
	bl	GetItemInfo
	ldr	r1, [sp]
	add	r0, #0x18
	mov	r2, #3
.L79cea:
	ldrb	r3, [r0]
	cmp	r3, #0x17
	bne	.L79cf6
	mov	r3, #1
	ldrsb	r3, [r0, r3]
	add	r6, r3
.L79cf6:
	sub	r2, #1
	add	r0, #4
	cmp	r2, #0
	bge	.L79cea
.L79cfe:
	sub	r1, #1
	add	r5, #2
	cmp	r1, #0
	bge	.L79cd2
	cmp	r6, #0
	bge	.L79d0c
	mov	r6, #0
.L79d0c:
	mov	r0, r6
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end CheckEquipmentCritBoost

.thumb_func_start Func_8079d1c  @ 0x08079d1c
	push	{r5, r6, lr}
	ldr	r2, =0x129
	mov	r5, r0
	add	r3, r5, r2
	ldrb	r3, [r3]
	mov	r0, #1
	cmp	r3, #0
	beq	.L79d6c
	mov	r0, r5
	mov	r1, #1
	bl	Func_807882c
	mov	r6, r0
	mov	r0, #1
	cmp	r6, #0
	beq	.L79d6c
	ldrh	r3, [r6, #0xe]
	cmp	r3, #0
	beq	.L79d6c
	mov	r0, r5
	bl	CheckEquipmentCritBoost
	ldrb	r2, [r6, #0xb]
	lsl	r3, r2, #2
	add	r3, r2
	add	r0, r3
	mov	r1, #0x64
	lsl	r0, #16
	bl	__divsi3
	mov	r5, r0
	bl	RPGRandom
	ldr	r3, =0xffff
	and	r0, r3
	cmp	r5, r0
	ble	.L79d6a
	ldrh	r0, [r6, #0xe]
	b	.L79d6c
.L79d6a:
	mov	r0, #1
.L79d6c:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8079d1c

.thumb_func_start Func_8079d7c  @ 0x08079d7c
	push	{lr}
	sub	r0, #8
	cmp	r0, #0x31
	bls	.L79d86
	b	.L79e90
.L79d86:
	ldr	r2, =.L79d90
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L79d90:
	.word	.L79e8c
	.word	.L79e8c
	.word	.L79e90
	.word	.L79e90
	.word	.L79e58
	.word	.L79e58
	.word	.L79e90
	.word	.L79e90
	.word	.L79e5c
	.word	.L79e5c
	.word	.L79e6c
	.word	.L79e6c
	.word	.L79e78
	.word	.L79e7c
	.word	.L79e60
	.word	.L79e64
	.word	.L79e68
	.word	.L79e6c
	.word	.L79e70
	.word	.L79e74
	.word	.L79e8c
	.word	.L79e90
	.word	.L79e90
	.word	.L79e78
	.word	.L79e8c
	.word	.L79e90
	.word	.L79e7c
	.word	.L79e80
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e84
	.word	.L79e88
.L79e58:
	mov	r0, #0x46
	b	.L79e94
.L79e5c:
	mov	r0, #0x4b
	b	.L79e94
.L79e60:
	mov	r0, #0x1e
	b	.L79e94
.L79e64:
	mov	r0, #0x28
	b	.L79e94
.L79e68:
	mov	r0, #0x2d
	b	.L79e94
.L79e6c:
	mov	r0, #0x37
	b	.L79e94
.L79e70:
	mov	r0, #0x19
	b	.L79e94
.L79e74:
	mov	r0, #0x14
	b	.L79e94
.L79e78:
	mov	r0, #0x41
	b	.L79e94
.L79e7c:
	mov	r0, #0x23
	b	.L79e94
.L79e80:
	mov	r0, #0x32
	b	.L79e94
.L79e84:
	mov	r0, #0x3c
	b	.L79e92
.L79e88:
	mov	r0, #0x5a
	b	.L79e92
.L79e8c:
	mov	r0, #0x3c
	b	.L79e94
.L79e90:
	mov	r0, #0x64
.L79e92:
	neg	r0, r0
.L79e94:
	pop	{r1}
	bx	r1
.func_end Func_8079d7c

.thumb_func_start Func_8079e9c  @ 0x08079e9c
	push	{r5, lr}
	mov	r5, r1
	ldr	r1, =0x129
	mov	r2, r0
	add	r3, r2, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79eca
	sub	r1, #1
	add	r3, r2, r1
	ldrb	r0, [r3]
	bl	GetEnemyInfo
	mov	r2, #0
	add	r0, #0x48
.L79eba:
	ldrb	r3, [r0]
	cmp	r3, r5
	beq	.L79ee0
	add	r2, #1
	add	r0, #1
	cmp	r2, #2
	ble	.L79eba
	b	.L79eea
.L79eca:
	ldr	r1, =0x129
	add	r3, r2, r1
	ldrb	r0, [r3]
	bl	GetClassInfo
	mov	r2, #0
	add	r0, #0x50
.L79ed8:
	ldrb	r3, [r0]
	add	r0, #1
	cmp	r3, r5
	bne	.L79ee4
.L79ee0:
	mov	r0, #1
	b	.L79eec
.L79ee4:
	add	r2, #1
	cmp	r2, #2
	ble	.L79ed8
.L79eea:
	mov	r0, #0
.L79eec:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_8079e9c

