	.include "macros.inc"

.thumb_func_start OvlFunc_946_2009bbc
	push	{r5, r6, r7, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #8
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xc
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xf
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #0x13
	bne	.Lm946_1c18
	cmp	r5, #0x18
	bne	.Lm946_1bf4
	mov	r2, #0x50
	b	.Lm946_1c36
.Lm946_1bf4:
	cmp	r3, #0x18
	bne	.Lm946_1c08
	mov	r2, #0x70
	neg	r2, r2
	mov	r0, #8
	mov	r1, #0
	bl	OvlFunc_946_2009774
	mov	r2, #0x20
	b	.Lm946_1c36
.Lm946_1c08:
	mov	r2, #0x50
	neg	r2, r2
	mov	r0, #8
	mov	r1, #0
	bl	OvlFunc_946_2009774
	mov	r2, #0x70
	b	.Lm946_1c36
.Lm946_1c18:
	cmp	r6, #0xe
	bne	.Lm946_1c2c
	cmp	r5, #0x18
	beq	.Lm946_1c7a
	cmp	r3, #0x18
	bne	.Lm946_1c28
	mov	r2, #0x40
	b	.Lm946_1c36
.Lm946_1c28:
	mov	r2, #0x70
	b	.Lm946_1c36
.Lm946_1c2c:
	cmp	r6, #0xa
	bne	.Lm946_1c42
	cmp	r3, #0x18
	beq	.Lm946_1c7a
	mov	r2, #0x30
.Lm946_1c36:
	neg	r2, r2
	mov	r0, #8
	mov	r1, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_1c48
.Lm946_1c42:
	bl	OvlFunc_946_2009b14
	b	.Lm946_1c7a
.Lm946_1c48:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r6
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
.Lm946_1c7a:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009bbc

.thumb_func_start OvlFunc_946_2009c84
	push	{r5, r6, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #8
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xc
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #7
	bne	.Lm946_1cd0
	cmp	r3, #0x18
	bne	.Lm946_1cba
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x30
	bl	OvlFunc_946_2009774
	b	.Lm946_1cf2
.Lm946_1cba:
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x50
	bl	OvlFunc_946_2009774
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x70
	bl	OvlFunc_946_2009774
	b	.Lm946_1cf2
.Lm946_1cd0:
	cmp	r6, #0xa
	bne	.Lm946_1ce4
	cmp	r3, #0x18
	beq	.Lm946_1d24
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x90
	bl	OvlFunc_946_2009774
	b	.Lm946_1cf2
.Lm946_1ce4:
	cmp	r6, #0xe
	bne	.Lm946_1d24
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x50
	bl	OvlFunc_946_2009774
.Lm946_1cf2:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r6
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
.Lm946_1d24:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009c84

.thumb_func_start OvlFunc_946_2009d2c
	push	{r5, r6, r7, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xa
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xd
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xf
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #0x12
	bne	.Lm946_1d82
	sub	r3, #0x1f
	cmp	r3, #2
	bhi	.Lm946_1d66
	mov	r2, #0x80
	b	.Lm946_1d96
.Lm946_1d66:
	mov	r3, r5
	sub	r3, #0x1f
	cmp	r3, #2
	bhi	.Lm946_1d72
	mov	r2, #0x80
	b	.Lm946_1d96
.Lm946_1d72:
	mov	r2, #0x70
	neg	r2, r2
	mov	r0, #0xa
	mov	r1, #0
	bl	OvlFunc_946_2009774
	mov	r2, #0x40
	b	.Lm946_1d96
.Lm946_1d82:
	cmp	r6, #0xa
	bne	.Lm946_1da2
	sub	r3, #0x1f
	cmp	r3, #2
	bls	.Lm946_1dd8
	mov	r3, r5
	sub	r3, #0x1f
	cmp	r3, #2
	bls	.Lm946_1dd8
	mov	r2, #0x30
.Lm946_1d96:
	neg	r2, r2
	mov	r0, #0xa
	mov	r1, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_1da6
.Lm946_1da2:
	cmp	r6, #7
	beq	.Lm946_1dd8
.Lm946_1da6:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r6
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
.Lm946_1dd8:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009d2c

.thumb_func_start OvlFunc_946_2009de0
	push	{r5, r6, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xa
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r6, r3, #20
	cmp	r6, #0x12
	beq	.Lm946_1e52
	cmp	r6, #0xa
	bne	.Lm946_1e0c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x80
	bl	OvlFunc_946_2009774
	b	.Lm946_1e20
.Lm946_1e0c:
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x70
	bl	OvlFunc_946_2009774
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x40
	bl	OvlFunc_946_2009774
.Lm946_1e20:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r6
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
.Lm946_1e52:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009de0

.thumb_func_start OvlFunc_946_2009e5c
	push	{r5, r6, lr}
	mov	r0, #0xb
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xb
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r5, r3, #20
	cmp	r6, #0x1e
	beq	.Lm946_1eec
	cmp	r6, #0x22
	bne	.Lm946_1e8e
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x12
	beq	.Lm946_1eec
	mov	r1, #0x40
	b	.Lm946_1ea2
.Lm946_1e8e:
	cmp	r6, #0x24
	bne	.Lm946_1eba
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x12
	bne	.Lm946_1eae
	mov	r1, #0x20
.Lm946_1ea2:
	neg	r1, r1
	mov	r0, #0xb
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_1eba
.Lm946_1eae:
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #0xb
	mov	r2, #0
	bl	OvlFunc_946_2009774
.Lm946_1eba:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.Lm946_1eec:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009e5c

.thumb_func_start OvlFunc_946_2009ef4
	push	{r5, r6, lr}
	mov	r0, #0xb
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xb
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r5, r3, #20
	cmp	r6, #0x24
	beq	.Lm946_1f6e
	cmp	r6, #0x1e
	bne	.Lm946_1f2e
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x12
	beq	.Lm946_1f6e
	mov	r0, #0xb
	mov	r1, #0x60
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_1f3c
.Lm946_1f2e:
	cmp	r6, #0x22
	bne	.Lm946_1f3c
	mov	r0, #0xb
	mov	r1, #0x20
	mov	r2, #0
	bl	OvlFunc_946_2009774
.Lm946_1f3c:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.Lm946_1f6e:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009ef4

.thumb_func_start OvlFunc_946_2009f78
	push	{r5, r6, r7, lr}
	mov	r0, #0xc
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xc
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r7, r3, #20
	cmp	r6, #0x24
	bne	.Lm946_1fa8
	mov	r5, #0x60
	neg	r5, r5
	mov	r0, #0xc
	mov	r1, r5
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xc
	mov	r1, r5
	b	.Lm946_1fbe
.Lm946_1fa8:
	cmp	r6, #0x22
	bne	.Lm946_1fc6
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #0xc
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r1, #0x40
	neg	r1, r1
	mov	r0, #0xc
.Lm946_1fbe:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_1fca
.Lm946_1fc6:
	cmp	r6, #0x18
	beq	.Lm946_1ffc
.Lm946_1fca:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.Lm946_1ffc:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009f78

.thumb_func_start OvlFunc_946_200a004
	push	{r5, r6, lr}
	mov	r0, #0xc
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xc
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r5, r3, #20
	cmp	r6, #0x18
	bne	.Lm946_2030
	mov	r0, #0xc
	mov	r1, #0x60
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xc
	mov	r1, #0x60
	b	.Lm946_2038
.Lm946_2030:
	cmp	r6, #0x22
	bne	.Lm946_2040
	mov	r0, #0xc
	mov	r1, #0x20
.Lm946_2038:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_2044
.Lm946_2040:
	cmp	r6, #0x24
	beq	.Lm946_2076
.Lm946_2044:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.Lm946_2076:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a004

.thumb_func_start OvlFunc_946_200a080
	push	{r5, r6, r7, lr}
	mov	r0, #0xd
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xd
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xa
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xf
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #0x24
	bne	.Lm946_20d8
	cmp	r3, #0x22
	bne	.Lm946_20b8
	mov	r1, #0x10
	b	.Lm946_2122
.Lm946_20b8:
	cmp	r5, #7
	bne	.Lm946_20c0
	mov	r1, #0x20
	b	.Lm946_2122
.Lm946_20c0:
	cmp	r3, #0x1e
	bne	.Lm946_20c8
	mov	r1, #0x50
	b	.Lm946_2122
.Lm946_20c8:
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #0xd
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r1, #0x50
	b	.Lm946_2122
.Lm946_20d8:
	cmp	r6, #0x23
	bne	.Lm946_2104
	cmp	r3, #0x22
	beq	.Lm946_2164
	cmp	r5, #7
	bne	.Lm946_20e8
	mov	r1, #0x10
	b	.Lm946_2122
.Lm946_20e8:
	cmp	r3, #0x1e
	bne	.Lm946_20f0
	mov	r1, #0x40
	b	.Lm946_2122
.Lm946_20f0:
	mov	r5, #0x50
	neg	r5, r5
	mov	r0, #0xd
	mov	r1, r5
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xd
	mov	r1, r5
	b	.Lm946_2126
.Lm946_2104:
	cmp	r6, #0x22
	bne	.Lm946_2118
	cmp	r5, #7
	beq	.Lm946_2164
	cmp	r3, #0x1e
	bne	.Lm946_2114
	mov	r1, #0x30
	b	.Lm946_2122
.Lm946_2114:
	mov	r1, #0x90
	b	.Lm946_2122
.Lm946_2118:
	cmp	r6, #0x1f
	bne	.Lm946_212e
	cmp	r3, #0x1e
	beq	.Lm946_2164
	mov	r1, #0x60
.Lm946_2122:
	neg	r1, r1
	mov	r0, #0xd
.Lm946_2126:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_2132
.Lm946_212e:
	cmp	r6, #0x19
	beq	.Lm946_2164
.Lm946_2132:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.Lm946_2164:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a080

.thumb_func_start OvlFunc_946_200a16c
	push	{r5, r6, lr}
	mov	r0, #0xd
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xd
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xf
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	cmp	r6, #0x19
	bne	.Lm946_219e
	mov	r0, #0xd
	mov	r1, #0x60
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xd
	mov	r1, #0x50
	b	.Lm946_21ba
.Lm946_219e:
	cmp	r6, #0x1f
	bne	.Lm946_21a8
	mov	r0, #0xd
	mov	r1, #0x50
	b	.Lm946_21ba
.Lm946_21a8:
	cmp	r6, #0x22
	bne	.Lm946_21b2
	mov	r0, #0xd
	mov	r1, #0x20
	b	.Lm946_21ba
.Lm946_21b2:
	cmp	r6, #0x23
	bne	.Lm946_21c2
	mov	r0, #0xd
	mov	r1, #0x10
.Lm946_21ba:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_21c6
.Lm946_21c2:
	cmp	r6, #0x24
	beq	.Lm946_21f8
.Lm946_21c6:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.Lm946_21f8:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a16c

.thumb_func_start OvlFunc_946_200a200
	push	{r5, r6, r7, lr}
	mov	r0, #0xf
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xf
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #8
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xa
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r6, #0x23
	bne	.Lm946_2250
	cmp	r3, #7
	bne	.Lm946_2238
	mov	r1, #0x10
	b	.Lm946_227e
.Lm946_2238:
	cmp	r5, #7
	bne	.Lm946_2240
	mov	r1, #0x70
	b	.Lm946_227e
.Lm946_2240:
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #0xf
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r1, #0x50
	b	.Lm946_227e
.Lm946_2250:
	cmp	r6, #0x22
	bne	.Lm946_2268
	cmp	r3, #7
	beq	.Lm946_22c0
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #0xf
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r1, #0x40
	b	.Lm946_227e
.Lm946_2268:
	cmp	r6, #0x21
	bne	.Lm946_2270
	mov	r1, #0x90
	b	.Lm946_227e
.Lm946_2270:
	cmp	r6, #0x1f
	bne	.Lm946_2278
	mov	r1, #0x50
	b	.Lm946_227e
.Lm946_2278:
	cmp	r6, #0x1e
	bne	.Lm946_228a
	mov	r1, #0x60
.Lm946_227e:
	neg	r1, r1
	mov	r0, #0xf
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_228e
.Lm946_228a:
	cmp	r6, #0x18
	beq	.Lm946_22c0
.Lm946_228e:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xf
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.Lm946_22c0:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a200

.thumb_func_start OvlFunc_946_200a2c8
	push	{r5, r6, r7, lr}
	mov	r0, #0xf
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xf
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xa
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xd
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #0x18
	bne	.Lm946_233e
	cmp	r5, #7
	beq	.Lm946_2300
	cmp	r3, #0x1f
	bne	.Lm946_2306
.Lm946_2300:
	mov	r0, #0xf
	mov	r1, #0x60
	b	.Lm946_237e
.Lm946_2306:
	cmp	r3, #0x22
	bne	.Lm946_231a
	mov	r0, #0xf
	mov	r1, #0x40
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xf
	mov	r1, #0x50
	b	.Lm946_237e
.Lm946_231a:
	cmp	r3, #0x23
	bne	.Lm946_232e
	mov	r0, #0xf
	mov	r1, #0x50
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xf
	mov	r1, #0x50
	b	.Lm946_237e
.Lm946_232e:
	mov	r0, #0xf
	mov	r1, #0x50
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xf
	mov	r1, #0x60
	b	.Lm946_237e
.Lm946_233e:
	cmp	r6, #0x1e
	beq	.Lm946_2346
	cmp	r3, #0x1f
	bne	.Lm946_2364
.Lm946_2346:
	cmp	r5, #7
	beq	.Lm946_23bc
	cmp	r3, #0x22
	bne	.Lm946_2354
	mov	r0, #0xf
	mov	r1, #0x30
	b	.Lm946_237e
.Lm946_2354:
	cmp	r3, #0x23
	bne	.Lm946_235e
	mov	r0, #0xf
	mov	r1, #0x40
	b	.Lm946_237e
.Lm946_235e:
	mov	r0, #0xf
	mov	r1, #0x50
	b	.Lm946_237e
.Lm946_2364:
	cmp	r6, #0x21
	bne	.Lm946_2376
	cmp	r3, #0x22
	beq	.Lm946_23bc
	cmp	r3, #0x23
	beq	.Lm946_237a
	mov	r0, #0xf
	mov	r1, #0x20
	b	.Lm946_237e
.Lm946_2376:
	cmp	r6, #0x22
	bne	.Lm946_2386
.Lm946_237a:
	mov	r0, #0xf
	mov	r1, #0x10
.Lm946_237e:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_238a
.Lm946_2386:
	cmp	r6, #0x23
	beq	.Lm946_23bc
.Lm946_238a:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xf
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.Lm946_23bc:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a2c8

.thumb_func_start OvlFunc_946_200a3c4
	push	{r5, r6, lr}
	mov	r0, #0x11
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x11
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x13
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #0x13
	bne	.Lm946_23f8
	sub	r3, #3
	cmp	r3, #2
	bhi	.Lm946_23f4
	mov	r2, #0x10
	b	.Lm946_2404
.Lm946_23f4:
	mov	r2, #0x40
	b	.Lm946_2404
.Lm946_23f8:
	cmp	r6, #0x12
	bne	.Lm946_2410
	sub	r3, #3
	cmp	r3, #2
	bls	.Lm946_2446
	mov	r2, #0x30
.Lm946_2404:
	neg	r2, r2
	mov	r0, #0x11
	mov	r1, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_2414
.Lm946_2410:
	cmp	r6, #0xf
	beq	.Lm946_2446
.Lm946_2414:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0x11
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r6
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
.Lm946_2446:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a3c4

.thumb_func_start OvlFunc_946_200a450
	push	{r5, r6, lr}
	mov	r0, #0x11
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x11
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r6, r3, #20
	cmp	r6, #0xf
	bne	.Lm946_2478
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x40
	bl	OvlFunc_946_2009774
	b	.Lm946_248c
.Lm946_2478:
	cmp	r6, #0x12
	bne	.Lm946_2488
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x10
	bl	OvlFunc_946_2009774
	b	.Lm946_248c
.Lm946_2488:
	cmp	r6, #0x13
	beq	.Lm946_24be
.Lm946_248c:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0x11
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r6
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
.Lm946_24be:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a450

.thumb_func_start OvlFunc_946_200a4c8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x12
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x12
	asr	r3, #20
	mov	r8, r3
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x13
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xe
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x10
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r2, r3, #20
	cmp	r6, #0x13
	bne	.Lm946_2536
	sub	r3, r7, #6
	cmp	r3, #2
	bhi	.Lm946_2512
	mov	r2, #0x10
	b	.Lm946_259e
.Lm946_2512:
	sub	r3, r5, #6
	cmp	r3, #2
	bhi	.Lm946_251c
	mov	r2, #0x40
	b	.Lm946_259e
.Lm946_251c:
	sub	r3, r2, #6
	cmp	r3, #2
	bhi	.Lm946_2526
	mov	r2, #0x70
	b	.Lm946_259e
.Lm946_2526:
	mov	r2, #0x40
	neg	r2, r2
	mov	r0, #0x12
	mov	r1, #0
	bl	OvlFunc_946_2009774
	mov	r2, #0x60
	b	.Lm946_259e
.Lm946_2536:
	cmp	r6, #0x12
	bne	.Lm946_2558
	sub	r3, r7, #6
	cmp	r3, #2
	bls	.Lm946_25e2
	sub	r3, r5, #6
	cmp	r3, #2
	bhi	.Lm946_254a
	mov	r2, #0x30
	b	.Lm946_259e
.Lm946_254a:
	sub	r3, r2, #6
	cmp	r3, #2
	bhi	.Lm946_2554
	mov	r2, #0x60
	b	.Lm946_259e
.Lm946_2554:
	mov	r2, #0x90
	b	.Lm946_259e
.Lm946_2558:
	cmp	r6, #0xf
	bne	.Lm946_2570
	sub	r3, r5, #6
	cmp	r3, #2
	bls	.Lm946_25e2
	sub	r3, r2, #6
	cmp	r3, #2
	bhi	.Lm946_256c
	mov	r2, #0x30
	b	.Lm946_259e
.Lm946_256c:
	mov	r2, #0x60
	b	.Lm946_259e
.Lm946_2570:
	cmp	r6, #0xe
	bne	.Lm946_2584
	sub	r3, r5, #6
	cmp	r3, #2
	bls	.Lm946_25e2
	sub	r3, r2, #6
	cmp	r3, #2
	bls	.Lm946_259c
	mov	r2, #0x50
	b	.Lm946_259e
.Lm946_2584:
	cmp	r6, #0xc
	bne	.Lm946_2592
	sub	r3, r2, #6
	cmp	r3, #2
	bls	.Lm946_25e2
	mov	r2, #0x30
	b	.Lm946_259e
.Lm946_2592:
	cmp	r6, #0xb
	bne	.Lm946_25aa
	sub	r3, r2, #6
	cmp	r3, #2
	bls	.Lm946_25e2
.Lm946_259c:
	mov	r2, #0x20
.Lm946_259e:
	neg	r2, r2
	mov	r0, #0x12
	mov	r1, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_25ae
.Lm946_25aa:
	cmp	r6, #9
	beq	.Lm946_25e2
.Lm946_25ae:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r5, r8
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r6
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
.Lm946_25e2:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a4c8

.thumb_func_start OvlFunc_946_200a5f0
	push	{r5, r6, r7, lr}
	mov	r0, #0x12
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x12
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x13
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xe
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, #9
	bne	.Lm946_2642
	sub	r3, #6
	cmp	r3, #2
	bls	.Lm946_2674
	sub	r3, r5, #6
	cmp	r3, #2
	bls	.Lm946_2696
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x40
	bl	OvlFunc_946_2009774
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x60
	bl	OvlFunc_946_2009774
	b	.Lm946_26c6
.Lm946_2642:
	cmp	r6, #0xb
	bne	.Lm946_266a
	sub	r3, #6
	cmp	r3, #2
	bls	.Lm946_26f8
	sub	r3, r5, #6
	cmp	r3, #2
	bhi	.Lm946_265e
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x30
	bl	OvlFunc_946_2009774
	b	.Lm946_26c6
.Lm946_265e:
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x80
	bl	OvlFunc_946_2009774
	b	.Lm946_26c6
.Lm946_266a:
	cmp	r6, #0xc
	bne	.Lm946_268c
	sub	r3, r5, #6
	cmp	r3, #2
	bhi	.Lm946_2680
.Lm946_2674:
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x20
	bl	OvlFunc_946_2009774
	b	.Lm946_26c6
.Lm946_2680:
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x70
	bl	OvlFunc_946_2009774
	b	.Lm946_26c6
.Lm946_268c:
	cmp	r6, #0xe
	bne	.Lm946_26a2
	sub	r3, r5, #6
	cmp	r3, #2
	bls	.Lm946_26f8
.Lm946_2696:
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x50
	bl	OvlFunc_946_2009774
	b	.Lm946_26c6
.Lm946_26a2:
	cmp	r6, #0xf
	bne	.Lm946_26b2
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x40
	bl	OvlFunc_946_2009774
	b	.Lm946_26c6
.Lm946_26b2:
	cmp	r6, #0x12
	bne	.Lm946_26c2
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x10
	bl	OvlFunc_946_2009774
	b	.Lm946_26c6
.Lm946_26c2:
	cmp	r6, #0x13
	beq	.Lm946_26f8
.Lm946_26c6:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r6
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
.Lm946_26f8:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a5f0

.thumb_func_start OvlFunc_946_200a700
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #9
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #9
	asr	r3, #20
	mov	r8, r3
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x13
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xe
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x10
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r2, r3, #20
	cmp	r7, #0x13
	bne	.Lm946_2774
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lm946_274c
	mov	r2, #0x10
	b	.Lm946_27f6
.Lm946_274c:
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lm946_2758
	mov	r2, #0x40
	b	.Lm946_27f6
.Lm946_2758:
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lm946_2764
	mov	r2, #0x70
	b	.Lm946_27f6
.Lm946_2764:
	mov	r2, #0x50
	neg	r2, r2
	mov	r0, #9
	mov	r1, #0
	bl	OvlFunc_946_2009774
	mov	r2, #0x60
	b	.Lm946_27f6
.Lm946_2774:
	cmp	r7, #0x12
	bne	.Lm946_27a4
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_283a
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_27f4
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lm946_2794
	mov	r2, #0x60
	b	.Lm946_27f6
.Lm946_2794:
	mov	r2, #0x60
	neg	r2, r2
	mov	r0, #9
	mov	r1, #0
	bl	OvlFunc_946_2009774
	mov	r2, #0x40
	b	.Lm946_27f6
.Lm946_27a4:
	cmp	r7, #0xf
	bne	.Lm946_27bc
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_283a
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_27f4
	mov	r2, #0x70
	b	.Lm946_27f6
.Lm946_27bc:
	cmp	r7, #0xe
	bne	.Lm946_27d8
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_283a
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lm946_27d4
	mov	r2, #0x20
	b	.Lm946_27f6
.Lm946_27d4:
	mov	r2, #0x60
	b	.Lm946_27f6
.Lm946_27d8:
	cmp	r7, #0xc
	bne	.Lm946_27e8
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_283a
	mov	r2, #0x40
	b	.Lm946_27f6
.Lm946_27e8:
	cmp	r7, #0xb
	bne	.Lm946_2802
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_283a
.Lm946_27f4:
	mov	r2, #0x30
.Lm946_27f6:
	neg	r2, r2
	mov	r0, #9
	mov	r1, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_2806
.Lm946_2802:
	cmp	r7, #9
	bls	.Lm946_283a
.Lm946_2806:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r5, r8
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r7
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r7, [sp, #4]
	bl	__Func_8010704
.Lm946_283a:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a700

.thumb_func_start OvlFunc_946_200a848
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #9
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #9
	asr	r3, #20
	mov	r8, r3
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x13
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xe
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x10
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r7, #8
	bne	.Lm946_28b4
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_2976
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_28c8
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_28a8
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x50
	bl	OvlFunc_946_2009774
.Lm946_28a8:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x60
	bl	OvlFunc_946_2009774
	b	.Lm946_2942
.Lm946_28b4:
	cmp	r7, #0xb
	bne	.Lm946_28e0
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_2976
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lm946_28d4
.Lm946_28c8:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x30
	bl	OvlFunc_946_2009774
	b	.Lm946_2942
.Lm946_28d4:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x80
	bl	OvlFunc_946_2009774
	b	.Lm946_2942
.Lm946_28e0:
	cmp	r7, #0xc
	bne	.Lm946_290c
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_2976
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lm946_2900
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x20
	bl	OvlFunc_946_2009774
	b	.Lm946_2942
.Lm946_2900:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x70
	bl	OvlFunc_946_2009774
	b	.Lm946_2942
.Lm946_290c:
	cmp	r7, #0xe
	bne	.Lm946_2924
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_2976
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x50
	bl	OvlFunc_946_2009774
	b	.Lm946_2942
.Lm946_2924:
	cmp	r7, #0xf
	bne	.Lm946_2934
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x40
	bl	OvlFunc_946_2009774
	b	.Lm946_2942
.Lm946_2934:
	cmp	r7, #0x12
	bne	.Lm946_2942
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x10
	bl	OvlFunc_946_2009774
.Lm946_2942:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r5, r8
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, r7
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r7, [sp, #4]
	bl	__Func_8010704
.Lm946_2976:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a848

.thumb_func_start OvlFunc_946_200a984
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x13
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x13
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x11
	asr	r3, #20
	mov	r8, r3
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x12
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #9
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r7, #3
	beq	.Lm946_2a8a
	cmp	r7, #0xd
	bne	.Lm946_29f0
	cmp	r3, #0xf
	bne	.Lm946_29d0
	mov	r1, #0x10
	b	.Lm946_2a3e
.Lm946_29d0:
	cmp	r5, #0xf
	bne	.Lm946_29d8
	mov	r1, #0x40
	b	.Lm946_2a3e
.Lm946_29d8:
	cmp	r6, #0xf
	bne	.Lm946_29e0
	mov	r1, #0x70
	b	.Lm946_2a3e
.Lm946_29e0:
	mov	r1, #0x70
	neg	r1, r1
	mov	r0, #0x13
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r1, #0x30
	b	.Lm946_2a3e
.Lm946_29f0:
	cmp	r7, #6
	bne	.Lm946_29fc
	cmp	r6, #0xf
	beq	.Lm946_2a8a
	mov	r1, #0x30
	b	.Lm946_2a3e
.Lm946_29fc:
	cmp	r7, #5
	bne	.Lm946_2a04
	mov	r1, #0x20
	b	.Lm946_2a3e
.Lm946_2a04:
	cmp	r7, #8
	bne	.Lm946_2a18
	cmp	r5, #0xf
	beq	.Lm946_2a8a
	cmp	r6, #0xf
	bne	.Lm946_2a14
	mov	r1, #0x20
	b	.Lm946_2a3e
.Lm946_2a14:
	mov	r1, #0x50
	b	.Lm946_2a3e
.Lm946_2a18:
	cmp	r7, #9
	bne	.Lm946_2a28
	cmp	r5, #0xf
	beq	.Lm946_2a8a
	cmp	r6, #0xf
	bne	.Lm946_2a3c
	mov	r1, #0x30
	b	.Lm946_2a3e
.Lm946_2a28:
	cmp	r7, #0xc
	bne	.Lm946_2a56
	cmp	r3, #0xf
	beq	.Lm946_2a8a
	cmp	r5, #0xf
	bne	.Lm946_2a38
	mov	r1, #0x30
	b	.Lm946_2a3e
.Lm946_2a38:
	cmp	r6, #0xf
	bne	.Lm946_2a4a
.Lm946_2a3c:
	mov	r1, #0x60
.Lm946_2a3e:
	neg	r1, r1
	mov	r0, #0x13
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_2a56
.Lm946_2a4a:
	mov	r1, #0x90
	neg	r1, r1
	mov	r0, #0x13
	mov	r2, #0
	bl	OvlFunc_946_2009774
.Lm946_2a56:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r5, r8
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r7
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.Lm946_2a8a:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200a984

.thumb_func_start OvlFunc_946_200aa98
	push	{r5, r6, r7, lr}
	mov	r0, #0x13
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x13
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x12
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #9
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r6, #3
	bne	.Lm946_2aec
	cmp	r5, #0xf
	bne	.Lm946_2ad2
	mov	r0, #0x13
	mov	r1, #0x20
	b	.Lm946_2b2e
.Lm946_2ad2:
	cmp	r3, #0xf
	bne	.Lm946_2adc
	mov	r0, #0x13
	mov	r1, #0x50
	b	.Lm946_2b2e
.Lm946_2adc:
	mov	r0, #0x13
	mov	r1, #0x70
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0x13
	mov	r1, #0x30
	b	.Lm946_2b2e
.Lm946_2aec:
	cmp	r6, #5
	bne	.Lm946_2b04
	cmp	r5, #0xf
	beq	.Lm946_2b76
	cmp	r3, #0xf
	bne	.Lm946_2afe
	mov	r0, #0x13
	mov	r1, #0x30
	b	.Lm946_2b2e
.Lm946_2afe:
	mov	r0, #0x13
	mov	r1, #0x80
	b	.Lm946_2b2e
.Lm946_2b04:
	cmp	r6, #6
	bne	.Lm946_2b18
	cmp	r3, #0xf
	bne	.Lm946_2b12
	mov	r0, #0x13
	mov	r1, #0x20
	b	.Lm946_2b2e
.Lm946_2b12:
	mov	r0, #0x13
	mov	r1, #0x70
	b	.Lm946_2b2e
.Lm946_2b18:
	cmp	r6, #8
	bne	.Lm946_2b26
	cmp	r3, #0xf
	beq	.Lm946_2b76
	mov	r0, #0x13
	mov	r1, #0x50
	b	.Lm946_2b2e
.Lm946_2b26:
	cmp	r6, #9
	bne	.Lm946_2b36
	mov	r0, #0x13
	mov	r1, #0x40
.Lm946_2b2e:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_2b44
.Lm946_2b36:
	cmp	r6, #0xc
	bne	.Lm946_2b44
	mov	r0, #0x13
	mov	r1, #0x10
	mov	r2, #0
	bl	OvlFunc_946_2009774
.Lm946_2b44:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.Lm946_2b76:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200aa98

.thumb_func_start OvlFunc_946_200ab80
	push	{r5, r6, r7, lr}
	mov	r0, #0xe
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xe
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x12
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #9
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r6, #0xd
	bne	.Lm946_2bca
	sub	r3, #0xc
	cmp	r3, #2
	bhi	.Lm946_2bba
	mov	r1, #0x10
	b	.Lm946_2c02
.Lm946_2bba:
	mov	r3, r5
	sub	r3, #0xc
	cmp	r3, #2
	bhi	.Lm946_2bc6
	mov	r1, #0x40
	b	.Lm946_2c02
.Lm946_2bc6:
	mov	r1, #0x70
	b	.Lm946_2c02
.Lm946_2bca:
	cmp	r6, #0xc
	bne	.Lm946_2be4
	sub	r3, #0xc
	cmp	r3, #2
	bls	.Lm946_2c44
	mov	r3, r5
	sub	r3, #0xc
	cmp	r3, #2
	bhi	.Lm946_2be0
	mov	r1, #0x30
	b	.Lm946_2c02
.Lm946_2be0:
	mov	r1, #0x60
	b	.Lm946_2c02
.Lm946_2be4:
	cmp	r6, #9
	bne	.Lm946_2bf4
	mov	r3, r5
	sub	r3, #0xc
	cmp	r3, #2
	bls	.Lm946_2c44
	mov	r1, #0x30
	b	.Lm946_2c02
.Lm946_2bf4:
	cmp	r6, #8
	bne	.Lm946_2c0e
	mov	r3, r5
	sub	r3, #0xc
	cmp	r3, #2
	bls	.Lm946_2c44
	mov	r1, #0x20
.Lm946_2c02:
	neg	r1, r1
	mov	r0, #0xe
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_2c12
.Lm946_2c0e:
	cmp	r6, #6
	beq	.Lm946_2c44
.Lm946_2c12:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.Lm946_2c44:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200ab80

.thumb_func_start OvlFunc_946_200ac4c
	push	{r5, r6, r7, lr}
	mov	r0, #0xe
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0xe
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x12
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #9
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r6, #6
	bne	.Lm946_2c9c
	sub	r3, #0xc
	cmp	r3, #2
	bhi	.Lm946_2c88
	mov	r0, #0xe
	mov	r1, #0x20
	b	.Lm946_2cc4
.Lm946_2c88:
	mov	r3, r5
	sub	r3, #0xc
	cmp	r3, #2
	bhi	.Lm946_2c96
	mov	r0, #0xe
	mov	r1, #0x40
	b	.Lm946_2cc4
.Lm946_2c96:
	mov	r0, #0xe
	mov	r1, #0x70
	b	.Lm946_2cc4
.Lm946_2c9c:
	cmp	r6, #8
	bne	.Lm946_2cac
	sub	r3, #0xc
	cmp	r3, #2
	bls	.Lm946_2d02
	mov	r0, #0xe
	mov	r1, #0x50
	b	.Lm946_2cc4
.Lm946_2cac:
	cmp	r6, #9
	bne	.Lm946_2cbc
	sub	r3, #0xc
	cmp	r3, #2
	bls	.Lm946_2d02
	mov	r0, #0xe
	mov	r1, #0x40
	b	.Lm946_2cc4
.Lm946_2cbc:
	cmp	r6, #0xc
	bne	.Lm946_2ccc
	mov	r0, #0xe
	mov	r1, #0x10
.Lm946_2cc4:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_2cd0
.Lm946_2ccc:
	cmp	r6, #0xd
	beq	.Lm946_2d02
.Lm946_2cd0:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.Lm946_2d02:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200ac4c

.thumb_func_start OvlFunc_946_200ad0c
	push	{r5, r6, r7, lr}
	mov	r0, #0x10
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x10
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x12
	asr	r7, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #9
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r6, #0xd
	bne	.Lm946_2d56
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lm946_2d46
	mov	r1, #0x10
	b	.Lm946_2d86
.Lm946_2d46:
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lm946_2d52
	mov	r1, #0x40
	b	.Lm946_2d86
.Lm946_2d52:
	mov	r1, #0x70
	b	.Lm946_2d86
.Lm946_2d56:
	cmp	r6, #0xc
	bne	.Lm946_2d70
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_2dc8
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lm946_2d6c
	mov	r1, #0x30
	b	.Lm946_2d86
.Lm946_2d6c:
	mov	r1, #0x60
	b	.Lm946_2d86
.Lm946_2d70:
	cmp	r6, #9
	bne	.Lm946_2d80
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_2dc8
	mov	r1, #0x30
	b	.Lm946_2d86
.Lm946_2d80:
	cmp	r6, #8
	bne	.Lm946_2d92
	mov	r1, #0x20
.Lm946_2d86:
	neg	r1, r1
	mov	r0, #0x10
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_2d96
.Lm946_2d92:
	cmp	r6, #6
	beq	.Lm946_2dc8
.Lm946_2d96:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0x10
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	sub	r5, r7, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.Lm946_2dc8:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200ad0c

.thumb_func_start OvlFunc_946_200add0
	push	{r5, r6, lr}
	mov	r0, #0x10
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0x10
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #9
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r6, #6
	bne	.Lm946_2e08
	sub	r3, #9
	cmp	r3, #2
	bhi	.Lm946_2e02
	mov	r0, #0x10
	mov	r1, #0x20
	b	.Lm946_2e2a
.Lm946_2e02:
	mov	r0, #0x10
	mov	r1, #0x70
	b	.Lm946_2e2a
.Lm946_2e08:
	cmp	r6, #8
	bne	.Lm946_2e18
	sub	r3, #9
	cmp	r3, #2
	bls	.Lm946_2e68
	mov	r0, #0x10
	mov	r1, #0x50
	b	.Lm946_2e2a
.Lm946_2e18:
	cmp	r6, #9
	bne	.Lm946_2e22
	mov	r0, #0x10
	mov	r1, #0x40
	b	.Lm946_2e2a
.Lm946_2e22:
	cmp	r6, #0xc
	bne	.Lm946_2e32
	mov	r0, #0x10
	mov	r1, #0x10
.Lm946_2e2a:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.Lm946_2e36
.Lm946_2e32:
	cmp	r6, #0xd
	beq	.Lm946_2e68
.Lm946_2e36:
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0x10
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	sub	r5, #1
	asr	r3, #20
	str	r3, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.Lm946_2e68:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200add0

