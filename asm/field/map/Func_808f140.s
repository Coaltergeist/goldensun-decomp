	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808f140  @ 0x0808f140
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r1
	cmp	r5, #0
	beq	.L8f1ac
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	GetFieldActor
	mov	r3, #1
	and	r3, r6
	mov	r7, r0
	cmp	r3, #0
	beq	.L8f182
	mov	r0, r5
	mov	r1, #0
	bl	_Actor_SetSpriteFlags
	ldr	r1, =gScript_0809e6c0
	mov	r0, r5
	bl	_Actor_SetScript
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x28]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r5, #0x48]
	ldr	r3, =Func_808eee4
	str	r3, [r5, #0x6c]
.L8f182:
	cmp	r6, #3
	bne	.L8f18c
	mov	r0, #0x3c
	bl	WaitFrames
.L8f18c:
	mov	r3, #2
	and	r3, r6
	cmp	r3, #0
	beq	.L8f19a
	mov	r0, r5
	bl	Func_808f0d8
.L8f19a:
	cmp	r6, #3
	bne	.L8f1a4
	mov	r0, #0x50
	bl	WaitFrames
.L8f1a4:
	mov	r0, r7
	mov	r1, #1
	bl	_Actor_SetAnim
.L8f1ac:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808f140

