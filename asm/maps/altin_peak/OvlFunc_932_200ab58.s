	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200ab58
	push	{r5, lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Lm932_2b9c
	ldr	r3, =.Lm932_5240
	mov	r0, #0xde
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r3, #8]
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm932_2b9c
	mov	r2, r5
	add	r2, #0x64
	mov	r3, #0x1e
	strh	r3, [r2]
	add	r2, #2
	mov	r3, #1
	strh	r3, [r2]
	mov	r3, #0x14
	str	r3, [r5, #0x68]
	bl	OvlFunc_932_200aa10
	ldr	r3, =OvlFunc_932_200aa48
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #1
	bl	__Actor_SetAnim
.Lm932_2b9c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200ab58

