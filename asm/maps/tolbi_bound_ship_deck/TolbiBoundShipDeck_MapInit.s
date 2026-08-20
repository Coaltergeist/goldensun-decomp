	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start TolbiBoundShipDeck_MapInit
	push	{r5, r6, lr}
	ldr	r6, =iwram_3001e70
	mov	r2, #0x82
	ldr	r5, [r6]
	mov	r0, #0x8e
	lsl	r2, #1
	lsl	r0, #1
	add	r5, r2
	bl	__ClearFlag
	ldr	r3, [r6, #0x4c]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r6, #0
	add	r2, #0x49
	str	r2, [r3]
	str	r6, [r5, #0x1c]
	ldr	r5, =.Lm943_5b58
	bl	__Random
	lsl	r0, #16
	lsr	r0, #16
	str	r0, [r5]
	ldr	r5, =.Lm943_5b38
	bl	__Random
	ldr	r3, =.Lm943_5b50
	lsl	r0, #16
	lsr	r0, #16
	str	r0, [r5]
	str	r6, [r3]
	str	r6, [r3, #4]
	ldr	r3, =.Lm943_5b60
	str	r6, [r3]
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	OvlFunc_943_2009444
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end TolbiBoundShipDeck_MapInit

