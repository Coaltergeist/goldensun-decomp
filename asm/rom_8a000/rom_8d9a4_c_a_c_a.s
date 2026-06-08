	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808ec8c  @ 0x0808ec8c
	push	{r5, lr}
	bl	GetMapActorIndex
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.L8ecd4
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	lsl	r2, r0, #3
	add	r3, r2
	mov	r2, #0x8e
	lsl	r2, #1
	add	r3, r2
	ldr	r5, [r3]
	mov	r0, #0x12
	bl	WaitFrames
	cmp	r5, #0
	beq	.L8ecbc
	mov	r0, r5
	mov	r1, #7
	bl	_Actor_SetAnim
.L8ecbc:
	mov	r0, #0x92
	bl	_PlaySound
	cmp	r5, #0
	beq	.L8ecd4
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x28]
	mov	r0, r5
	mov	r1, #1
	bl	_Actor_SetSpriteFlags
.L8ecd4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_808ec8c

