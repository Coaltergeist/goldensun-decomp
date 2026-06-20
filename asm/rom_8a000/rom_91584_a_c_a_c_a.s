	.include "macros.inc"

.thumb_func_start Task_Cutscene  @ 0x080915ec
	push	{lr}
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	ldr	r3, =gDebugMode
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L9162a
	ldr	r0, =gKeyPress
	mov	r2, #0x80
	ldr	r3, [r0]
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L91612
	mov	r3, #0xe6
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2]
.L91612:
	ldr	r3, [r0]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L9162a
	mov	r3, #0xe6
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #1
	neg	r3, r3
	str	r3, [r2]
.L9162a:
	pop	{r0}
	bx	r0
.func_end Task_Cutscene

