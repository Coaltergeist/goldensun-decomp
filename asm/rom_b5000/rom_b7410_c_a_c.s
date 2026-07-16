	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b7f20  @ 0x080b7f20
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #0xc
	mov	r8, r1
	bl	GetBattleActor
	ldr	r5, [r0]
	mov	r1, #0
	mov	r0, r5
	bl	Func_80b7f70
	mov	r6, r0
	bl	Func_80b7ed8
	ldr	r3, [r5, #8]
	mov	r0, sp
	str	r3, [r0]
	ldr	r3, [r5, #0xc]
	str	r3, [r0, #4]
	ldr	r3, [r5, #0x10]
	mov	r1, r8
	str	r3, [r0, #8]
	bl	PhysMove
	ldr	r3, =Func_8000888
	ldr	r1, [r6, #0x18]
	.call_via r3
	add	sp, #0xc
	mov	r0, #0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80b7f20

