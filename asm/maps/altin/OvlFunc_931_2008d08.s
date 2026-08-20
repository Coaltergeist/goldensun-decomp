	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_931_2008d08
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e40
	ldr	r6, [r3]
	mov	r3, #3
	and	r6, r3
	cmp	r6, #0
	bne	.Lm931_d4a
	mov	r1, #0x80
	mov	r3, #0xc8
	mov	r0, #0xde
	lsl	r1, #15
	mov	r2, #0
	lsl	r3, #17
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm931_d4a
	mov	r3, r5
	mov	r2, #0x14
	add	r3, #0x64
	strh	r2, [r3]
	add	r3, #2
	strh	r6, [r3]
	str	r2, [r5, #0x68]
	bl	OvlFunc_931_2008c0c
	ldr	r3, =OvlFunc_931_2008c44
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #1
	bl	__Actor_SetAnim
.Lm931_d4a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_2008d08

