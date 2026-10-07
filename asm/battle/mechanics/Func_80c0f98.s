	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c0f98  @ 0x080c0f98
	push	{r5, r6, lr}
	mov	r5, r1
	bl	GetBattleActor
	cmp	r0, #0
	beq	.Lc100c
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.Lc100c
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r2, #0xf
	and	r2, r3
	cmp	r2, #1
	beq	.Lc0fbe
	cmp	r2, #2
	beq	.Lc0fde
	b	.Lc100c
.Lc0fbe:
	ldr	r4, [r0, #0x50]
	mov	r2, #0xd
	mov	r3, #3
	ldrb	r1, [r4, #5]
	neg	r2, r2
	and	r5, r3
	mov	r3, r2
	lsl	r0, r5, #2
	and	r3, r1
	orr	r3, r0
	strb	r3, [r4, #5]
	ldrb	r3, [r4, #0x11]
	and	r2, r3
	orr	r2, r0
	strb	r2, [r4, #0x11]
	b	.Lc100c
.Lc0fde:
	mov	r3, #3
	and	r5, r3
	ldr	r1, [r0, #0x50]
	lsl	r0, r5, #2
	mov	r5, #0xd
	mov	r6, #0
	neg	r5, r5
.Lc0fec:
	ldmia	r1!, {r4}
	cmp	r4, #0
	beq	.Lc100c
	ldrb	r2, [r4, #5]
	mov	r3, r5
	and	r3, r2
	orr	r3, r0
	ldrb	r2, [r4, #0x11]
	strb	r3, [r4, #5]
	mov	r3, r5
	and	r3, r2
	orr	r3, r0
	add	r6, #1
	strb	r3, [r4, #0x11]
	cmp	r6, #3
	ble	.Lc0fec
.Lc100c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80c0f98
