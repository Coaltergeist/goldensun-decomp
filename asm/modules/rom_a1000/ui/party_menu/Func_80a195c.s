	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a195c  @ 0x080a195c
	push	{r5, r6, lr}
	sub	sp, #0x1c
	ldr	r3, =iwram_3001f2c
	mov	r0, sp
	ldr	r5, [r3]
	bl	_Func_80796c4
	lsl	r0, #16
	lsr	r0, #16
	cmp	r0, #0
	beq	.La198a
	mov	r3, #0x8a
	lsl	r3, #1
	add	r6, r5, r3
	mov	r5, r0
.La197a:
	ldmia	r6!, {r0}
	cmp	r0, #0
	beq	.La1984
	bl	_DeleteSprite
.La1984:
	sub	r5, #1
	cmp	r5, #0
	bne	.La197a
.La198a:
	ldr	r0, =Func_80a19a0
	bl	StopTask
	add	sp, #0x1c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80a195c

