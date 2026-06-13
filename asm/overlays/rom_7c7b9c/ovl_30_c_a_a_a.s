	.include "macros.inc"

.thumb_func_start OvlFunc_943_2008950
	push	{r5, lr}
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L960
	ldr	r0, =gScript_968__0200d508
	b	.L9ca
.L960:
	ldr	r0, =0x927
	bl	__GetFlag
	cmp	r0, #0
	beq	.L96e
	ldr	r0, =.L4ef0
	b	.L9ca
.L96e:
	ldr	r0, =0x928
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.L97e
	ldr	r0, =.L5028
	b	.L9ca
.L97e:
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.L9c8
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.L9a6
	ldr	r2, =.L4cf8
	mov	r1, #0xa7
	lsl	r1, #1
	add	r3, r2, r1
	strb	r5, [r3]
	mov	r3, #0xd7
	lsl	r3, #1
	add	r1, r2, r3
	mov	r3, #2
	b	.L9ba
.L9a6:
	ldr	r0, =0x922
	bl	__GetFlag
	cmp	r0, #0
	beq	.L9c4
	ldr	r2, =.L4cf8
	mov	r3, #0xd7
	lsl	r3, #1
	add	r1, r2, r3
	mov	r3, #1
.L9ba:
	strb	r3, [r1]
	mov	r1, #0xe3
	lsl	r1, #1
	add	r2, r1
	strb	r3, [r2]
.L9c4:
	ldr	r0, =.L4cf8
	b	.L9ca
.L9c8:
	ldr	r0, =.L4ba8
.L9ca:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_943_2008950

