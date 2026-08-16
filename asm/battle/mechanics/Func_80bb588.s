	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bb588  @ 0x080bb588
	push	{r5, lr}
	mov	r5, r0
	bl	_GetUnit
	ldr	r4, =0x12f
	mov	r1, r0
	mov	r2, #3
	mov	r0, #0
	add	r3, r1, r4
.Lbb59a:
	sub	r2, #1
	strb	r0, [r3]
	sub	r3, #1
	cmp	r2, #0
	bge	.Lbb59a
	ldr	r0, =0x131
	mov	r4, #0x99
	mov	r3, #0
	add	r2, r1, r0
	lsl	r4, #1
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r0, #2
	add	r2, r1, r4
	strb	r3, [r2]
	add	r4, #2
	add	r2, r1, r0
	strb	r3, [r2]
	add	r2, r1, r4
	strb	r3, [r2]
	mov	r0, r5
	bl	_CalcStats
	mov	r0, r5
	bl	GetBattleActor
	mov	r1, r0
	mov	r0, r5
	bl	Func_80b78e4
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80bb588
