	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_964_2008f4c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	sub	sp, #0x38
	mov	r8, r0
	cmp	r3, #0
	beq	.Lm964_f6a
	mov	r1, #1
	bl	__Actor_SetAnim
	b	.Lm964_f72
.Lm964_f6a:
	mov	r0, r8
	mov	r1, #2
	bl	__Actor_SetAnim
.Lm964_f72:
	ldr	r3, =iwram_3001e40
	ldr	r7, [r3]
	mov	r3, #3
	and	r7, r3
	mov	r0, #0
	cmp	r7, #0
	bne	.Lm964_fd0
	ldr	r3, =0x4ccc
	add	r6, sp, #0x10
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	mov	r3, #5
	str	r3, [r6, #4]
	bl	__Random
	lsl	r3, r0, #3
	sub	r3, r0
	mov	r1, r8
	lsr	r3, #16
	ldr	r5, [r1, #8]
	sub	r3, #3
	lsl	r3, #16
	add	r5, r3
	bl	__Random
	lsl	r3, r0, #3
	sub	r3, r0
	mov	r1, r8
	lsr	r3, #16
	ldr	r2, [r1, #0x10]
	sub	r3, #3
	lsl	r3, #16
	ldr	r1, [r1, #0xc]
	add	r2, r3
	mov	r3, #0x80
	lsl	r3, #13
	add	r1, r3
	ldr	r3, =0x90001
	mov	r0, r5
	str	r3, [sp, #8]
	mov	r3, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r6, [sp, #0xc]
	bl	OvlFunc_964_2008ae8
	mov	r0, #0
.Lm964_fd0:
	add	sp, #0x38
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_964_2008f4c

