	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_800c548
	push	{lr}
	cmp	r0, #0
	beq	.Lc56c
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.Lc56c
	ldr	r0, [r0, #0x50]
	mov	r3, #3
	and	r1, r3
	ldrb	r2, [r0, #5]
	mov	r3, #0xd
	neg	r3, r3
	lsl	r1, #2
	and	r3, r2
	orr	r3, r1
	strb	r3, [r0, #5]
.Lc56c:
	pop	{r0}
	bx	r0
.func_end Func_800c548

.thumb_func_start Func_800c570
	push	{lr}
	cmp	r0, #0
	beq	.Lc594
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.Lc594
	ldr	r0, [r0, #0x50]
	mov	r3, #1
	and	r1, r3
	ldrb	r2, [r0, #0x1d]
	mov	r3, #3
	neg	r3, r3
	lsl	r1, #1
	and	r3, r2
	orr	r3, r1
	strb	r3, [r0, #0x1d]
.Lc594:
	pop	{r0}
	bx	r0
.func_end Func_800c570

.thumb_func_start Actor_SetColorswap
	push	{lr}
	cmp	r0, #0
	beq	.Lc5ae
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.Lc5ae
	ldr	r0, [r0, #0x50]
	bl	Sprite_SetColorswap
.Lc5ae:
	pop	{r0}
	bx	r0
.func_end Actor_SetColorswap

.thumb_func_start Func_800c5b4
	push	{lr}
	ldr	r0, =Func_800c62c
	bl	Func_80042c8
	ldr	r0, =Func_800c880
	bl	Func_80042c8
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	_Func_8091200
	mov	r0, #1
	bl	_Func_8091254
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0xf1ff
	and	r3, r2
	ldr	r2, .Lc5ec	@ 0x1000
	orr	r3, r2
	strh	r3, [r1]
	pop	{r0}
	bx	r0

	.align	2, 0
.Lc5ec:
	.word	0x1000
.func_end Func_800c5b4

.thumb_func_start Func_800c5fc
	push	{lr}
	ldr	r0, =Func_800c62c
	bl	Func_800439c
	ldr	r0, =Func_800c880
	bl	Func_800439c
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0xe1ff
	and	r3, r2
	strh	r3, [r1]
	pop	{r0}
	bx	r0
.func_end Func_800c5fc

