	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start VaultRooms1_GetActors
	push	{r5, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x11
	bgt	.Lm899_62
	cmp	r3, #0xf
	blt	.Lm899_62
	ldr	r5, =.Lm899_5cc8
	b	.Lm899_64
.Lm899_62:
	ldr	r5, =.Lm899_5ab8
.Lm899_64:
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end VaultRooms1_GetActors

