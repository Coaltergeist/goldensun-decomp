	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_939_20092a4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	sub	sp, #0x1c
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001e40
	ldr	r7, [r3]
	mov	r3, #0xf
	and	r7, r3
	mov	r8, r0
	cmp	r7, #0
	bne	.Lm939_130c
	bl	__Random
	mov	r3, #0x34
	mul	r3, r0
	lsr	r3, #16
	lsl	r3, #6
	mov	r5, r3
	add	r5, #0xe6
	mov	r0, r5
	bl	__cos
	add	r6, sp, #0x10
	cmp	r0, #0
	bge	.Lm939_12de
	add	r0, #3
.Lm939_12de:
	asr	r3, r0, #2
	mov	r0, r5
	str	r3, [r6]
	str	r7, [r6, #4]
	bl	__sin
	lsr	r3, r0, #31
	add	r0, r3
	asr	r0, #1
	str	r0, [r6, #8]
	mov	r3, r8
	ldr	r5, [r3, #8]
	ldr	r4, [r6, #4]
	ldr	r1, [r3, #0xc]
	ldr	r2, [r3, #0x10]
	ldr	r3, [r6]
	str	r0, [sp, #4]
	mov	r0, r5
	str	r4, [sp]
	str	r7, [sp, #8]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
.Lm939_130c:
	add	sp, #0x1c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_20092a4

