	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c0df4  @ 0x080c0df4
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r1
	mov	r8, r2
	bl	GetBattleActor
	ldr	r5, [r0]
	mov	r0, r6
	bl	GetBattleActor
	ldr	r3, [r0]
	ldr	r1, [r5, #8]
	ldr	r0, [r3, #8]
	ldr	r4, [r5, #0x10]
	ldr	r2, [r3, #0x10]
	add	r0, r1
	add	r2, r4
	lsr	r3, r0, #31
	add	r0, r3
	lsr	r3, r2, #31
	add	r2, r3
	asr	r0, #1
	asr	r2, #1
	mov	r1, #0
	mov	r3, r8
	bl	Func_80c0cec
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80c0df4
