	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Field_Growth_Target  @ 0x080985a8
	push	{r5, lr}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	ldr	r5, [r3, #0x14]
	cmp	r5, #0
	beq	.L985f2
	bl	Func_8098698
	mov	r0, r5
	mov	r1, #2
	bl	_Actor_SetAnim
	mov	r2, r5
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, #0
	bl	_Actor_SetSpriteFlags
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	mov	r0, #0xa
	bl	WaitFrames
	mov	r0, #0x7e
	bl	_PlaySound
	mov	r0, #0x28
	bl	WaitFrames
	bl	Func_809748c
.L985f2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Field_Growth_Target
