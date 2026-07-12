	.include "macros.inc"

.thumb_func_start OvlFunc_934_2009300
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r0, =0x302
	ldr	r5, [r3]
	bl	__GetFlag
	cmp	r0, #0
	beq	.L135e
	ldr	r2, =0x24a
	ldr	r3, =gState
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #8
	beq	.L135e
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r0, #8
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x30]
	mov	r0, #8
	str	r3, [r6, #0x30]
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x34]
	sub	r5, #0x2d
	str	r3, [r6, #0x34]
	ldr	r2, =.data
	lsl	r5, #3
	add	r3, r5, #4
	ldr	r1, [r2, r5]
	mov	r0, #8
	ldr	r2, [r2, r3]
	bl	__Func_809218c
.L135e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_934_2009300
