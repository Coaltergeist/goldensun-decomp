	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200a428
	push	{lr}
	ldr	r0, =0x8fe
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm932_2444
	ldr	r3, =iwram_3001e70
	ldr	r1, [r3]
	ldr	r3, =0xfdff
	ldrh	r2, [r1, #0x14]
	and	r3, r2
	strh	r3, [r1, #0x14]
	b	.Lm932_2458
.Lm932_2444:
	mov	r3, #0x35
	mov	r2, #0x2a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x34
	mov	r1, #0x2a
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Lm932_2458:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	ldrh	r3, [r3]
	mov	r2, #0x80
	sub	r3, #6
	lsl	r3, #16
	lsl	r2, #9
	cmp	r3, r2
	bhi	.Lm932_2474
	ldr	r0, =0x12f
	bl	__ClearFlag
.Lm932_2474:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a428

