	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_200a0fc
	push	{lr}
	ldr	r3, =iwram_3001e40
	ldr	r2, =.Lm882_57fc
	ldr	r3, [r3]
	ldr	r2, [r2]
	lsr	r3, r2
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	beq	.Lm882_2142
	mov	r0, #0x20
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_882_200a09c
	mov	r0, #0x21
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_882_200a09c
	mov	r0, #0x1e
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_882_200a09c
	mov	r0, #0x1d
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_882_200a09c
	b	.Lm882_2172
.Lm882_2142:
	mov	r0, #0x20
	bl	__MapActor_GetActor
	mov	r1, #8
	bl	OvlFunc_882_200a09c
	mov	r0, #0x21
	bl	__MapActor_GetActor
	mov	r1, #8
	bl	OvlFunc_882_200a09c
	mov	r0, #0x1e
	bl	__MapActor_GetActor
	mov	r1, #8
	bl	OvlFunc_882_200a09c
	mov	r0, #0x1d
	bl	__MapActor_GetActor
	mov	r1, #8
	bl	OvlFunc_882_200a09c
.Lm882_2172:
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200a0fc

