	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BabisPalace_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8b
	cmp	r2, r3
	bne	.Lm952_406a
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm952_4058
	ldr	r0, =.Lm952_5ad8
	b	.Lm952_408a
.Lm952_4058:
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm952_4066
	ldr	r0, =.Lm952_5a48
	b	.Lm952_408a
.Lm952_4066:
	ldr	r0, =.Lm952_59e8
	b	.Lm952_408a
.Lm952_406a:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm952_407a
	ldr	r0, =.Lm952_5688
	b	.Lm952_408a
.Lm952_407a:
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm952_4088
	ldr	r0, =.Lm952_5394
	b	.Lm952_408a
.Lm952_4088:
	ldr	r0, =.Lm952_5004
.Lm952_408a:
	pop	{r1}
	bx	r1
.func_end BabisPalace_GetEvents

