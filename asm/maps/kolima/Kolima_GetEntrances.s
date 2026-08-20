	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Kolima_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x27
	cmp	r2, r3
	bne	.Lm911_184
	ldr	r0, =.Lm911_2f80
	b	.Lm911_190
.Lm911_184:
	ldr	r3, =0x26
	cmp	r2, r3
	bne	.Lm911_18e
	ldr	r0, =gScript_913__0200afc8
	b	.Lm911_190
.Lm911_18e:
	ldr	r0, =.Lm911_2e60
.Lm911_190:
	pop	{r1}
	bx	r1
.func_end Kolima_GetEntrances

