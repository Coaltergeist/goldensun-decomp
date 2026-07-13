	.include "macros.inc"
	.include "gba.inc"
.thumb_func_start Func_808bc9c  @ 0x0808bc9c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb6
	ldr	r1, [r3]
	lsl	r2, #1
	add	r3, r1, r2
	add	r2, #2
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	add	r3, r1, r2
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r2, #2
	add	r0, r3
	add	r3, r1, r2
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r2, #2
	add	r0, r3
	add	r3, r1, r2
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r2, #2
	add	r0, r3
	add	r3, r1, r2
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r2, #2
	add	r0, r3
	add	r3, r1, r2
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r2, #2
	add	r0, r3
	add	r3, r1, r2
	mov	r4, #0
	ldrsh	r2, [r3, r4]
	mov	r4, #0xbd
	lsl	r4, #1
	add	r3, r1, r4
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r0, r2
	add	r0, r3
	add	r0, r2
	mov	r2, #0xbe
	lsl	r2, #1
	add	r3, r1, r2
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r2, #2
	add	r0, r3
	add	r3, r1, r2
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r2, #2
	add	r0, r3
	add	r3, r1, r2
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r2, #2
	add	r0, r3
	add	r3, r1, r2
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	add	r0, r3
	bx	lr
.func_end Func_808bc9c

.thumb_func_start Func_808bd24  @ 0x0808bd24
	push	{r5, r6, r7, lr}
	ldr	r2, =gState
	mov	r1, #0xfa
	lsl	r1, #1
	add	r2, r1
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r2]
	ldr	r6, [r3]
	lsl	r2, #2
	add	r2, #0x14
	ldr	r2, [r6, r2]
	sub	r3, #0x4c
	sub	sp, #0xc
	ldr	r7, [r3]
	mov	r0, #0
	cmp	r2, #0
	beq	.L8bdc2
	ldr	r3, [r2, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r2, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r5, #8]
	mov	r0, #0x80
	ldrh	r1, [r2, #6]
	lsl	r0, #13
	mov	r2, r5
	bl	vec3_translate
	mov	r2, #0xcf
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #3
	bne	.L8bd98
	ldr	r3, [r5]
	cmp	r3, #0
	bge	.L8bd78
	ldr	r2, =0x1fffff
	add	r3, r2
.L8bd78:
	ldr	r2, [r5, #8]
	asr	r1, r3, #21
	mov	r0, #0x1f
	and	r1, r0
	cmp	r2, #0
	bge	.L8bd88
	ldr	r3, =0x1fffff
	add	r2, r3
.L8bd88:
	asr	r3, r2, #21
	and	r3, r0
	lsl	r3, #5
	add	r3, r1, r3
	ldr	r2, =ewram_2020000
	lsl	r3, #2
	add	r1, r3, r2
	b	.L8bdc0
.L8bd98:
	mov	r1, #0x98
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r1, [r3]
	ldr	r3, [r5]
	cmp	r3, #0
	bge	.L8bdaa
	ldr	r2, =0xfffff
	add	r3, r2
.L8bdaa:
	ldr	r2, [r5, #8]
	asr	r0, r3, #20
	cmp	r2, #0
	bge	.L8bdb6
	ldr	r3, =0xfffff
	add	r2, r3
.L8bdb6:
	asr	r3, r2, #20
	lsl	r3, #7
	add	r3, r0, r3
	lsl	r3, #2
	add	r1, r3
.L8bdc0:
	ldrb	r0, [r1, #2]
.L8bdc2:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808bd24

.thumb_func_start CheckSpecialExits  @ 0x0808bde0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	str	r0, [sp, #0x10]
	str	r1, [sp, #0xc]
	str	r2, [sp, #8]
	ldr	r3, =__start_overlay
	ldr	r0, [r3, #0x2c]
	bl	_call_via_r0
	mov	r5, r0
	cmp	r5, #0
	beq	.L8bea4
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	str	r3, [sp]
	mov	r2, #1
	mov	r1, #0
	ldrsh	r6, [r5, r1]
	neg	r2, r2
	cmp	r6, r2
	beq	.L8bea4
.L8be16:
	mov	r1, #2
	ldrsh	r3, [r5, r1]
	mov	r8, r3
	mov	r3, #4
	ldrsh	r2, [r5, r3]
	mov	r11, r2
	mov	r2, #6
	ldrsh	r1, [r5, r2]
	mov	r10, r1
	mov	r2, #0xa
	ldrsh	r1, [r5, r2]
	mov	r9, r1
	mov	r2, #0xe
	ldrsh	r1, [r5, r2]
	mov	r3, #0xc
	ldrsh	r0, [r5, r3]
	mov	r3, #8
	ldrsh	r7, [r5, r3]
	str	r1, [sp, #4]
	bl	Func_808d428
	cmp	r0, #0
	beq	.L8be90
	mov	r1, r8
	ldr	r2, [sp, #0xc]
	lsl	r3, r1, #16
	cmp	r2, r3
	blt	.L8be90
	lsl	r3, r7, #16
	cmp	r2, r3
	bge	.L8be90
	ldr	r1, [sp, #0x10]
	lsl	r3, r6, #16
	cmp	r1, r3
	blt	.L8be90
	mov	r2, r10
	lsl	r3, r2, #16
	cmp	r1, r3
	bge	.L8be90
	mov	r1, r11
	ldr	r2, [sp, #8]
	lsl	r3, r1, #16
	cmp	r2, r3
	blt	.L8be90
	mov	r1, r9
	lsl	r3, r1, #16
	cmp	r2, r3
	bge	.L8be90
	ldr	r2, [sp]
	mov	r1, #0xb8
	lsl	r1, #1
	add	r3, r2, r1
	add	r2, sp, #4
	ldrh	r2, [r2]
	mov	r0, #0x7b
	strh	r2, [r3]
	bl	_PlaySound
	bl	Func_8091660
	b	.L8bea4
.L8be90:
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	str	r3, [sp]
	add	r5, #0x10
	mov	r1, #1
	mov	r3, #0
	ldrsh	r6, [r5, r3]
	neg	r1, r1
	cmp	r6, r1
	bne	.L8be16
.L8bea4:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end CheckSpecialExits

.thumb_func_start Func_808bec0  @ 0x0808bec0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x2c
	str	r2, [sp, #0x18]
	mov	r9, r3
	ldr	r3, =iwram_3001ebc
	mov	r11, r0
	ldr	r0, [r3]
	sub	r3, #0x4c
	ldr	r3, [r3]
	mov	r10, r1
	ldr	r7, =gState
	mov	r1, #0xfa
	str	r3, [sp, #0x14]
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r3, [r3]
	str	r3, [sp, #0x10]
	lsl	r3, #2
	add	r3, #0x14
	ldr	r3, [r0, r3]
	mov	r2, #0
	mov	r8, r0
	str	r3, [sp, #0xc]
	str	r2, [sp, #4]
	cmp	r0, #0
	bne	.L8bf02
	b	.L8c2ac
.L8bf02:
	bl	_GetPartySize
	mov	r6, #0
	str	r0, [sp, #8]
	cmp	r6, r0
	bcs	.L8bf2c
	mov	r3, #0xfc
	lsl	r3, #1
	add	r5, sp, #0x1c
	add	r7, r3
.L8bf16:
	ldrb	r0, [r7]
	bl	_GetUnit
	ldrh	r3, [r0, #0x38]
	strh	r3, [r5]
	ldr	r4, [sp, #8]
	add	r6, #1
	add	r7, #1
	add	r5, #2
	cmp	r6, r4
	bcc	.L8bf16
.L8bf2c:
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r8
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #3
	bne	.L8bf64
	mov	r3, r10
	cmp	r3, #0
	bge	.L8bf44
	ldr	r3, =0x1fffff
	add	r3, r10
.L8bf44:
	asr	r2, r3, #21
	mov	r1, #0x1f
	mov	r3, r9
	and	r2, r1
	cmp	r3, #0
	bge	.L8bf54
	ldr	r3, =0x1fffff
	add	r3, r9
.L8bf54:
	asr	r3, #21
	and	r3, r1
	lsl	r3, #5
	add	r3, r2, r3
	ldr	r1, =ewram_2020000
	lsl	r3, #2
	add	r0, r3, r1
	b	.L8bf9e
.L8bf64:
	mov	r2, r11
	cmp	r2, #2
	bhi	.L8bf7c
	lsl	r3, r2, #1
	add	r3, r11
	mov	r4, #0x98
	lsl	r3, #4
	lsl	r4, #1
	ldr	r1, [sp, #0x14]
	add	r3, r4
	ldr	r0, [r1, r3]
	b	.L8bf7e
.L8bf7c:
	ldr	r0, =gBuffer
.L8bf7e:
	mov	r3, r10
	cmp	r3, #0
	bge	.L8bf88
	ldr	r3, =0xfffff
	add	r3, r10
.L8bf88:
	asr	r2, r3, #20
	mov	r3, r9
	cmp	r3, #0
	bge	.L8bf94
	ldr	r3, =0xfffff
	add	r3, r9
.L8bf94:
	asr	r3, #20
	lsl	r3, #7
	add	r3, r2, r3
	lsl	r3, #2
	add	r0, r3
.L8bf9e:
	mov	r2, #0xdc
	lsl	r2, #1
	add	r2, r8
	mov	r1, #0xde
	ldr	r3, [r2]
	lsl	r1, #1
	ldrb	r6, [r0, #2]
	add	r1, r8
	str	r3, [r1]
	str	r0, [r2]
	cmp	r6, #0
	beq	.L8bfc0
	mov	r0, r10
	ldr	r1, [sp, #0x18]
	mov	r2, r9
	bl	CheckSpecialExits
.L8bfc0:
	sub	r3, r6, #1
	cmp	r3, #0xee
	bhi	.L8bfce
	mov	r3, #0xb6
	lsl	r3, #1
	add	r3, r8
	strh	r6, [r3]
.L8bfce:
	mov	r3, r6
	sub	r3, #0xfc
	cmp	r3, #2
	bhi	.L8bfde
	mov	r3, #0xb7
	lsl	r3, #1
	add	r3, r8
	strh	r6, [r3]
.L8bfde:
	ldr	r4, =gState
	mov	r2, #0xf9
	lsl	r2, #1
	add	r3, r4, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L8bfee
	b	.L8c17a
.L8bfee:
	ldr	r3, [sp, #0xc]
	cmp	r3, #0
	bne	.L8bff6
	b	.L8c17a
.L8bff6:
	mov	r0, #0x80
	ldr	r3, [r3, #0x38]
	lsl	r0, #24
	cmp	r3, r0
	bne	.L8c002
	b	.L8c17a
.L8c002:
	ldr	r1, [sp, #0xc]
	ldr	r0, =0x167
	ldr	r5, [r1, #0x30]
	bl	_GetFlag
	cmp	r0, #0
	beq	.L8c012
	lsl	r5, #1
.L8c012:
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L8c034
	ldr	r0, [sp, #0xc]
	mov	r1, r5
	add	r0, #8
	bl	Func_808b048
	mov	r3, #0xbe
	lsl	r3, #1
	add	r3, r8
	mov	r7, #1
	b	.L8c062
.L8c034:
	mov	r3, r6
	sub	r3, #0xf0
	cmp	r3, #1
	bhi	.L8c04c
	mov	r3, r6
	mov	r0, r6
	add	r3, #0xb1
	mov	r4, r8
	sub	r0, #0xef
	mov	r1, r5
	ldrb	r7, [r4, r3]
	b	.L8c058
.L8c04c:
	mov	r3, #0xd0
	lsl	r3, #1
	add	r3, r8
	mov	r0, #0
	mov	r1, r5
	ldrb	r7, [r3]
.L8c058:
	bl	Func_808b02c
	mov	r3, #0xbe
	lsl	r3, #1
	add	r3, r8
.L8c062:
	strh	r0, [r3]
	mov	r3, #0xd8
	ldr	r2, [sp, #0xc]
	lsl	r3, #1
	add	r3, r8
	ldr	r4, =Func_8000888
	ldr	r0, [r3]
	ldr	r1, [r2, #0x30]
	.call_via r4
	cmp	r7, #0
	bne	.L8c082
	lsr	r3, r0, #31
	add	r3, r0, r3
	asr	r0, r3, #1
.L8c082:
	mov	r2, #0xda
	lsl	r2, #1
	add	r2, r8
	ldr	r3, [r2]
	add	r0, r3, r0
	ldr	r3, =0xffff
	str	r0, [r2]
	cmp	r0, r3
	ble	.L8c0c2
	mov	r1, r0
	cmp	r0, #0
	bge	.L8c09c
	add	r1, r0, r3
.L8c09c:
	and	r0, r3
	asr	r1, #16
	str	r0, [r2]
	mov	r0, r1
	mov	r1, #0
	bl	Func_808c2dc
	bl	_Func_80bf5a8
	cmp	r0, #0
	beq	.L8c0b8
	mov	r0, #0x8b
	bl	_PlaySound
.L8c0b8:
	bl	Func_8091858
	bl	UpdatePoison
	str	r0, [sp, #4]
.L8c0c2:
	ldr	r4, =gState
	ldr	r0, =0x22e
	add	r3, r4, r0
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.L8c140
	cmp	r6, #0xfa
	bne	.L8c140
	mov	r3, #0xde
	lsl	r3, #1
	add	r3, r8
	ldr	r3, [r3]
	ldrb	r3, [r3, #2]
	cmp	r3, #0xfa
	bne	.L8c128
	ldr	r2, =0x232
	ldr	r3, [sp, #0xc]
	add	r1, r4, r2
	ldr	r2, [r3, #0x30]
	cmp	r2, #0
	bge	.L8c0f2
	ldr	r0, =0xffff
	add	r2, r0
.L8c0f2:
	ldrh	r3, [r1]
	asr	r2, #16
	add	r3, r2
	strh	r3, [r1]
	b	.L8c140

	.pool_aligned

.L8c128:
	mov	r1, #0x8b
	lsl	r1, #2
	add	r3, r4, r1
	ldrh	r3, [r3]
	lsl	r3, #16
	asr	r2, r3, #16
	ldr	r0, =0x232
	lsr	r3, #31
	add	r2, r3
	asr	r2, #1
	add	r3, r4, r0
	strh	r2, [r3]
.L8c140:
	mov	r2, #0x91
	lsl	r2, #2
	add	r1, r4, r2
	ldr	r2, [r1]
	cmp	r2, #0
	beq	.L8c17a
	ldr	r0, =0x23e
	add	r3, r4, r0
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #2
	beq	.L8c17a
	ldr	r0, [sp, #0xc]
	ldr	r3, [r0, #0x30]
	sub	r3, r2, r3
	str	r3, [r1]
	cmp	r3, #0
	bgt	.L8c17a
	mov	r3, #1
	mov	r2, #0xbf
	str	r3, [r1]
	lsl	r2, #1
	add	r2, r8
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #0
	bne	.L8c17a
	ldr	r3, =0x2096
	strh	r3, [r2]
.L8c17a:
	ldr	r2, =0x22e
	add	r3, r4, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #1
	bne	.L8c1d0
	ldr	r1, =0x232
	add	r5, r4, r1
	ldrh	r3, [r5]
	add	r3, #1
	strh	r3, [r5]
	sub	r2, #2
	add	r6, r4, r2
	ldrh	r0, [r6]
	lsl	r2, r0, #16
	asr	r1, r2, #16
	lsr	r2, #31
	add	r1, r2
	lsl	r3, #16
	asr	r3, #16
	asr	r1, #1
	cmp	r3, r1
	bne	.L8c1b6
	ldr	r0, [sp, #0x10]
	ldr	r1, =0x101
	str	r4, [sp]
	bl	MapActor_Surprise
	ldrh	r0, [r6]
	ldr	r4, [sp]
.L8c1b6:
	mov	r3, #0
	ldrsh	r2, [r5, r3]
	lsl	r3, r0, #16
	asr	r3, #16
	cmp	r2, r3
	bne	.L8c1d0
	mov	r1, #0x80
	lsl	r1, #1
	ldr	r0, [sp, #0x10]
	str	r4, [sp]
	bl	MapActor_Surprise
	ldr	r4, [sp]
.L8c1d0:
	ldr	r1, =0x232
	mov	r2, #0x8b
	lsl	r2, #2
	add	r0, r4, r1
	add	r3, r4, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	mov	r1, #0
	ldrsh	r2, [r0, r1]
	cmp	r2, r3
	blt	.L8c20e
	mov	r2, #0x8c
	lsl	r2, #2
	add	r3, r4, r2
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	mov	r3, #0
	strh	r3, [r0]
	mov	r0, #0xff
	mov	r3, #0x80
	lsl	r3, #1
	and	r0, r1
	neg	r0, r0
	and	r1, r3
	str	r4, [sp]
	bl	Func_808c30c
	ldr	r3, [sp, #4]
	add	r3, #1
	str	r3, [sp, #4]
	ldr	r4, [sp]
.L8c20e:
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.L8c2ac
	mov	r3, #0xc2
	lsl	r3, #1
	mov	r2, #0
	add	r3, r8
	strh	r2, [r3]
	mov	r3, #0xc3
	lsl	r3, #1
	add	r3, r8
	strh	r2, [r3]
	ldr	r1, [sp, #0xc]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r1, #0x28]
	mov	r1, #0x81
	lsl	r1, #1
	ldr	r0, [sp, #0x10]
	str	r4, [sp]
	bl	MapActor_Surprise
	ldr	r2, [sp, #8]
	mov	r6, #0
	ldr	r4, [sp]
	cmp	r6, r2
	bcs	.L8c2ac
	mov	r3, #0xc1
	lsl	r3, #1
	mov	r7, #0xc3
	mov	r0, #0xfc
	add	r3, r8
	lsl	r7, #1
	lsl	r0, #1
	mov	r10, r3
	add	r7, r8
	add	r5, r4, r0
.L8c258:
	ldrb	r0, [r5]
	bl	_GetUnit
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	cmp	r3, #0
	ble	.L8c26e
	ldrh	r3, [r7]
	add	r3, #1
	strh	r3, [r7]
	b	.L8c2a2
.L8c26e:
	add	r3, sp, #0x1c
	lsl	r2, r6, #1
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L8c2a2
	mov	r1, #0xc2
	lsl	r1, #1
	add	r1, r8
	ldrh	r3, [r1]
	add	r2, r3, #1
	strh	r2, [r1]
	lsl	r3, #16
	mov	r1, #0xc4
	lsl	r1, #1
	ldrb	r2, [r5]
	asr	r3, #15
	add	r3, r1
	mov	r4, r8
	strh	r2, [r4, r3]
	ldr	r3, =0xffff
	mov	r1, r10
	strh	r3, [r1]
	ldr	r3, =0x131
	add	r2, r0, r3
	mov	r3, #0
	strb	r3, [r2]
.L8c2a2:
	ldr	r4, [sp, #8]
	add	r6, #1
	add	r5, #1
	cmp	r6, r4
	bcc	.L8c258
.L8c2ac:
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808bec0

	.section .text.after, "ax", %progbits

.thumb_func_start Func_808c30c  @ 0x0808c30c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r8, r1
	cmp	r5, #0
	bge	.L8c340
	ldr	r0, =0x1ff
	mov	r1, #0
	bl	Func_8091220
	mov	r0, #4
	bl	Func_8091254
	mov	r2, #0xa
	neg	r2, r2
	cmp	r5, r2
	bge	.L8c338
	mov	r0, #0x86
	bl	_PlaySound
	b	.L8c346
.L8c338:
	mov	r0, #0x85
	bl	_PlaySound
	b	.L8c346
.L8c340:
	mov	r0, #0x7e
	bl	_PlaySound
.L8c346:
	bl	_GetPartySize
	cmp	r0, #0
	ble	.L8c390
	ldr	r3, =gState
	mov	r2, #0xfc
	lsl	r2, #1
	add	r7, r3, r2
	mov	r6, r0
.L8c358:
	ldrb	r0, [r7]
	bl	_GetUnit
	mov	r3, r8
	mov	r1, r5
	cmp	r3, #0
	beq	.L8c382
	mov	r2, #0x34
	ldrsh	r3, [r0, r2]
	mov	r1, #0x64
	mov	r0, r5
	mul	r0, r3
	bl	__divsi3
	mov	r1, r0
	cmp	r1, #0
	bne	.L8c382
	mov	r1, r5
	cmp	r1, #0
	bge	.L8c382
	neg	r1, r1
.L8c382:
	ldrb	r0, [r7]
	sub	r6, #1
	bl	_ModifyHP
	add	r7, #1
	cmp	r6, #0
	bne	.L8c358
.L8c390:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808c30c

.thumb_func_start UpdatePoison  @ 0x0808c3a4
	push	{r5, r6, r7, lr}
	mov	r7, #0
	bl	_GetPartySize
	cmp	r7, r0
	bge	.L8c420
	ldr	r3, =gState
	mov	r2, #0xfc
	lsl	r2, #1
	add	r6, r3, r2
	mov	r5, r0
.L8c3ba:
	ldrb	r0, [r6]
	bl	_GetUnit
	ldr	r2, =0x131
	add	r3, r0, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #1
	beq	.L8c3d4
	cmp	r3, #2
	beq	.L8c3f2
	b	.L8c410
.L8c3d4:
	mov	r3, #0x34
	ldrsh	r0, [r0, r3]
	mov	r1, #0x14
	add	r0, #0xa
	bl	__divsi3
	neg	r1, r0
	cmp	r1, #0
	bne	.L8c3ea
	mov	r1, #1
	neg	r1, r1
.L8c3ea:
	cmp	r7, #0
	bgt	.L8c412
	mov	r7, #1
	b	.L8c412
.L8c3f2:
	mov	r2, #0x34
	ldrsh	r0, [r0, r2]
	mov	r1, #0xa
	add	r0, #5
	bl	__divsi3
	neg	r1, r0
	cmp	r1, #0
	bne	.L8c408
	mov	r1, #1
	neg	r1, r1
.L8c408:
	cmp	r7, #1
	bgt	.L8c412
	mov	r7, #2
	b	.L8c412
.L8c410:
	mov	r1, #0
.L8c412:
	ldrb	r0, [r6]
	sub	r5, #1
	bl	_ModifyHP
	add	r6, #1
	cmp	r5, #0
	bne	.L8c3ba
.L8c420:
	cmp	r7, #0
	beq	.L8c438
	ldr	r0, =0x1ff
	mov	r1, #0
	bl	Func_8091220
	mov	r0, #4
	bl	Func_8091254
	mov	r0, #0x85
	bl	_PlaySound
.L8c438:
	mov	r0, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end UpdatePoison

.thumb_func_start Func_808c44c  @ 0x0808c44c
	push	{r5, lr}
	ldr	r1, =0xccc
	mov	r0, #0x1b
	bl	galloc_ewram
	mov	r1, #0xcf
	mov	r5, r0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L8c4aa
	mov	r1, #0xa8
	lsl	r1, #3
	mov	r0, #0x1f
	bl	galloc_ewram
	cmp	r0, #0
	beq	.L8c498
	ldr	r3, =0x53d
	add	r4, r0, r3
	mov	r3, #0
	ldrsb	r3, [r4, r3]
	cmp	r3, #0
	beq	.L8c498
	ldr	r1, =0x53a
	mov	r2, #0
	add	r3, r0, r1
	add	r1, #1
	strb	r2, [r3]
	add	r3, r0, r1
	strb	r2, [r3]
	ldr	r3, =0x53c
	add	r1, r0, r3
	mov	r3, #1
	strb	r3, [r1]
	strb	r2, [r4]
.L8c498:
	mov	r1, #0xf0
	lsl	r1, #1
	add	r3, r5, r1
	ldr	r3, [r3]
	mov	r2, #1
	add	r3, #0x5b
	strb	r2, [r3]
	bl	_Func_8011590
.L8c4aa:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_808c44c
