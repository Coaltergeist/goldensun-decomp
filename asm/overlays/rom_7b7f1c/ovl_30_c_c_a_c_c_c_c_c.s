	.include "macros.inc"

.thumb_func_start OvlFunc_930_2008ff0
	push	{lr}
	sub	sp, #8
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #5
	mov	r1, #0x1c
	mov	r2, #5
	mov	r3, #0xd
	bl	__CopyMapTiles
	mov	r3, #5
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #2
	mov	r0, #5
	bl	__Func_8010704
	mov	r0, #1
	bl	__CutsceneWait
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_2008ff0

.thumb_func_start OvlFunc_930_2009028
	push	{lr}
	sub	sp, #8
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #6
	mov	r1, #0x1c
	mov	r2, #5
	mov	r3, #0xd
	bl	__CopyMapTiles
	mov	r3, #5
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #2
	mov	r0, #6
	bl	__Func_8010704
	mov	r0, #1
	bl	__CutsceneWait
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_2009028

.thumb_func_start OvlFunc_930_2009060
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r5, #0xc]
	ldr	r2, [r0, #0xc]
	cmp	r2, r3
	ble	.L107e
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	b	.L1088
.L107e:
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfd
	and	r3, r2
.L1088:
	strb	r3, [r1]
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_930_2009060

