	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_200a040
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	mov	r1, r0
	ldr	r3, [r1, #8]
	mov	r0, sp
	str	r3, [r0]
	ldr	r3, [r1, #0xc]
	str	r3, [r0, #4]
	mov	r2, #0x80
	ldr	r3, [r1, #0x10]
	lsl	r2, #13
	add	r3, r2
	str	r3, [r0, #8]
	bl	OvlFunc_947_2008350
	cmp	r0, #0
	beq	.L206e
	bl	OvlFunc_947_2009fd4
	b	.L207a
.L206e:
	bl	OvlFunc_947_2009268
	cmp	r0, #0
	bne	.L207a
	bl	__Func_8093e28
.L207a:
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a040

.thumb_func_start OvlFunc_947_200a080
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001ee0
	ldr	r3, [r3]
	str	r0, [r3, #0x18]
	add	r0, #0x62
	mov	r3, #1
	strb	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a080

.thumb_func_start OvlFunc_947_200a09c
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001ee0
	ldr	r3, [r3]
	mov	r2, #0
	add	r0, #0x62
	str	r2, [r3, #0x18]
	strb	r2, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a09c

