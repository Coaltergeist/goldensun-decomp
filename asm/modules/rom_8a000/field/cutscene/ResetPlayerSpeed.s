	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ResetPlayerSpeed  @ 0x08091660
	push	{r5, lr}
	ldr	r5, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r5, r2
	ldr	r0, [r3]
	bl	GetFieldActor
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x30]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r0, #0x34]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x38]
	str	r3, [r0, #0x40]
	mov	r2, #0xf9
	mov	r3, #0
	str	r3, [r0, #0x24]
	str	r3, [r0, #0x2c]
	lsl	r2, #1
	add	r3, r5, r2
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L9169e
	mov	r1, #0xc
	bl	_Actor_SetAnim
	b	.L916a4
.L9169e:
	mov	r1, #1
	bl	_Actor_SetAnim
.L916a4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end ResetPlayerSpeed

