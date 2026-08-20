	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_957_2008d58
	push	{r5, lr}
	ldr	r3, =iwram_3001f30
	mov	r0, #0xb
	sub	sp, #0xc
	ldr	r5, [r3]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r1, sp
	str	r3, [r1]
	ldr	r3, [r0, #0xc]
	str	r3, [r1, #4]
	ldr	r3, [r0, #0x10]
	str	r3, [r1, #8]
	bl	__TestCollision
	cmp	r0, #0
	ble	.Lm957_d84
	mov	r2, r5
	add	r2, #0x35
	mov	r3, #1
	strb	r3, [r2]
.Lm957_d84:
	add	sp, #0xc
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008d58

