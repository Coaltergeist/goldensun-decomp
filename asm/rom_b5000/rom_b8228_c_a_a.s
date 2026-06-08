	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b83b4
	push	{r5, r6, lr}
	mov	r5, r1
	sub	sp, #0xc
	bl	GetBattleActor
	ldr	r6, [r0]
	mov	r0, r5
	bl	GetBattleActor
	mov	r4, #0x80
	ldr	r2, [r6, #0x38]
	lsl	r4, #24
	ldr	r0, [r0]
	cmp	r2, r4
	bne	.Lb83d4
	ldr	r2, [r6, #8]
.Lb83d4:
	ldr	r5, [r6, #0x40]
	cmp	r5, r4
	bne	.Lb83dc
	ldr	r5, [r6, #0x10]
.Lb83dc:
	ldr	r3, [r0, #0x38]
	cmp	r3, r4
	bne	.Lb83e4
	ldr	r3, [r0, #8]
.Lb83e4:
	ldr	r1, [r0, #0x40]
	cmp	r1, r4
	bne	.Lb83ec
	ldr	r1, [r0, #0x10]
.Lb83ec:
	add	r3, r2, r3
	lsr	r2, r3, #31
	add	r3, r2
	mov	r0, sp
	asr	r3, #1
	str	r3, [r0]
	mov	r3, #0
	str	r3, [r0, #4]
	add	r3, r5, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r1, #0x80
	str	r3, [r0, #8]
	lsl	r1, #5
	bl	Func_80b83b0
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b83b4

