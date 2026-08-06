	.include "macros.inc"

.thumb_func_start TolbiBoundShipDeck_GetActors
	push	{r5, lr}
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_960
	ldr	r0, =gScript_968__0200d508
	b	.Lm943_9ca
.Lm943_960:
	ldr	r0, =0x927
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_96e
	ldr	r0, =.Lm943_4ef0
	b	.Lm943_9ca
.Lm943_96e:
	ldr	r0, =0x928
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm943_97e
	ldr	r0, =.Lm943_5028
	b	.Lm943_9ca
.Lm943_97e:
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_9c8
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_9a6
	ldr	r2, =.Lm943_4cf8
	mov	r1, #0xa7
	lsl	r1, #1
	add	r3, r2, r1
	strb	r5, [r3]
	mov	r3, #0xd7
	lsl	r3, #1
	add	r1, r2, r3
	mov	r3, #2
	b	.Lm943_9ba
.Lm943_9a6:
	ldr	r0, =0x922
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_9c4
	ldr	r2, =.Lm943_4cf8
	mov	r3, #0xd7
	lsl	r3, #1
	add	r1, r2, r3
	mov	r3, #1
.Lm943_9ba:
	strb	r3, [r1]
	mov	r1, #0xe3
	lsl	r1, #1
	add	r2, r1
	strb	r3, [r2]
.Lm943_9c4:
	ldr	r0, =.Lm943_4cf8
	b	.Lm943_9ca
.Lm943_9c8:
	ldr	r0, =.Lm943_4ba8
.Lm943_9ca:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end TolbiBoundShipDeck_GetActors

