	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_20084a0
	push	{r5, r6, r7, lr}
	sub	r0, #0x64
	mov	r7, r1
	mov	r6, r2
	bl	__MapActor_GetActor
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r5, r0
	ldr	r0, [r3]
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r0, #8]
	ldr	r1, [r3]
	ldr	r3, [r5, #8]
	cmp	r2, r3
	bge	.Lm881_4d2
	mov	r2, #0xb8
	lsl	r2, #1
	add	r3, r1, r2
	strh	r7, [r3]
	b	.Lm881_4da
.Lm881_4d2:
	mov	r2, #0xb8
	lsl	r2, #1
	add	r3, r1, r2
	strh	r6, [r3]
.Lm881_4da:
	mov	r0, #0x7b
	bl	__PlaySound
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_20084a0

