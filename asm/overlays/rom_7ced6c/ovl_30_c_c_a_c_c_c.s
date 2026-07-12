	.include "macros.inc"

.thumb_func_start OvlFunc_946_2009548
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0xc
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L155e
	mov	r2, r0
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
.L155e:
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0xa0
	mov	r2, #0xb8
	mov	r0, #0
	lsl	r1, #15
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_8012078
	ldr	r0, =0x241
	bl	__SetFlag
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009548

.thumb_func_start OvlFunc_946_200958c
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0xd
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L15a2
	mov	r2, r0
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
.L15a2:
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0xc0
	mov	r2, #0xa8
	mov	r0, #0
	lsl	r1, #15
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_8012078
	ldr	r0, =0x242
	bl	__SetFlag
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200958c

.thumb_func_start OvlFunc_946_20095d0
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0xe
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L15e6
	mov	r2, r0
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
.L15e6:
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x90
	mov	r2, #0xa0
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_8012078
	mov	r1, #0xbc
	mov	r2, #0xa0
	mov	r0, #0
	lsl	r1, #18
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_8012078
	ldr	r0, =0x243
	bl	__SetFlag
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_20095d0

.thumb_func_start OvlFunc_946_2009624
	push	{lr}
	ldr	r0, =0x8c4
	sub	sp, #8
	bl	__SetFlag
	mov	r3, #8
	mov	r2, #0x15
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009624
