	.include "macros.inc"

.thumb_func_start Func_8079bf8
	push	{r5, r6, lr}
	mov	r5, r0
	sub	r5, r1
	mov	r6, r2
	mov	r0, r3
	cmp	r5, #0
	bge	.L79c08
	mov	r5, #0
.L79c08:
	mov	r1, #1
	bl	Func_8079b24
	lsl	r3, r6, #1
	add	r3, r5, r3
	mul	r0, r3
	cmp	r0, #0
	bge	.L79c1c
	ldr	r3, =0x1ff
	add	r0, r3
.L79c1c:
	asr	r0, #9
	cmp	r0, #0
	bge	.L79c24
	mov	r0, #0
.L79c24:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8079bf8

.thumb_func_start Func_8079c30
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r0, r1
	mov	r1, #0
	mov	r5, r2
	bl	Func_8079b24
	mov	r3, r6
	mul	r3, r0
	mov	r0, r5
	mul	r0, r3
	cmp	r0, #0
	bge	.L79c4e
	ldr	r3, =0xffff
	add	r0, r3
.L79c4e:
	asr	r0, #16
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8079c30

.thumb_func_start Func_8079c5c
	push	{r5, r6, lr}
	lsl	r1, #1
	sub	r1, #0xc8
	mov	r6, r0
	mov	r0, r1
	mov	r1, #0
	mov	r5, r2
	bl	Func_8079b24
	mov	r3, r6
	mul	r3, r0
	mov	r0, r5
	mul	r0, r3
	cmp	r0, #0
	bge	.L79c7e
	ldr	r3, =0xffff
	add	r0, r3
.L79c7e:
	asr	r0, #16
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8079c5c

.thumb_func_start Func_8079c8c
	push	{lr}
	bl	GetUnit
	ldr	r2, =0x129
	add	r3, r0, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79ca2
	bl	Func_80798b4
	b	.L79cb2
.L79ca2:
	mov	r1, #1
	bl	Func_807882c
	cmp	r0, #0
	beq	.L79cb0
	ldr	r0, [r0, #0x14]
	b	.L79cb2
.L79cb0:
	mov	r0, #4
.L79cb2:
	pop	{r1}
	bx	r1
.func_end Func_8079c8c

.thumb_func_start CheckEquipmentCritBoost
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

.thumb_func_start Func_8079d1c
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

.thumb_func_start Func_8079d7c
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

.thumb_func_start Func_8079e9c
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

.thumb_func_start Func_8079ef8
	push	{lr}
	cmp	r0, #5
	beq	.L79f06
	cmp	r0, #0x38
	beq	.L79f06
	cmp	r0, #0x39
	bne	.L79f0a
.L79f06:
	mov	r0, #1
	b	.L79f0c
.L79f0a:
	mov	r0, #0
.L79f0c:
	pop	{r1}
	bx	r1
.func_end Func_8079ef8

.thumb_func_start Func_8079f10
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r9, r1
	mov	r5, r0
	mov	r0, r9
	mov	r8, r3
	mov	r11, r2
	bl	GetUnit
	mov	r6, r0
	mov	r0, #1
	mov	r10, r0
	mov	r0, r8
	bl	Func_8079ef8
	cmp	r0, #0
	beq	.L79f48
	mov	r1, #0x38
	ldrsh	r3, [r6, r1]
	mov	r0, #0
	cmp	r3, #0
	beq	.L79f48
	b	.L7a0a8
.L79f48:
	mov	r2, r8
	cmp	r2, #3
	bne	.L79f8a
	ldr	r4, =0x131
	add	r3, r6, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L79f8a
	b	.L7a0a6
.L79f5e:
	ldr	r7, =0x13b
	add	r3, r6, r7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79fb2
	mov	r0, #0x9e
	lsl	r0, #1
	add	r3, r6, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79fb2
	ldr	r1, =0x13d
	add	r3, r6, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79fb2
	ldr	r2, =0x141
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79fb2
	b	.L7a0a6
.L79f8a:
	mov	r3, r8
	cmp	r3, #4
	bne	.L79fb2
	mov	r4, #0x9c
	lsl	r4, #1
	add	r3, r6, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79fb2
	ldr	r7, =0x139
	add	r3, r6, r7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79fb2
	mov	r0, #0x9d
	lsl	r0, #1
	add	r3, r6, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L79f5e
.L79fb2:
	ldr	r1, =0x131
	ldr	r7, =0x139
	add	r3, r6, r1
	add	r1, r6, r7
	add	r7, #2
	add	r7, r6
	mov	r4, #0x9c
	lsl	r4, #1
	mov	r12, r7
	mov	r7, #0x9e
	lsl	r7, #1
	add	r2, r6, r4
	add	r4, #2
	add	r0, r6, r4
	add	r4, r6, r7
	mov	r7, r8
	cmp	r7, #0x40
	bne	.L7a022
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L7a022
	ldrb	r3, [r2]
	cmp	r3, #0
	bne	.L7a022
	ldrb	r3, [r1]
	cmp	r3, #0
	bne	.L7a022
	ldrb	r3, [r0]
	cmp	r3, #0
	bne	.L7a022
	mov	r0, r12
	ldrb	r3, [r0]
	cmp	r3, #0
	bne	.L7a022
	ldrb	r3, [r4]
	cmp	r3, #0
	bne	.L7a022
	ldr	r1, =0x13d
	add	r3, r6, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L7a022
	ldr	r2, =0x141
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L7a022
	mov	r4, #0xa0
	lsl	r4, #1
	add	r3, r6, r4
	ldrb	r3, [r3]
	mov	r0, #0
	cmp	r3, #0
	beq	.L7a0a8
.L7a022:
	mov	r7, r8
	cmp	r7, #0x1c
	bne	.L7a034
	ldr	r0, =0x141
	add	r3, r6, r0
	ldrb	r3, [r3]
	mov	r0, #0
	cmp	r3, #1
	beq	.L7a0a8
.L7a034:
	mov	r0, r8
	bl	Func_8079d7c
	mov	r7, r0
	cmp	r7, #0
	ble	.L7a078
	mov	r0, r5
	mov	r1, r11
	bl	Func_807987c
	mov	r1, r11
	mov	r5, r0
	mov	r0, r9
	bl	Func_807987c
	mov	r3, r6
	add	r3, #0x42
	ldrb	r3, [r3]
	sub	r5, r0
	lsr	r3, #1
	sub	r5, r3
	lsl	r3, r5, #1
	add	r3, r5
	mov	r0, r6
	mov	r1, r8
	add	r7, r3
	bl	Func_8079e9c
	cmp	r0, #0
	beq	.L7a07a
	add	r7, #0x19
	b	.L7a07a
.L7a074:
	mov	r0, #1
	b	.L7a0a8
.L7a078:
	neg	r7, r7
.L7a07a:
	mov	r1, r8
	cmp	r1, #0x43
	bne	.L7a084
	mov	r2, #3
	mov	r10, r2
.L7a084:
	mov	r6, #0
	cmp	r6, r10
	bge	.L7a0a6
	ldr	r3, [sp, #0x20]
	mul	r7, r3
.L7a08e:
	mov	r0, r7
	mov	r1, #0x64
	bl	__divsi3
	mov	r5, r0
	bl	RPGRandom2
	cmp	r5, r0
	bge	.L7a074
	add	r6, #1
	cmp	r6, r10
	blt	.L7a08e
.L7a0a6:
	mov	r0, #0
.L7a0a8:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8079f10

.thumb_func_start GetDjinniInfo
	push	{lr}
	mov	r3, #0
	cmp	r0, #3
	bhi	.L7a0e0
	cmp	r1, #0x13
	bhi	.L7a0e0
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #2
	add	r3, r1
.L7a0e0:
	lsl	r0, r3, #1
	add	r0, r3
	ldr	r3, =.L8926c
	lsl	r0, #2
	add	r0, r3
	pop	{r1}
	bx	r1
.func_end GetDjinniInfo

.thumb_func_start Func_807a0f4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	lsl	r3, r7, #2
	add	r3, r7
	mov	r10, r1
	lsl	r3, #2
	add	r3, r10
	add	r3, #0x30
	mov	r11, r3
	ldr	r3, =0x3e7
	mov	r2, #0
	mov	r0, r11
	mov	r9, r2
	mov	r8, r3
	bl	GetFlag
	cmp	r0, #0
	beq	.L7a12a
	mov	r0, #1
	neg	r0, r0
	b	.L7a19a
.L7a12a:
	bl	GetPartySize
	cmp	r9, r0
	bge	.L7a172
	ldr	r3, =gState
	mov	r2, #0xfc
	lsl	r2, #1
	add	r6, r3, r2
	mov	r5, r0
.L7a13c:
	ldrb	r0, [r6]
	bl	GetUnit
	mov	r2, #0x8c
	lsl	r2, #1
	add	r3, r7, r2
	ldrb	r3, [r0, r3]
	cmp	r3, #9
	bhi	.L7a16a
	add	r0, r2
	mov	r1, #0
	mov	r2, #3
.L7a154:
	ldrb	r3, [r0]
	sub	r2, #1
	add	r0, #1
	add	r1, r3
	cmp	r2, #0
	bge	.L7a154
	cmp	r8, r1
	ble	.L7a16a
	ldrb	r3, [r6]
	mov	r8, r1
	mov	r9, r3
.L7a16a:
	sub	r5, #1
	add	r6, #1
	cmp	r5, #0
	bne	.L7a13c
.L7a172:
	ldr	r2, =0x3e7
	cmp	r8, r2
	bne	.L7a17e
	mov	r0, #2
	neg	r0, r0
	b	.L7a19a
.L7a17e:
	mov	r1, r7
	mov	r2, r10
	mov	r0, r9
	bl	GiveDjinni
	mov	r1, r7
	mov	r2, r10
	mov	r0, r9
	bl	Func_807a458
	mov	r0, r11
	bl	SetFlag
	mov	r0, r9
.L7a19a:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_807a0f4

.thumb_func_start GiveDjinni
	push	{r5, r6, r7, lr}
	mov	r5, r1
	mov	r7, r2
	bl	GetUnit
	mov	r3, #0x8c
	lsl	r3, #1
	add	r6, r5, r3
	ldrb	r4, [r0, r6]
	mov	r3, r4
	cmp	r3, #9
	bhi	.L7a1de
	lsl	r3, r5, #2
	mov	r1, r3
	add	r1, #0xf8
	mov	r2, #1
	ldr	r3, [r0, r1]
	lsl	r2, r7
	and	r3, r2
	cmp	r3, #0
	beq	.L7a1e4
.L7a1de:
	mov	r0, #1
	neg	r0, r0
	b	.L7a1f0
.L7a1e4:
	add	r3, r4, #1
	strb	r3, [r0, r6]
	ldr	r3, [r0, r1]
	orr	r3, r2
	str	r3, [r0, r1]
	mov	r0, #0
.L7a1f0:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end GiveDjinni

.thumb_func_start Func_807a1f8
	push	{r5, r6, r7, lr}
	mov	r5, r1
	mov	r6, r2
	mov	r7, r0
	bl	GetUnit
	mov	r2, #0x8c
	lsl	r2, #1
	add	r3, r5, r2
	ldrb	r3, [r0, r3]
	cmp	r3, #0
	beq	.L7a2b2
	mov	r3, #0x8e
	lsl	r3, #1
	add	r2, r5, r3
	ldrb	r3, [r0, r2]
	cmp	r3, #9
	bls	.L7a222
	mov	r3, #0xa
	strb	r3, [r0, r2]
	b	.L7a2b2
.L7a222:
	lsl	r1, r5, #2
	mov	r3, r1
	add	r3, #0xf8
	mov	r2, #1
	ldr	r3, [r0, r3]
	lsl	r2, r6
	and	r3, r2
	cmp	r3, #0
	beq	.L7a2b2
	mov	r4, #0x84
	lsl	r4, #1
	add	r3, r1, r4
	ldr	r3, [r0, r3]
	and	r3, r2
	mov	r0, #0
	cmp	r3, #0
	bne	.L7a2b4
	cmp	r7, #7
	bls	.L7a24a
	mov	r0, #1
.L7a24a:
	bl	Func_8077330
	mov	r2, #0x84
	mov	r3, r0
	lsl	r2, #1
	mov	r1, r3
	add	r3, r2
	ldr	r3, [r3]
	mov	r4, #0
	add	r1, #8
	cmp	r4, r3
	bge	.L7a28c
	ldrb	r3, [r1]
	cmp	r5, r3
	bne	.L7a26e
	ldrb	r3, [r1, #1]
	cmp	r6, r3
	beq	.L7a28c
.L7a26e:
	mov	r2, #0x80
	lsl	r2, #1
	add	r3, r1, r2
	ldr	r3, [r3]
	add	r4, #1
	cmp	r4, r3
	bge	.L7a28c
	lsl	r2, r4, #2
	ldrb	r3, [r1, r2]
	cmp	r5, r3
	bne	.L7a26e
	add	r3, r1, r2
	ldrb	r3, [r3, #1]
	cmp	r6, r3
	bne	.L7a26e
.L7a28c:
	mov	r2, #0x80
	lsl	r2, #1
	add	r3, r1, r2
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L7a2ae
	lsl	r3, r4, #2
	add	r3, r1, r3
	ldrb	r3, [r3, #3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bgt	.L7a2b2
	mov	r4, #2
	neg	r4, r4
	cmp	r3, r4
	beq	.L7a2b2
.L7a2ae:
	mov	r0, #1
	b	.L7a2b4
.L7a2b2:
	mov	r0, #0
.L7a2b4:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_807a1f8

.thumb_func_start Func_807a2bc
	push	{r5, r6, lr}
	mov	r6, r2
	mov	r5, r1
	bl	GetUnit
	mov	r3, #0x84
	lsl	r3, #1
	lsl	r5, #2
	add	r5, r3
	ldr	r3, [r0, r5]
	mov	r2, #1
	lsl	r2, r6
	and	r3, r2
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_807a2bc

.thumb_func_start SetDjinni
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r6, r1
	mov	r8, r2
	bl	GetUnit
	mov	r1, r6
	mov	r5, r0
	mov	r2, r8
	mov	r0, r7
	bl	Func_807a1f8
	mov	r10, r0
	cmp	r0, #0
	beq	.L7a340
	lsl	r2, r6, #2
	mov	r3, r2
	add	r3, #0xf8
	mov	r1, #1
	mov	r0, r8
	ldr	r3, [r5, r3]
	lsl	r1, r0
	and	r3, r1
	cmp	r3, #0
	beq	.L7a32a
	mov	r3, #0x84
	lsl	r3, #1
	add	r2, r3
	ldr	r3, [r5, r2]
	orr	r3, r1
	str	r3, [r5, r2]
	b	.L7a32e
.L7a32a:
	mov	r0, #0
	b	.L7a342
.L7a32e:
	mov	r0, #0x8e
	lsl	r0, #1
	add	r2, r6, r0
	ldrb	r3, [r5, r2]
	add	r3, #1
	strb	r3, [r5, r2]
	mov	r0, r7
	bl	Func_8079ae8
.L7a340:
	mov	r0, r10
.L7a342:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end SetDjinni

.thumb_func_start Func_807a350
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r6, r1
	mov	r10, r2
	bl	GetUnit
	mov	r1, r6
	mov	r5, r0
	mov	r2, r10
	mov	r0, r7
	bl	Func_807a2bc
	mov	r8, r0
	cmp	r0, #0
	beq	.L7a39a
	mov	r3, #0x8e
	lsl	r3, #1
	add	r2, r6, r3
	ldrb	r3, [r5, r2]
	add	r3, #0xff
	strb	r3, [r5, r2]
	mov	r3, #0x84
	lsl	r3, #1
	lsl	r1, r6, #2
	add	r1, r3
	mov	r2, #1
	mov	r3, r10
	lsl	r2, r3
	ldr	r3, [r5, r1]
	bic	r3, r2
	str	r3, [r5, r1]
	mov	r0, r7
	bl	Func_8079ae8
.L7a39a:
	mov	r0, r8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_807a350

.thumb_func_start Func_807a3a8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r1
	mov	r1, #0
	mov	r10, r2
	mov	r9, r1
	mov	r3, #0
	cmp	r0, #7
	bls	.L7a3c2
	mov	r3, #1
.L7a3c2:
	mov	r0, r3
	bl	Func_8077330
	mov	r1, #0x84
	mov	r3, r0
	lsl	r1, #1
	mov	r2, #8
	add	r2, r3
	add	r7, r3, r1
	mov	r12, r2
	ldr	r2, [r7]
	mov	r4, #0
	add	r0, #9
	mov	r5, #0
	mov	r1, r12
	cmp	r9, r2
	bge	.L7a448
	ldrb	r3, [r1]
	mov	r14, r3
	mov	r6, r9
	cmp	r8, r14
	bne	.L7a3fe
	ldrb	r3, [r0]
	cmp	r10, r3
	bne	.L7a3fe
	sub	r3, r2, #1
	mov	r1, #1
	str	r3, [r7]
	mov	r9, r1
	b	.L7a422
.L7a3fe:
	ldr	r2, [r7]
	add	r4, #1
	add	r0, #4
	add	r1, #4
	add	r5, #4
	cmp	r4, r2
	bge	.L7a448
	ldrb	r3, [r1]
	mov	r6, r5
	cmp	r8, r3
	bne	.L7a3fe
	ldrb	r3, [r0]
	cmp	r10, r3
	bne	.L7a3fe
	sub	r3, r2, #1
	str	r3, [r7]
	mov	r2, #1
	mov	r9, r2
.L7a422:
	mov	r3, #0x80
	lsl	r3, #1
	add	r3, r12
	ldr	r3, [r3]
	cmp	r4, r3
	bge	.L7a448
	mov	r2, #0x80
	lsl	r2, #1
	add	r2, r12
	b	.L7a438
.L7a436:
	lsl	r6, r4, #2
.L7a438:
	mov	r1, r12
	add	r3, r6, #4
	ldr	r3, [r1, r3]
	str	r3, [r1, r6]
	ldr	r3, [r2]
	add	r4, #1
	cmp	r4, r3
	blt	.L7a436
.L7a448:
	mov	r0, r9
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_807a3a8

.thumb_func_start Func_807a458
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r1
	mov	r7, r2
	bl	Func_807a3a8
	mov	r0, #0
	cmp	r5, #7
	bls	.L7a46c
	mov	r0, #1
.L7a46c:
	bl	Func_8077330
	mov	r1, #0x84
	mov	r3, r0
	lsl	r1, #1
	add	r0, r3, r1
	ldr	r1, [r0]
	mov	r2, r3
	add	r2, #8
	lsl	r3, r1, #2
	strb	r6, [r2, r3]
	add	r1, #1
	add	r2, r3
	mov	r3, #0xff
	strb	r7, [r2, #1]
	strb	r5, [r2, #2]
	strb	r3, [r2, #3]
	str	r1, [r0]
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_807a458

.thumb_func_start Func_807a498
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r2
	mov	r5, r1
	mov	r11, r3
	sub	sp, #4
	mov	r10, r0
	bl	GetUnit
	mov	r2, #1
	lsl	r3, r5, #2
	mov	r9, r2
	add	r3, #0xf8
	mov	r8, r3
	mov	r3, r9
	lsl	r3, r6
	mov	r2, r8
	mov	r7, r0
	mov	r9, r3
	ldr	r3, [r7, r2]
	mov	r2, r9
	and	r3, r2
	cmp	r3, #0
	beq	.L7a538
	mov	r1, r5
	mov	r2, r6
	mov	r0, r10
	bl	Func_807a2bc
	mov	r1, r5
	str	r0, [sp]
	mov	r2, r6
	mov	r0, r11
	bl	GiveDjinni
	cmp	r0, #0
	bne	.L7a538
	mov	r2, r6
	mov	r0, r10
	mov	r1, r5
	bl	Func_807a350
	mov	r2, r8
	ldr	r3, [r7, r2]
	mov	r2, r9
	bic	r3, r2
	mov	r2, r8
	str	r3, [r7, r2]
	mov	r3, #0x8c
	lsl	r3, #1
	add	r2, r5, r3
	ldrb	r3, [r7, r2]
	add	r3, #0xff
	strb	r3, [r7, r2]
	ldr	r2, [sp]
	cmp	r2, #0
	beq	.L7a520
	mov	r0, r11
	mov	r1, r5
	mov	r2, r6
	bl	SetDjinni
	b	.L7a534
.L7a520:
	mov	r1, r5
	mov	r2, r6
	mov	r0, r10
	bl	Func_807a3a8
	mov	r0, r11
	mov	r1, r5
	mov	r2, r6
	bl	Func_807a458
.L7a534:
	mov	r0, #0
	b	.L7a53c
.L7a538:
	mov	r0, #1
	neg	r0, r0
.L7a53c:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_807a498

.thumb_func_start Func_807a550
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r0, #0
	bl	Func_8077330
	mov	r2, r0
	mov	r1, r2
	mov	r6, #0
	add	r1, #8
	cmp	r5, #0
	beq	.L7a574
	add	r3, r5, #3
	strb	r6, [r3]
	add	r3, r5, #2
	strb	r6, [r3]
	add	r3, r5, #1
	strb	r6, [r3]
	strb	r6, [r5]
.L7a574:
	mov	r3, #0x84
	lsl	r3, #1
	add	r0, r2, r3
	ldr	r3, [r0]
	mov	r4, #0
	cmp	r3, #0
	beq	.L7a5a6
	mov	r7, #1
	neg	r7, r7
.L7a586:
	mov	r3, #3
	ldrsb	r3, [r1, r3]
	cmp	r3, r7
	bne	.L7a59c
	cmp	r5, #0
	beq	.L7a59a
	ldrb	r2, [r1]
	ldrb	r3, [r5, r2]
	add	r3, #1
	strb	r3, [r5, r2]
.L7a59a:
	add	r6, #1
.L7a59c:
	ldr	r3, [r0]
	add	r4, #1
	add	r1, #4
	cmp	r4, r3
	bne	.L7a586
.L7a5a6:
	mov	r0, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_807a550

