	.include "macros.inc"

.thumb_func_start OvlFunc_911_20081dc
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x24
	cmp	r2, r3
	bne	.L204
	ldr	r0, =0x845
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L200
	ldr	r0, =.L3098
	bl	OvlFunc_911_20080a0
.L200:
	ldr	r0, =.L3098
	b	.L210
.L204:
	ldr	r3, =0x27
	cmp	r2, r3
	bne	.L20e
	ldr	r0, =.L3368
	b	.L210
.L20e:
	ldr	r0, =.L3080
.L210:
	pop	{r1}
	bx	r1
.func_end OvlFunc_911_20081dc

.thumb_func_start OvlFunc_911_2008230
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L250
	mov	r0, #0x10
	bl	__Func_80b29a8
	b	.L25e
.L250:
	ldr	r0, =0x16b3
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093054
.L25e:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_2008230

