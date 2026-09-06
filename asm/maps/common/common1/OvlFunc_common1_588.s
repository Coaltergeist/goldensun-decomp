	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_588
	push	{r5, lr}
	mov	r5, r0
	mov	r0, r1
	mov	r1, #5
	bl	__Func_8019908
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8f
	cmp	r2, r3
	bne	.Lc1_5aa
	ldr	r0, =0x2076
	b	.Lc1_5b6
.Lc1_5aa:
	ldr	r3, =0x90
	cmp	r2, r3
	bne	.Lc1_5b4
	ldr	r0, =0x2078
	b	.Lc1_5b6
.Lc1_5b4:
	ldr	r0, =0x207a
.Lc1_5b6:
	add	r0, #1
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_588

