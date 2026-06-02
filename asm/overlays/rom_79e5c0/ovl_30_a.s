	.include "macros.inc"

.thumb_func_start OvlFunc_911_2008030
	push	{r5, lr}
	ldr	r5, =.L3698
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L44
	mov	r1, #2
	bl	__Func_800c300
	mov	r3, #0
	str	r3, [r5]
.L44:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_911_2008030

.thumb_func_start OvlFunc_911_2008050
	push	{r5, r6, lr}
	mov	r5, r0
	bl	__Func_8004458
	mov	r3, #0x64
	mov	r2, r0
	mul	r2, r3
	mov	r6, r5
	add	r6, #0x64
	ldrh	r3, [r6]
	lsr	r2, #16
	add	r3, r2
	mov	r2, #0xfa
	strh	r3, [r6]
	lsl	r2, #18
	lsl	r3, #16
	cmp	r3, r2
	ble	.L7e
	mov	r0, r5
	mov	r1, #7
	bl	__Func_80929d8
	b	.L86
.L7e:
	mov	r0, r5
	mov	r1, #0xa
	bl	__Func_80929d8
.L86:
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	mov	r2, #0x96
	lsl	r2, #3
	cmp	r3, r2
	ble	.L96
	mov	r3, #0
	strh	r3, [r6]
.L96:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_911_2008050

.thumb_func_start OvlFunc_911_20080a0
	push	{r5, r6, lr}
	add	r0, #0x48
	mov	r2, #0
	mov	r6, #0x69
	mov	r5, #0x6e
	mov	r4, #2
	mov	r1, #1
.Lae:
	sub	r3, r2, #6
	strh	r6, [r0]
	cmp	r3, #1
	bhi	.Lb8
	strh	r5, [r0]
.Lb8:
	add	r2, #1
	strb	r4, [r0, #0x16]
	str	r1, [r0, #4]
	add	r0, #0x18
	cmp	r2, #8
	bls	.Lae
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_20080a0

.thumb_func_start OvlFunc_911_20080cc
	push	{lr}
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0x24]
	add	r3, r2
	str	r3, [r0, #8]
	ldr	r2, [r0, #0x2c]
	ldr	r3, [r0, #0x10]
	add	r3, r2
	str	r3, [r0, #0x10]
	ldr	r3, =0xfffff5c3
	add	r2, r3
	str	r2, [r0, #0x2c]
	ldr	r3, [r0, #0x18]
	mov	r2, #0xc0
	lsl	r2, #3
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
	mov	r2, r0
	add	r2, #0x64
	ldrh	r3, [r2]
	sub	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L108
	bl	__Func_800c0f4
.L108:
	mov	r0, #1
	pop	{r1}
	bx	r1
.func_end OvlFunc_911_20080cc

.thumb_func_start OvlFunc_911_2008114
	push	{r5, lr}
	mov	r5, r0
	ldr	r1, [r5, #0x68]
	cmp	r1, #0
	beq	.L15e
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldr	r0, [r1, #0x10]
	ldr	r3, [r5, #0x10]
	ldr	r1, [r1, #8]
	sub	r0, r3
	ldr	r3, [r5, #8]
	sub	r1, r3
	bl	__Func_80044d0
	ldrh	r3, [r5, #6]
	lsl	r0, #16
	lsr	r0, #16
	sub	r0, r3
	lsl	r0, #16
	asr	r0, #16
	cmp	r0, #0
	beq	.L15e
	mov	r2, #0x80
	lsl	r2, #5
	cmp	r0, r2
	ble	.L152
	mov	r0, r2
.L152:
	ldr	r2, =0xfffff000
	cmp	r0, r2
	bge	.L15a
	mov	r0, r2
.L15a:
	add	r3, r0
	strh	r3, [r5, #6]
.L15e:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_911_2008114

.thumb_func_start OvlFunc_911_200816c
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x27
	cmp	r2, r3
	bne	.L184
	ldr	r0, =.L2f80
	b	.L190
.L184:
	ldr	r3, =0x26
	cmp	r2, r3
	bne	.L18e
	ldr	r0, =.L2fc8
	b	.L190
.L18e:
	ldr	r0, =.L2e60
.L190:
	pop	{r1}
	bx	r1
.func_end OvlFunc_911_200816c

.thumb_func_start OvlFunc_911_20081ac
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x26
	mov	r0, #0
	cmp	r2, r3
	bne	.L1c4
	ldr	r0, =.L3010
.L1c4:
	pop	{r1}
	bx	r1
.func_end OvlFunc_911_20081ac

