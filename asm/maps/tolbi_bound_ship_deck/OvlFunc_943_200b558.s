	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_200b558
	push	{r5, lr}
	ldr	r3, =.Lm943_5b40
	lsl	r1, #1
	ldr	r4, =0xffff97ff
	ldrh	r2, [r3, r1]
	ldr	r5, =0x7fe0000
	add	r3, r2, r4
	lsl	r3, #16
	ldr	r4, =0x7fe
	cmp	r3, r5
	bhi	.Lm943_3576
	ldr	r2, =.Lm943_5b30
	ldrh	r3, [r2, r1]
	add	r3, #0x70
	b	.Lm943_3588
.Lm943_3576:
	ldr	r5, =0x17ff
	add	r3, r2, r5
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r4
	bhi	.Lm943_3592
	ldr	r2, =.Lm943_5b30
	ldrh	r3, [r2, r1]
	add	r3, #0xe0
.Lm943_3588:
	strh	r3, [r2, r1]
	mov	r1, #3
	bl	__MapActor_SetAnim
	b	.Lm943_35c4
.Lm943_3592:
	ldr	r4, =0xffff8fff
	ldr	r5, =0x7ffe0000
	add	r3, r2, r4
	lsl	r3, #16
	cmp	r3, r5
	bhi	.Lm943_35b2
	ldr	r2, =.Lm943_5b30
	mov	r4, #0xe0
	ldrh	r3, [r2, r1]
	lsl	r4, #1
	add	r3, r4
	strh	r3, [r2, r1]
	mov	r1, #2
	bl	__MapActor_SetAnim
	b	.Lm943_35c4
.Lm943_35b2:
	ldr	r2, =.Lm943_5b30
	mov	r5, #0xc0
	ldrh	r3, [r2, r1]
	lsl	r5, #2
	add	r3, r5
	strh	r3, [r2, r1]
	mov	r1, #1
	bl	__MapActor_SetAnim
.Lm943_35c4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200b558

