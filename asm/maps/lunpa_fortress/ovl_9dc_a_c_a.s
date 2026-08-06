	.include "macros.inc"

.thumb_func_start LunpaFortress_GetExits
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa1
	cmp	r2, r3
	bne	.Lm959_a4c
	ldr	r0, =.Lm959_6910
	b	.Lm959_a5e
.Lm959_a4c:
	ldr	r3, =0xa2
	cmp	r2, r3
	beq	.Lm959_a58
	ldr	r3, =0xa3
	cmp	r2, r3
	bne	.Lm959_a5c
.Lm959_a58:
	ldr	r0, =.Lm959_697c
	b	.Lm959_a5e
.Lm959_a5c:
	ldr	r0, =.Lm959_68a4
.Lm959_a5e:
	pop	{r1}
	bx	r1
.func_end LunpaFortress_GetExits

.thumb_func_start LunpaFortress_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6a
	cmp	r2, r3
	bne	.Lm959_a98
	ldr	r0, =.Lm959_69d0
	b	.Lm959_ac2
.Lm959_a98:
	ldr	r3, =0xa2
	cmp	r2, r3
	bne	.Lm959_aa2
	ldr	r0, =.Lm959_6e08
	b	.Lm959_ac2
.Lm959_aa2:
	ldr	r3, =0xa1
	cmp	r2, r3
	bne	.Lm959_aac
	ldr	r0, =.Lm959_6c28
	b	.Lm959_ac2
.Lm959_aac:
	ldr	r3, =0xa0
	cmp	r2, r3
	bne	.Lm959_ab6
	ldr	r0, =.Lm959_6ac0
	b	.Lm959_ac2
.Lm959_ab6:
	ldr	r3, =0xa3
	cmp	r2, r3
	bne	.Lm959_ac0
	ldr	r0, =.Lm959_6e98
	b	.Lm959_ac2
.Lm959_ac0:
	ldr	r0, =.Lm959_69b8
.Lm959_ac2:
	pop	{r1}
	bx	r1
.func_end LunpaFortress_GetActors

.thumb_func_start LunpaFortress_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa0
	cmp	r2, r3
	bne	.Lm959_b10
	ldr	r0, =.Lm959_6ff4
	b	.Lm959_b26
.Lm959_b10:
	ldr	r3, =0xa1
	cmp	r2, r3
	bne	.Lm959_b1a
	ldr	r0, =.Lm959_7258
	b	.Lm959_b26
.Lm959_b1a:
	ldr	r3, =0xa2
	cmp	r2, r3
	bne	.Lm959_b24
	ldr	r0, =.Lm959_7528
	b	.Lm959_b26
.Lm959_b24:
	ldr	r0, =.Lm959_763c
.Lm959_b26:
	pop	{r1}
	bx	r1
.func_end LunpaFortress_GetEvents

.thumb_func_start OvlFunc_959_2008b4c
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x16
	str	r3, [sp, #4]
	mov	r5, #0xf
	mov	r0, #0xf
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x17
	str	r3, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm959_b96
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	sub	r2, #0x32
	mov	r3, #2
	strb	r3, [r2]
.Lm959_b96:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008b4c

