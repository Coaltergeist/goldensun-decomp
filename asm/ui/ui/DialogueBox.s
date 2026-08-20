	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start DialogueBox  @ 0x080187fc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r3
	ldr	r3, =iwram_3001e8c
	mov	r6, r1
	mov	r1, #0
	ldr	r5, [r3]
	mov	r7, r2
	sub	sp, #0xc
	bl	BufferString
	mov	r2, #0xeb
	lsl	r3, r0, #1
	lsl	r2, #4
	add	r3, r2
	ldrh	r3, [r5, r3]
	cmp	r3, #0
	bne	.L18826
	mov	r0, #0
	b	.L1883e
.L18826:
	ldr	r3, [sp, #0x20]
	str	r3, [sp]
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r1, r6
	mov	r2, r7
	mov	r3, r8
	bl	Func_801868c
	mov	r0, #1
.L1883e:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end DialogueBox

