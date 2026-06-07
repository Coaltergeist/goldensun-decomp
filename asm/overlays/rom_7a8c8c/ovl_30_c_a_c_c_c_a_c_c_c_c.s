	.include "macros.inc"

.thumb_func_start OvlFunc_922_2008ed8
	push	{r5, r6, lr}
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	mov	r0, r3
	mov	r2, r5
	mov	r1, r4
	mov	r3, r6
	bl	__Func_800c150
	mov	r5, r0
	cmp	r5, #0
	beq	.Lf28
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	mov	r2, r5
	add	r2, #0x55
	strb	r3, [r1, #9]
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, r5
	mov	r1, #0xf
	bl	__Func_80929d8
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	mov	r0, r5
	b	.Lf2a
.Lf28:
	mov	r0, #0
.Lf2a:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_922_2008ed8

.thumb_func_start OvlFunc_922_2008f30
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x34
	cmp	r2, r3
	bne	.Lf48
	ldr	r0, =.L2bd8
	b	.Lf86
.Lf48:
	ldr	r3, =0x3e
	cmp	r2, r3
	bne	.Lf52
	ldr	r0, =.L2c08
	b	.Lf86
.Lf52:
	ldr	r3, =0x3f
	cmp	r2, r3
	bne	.Lf5c
	ldr	r0, =.L2d1c
	b	.Lf86
.Lf5c:
	ldr	r3, =0x40
	cmp	r2, r3
	bne	.Lf66
	ldr	r0, =.L2e24
	b	.Lf86
.Lf66:
	ldr	r3, =0x41
	cmp	r2, r3
	bne	.Lf70
	ldr	r0,=.L3058
	b	.Lf86
.Lf70:
	ldr	r3, =0x42
	cmp	r2, r3
	bne	.Lf7a
	ldr	r0, =.L3130
	b	.Lf86
.Lf7a:
	ldr	r3, =0x43
	cmp	r2, r3
	bne	.Lf84
	ldr	r0, =.L3184
	b	.Lf86
.Lf84:
	ldr	r0, =.L2bcc
.Lf86:
	pop	{r1}
	bx	r1
.func_end OvlFunc_922_2008f30

.thumb_func_start OvlFunc_922_2008fcc
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r0, #0x7b
	bl	__Func_80f9080
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, #1
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008fcc

