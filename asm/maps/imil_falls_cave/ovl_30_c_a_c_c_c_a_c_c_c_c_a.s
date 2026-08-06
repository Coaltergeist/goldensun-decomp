	.include "macros.inc"

.thumb_func_start OvlFunc_922_2008ed8
	push	{r5, r6, lr}
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	mov	r0, r3
	mov	r2, r5
	mov	r1, r4
	mov	r3, r6
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm922_f28
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	mov	r2, r5
	add	r2, #0x55
	strb	r3, [r1, #9]
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r5
	mov	r1, #0xf
	bl	__Func_80929d8
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	mov	r0, r5
	b	.Lm922_f2a
.Lm922_f28:
	mov	r0, #0
.Lm922_f2a:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_922_2008ed8

.thumb_func_start ImilFallsCave_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x34
	cmp	r2, r3
	bne	.Lm922_f48
	ldr	r0, =.Lm922_2bd8
	b	.Lm922_f86
.Lm922_f48:
	ldr	r3, =0x3e
	cmp	r2, r3
	bne	.Lm922_f52
	ldr	r0, =gScript_911__0200ac08
	b	.Lm922_f86
.Lm922_f52:
	ldr	r3, =0x3f
	cmp	r2, r3
	bne	.Lm922_f5c
	ldr	r0, =.Lm922_2d1c
	b	.Lm922_f86
.Lm922_f5c:
	ldr	r3, =0x40
	cmp	r2, r3
	bne	.Lm922_f66
	ldr	r0, =.Lm922_2e24
	b	.Lm922_f86
.Lm922_f66:
	ldr	r3, =0x41
	cmp	r2, r3
	bne	.Lm922_f70
	ldr	r0,=.Lm922_3058
	b	.Lm922_f86
.Lm922_f70:
	ldr	r3, =0x42
	cmp	r2, r3
	bne	.Lm922_f7a
	ldr	r0, =.Lm922_3130
	b	.Lm922_f86
.Lm922_f7a:
	ldr	r3, =0x43
	cmp	r2, r3
	bne	.Lm922_f84
	ldr	r0, =.Lm922_3184
	b	.Lm922_f86
.Lm922_f84:
	ldr	r0, =.Lm922_2bcc
.Lm922_f86:
	pop	{r1}
	bx	r1
.func_end ImilFallsCave_GetEvents

