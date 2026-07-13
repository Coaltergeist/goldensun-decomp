	.include "macros.inc"

.thumb_func_start OvlFunc_898_2009090
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r6, r0
	ldr	r2, [r6, #0x50]
	mov	r0, #0xbc
	mov	r8, r2
	bl	__PlaySound
	mov	r5, #2
	mov	r0, #0x2a
	mov	r1, #0x21
	mov	r2, #0x22
	mov	r3, #0x10
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0x23
	mov	r2, #0x24
	mov	r3, #0x10
	mov	r0, #0x2a
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #0x28
	mov	r1, #0x21
	mov	r2, #0x22
	mov	r3, #0x10
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0x23
	mov	r2, #0x24
	mov	r3, #0x10
	mov	r0, #0x28
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__CutsceneWait
	mov	r3, #3
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	add	r6, #0x23
	mov	r0, #0x21
	mov	r1, #0x15
	mov	r2, #2
	mov	r3, #2
	bl	__Func_8010704
	ldrb	r2, [r6]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, r8
	strb	r3, [r6]
	ldrb	r3, [r2, #9]
	mov	r2, #0xc
	orr	r3, r2
	mov	r1, #0x88
	mov	r2, r8
	strb	r3, [r2, #9]
	lsl	r1, #1
	mov	r0, #0x40
	mov	r2, #0xb
	bl	OvlFunc_898_2008ef4
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2009090
