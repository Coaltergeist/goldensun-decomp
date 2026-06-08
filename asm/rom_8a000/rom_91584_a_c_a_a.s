	.include "macros.inc"

.thumb_func_start GetSpriteVoice
	push	{lr}
	ldr	r3, =gState
	ldr	r2, =0x20a
	add	r3, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L915c4
	bl	GetSpriteVoiceEntry
	ldrb	r0, [r0, #2]
	cmp	r0, #0xff
	bne	.L915c8
.L915c4:
	mov	r0, #0
	b	.L915ce
.L915c8:
	mov	r3, #0x80
	lsl	r3, #1
	add	r0, r3
.L915ce:
	pop	{r1}
	bx	r1
.func_end GetSpriteVoice

