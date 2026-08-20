	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_20096a4
	push	{r5, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r1, #0xa
	ldrsh	r3, [r5, r1]
	mov	r1, #0x12
	ldrsh	r2, [r5, r1]
	ldr	r1, =0xfffffd5c
	add	r3, r1
	cmp	r3, #7
	bhi	.Lm968_16d0
	mov	r3, #0xc5
	lsl	r3, #2
	cmp	r2, r3
	blt	.Lm968_16d0
	mov	r1, #0xc7
	lsl	r1, #2
	cmp	r2, r1
	blt	.Lm968_1710
.Lm968_16d0:
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x35
	mov	r1, #0x32
	mov	r2, #0x2a
	mov	r3, #0x31
	bl	__CopyMapTiles
	mov	r3, #3
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x75
	mov	r2, #0x29
	mov	r3, #0x75
	mov	r0, #0x37
	bl	__CopyMapTiles
	ldr	r0, =0x201
	bl	__ClearFlag
	mov	r0, r5
	add	r0, #0x55
	ldrb	r1, [r0]
	mov	r3, #1
	mov	r2, #0
	orr	r3, r1
	strb	r3, [r0]
	str	r2, [r5, #0x14]
	str	r2, [r5, #0xc]
	b	.Lm968_176c
.Lm968_1710:
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm968_176c
	bl	__CutsceneStart
	mov	r0, #5
	bl	__CutsceneWait
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x34
	mov	r1, #0x32
	mov	r2, #0x2a
	mov	r3, #0x31
	bl	__CopyMapTiles
	mov	r3, #3
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x75
	mov	r2, #0x29
	mov	r3, #0x75
	mov	r0, #0x34
	bl	__CopyMapTiles
	ldr	r0, =0x201
	bl	__SetFlag
	mov	r0, #0xa1
	bl	__PlaySound
	mov	r1, r5
	add	r1, #0x55
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	ldr	r3, =0xfffe0000
	str	r3, [r5, #0x14]
	str	r3, [r5, #0xc]
	bl	__CutsceneEnd
.Lm968_176c:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_20096a4

