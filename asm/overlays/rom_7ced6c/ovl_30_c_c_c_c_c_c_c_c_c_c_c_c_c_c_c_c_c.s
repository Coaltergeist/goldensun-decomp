	.include "macros.inc"

.thumb_func_start OvlFunc_946_2009a44
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r7, r5
	add	r7, #0x55
	ldrb	r3, [r7]
	ldr	r1, =0xfff00000
	mov	r8, r3
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #12
	sub	sp, #0xc
	and	r3, r1
	mov	r6, sp
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	and	r3, r1
	add	r3, r2
	str	r3, [r6, #8]
	ldrh	r1, [r5, #6]
	mov	r3, #0x80
	lsl	r3, #6
	add	r1, r3
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r0, #0x80
	and	r1, r3
	lsl	r0, #14
	mov	r2, r6
	bl	__Func_800447c
	mov	r0, r5
	mov	r1, r6
	bl	__Func_80120dc
	cmp	r0, #0
	bne	.L1b02
	bl	__Func_80916b0
	mov	r1, #6
	mov	r0, r5
	bl	__Func_800c300
	mov	r0, #6
	bl	__Func_80030f8
	mov	r0, #0x98
	bl	__Func_80f9080
	mov	r0, r5
	mov	r1, #7
	bl	__Func_800c300
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	ldrb	r2, [r7]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r7]
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c528
	mov	r3, #0xa
	ldrsh	r2, [r6, r3]
	mov	r3, #2
	ldrsh	r1, [r6, r3]
	mov	r0, #0
	bl	__Func_8092158
	mov	r0, r5
	mov	r1, #6
	bl	__Func_800c300
	mov	r0, r5
	mov	r1, #1
	bl	__Func_800c528
	mov	r3, r8
	strb	r3, [r7]
	bl	__Func_8091750
	mov	r0, #1
	b	.L1b04
.L1b02:
	mov	r0, #0
.L1b04:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_946_2009a44

.thumb_func_start OvlFunc_946_2009b14
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r1, sp
	str	r3, [r1]
	ldr	r3, [r0, #0xc]
	str	r3, [r1, #4]
	ldr	r2, =0xffe00000
	ldr	r3, [r0, #0x10]
	add	r3, r2
	str	r3, [r1, #8]
	bl	OvlFunc_946_2009a44
	add	sp, #0xc
	pop	{r1}
	bx	r1
.func_end OvlFunc_946_2009b14

.thumb_func_start OvlFunc_946_2009b40
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r1, sp
	str	r3, [r1]
	ldr	r3, [r0, #0xc]
	str	r3, [r1, #4]
	mov	r2, #0x80
	ldr	r3, [r0, #0x10]
	lsl	r2, #14
	add	r3, r2
	str	r3, [r1, #8]
	bl	OvlFunc_946_2009a44
	add	sp, #0xc
	pop	{r1}
	bx	r1
.func_end OvlFunc_946_2009b40

.thumb_func_start OvlFunc_946_2009b68
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	ldr	r2, =0xffe00000
	ldr	r3, [r0, #8]
	mov	r1, sp
	add	r3, r2
	str	r3, [r1]
	ldr	r3, [r0, #0xc]
	str	r3, [r1, #4]
	ldr	r3, [r0, #0x10]
	str	r3, [r1, #8]
	bl	OvlFunc_946_2009a44
	add	sp, #0xc
	pop	{r1}
	bx	r1
.func_end OvlFunc_946_2009b68

.thumb_func_start OvlFunc_946_2009b94
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldr	r3, [r0, #8]
	lsl	r2, #14
	mov	r1, sp
	add	r3, r2
	str	r3, [r1]
	ldr	r3, [r0, #0xc]
	str	r3, [r1, #4]
	ldr	r3, [r0, #0x10]
	str	r3, [r1, #8]
	bl	OvlFunc_946_2009a44
	add	sp, #0xc
	pop	{r1}
	bx	r1
.func_end OvlFunc_946_2009b94

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
	bne	.L1c18
	cmp	r5, #0x18
	bne	.L1bf4
	mov	r2, #0x50
	b	.L1c36
.L1bf4:
	cmp	r3, #0x18
	bne	.L1c08
	mov	r2, #0x70
	neg	r2, r2
	mov	r0, #8
	mov	r1, #0
	bl	OvlFunc_946_2009774
	mov	r2, #0x20
	b	.L1c36
.L1c08:
	mov	r2, #0x50
	neg	r2, r2
	mov	r0, #8
	mov	r1, #0
	bl	OvlFunc_946_2009774
	mov	r2, #0x70
	b	.L1c36
.L1c18:
	cmp	r6, #0xe
	bne	.L1c2c
	cmp	r5, #0x18
	beq	.L1c7a
	cmp	r3, #0x18
	bne	.L1c28
	mov	r2, #0x40
	b	.L1c36
.L1c28:
	mov	r2, #0x70
	b	.L1c36
.L1c2c:
	cmp	r6, #0xa
	bne	.L1c42
	cmp	r3, #0x18
	beq	.L1c7a
	mov	r2, #0x30
.L1c36:
	neg	r2, r2
	mov	r0, #8
	mov	r1, #0
	bl	OvlFunc_946_2009774
	b	.L1c48
.L1c42:
	bl	OvlFunc_946_2009b14
	b	.L1c7a
.L1c48:
	mov	r0, #2
	bl	__Func_80030f8
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
.L1c7a:
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
	bne	.L1cd0
	cmp	r3, #0x18
	bne	.L1cba
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x30
	bl	OvlFunc_946_2009774
	b	.L1cf2
.L1cba:
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x50
	bl	OvlFunc_946_2009774
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x70
	bl	OvlFunc_946_2009774
	b	.L1cf2
.L1cd0:
	cmp	r6, #0xa
	bne	.L1ce4
	cmp	r3, #0x18
	beq	.L1d24
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x90
	bl	OvlFunc_946_2009774
	b	.L1cf2
.L1ce4:
	cmp	r6, #0xe
	bne	.L1d24
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x50
	bl	OvlFunc_946_2009774
.L1cf2:
	mov	r0, #2
	bl	__Func_80030f8
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
.L1d24:
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
	bne	.L1d82
	sub	r3, #0x1f
	cmp	r3, #2
	bhi	.L1d66
	mov	r2, #0x80
	b	.L1d96
.L1d66:
	mov	r3, r5
	sub	r3, #0x1f
	cmp	r3, #2
	bhi	.L1d72
	mov	r2, #0x80
	b	.L1d96
.L1d72:
	mov	r2, #0x70
	neg	r2, r2
	mov	r0, #0xa
	mov	r1, #0
	bl	OvlFunc_946_2009774
	mov	r2, #0x40
	b	.L1d96
.L1d82:
	cmp	r6, #0xa
	bne	.L1da2
	sub	r3, #0x1f
	cmp	r3, #2
	bls	.L1dd8
	mov	r3, r5
	sub	r3, #0x1f
	cmp	r3, #2
	bls	.L1dd8
	mov	r2, #0x30
.L1d96:
	neg	r2, r2
	mov	r0, #0xa
	mov	r1, #0
	bl	OvlFunc_946_2009774
	b	.L1da6
.L1da2:
	cmp	r6, #7
	beq	.L1dd8
.L1da6:
	mov	r0, #2
	bl	__Func_80030f8
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
.L1dd8:
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
	beq	.L1e52
	cmp	r6, #0xa
	bne	.L1e0c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x80
	bl	OvlFunc_946_2009774
	b	.L1e20
.L1e0c:
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x70
	bl	OvlFunc_946_2009774
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x40
	bl	OvlFunc_946_2009774
.L1e20:
	mov	r0, #2
	bl	__Func_80030f8
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
.L1e52:
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
	beq	.L1eec
	cmp	r6, #0x22
	bne	.L1e8e
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x12
	beq	.L1eec
	mov	r1, #0x40
	b	.L1ea2
.L1e8e:
	cmp	r6, #0x24
	bne	.L1eba
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x12
	bne	.L1eae
	mov	r1, #0x20
.L1ea2:
	neg	r1, r1
	mov	r0, #0xb
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.L1eba
.L1eae:
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #0xb
	mov	r2, #0
	bl	OvlFunc_946_2009774
.L1eba:
	mov	r0, #2
	bl	__Func_80030f8
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
.L1eec:
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
	beq	.L1f6e
	cmp	r6, #0x1e
	bne	.L1f2e
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x12
	beq	.L1f6e
	mov	r0, #0xb
	mov	r1, #0x60
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.L1f3c
.L1f2e:
	cmp	r6, #0x22
	bne	.L1f3c
	mov	r0, #0xb
	mov	r1, #0x20
	mov	r2, #0
	bl	OvlFunc_946_2009774
.L1f3c:
	mov	r0, #2
	bl	__Func_80030f8
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
.L1f6e:
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
	bne	.L1fa8
	mov	r5, #0x60
	neg	r5, r5
	mov	r0, #0xc
	mov	r1, r5
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xc
	mov	r1, r5
	b	.L1fbe
.L1fa8:
	cmp	r6, #0x22
	bne	.L1fc6
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #0xc
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r1, #0x40
	neg	r1, r1
	mov	r0, #0xc
.L1fbe:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.L1fca
.L1fc6:
	cmp	r6, #0x18
	beq	.L1ffc
.L1fca:
	mov	r0, #2
	bl	__Func_80030f8
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
.L1ffc:
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
	bne	.L2030
	mov	r0, #0xc
	mov	r1, #0x60
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xc
	mov	r1, #0x60
	b	.L2038
.L2030:
	cmp	r6, #0x22
	bne	.L2040
	mov	r0, #0xc
	mov	r1, #0x20
.L2038:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.L2044
.L2040:
	cmp	r6, #0x24
	beq	.L2076
.L2044:
	mov	r0, #2
	bl	__Func_80030f8
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
.L2076:
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
	bne	.L20d8
	cmp	r3, #0x22
	bne	.L20b8
	mov	r1, #0x10
	b	.L2122
.L20b8:
	cmp	r5, #7
	bne	.L20c0
	mov	r1, #0x20
	b	.L2122
.L20c0:
	cmp	r3, #0x1e
	bne	.L20c8
	mov	r1, #0x50
	b	.L2122
.L20c8:
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #0xd
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r1, #0x50
	b	.L2122
.L20d8:
	cmp	r6, #0x23
	bne	.L2104
	cmp	r3, #0x22
	beq	.L2164
	cmp	r5, #7
	bne	.L20e8
	mov	r1, #0x10
	b	.L2122
.L20e8:
	cmp	r3, #0x1e
	bne	.L20f0
	mov	r1, #0x40
	b	.L2122
.L20f0:
	mov	r5, #0x50
	neg	r5, r5
	mov	r0, #0xd
	mov	r1, r5
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xd
	mov	r1, r5
	b	.L2126
.L2104:
	cmp	r6, #0x22
	bne	.L2118
	cmp	r5, #7
	beq	.L2164
	cmp	r3, #0x1e
	bne	.L2114
	mov	r1, #0x30
	b	.L2122
.L2114:
	mov	r1, #0x90
	b	.L2122
.L2118:
	cmp	r6, #0x1f
	bne	.L212e
	cmp	r3, #0x1e
	beq	.L2164
	mov	r1, #0x60
.L2122:
	neg	r1, r1
	mov	r0, #0xd
.L2126:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.L2132
.L212e:
	cmp	r6, #0x19
	beq	.L2164
.L2132:
	mov	r0, #2
	bl	__Func_80030f8
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
.L2164:
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
	bne	.L219e
	mov	r0, #0xd
	mov	r1, #0x60
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xd
	mov	r1, #0x50
	b	.L21ba
.L219e:
	cmp	r6, #0x1f
	bne	.L21a8
	mov	r0, #0xd
	mov	r1, #0x50
	b	.L21ba
.L21a8:
	cmp	r6, #0x22
	bne	.L21b2
	mov	r0, #0xd
	mov	r1, #0x20
	b	.L21ba
.L21b2:
	cmp	r6, #0x23
	bne	.L21c2
	mov	r0, #0xd
	mov	r1, #0x10
.L21ba:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.L21c6
.L21c2:
	cmp	r6, #0x24
	beq	.L21f8
.L21c6:
	mov	r0, #2
	bl	__Func_80030f8
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
.L21f8:
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
	bne	.L2250
	cmp	r3, #7
	bne	.L2238
	mov	r1, #0x10
	b	.L227e
.L2238:
	cmp	r5, #7
	bne	.L2240
	mov	r1, #0x70
	b	.L227e
.L2240:
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #0xf
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r1, #0x50
	b	.L227e
.L2250:
	cmp	r6, #0x22
	bne	.L2268
	cmp	r3, #7
	beq	.L22c0
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #0xf
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r1, #0x40
	b	.L227e
.L2268:
	cmp	r6, #0x21
	bne	.L2270
	mov	r1, #0x90
	b	.L227e
.L2270:
	cmp	r6, #0x1f
	bne	.L2278
	mov	r1, #0x50
	b	.L227e
.L2278:
	cmp	r6, #0x1e
	bne	.L228a
	mov	r1, #0x60
.L227e:
	neg	r1, r1
	mov	r0, #0xf
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.L228e
.L228a:
	cmp	r6, #0x18
	beq	.L22c0
.L228e:
	mov	r0, #2
	bl	__Func_80030f8
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
.L22c0:
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
	bne	.L233e
	cmp	r5, #7
	beq	.L2300
	cmp	r3, #0x1f
	bne	.L2306
.L2300:
	mov	r0, #0xf
	mov	r1, #0x60
	b	.L237e
.L2306:
	cmp	r3, #0x22
	bne	.L231a
	mov	r0, #0xf
	mov	r1, #0x40
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xf
	mov	r1, #0x50
	b	.L237e
.L231a:
	cmp	r3, #0x23
	bne	.L232e
	mov	r0, #0xf
	mov	r1, #0x50
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xf
	mov	r1, #0x50
	b	.L237e
.L232e:
	mov	r0, #0xf
	mov	r1, #0x50
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0xf
	mov	r1, #0x60
	b	.L237e
.L233e:
	cmp	r6, #0x1e
	beq	.L2346
	cmp	r3, #0x1f
	bne	.L2364
.L2346:
	cmp	r5, #7
	beq	.L23bc
	cmp	r3, #0x22
	bne	.L2354
	mov	r0, #0xf
	mov	r1, #0x30
	b	.L237e
.L2354:
	cmp	r3, #0x23
	bne	.L235e
	mov	r0, #0xf
	mov	r1, #0x40
	b	.L237e
.L235e:
	mov	r0, #0xf
	mov	r1, #0x50
	b	.L237e
.L2364:
	cmp	r6, #0x21
	bne	.L2376
	cmp	r3, #0x22
	beq	.L23bc
	cmp	r3, #0x23
	beq	.L237a
	mov	r0, #0xf
	mov	r1, #0x20
	b	.L237e
.L2376:
	cmp	r6, #0x22
	bne	.L2386
.L237a:
	mov	r0, #0xf
	mov	r1, #0x10
.L237e:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.L238a
.L2386:
	cmp	r6, #0x23
	beq	.L23bc
.L238a:
	mov	r0, #2
	bl	__Func_80030f8
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
.L23bc:
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
	bne	.L23f8
	sub	r3, #3
	cmp	r3, #2
	bhi	.L23f4
	mov	r2, #0x10
	b	.L2404
.L23f4:
	mov	r2, #0x40
	b	.L2404
.L23f8:
	cmp	r6, #0x12
	bne	.L2410
	sub	r3, #3
	cmp	r3, #2
	bls	.L2446
	mov	r2, #0x30
.L2404:
	neg	r2, r2
	mov	r0, #0x11
	mov	r1, #0
	bl	OvlFunc_946_2009774
	b	.L2414
.L2410:
	cmp	r6, #0xf
	beq	.L2446
.L2414:
	mov	r0, #2
	bl	__Func_80030f8
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
.L2446:
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
	bne	.L2478
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x40
	bl	OvlFunc_946_2009774
	b	.L248c
.L2478:
	cmp	r6, #0x12
	bne	.L2488
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x10
	bl	OvlFunc_946_2009774
	b	.L248c
.L2488:
	cmp	r6, #0x13
	beq	.L24be
.L248c:
	mov	r0, #2
	bl	__Func_80030f8
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
.L24be:
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
	bne	.L2536
	sub	r3, r7, #6
	cmp	r3, #2
	bhi	.L2512
	mov	r2, #0x10
	b	.L259e
.L2512:
	sub	r3, r5, #6
	cmp	r3, #2
	bhi	.L251c
	mov	r2, #0x40
	b	.L259e
.L251c:
	sub	r3, r2, #6
	cmp	r3, #2
	bhi	.L2526
	mov	r2, #0x70
	b	.L259e
.L2526:
	mov	r2, #0x40
	neg	r2, r2
	mov	r0, #0x12
	mov	r1, #0
	bl	OvlFunc_946_2009774
	mov	r2, #0x60
	b	.L259e
.L2536:
	cmp	r6, #0x12
	bne	.L2558
	sub	r3, r7, #6
	cmp	r3, #2
	bls	.L25e2
	sub	r3, r5, #6
	cmp	r3, #2
	bhi	.L254a
	mov	r2, #0x30
	b	.L259e
.L254a:
	sub	r3, r2, #6
	cmp	r3, #2
	bhi	.L2554
	mov	r2, #0x60
	b	.L259e
.L2554:
	mov	r2, #0x90
	b	.L259e
.L2558:
	cmp	r6, #0xf
	bne	.L2570
	sub	r3, r5, #6
	cmp	r3, #2
	bls	.L25e2
	sub	r3, r2, #6
	cmp	r3, #2
	bhi	.L256c
	mov	r2, #0x30
	b	.L259e
.L256c:
	mov	r2, #0x60
	b	.L259e
.L2570:
	cmp	r6, #0xe
	bne	.L2584
	sub	r3, r5, #6
	cmp	r3, #2
	bls	.L25e2
	sub	r3, r2, #6
	cmp	r3, #2
	bls	.L259c
	mov	r2, #0x50
	b	.L259e
.L2584:
	cmp	r6, #0xc
	bne	.L2592
	sub	r3, r2, #6
	cmp	r3, #2
	bls	.L25e2
	mov	r2, #0x30
	b	.L259e
.L2592:
	cmp	r6, #0xb
	bne	.L25aa
	sub	r3, r2, #6
	cmp	r3, #2
	bls	.L25e2
.L259c:
	mov	r2, #0x20
.L259e:
	neg	r2, r2
	mov	r0, #0x12
	mov	r1, #0
	bl	OvlFunc_946_2009774
	b	.L25ae
.L25aa:
	cmp	r6, #9
	beq	.L25e2
.L25ae:
	mov	r0, #2
	bl	__Func_80030f8
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
.L25e2:
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
	bne	.L2642
	sub	r3, #6
	cmp	r3, #2
	bls	.L2674
	sub	r3, r5, #6
	cmp	r3, #2
	bls	.L2696
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x40
	bl	OvlFunc_946_2009774
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x60
	bl	OvlFunc_946_2009774
	b	.L26c6
.L2642:
	cmp	r6, #0xb
	bne	.L266a
	sub	r3, #6
	cmp	r3, #2
	bls	.L26f8
	sub	r3, r5, #6
	cmp	r3, #2
	bhi	.L265e
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x30
	bl	OvlFunc_946_2009774
	b	.L26c6
.L265e:
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x80
	bl	OvlFunc_946_2009774
	b	.L26c6
.L266a:
	cmp	r6, #0xc
	bne	.L268c
	sub	r3, r5, #6
	cmp	r3, #2
	bhi	.L2680
.L2674:
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x20
	bl	OvlFunc_946_2009774
	b	.L26c6
.L2680:
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x70
	bl	OvlFunc_946_2009774
	b	.L26c6
.L268c:
	cmp	r6, #0xe
	bne	.L26a2
	sub	r3, r5, #6
	cmp	r3, #2
	bls	.L26f8
.L2696:
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x50
	bl	OvlFunc_946_2009774
	b	.L26c6
.L26a2:
	cmp	r6, #0xf
	bne	.L26b2
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x40
	bl	OvlFunc_946_2009774
	b	.L26c6
.L26b2:
	cmp	r6, #0x12
	bne	.L26c2
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x10
	bl	OvlFunc_946_2009774
	b	.L26c6
.L26c2:
	cmp	r6, #0x13
	beq	.L26f8
.L26c6:
	mov	r0, #2
	bl	__Func_80030f8
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
.L26f8:
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
	bne	.L2774
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bhi	.L274c
	mov	r2, #0x10
	b	.L27f6
.L274c:
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bhi	.L2758
	mov	r2, #0x40
	b	.L27f6
.L2758:
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bhi	.L2764
	mov	r2, #0x70
	b	.L27f6
.L2764:
	mov	r2, #0x50
	neg	r2, r2
	mov	r0, #9
	mov	r1, #0
	bl	OvlFunc_946_2009774
	mov	r2, #0x60
	b	.L27f6
.L2774:
	cmp	r7, #0x12
	bne	.L27a4
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bls	.L283a
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.L27f4
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bhi	.L2794
	mov	r2, #0x60
	b	.L27f6
.L2794:
	mov	r2, #0x60
	neg	r2, r2
	mov	r0, #9
	mov	r1, #0
	bl	OvlFunc_946_2009774
	mov	r2, #0x40
	b	.L27f6
.L27a4:
	cmp	r7, #0xf
	bne	.L27bc
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.L283a
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bls	.L27f4
	mov	r2, #0x70
	b	.L27f6
.L27bc:
	cmp	r7, #0xe
	bne	.L27d8
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.L283a
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bhi	.L27d4
	mov	r2, #0x20
	b	.L27f6
.L27d4:
	mov	r2, #0x60
	b	.L27f6
.L27d8:
	cmp	r7, #0xc
	bne	.L27e8
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bls	.L283a
	mov	r2, #0x40
	b	.L27f6
.L27e8:
	cmp	r7, #0xb
	bne	.L2802
	mov	r3, r2
	sub	r3, #9
	cmp	r3, #2
	bls	.L283a
.L27f4:
	mov	r2, #0x30
.L27f6:
	neg	r2, r2
	mov	r0, #9
	mov	r1, #0
	bl	OvlFunc_946_2009774
	b	.L2806
.L2802:
	cmp	r7, #9
	bls	.L283a
.L2806:
	mov	r0, #2
	bl	__Func_80030f8
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
.L283a:
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
	bne	.L28b4
	sub	r3, #9
	cmp	r3, #2
	bls	.L2976
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.L28c8
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bls	.L28a8
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x50
	bl	OvlFunc_946_2009774
.L28a8:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x60
	bl	OvlFunc_946_2009774
	b	.L2942
.L28b4:
	cmp	r7, #0xb
	bne	.L28e0
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.L2976
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bhi	.L28d4
.L28c8:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x30
	bl	OvlFunc_946_2009774
	b	.L2942
.L28d4:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x80
	bl	OvlFunc_946_2009774
	b	.L2942
.L28e0:
	cmp	r7, #0xc
	bne	.L290c
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.L2976
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bhi	.L2900
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x20
	bl	OvlFunc_946_2009774
	b	.L2942
.L2900:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x70
	bl	OvlFunc_946_2009774
	b	.L2942
.L290c:
	cmp	r7, #0xe
	bne	.L2924
	mov	r3, r6
	sub	r3, #9
	cmp	r3, #2
	bls	.L2976
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x50
	bl	OvlFunc_946_2009774
	b	.L2942
.L2924:
	cmp	r7, #0xf
	bne	.L2934
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x40
	bl	OvlFunc_946_2009774
	b	.L2942
.L2934:
	cmp	r7, #0x12
	bne	.L2942
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x10
	bl	OvlFunc_946_2009774
.L2942:
	mov	r0, #2
	bl	__Func_80030f8
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
.L2976:
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
	beq	.L2a8a
	cmp	r7, #0xd
	bne	.L29f0
	cmp	r3, #0xf
	bne	.L29d0
	mov	r1, #0x10
	b	.L2a3e
.L29d0:
	cmp	r5, #0xf
	bne	.L29d8
	mov	r1, #0x40
	b	.L2a3e
.L29d8:
	cmp	r6, #0xf
	bne	.L29e0
	mov	r1, #0x70
	b	.L2a3e
.L29e0:
	mov	r1, #0x70
	neg	r1, r1
	mov	r0, #0x13
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r1, #0x30
	b	.L2a3e
.L29f0:
	cmp	r7, #6
	bne	.L29fc
	cmp	r6, #0xf
	beq	.L2a8a
	mov	r1, #0x30
	b	.L2a3e
.L29fc:
	cmp	r7, #5
	bne	.L2a04
	mov	r1, #0x20
	b	.L2a3e
.L2a04:
	cmp	r7, #8
	bne	.L2a18
	cmp	r5, #0xf
	beq	.L2a8a
	cmp	r6, #0xf
	bne	.L2a14
	mov	r1, #0x20
	b	.L2a3e
.L2a14:
	mov	r1, #0x50
	b	.L2a3e
.L2a18:
	cmp	r7, #9
	bne	.L2a28
	cmp	r5, #0xf
	beq	.L2a8a
	cmp	r6, #0xf
	bne	.L2a3c
	mov	r1, #0x30
	b	.L2a3e
.L2a28:
	cmp	r7, #0xc
	bne	.L2a56
	cmp	r3, #0xf
	beq	.L2a8a
	cmp	r5, #0xf
	bne	.L2a38
	mov	r1, #0x30
	b	.L2a3e
.L2a38:
	cmp	r6, #0xf
	bne	.L2a4a
.L2a3c:
	mov	r1, #0x60
.L2a3e:
	neg	r1, r1
	mov	r0, #0x13
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.L2a56
.L2a4a:
	mov	r1, #0x90
	neg	r1, r1
	mov	r0, #0x13
	mov	r2, #0
	bl	OvlFunc_946_2009774
.L2a56:
	mov	r0, #2
	bl	__Func_80030f8
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
.L2a8a:
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
	bne	.L2aec
	cmp	r5, #0xf
	bne	.L2ad2
	mov	r0, #0x13
	mov	r1, #0x20
	b	.L2b2e
.L2ad2:
	cmp	r3, #0xf
	bne	.L2adc
	mov	r0, #0x13
	mov	r1, #0x50
	b	.L2b2e
.L2adc:
	mov	r0, #0x13
	mov	r1, #0x70
	mov	r2, #0
	bl	OvlFunc_946_2009774
	mov	r0, #0x13
	mov	r1, #0x30
	b	.L2b2e
.L2aec:
	cmp	r6, #5
	bne	.L2b04
	cmp	r5, #0xf
	beq	.L2b76
	cmp	r3, #0xf
	bne	.L2afe
	mov	r0, #0x13
	mov	r1, #0x30
	b	.L2b2e
.L2afe:
	mov	r0, #0x13
	mov	r1, #0x80
	b	.L2b2e
.L2b04:
	cmp	r6, #6
	bne	.L2b18
	cmp	r3, #0xf
	bne	.L2b12
	mov	r0, #0x13
	mov	r1, #0x20
	b	.L2b2e
.L2b12:
	mov	r0, #0x13
	mov	r1, #0x70
	b	.L2b2e
.L2b18:
	cmp	r6, #8
	bne	.L2b26
	cmp	r3, #0xf
	beq	.L2b76
	mov	r0, #0x13
	mov	r1, #0x50
	b	.L2b2e
.L2b26:
	cmp	r6, #9
	bne	.L2b36
	mov	r0, #0x13
	mov	r1, #0x40
.L2b2e:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.L2b44
.L2b36:
	cmp	r6, #0xc
	bne	.L2b44
	mov	r0, #0x13
	mov	r1, #0x10
	mov	r2, #0
	bl	OvlFunc_946_2009774
.L2b44:
	mov	r0, #2
	bl	__Func_80030f8
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
.L2b76:
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
	bne	.L2bca
	sub	r3, #0xc
	cmp	r3, #2
	bhi	.L2bba
	mov	r1, #0x10
	b	.L2c02
.L2bba:
	mov	r3, r5
	sub	r3, #0xc
	cmp	r3, #2
	bhi	.L2bc6
	mov	r1, #0x40
	b	.L2c02
.L2bc6:
	mov	r1, #0x70
	b	.L2c02
.L2bca:
	cmp	r6, #0xc
	bne	.L2be4
	sub	r3, #0xc
	cmp	r3, #2
	bls	.L2c44
	mov	r3, r5
	sub	r3, #0xc
	cmp	r3, #2
	bhi	.L2be0
	mov	r1, #0x30
	b	.L2c02
.L2be0:
	mov	r1, #0x60
	b	.L2c02
.L2be4:
	cmp	r6, #9
	bne	.L2bf4
	mov	r3, r5
	sub	r3, #0xc
	cmp	r3, #2
	bls	.L2c44
	mov	r1, #0x30
	b	.L2c02
.L2bf4:
	cmp	r6, #8
	bne	.L2c0e
	mov	r3, r5
	sub	r3, #0xc
	cmp	r3, #2
	bls	.L2c44
	mov	r1, #0x20
.L2c02:
	neg	r1, r1
	mov	r0, #0xe
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.L2c12
.L2c0e:
	cmp	r6, #6
	beq	.L2c44
.L2c12:
	mov	r0, #2
	bl	__Func_80030f8
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
.L2c44:
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
	bne	.L2c9c
	sub	r3, #0xc
	cmp	r3, #2
	bhi	.L2c88
	mov	r0, #0xe
	mov	r1, #0x20
	b	.L2cc4
.L2c88:
	mov	r3, r5
	sub	r3, #0xc
	cmp	r3, #2
	bhi	.L2c96
	mov	r0, #0xe
	mov	r1, #0x40
	b	.L2cc4
.L2c96:
	mov	r0, #0xe
	mov	r1, #0x70
	b	.L2cc4
.L2c9c:
	cmp	r6, #8
	bne	.L2cac
	sub	r3, #0xc
	cmp	r3, #2
	bls	.L2d02
	mov	r0, #0xe
	mov	r1, #0x50
	b	.L2cc4
.L2cac:
	cmp	r6, #9
	bne	.L2cbc
	sub	r3, #0xc
	cmp	r3, #2
	bls	.L2d02
	mov	r0, #0xe
	mov	r1, #0x40
	b	.L2cc4
.L2cbc:
	cmp	r6, #0xc
	bne	.L2ccc
	mov	r0, #0xe
	mov	r1, #0x10
.L2cc4:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.L2cd0
.L2ccc:
	cmp	r6, #0xd
	beq	.L2d02
.L2cd0:
	mov	r0, #2
	bl	__Func_80030f8
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
.L2d02:
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
	bne	.L2d56
	sub	r3, #9
	cmp	r3, #2
	bhi	.L2d46
	mov	r1, #0x10
	b	.L2d86
.L2d46:
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bhi	.L2d52
	mov	r1, #0x40
	b	.L2d86
.L2d52:
	mov	r1, #0x70
	b	.L2d86
.L2d56:
	cmp	r6, #0xc
	bne	.L2d70
	sub	r3, #9
	cmp	r3, #2
	bls	.L2dc8
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bhi	.L2d6c
	mov	r1, #0x30
	b	.L2d86
.L2d6c:
	mov	r1, #0x60
	b	.L2d86
.L2d70:
	cmp	r6, #9
	bne	.L2d80
	mov	r3, r5
	sub	r3, #9
	cmp	r3, #2
	bls	.L2dc8
	mov	r1, #0x30
	b	.L2d86
.L2d80:
	cmp	r6, #8
	bne	.L2d92
	mov	r1, #0x20
.L2d86:
	neg	r1, r1
	mov	r0, #0x10
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.L2d96
.L2d92:
	cmp	r6, #6
	beq	.L2dc8
.L2d96:
	mov	r0, #2
	bl	__Func_80030f8
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
.L2dc8:
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
	bne	.L2e08
	sub	r3, #9
	cmp	r3, #2
	bhi	.L2e02
	mov	r0, #0x10
	mov	r1, #0x20
	b	.L2e2a
.L2e02:
	mov	r0, #0x10
	mov	r1, #0x70
	b	.L2e2a
.L2e08:
	cmp	r6, #8
	bne	.L2e18
	sub	r3, #9
	cmp	r3, #2
	bls	.L2e68
	mov	r0, #0x10
	mov	r1, #0x50
	b	.L2e2a
.L2e18:
	cmp	r6, #9
	bne	.L2e22
	mov	r0, #0x10
	mov	r1, #0x40
	b	.L2e2a
.L2e22:
	cmp	r6, #0xc
	bne	.L2e32
	mov	r0, #0x10
	mov	r1, #0x10
.L2e2a:
	mov	r2, #0
	bl	OvlFunc_946_2009774
	b	.L2e36
.L2e32:
	cmp	r6, #0xd
	beq	.L2e68
.L2e36:
	mov	r0, #2
	bl	__Func_80030f8
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
.L2e68:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200add0

.thumb_func_start OvlFunc_946_200ae70
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r0, [r6, #0x30]
	ldr	r7, [r6, #0x50]
	bl	__Func_8002322
	lsl	r5, r0, #1
	cmp	r5, #0
	ble	.L2e84
	neg	r5, r5
.L2e84:
	ldr	r0, [r6, #0x30]
	bl	__Func_800231c
	ldr	r3, [r6, #0x38]
	lsl	r0, #1
	add	r3, r0
	str	r3, [r6, #8]
	ldr	r0, [r6, #0x30]
	ldr	r3, [r6, #0x3c]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r5
	add	r0, r2
	str	r3, [r6, #0xc]
	bl	__Func_800231c
	cmp	r0, #0
	bge	.L2eaa
	add	r0, #7
.L2eaa:
	asr	r3, r0, #3
	strh	r3, [r7, #0x1e]
	bl	__Random
	mov	r5, r0
	bl	__Random
	lsl	r5, #9
	lsl	r0, #9
	ldr	r3, [r6, #0x30]
	lsr	r0, #16
	lsr	r5, #16
	add	r5, r0
	mov	r2, #0x80
	add	r3, r5
	lsl	r2, #3
	add	r3, r2
	str	r3, [r6, #0x30]
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_946_200ae70

.thumb_func_start OvlFunc_946_200aed8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r6, [r7, #0x50]
	mov	r2, #0xd
	ldrb	r3, [r6, #9]
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	ldrb	r1, [r6, #5]
	orr	r2, r3
	mov	r3, #0x21
	neg	r3, r3
	and	r3, r1
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r2, r3
	strb	r2, [r6, #9]
	mov	r2, #0
	mov	r8, r2
	mov	r3, r6
	add	r3, #0x27
	mov	r2, r8
	strb	r2, [r3]
	mov	r1, #0
	bl	__Func_800c528
	mov	r3, #0x5c
	add	r3, r7
	mov	r2, r8
	strb	r2, [r3]
	mov	r10, r3
	mov	r3, r7
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L2f3c
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #14
	add	r3, r2
	str	r3, [r7, #0xc]
.L2f3c:
	mov	r1, r7
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #1
	strb	r3, [r1]
	mov	r9, r2
	mov	r3, r7
	mov	r2, r9
	add	r3, #0x61
	mov	r1, #0xc1
	strb	r2, [r3]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_80048b0
	mov	r5, r0
	mov	r0, #0xb5
	bl	__Func_801a370
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r6, #0x1c]
	bl	__Func_8003fa4
	mov	r0, #0x11
	bl	__Func_8002dd8
	ldr	r3, [r7, #8]
	str	r3, [r7, #0x38]
	ldr	r3, [r7, #0xc]
	mov	r2, r8
	str	r2, [r7, #0x30]
	str	r3, [r7, #0x3c]
	mov	r2, r10
	mov	r3, r9
	strb	r3, [r2]
	ldr	r3, =OvlFunc_946_200ae70
	str	r3, [r7, #0x6c]
	mov	r3, r7
	add	r3, #0x56
	mov	r2, r8
	strb	r2, [r3]
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200aed8

	.section .data
	.global gOvl_0200b2bc
	.global gOvl_0200b5f8
	.global gScript_911__0200b610
	.global .L3718
	.global .L3850
	.global .L3880
	.global .L38e0
	.global .L3904
	.global .L39f4
	.global gScript_932__0200bd48
	.global .L3d6c
	.global .L315c
	.global .L319c
	.global .L31b4
	.global .L32d4
	.global .L3310
	.global .L3358
	.global .L33a0
	.global .L3400
	.global .L3448
	.global .L3478

.L315c:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x315c, (0x319c-0x315c)
.L319c:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x319c, (0x31b4-0x319c)
.L31b4:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x31b4, (0x32bc-0x31b4)
gOvl_0200b2bc:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x32bc, (0x32d4-0x32bc)
.L32d4:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x32d4, (0x3310-0x32d4)
.L3310:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3310, (0x3358-0x3310)
.L3358:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3358, (0x33a0-0x3358)
.L33a0:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x33a0, (0x3400-0x33a0)
.L3400:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3400, (0x3448-0x3400)
.L3448:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3448, (0x3478-0x3448)
.L3478:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3478, (0x3508-0x3478)
	.global gOvl_0200b508
gOvl_0200b508:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3508, (0x35f8-0x3508)
gOvl_0200b5f8:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x35f8, (0x3610-0x35f8)
gScript_911__0200b610:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3610, (0x3718-0x3610)
.L3718:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3718, (0x3850-0x3718)
.L3850:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3850, (0x3880-0x3850)
.L3880:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3880, (0x38e0-0x3880)
.L38e0:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x38e0, (0x3904-0x38e0)
.L3904:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3904, (0x39f4-0x3904)
.L39f4:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x39f4, (0x3d48-0x39f4)
gScript_932__0200bd48:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3d48, (0x3d6c-0x3d48)
.L3d6c:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3d6c
