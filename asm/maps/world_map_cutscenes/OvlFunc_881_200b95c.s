	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200b95c
	push	{r5, r6, lr}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__MapActor_GetActor
	mov	r3, #0xa
	ldrsh	r5, [r0, r3]
	ldr	r3, =iwram_3001e40
	mov	r2, #0x12
	ldrsh	r6, [r0, r2]
	mov	r1, #3
	ldr	r0, [r3]
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.Lm881_39e8
	bl	__Random
	lsl	r0, #2
	lsr	r0, #16
	cmp	r0, #1
	beq	.Lm881_39ac
	cmp	r0, #1
	bcc	.Lm881_399c
	cmp	r0, #2
	beq	.Lm881_39bc
	cmp	r0, #3
	beq	.Lm881_39d4
	b	.Lm881_39e8
.Lm881_399c:
	ldr	r3, =0xffff0000
	lsl	r0, r5, #16
	add	r0, r3
	mov	r3, #0x80
	lsl	r3, #9
	lsl	r2, r6, #16
	mov	r1, #1
	b	.Lm881_39c8
.Lm881_39ac:
	mov	r2, #0x80
	lsl	r2, #9
	ldr	r3, =0xffff0000
	lsl	r0, r5, #16
	add	r0, r2
	mov	r1, #1
	lsl	r2, r6, #16
	b	.Lm881_39c8
.Lm881_39bc:
	mov	r3, #0x80
	lsl	r3, #9
	lsl	r0, r5, #16
	lsl	r2, r6, #16
	mov	r1, #1
	add	r0, r3
.Lm881_39c8:
	add	r2, r3
	neg	r1, r1
	mov	r3, #1
	bl	__Func_80933f8
	b	.Lm881_39e8
.Lm881_39d4:
	ldr	r3, =0xffff0000
	lsl	r0, r5, #16
	lsl	r2, r6, #16
	mov	r1, #1
	add	r0, r3
	add	r2, r3
	neg	r1, r1
	mov	r3, #1
	bl	__Func_80933f8
.Lm881_39e8:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b95c

