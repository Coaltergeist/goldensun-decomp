	.include "macros.inc"

.thumb_func_start OvlFunc_907_2008030
	push	{r5, lr}
	mov	r5, r0
	ldr	r1, [r5, #0x68]
	cmp	r1, #0
	beq	.L7a
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
	beq	.L7a
	mov	r2, #0x80
	lsl	r2, #5
	cmp	r0, r2
	ble	.L6e
	mov	r0, r2
.L6e:
	ldr	r2, =0xfffff000
	cmp	r0, r2
	bge	.L76
	mov	r0, r2
.L76:
	add	r3, r0
	strh	r3, [r5, #6]
.L7a:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_907_2008030

.thumb_func_start OvlFunc_907_2008088
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x1e
	cmp	r2, r3
	bne	.La0
	ldr	r0, =.L11ec
	b	.Lb6
.La0:
	ldr	r3, =0x23
	cmp	r2, r3
	bne	.Laa
	ldr	r0, =.L130c
	b	.Lb6
.Laa:
	ldr	r3, =0x20
	cmp	r2, r3
	bne	.Lb4
	ldr	r0, =.L136c
	b	.Lb6
.Lb4:
	ldr	r0, =.L11d4
.Lb6:
	pop	{r1}
	bx	r1
.func_end OvlFunc_907_2008088

.thumb_func_start OvlFunc_907_20080dc
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x20
	mov	r0, #0
	cmp	r2, r3
	bne	.Lf4
	ldr	r0, =gOvl_020093fc
.Lf4:
	pop	{r1}
	bx	r1
.func_end OvlFunc_907_20080dc

