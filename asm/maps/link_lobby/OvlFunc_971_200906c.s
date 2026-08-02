	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_200906c
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, #0
	bl	__CutsceneStart
	cmp	r5, #0xd
	beq	.L1086
	cmp	r5, #0xd
	bgt	.L108a
	cmp	r5, #0xc
	bne	.L108a
	ldr	r7, =0x2985
	b	.L108c
.L1086:
	ldr	r7, =0x297f
	b	.L108c
.L108a:
	ldr	r7, =0x2982
.L108c:
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r0, r5
	ldr	r1, [r3]
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L10bc
	ldr	r0, =0x305
	bl	__GetFlag
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r6, r3
	mov	r3, #2
	sub	r6, r3, r6
.L10bc:
	add	r0, r7, r6
	bl	__MessageID
	mov	r1, #0
	mov	r0, r5
	bl	__Func_8092c40
	bl	__CutsceneEnd
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_200906c
