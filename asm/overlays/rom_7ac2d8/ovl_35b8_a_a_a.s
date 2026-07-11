	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_200b5b8
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	ldr	r0, =0x1576
	mov	r1, #1
	bl	__Func_801776c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200b5b8

.thumb_func_start OvlFunc_924_200b5dc
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	ldr	r0, =0x953
	mov	r1, #1
	bl	__Func_801776c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200b5dc

.thumb_func_start OvlFunc_924_200b600
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	bne	.L3622
	ldr	r0, =0x1636
	mov	r1, #1
	bl	__Func_801776c
	b	.L362a
.L3622:
	ldr	r0, =0x1635
	mov	r1, #1
	bl	__Func_801776c
.L362a:
	mov	r0, #0xb9
	bl	__CheckPartyItem
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.L3646
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb9
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strh	r3, [r2]
.L3646:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200b600

