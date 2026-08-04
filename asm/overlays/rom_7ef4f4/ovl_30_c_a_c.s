	.include "macros.inc"

.thumb_func_start OvlFunc_965_200a6fc
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	OvlFunc_965_200a660
	cmp	r0, #0
	beq	.L2730
	ldr	r3, [r0, #0xc]
	ldr	r0, [r5, #0xc]
	sub	r2, r3, r0
	cmp	r2, #0
	blt	.L2722
	mov	r3, #0x80
	lsl	r3, #12
	cmp	r2, r3
	bge	.L2730
	b	.L272c
.L2722:
	mov	r2, #0x80
	sub	r3, r0, r3
	lsl	r2, #12
	cmp	r3, r2
	bge	.L2730
.L272c:
	bl	OvlFunc_965_20080c4
.L2730:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200a6fc

.thumb_func_start OvlFunc_965_200a738
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	OvlFunc_965_200a660
	ldrh	r3, [r5, #6]
	mov	r1, #0x80
	lsl	r1, #6
	add	r5, r3, r1
	mov	r4, #0xf9
	ldr	r3, =gState
	lsl	r4, #1
	add	r3, r4
	mov	r1, #0xc0
	ldrb	r3, [r3]
	mov	r2, r0
	lsl	r1, #8
	mov	r0, #1
	and	r5, r1
	neg	r0, r0
	cmp	r3, #1
	beq	.L276c
	cmp	r2, #0
	bne	.L2780
.L276c:
	cmp	r5, r1
	bne	.L2774
	bl	__Func_8093fa0
.L2774:
	mov	r1, #0x80
	lsl	r1, #7
	cmp	r5, r1
	bne	.L2780
	bl	__Func_8093e28
.L2780:
	cmp	r0, #0
	beq	.L2796
	ldr	r3, =gState
	mov	r2, #0xf9
	lsl	r2, #1
	add	r3, r2
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.L2796
	bl	OvlFunc_965_200a6fc
.L2796:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200a738

.thumb_func_start OvlFunc_965_200a7a0
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb0
	cmp	r2, r3
	bne	.L27b8
	ldr	r0, =.L391c
	b	.L27ce
.L27b8:
	ldr	r3, =0xaf
	cmp	r2, r3
	bne	.L27c2
	ldr	r0, =.L39e8
	b	.L27ce
.L27c2:
	ldr	r3, =0xae
	cmp	r2, r3
	bne	.L27cc
	ldr	r0, =.L3ac0
	b	.L27ce
.L27cc:
	ldr	r0, =.L3c28
.L27ce:
	pop	{r1}
	bx	r1
.func_end OvlFunc_965_200a7a0

