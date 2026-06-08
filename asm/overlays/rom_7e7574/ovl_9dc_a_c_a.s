	.include "macros.inc"

.thumb_func_start OvlFunc_959_2008a34
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa1
	cmp	r2, r3
	bne	.La4c
	ldr	r0, =.L6910
	b	.La5e
.La4c:
	ldr	r3, =0xa2
	cmp	r2, r3
	beq	.La58
	ldr	r3, =0xa3
	cmp	r2, r3
	bne	.La5c
.La58:
	ldr	r0, =.L697c
	b	.La5e
.La5c:
	ldr	r0, =.L68a4
.La5e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_959_2008a34

.thumb_func_start OvlFunc_959_2008a80
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6a
	cmp	r2, r3
	bne	.La98
	ldr	r0, =.L69d0
	b	.Lac2
.La98:
	ldr	r3, =0xa2
	cmp	r2, r3
	bne	.Laa2
	ldr	r0, =.L6e08
	b	.Lac2
.Laa2:
	ldr	r3, =0xa1
	cmp	r2, r3
	bne	.Laac
	ldr	r0, =.L6c28
	b	.Lac2
.Laac:
	ldr	r3, =0xa0
	cmp	r2, r3
	bne	.Lab6
	ldr	r0, =.L6ac0
	b	.Lac2
.Lab6:
	ldr	r3, =0xa3
	cmp	r2, r3
	bne	.Lac0
	ldr	r0, =.L6e98
	b	.Lac2
.Lac0:
	ldr	r0, =.L69b8
.Lac2:
	pop	{r1}
	bx	r1
.func_end OvlFunc_959_2008a80

.thumb_func_start OvlFunc_959_2008af8
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa0
	cmp	r2, r3
	bne	.Lb10
	ldr	r0, =.L6ff4
	b	.Lb26
.Lb10:
	ldr	r3, =0xa1
	cmp	r2, r3
	bne	.Lb1a
	ldr	r0, =.L7258
	b	.Lb26
.Lb1a:
	ldr	r3, =0xa2
	cmp	r2, r3
	bne	.Lb24
	ldr	r0, =.L7528
	b	.Lb26
.Lb24:
	ldr	r0, =.L763c
.Lb26:
	pop	{r1}
	bx	r1
.func_end OvlFunc_959_2008af8

.thumb_func_start OvlFunc_959_2008b4c
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x16
	str	r3, [sp, #4]
	mov	r5, #0xf
	mov	r0, #0xf
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x17
	str	r3, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb96
	mov	r1, #0
	bl	__Func_800c528
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	sub	r2, #0x32
	mov	r3, #2
	strb	r3, [r2]
.Lb96:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008b4c

