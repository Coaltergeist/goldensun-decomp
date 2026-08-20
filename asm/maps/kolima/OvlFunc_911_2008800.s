	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_911_2008800
	push	{lr}
	mov	r0, #0x13
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm911_82a
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.Lm911_824
	str	r2, [r0, #0xc]
	b	.Lm911_82a
.Lm911_824:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.Lm911_82a:
	mov	r0, #0x14
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm911_852
	mov	r3, r0
	add	r3, #0x55
	mov	r1, #0
	strb	r1, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lm911_84c
	str	r1, [r0, #0xc]
	b	.Lm911_852
.Lm911_84c:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.Lm911_852:
	mov	r0, #0x15
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm911_87a
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.Lm911_874
	str	r2, [r0, #0xc]
	b	.Lm911_87a
.Lm911_874:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.Lm911_87a:
	mov	r0, #0x16
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm911_8a2
	mov	r3, r0
	add	r3, #0x55
	mov	r1, #0
	strb	r1, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lm911_89c
	str	r1, [r0, #0xc]
	b	.Lm911_8a2
.Lm911_89c:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.Lm911_8a2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_2008800

