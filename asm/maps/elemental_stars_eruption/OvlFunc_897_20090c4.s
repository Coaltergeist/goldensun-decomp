	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_897_20090c4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ec4
	ldr	r5, [r3]
	ldr	r3, =.Lm897_3b00
	mov	r1, #0xa
	ldr	r0, [r3]
	sub	sp, #4
	bl	_udivsi3_RAM
	cmp	r0, #0
	beq	.Lm897_10fc
	ldr	r1, =0x40c
	mov	r2, #0
	add	r3, r5, r1
	str	r2, [r3]
	lsl	r1, r0, #16
	mov	r2, #0x80
	mov	r0, r1
	lsl	r2, #9
	bl	__Func_8012330
	b	.Lm897_1112
.Lm897_10fc:
	ldr	r3, =0x40c
	mov	r0, #1
	add	r2, r5, r3
	mov	r1, #1
	mov	r3, #1
	str	r3, [r2]
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
.Lm897_1112:
	ldr	r2, =.Lm897_3b00
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.Lm897_111e
	sub	r3, #3
	str	r3, [r2]
.Lm897_111e:
	ldr	r1, =.Lm897_3ac0
	mov	r0, #0
	mov	r8, r0
	mov	r10, r1
	mov	r2, #0
.Lm897_1128:
	mov	r3, r8
	lsl	r6, r3, #2
	mov	r0, r10
	ldr	r3, [r0, r6]
	cmp	r3, #0
	beq	.Lm897_1198
	mov	r0, r8
	add	r0, #0x10
	str	r2, [sp]
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r1, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r1, #24
	ldr	r2, [sp]
	cmp	r3, r1
	bne	.Lm897_1198
	ldr	r7, [r5, #0x40]
	cmp	r7, r3
	bne	.Lm897_1198
	mov	r0, r10
	ldr	r3, [r0, r6]
	add	r3, #1
	str	r3, [r0, r6]
	cmp	r3, #2
	bne	.Lm897_1168
	mov	r0, r5
	mov	r1, #3
	bl	__Actor_SetAnim
	ldr	r2, [sp]
.Lm897_1168:
	mov	r1, r10
	ldr	r3, [r1, r6]
	cmp	r3, #0x13
	bne	.Lm897_1190
	str	r2, [r5, #8]
	str	r2, [r5, #0xc]
	str	r2, [r5, #0x10]
	str	r2, [r5, #0x24]
	str	r2, [r5, #0x28]
	str	r2, [r5, #0x2c]
	str	r7, [r5, #0x38]
	str	r7, [r5, #0x3c]
	str	r7, [r5, #0x40]
	mov	r0, r5
	mov	r1, #0xf
	str	r2, [sp]
	bl	__Func_80929d8
	ldr	r2, [sp]
	b	.Lm897_1198
.Lm897_1190:
	cmp	r3, #0x14
	bne	.Lm897_1198
	mov	r3, r10
	str	r2, [r3, r6]
.Lm897_1198:
	mov	r3, r8
	add	r3, #1
	lsl	r3, #24
	lsr	r3, #24
	mov	r8, r3
	cmp	r3, #0xf
	bls	.Lm897_1128
	ldr	r3, =.Lm897_3b68
	ldr	r0, =0x3e7
	ldr	r2, [r3]
	cmp	r2, r0
	bne	.Lm897_11b2
	b	.Lm897_1314
.Lm897_11b2:
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	and	r3, r2
	cmp	r3, #0
	beq	.Lm897_11be
	b	.Lm897_1314
.Lm897_11be:
	ldr	r2, =Func_8000888
	mov	r1, #0
	ldr	r6, =.Lm897_3ac0
	mov	r8, r1
	mov	r9, r2
.Lm897_11c8:
	bl	__Random
	ldr	r1, =0xffff
	bl	_umodsi3_RAM
	lsl	r0, #16
	asr	r0, #16
	mov	r11, r0
	mov	r0, r8
	add	r0, #0x10
	bl	__MapActor_GetActor
	mov	r3, r8
	lsl	r5, r3, #2
	mov	r7, r0
	ldr	r0, [r6, r5]
	mov	r10, r0
	cmp	r0, #0
	beq	.Lm897_11f0
	b	.Lm897_1304
.Lm897_11f0:
	ldr	r0, =0x246
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm897_1200
	mov	r0, #0xf6
	bl	__PlaySound
.Lm897_1200:
	mov	r3, #1
	str	r3, [r6, r5]
	mov	r3, r7
	mov	r1, r10
	add	r3, #0x55
	strb	r1, [r3]
	mov	r2, #0x80
	mov	r3, #0x80
	lsl	r2, #12
	lsl	r3, #9
	str	r2, [r7, #0x30]
	str	r3, [r7, #0x34]
	mov	r0, r7
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r1, [r7, #0x50]
	mov	r0, #0xd
	ldrb	r3, [r1, #9]
	neg	r0, r0
	mov	r2, r0
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r7
	mov	r1, #2
	bl	__Actor_SetAnim
	mov	r0, r7
	ldr	r1, =gScript_897__0200ba00
	bl	__Actor_SetScript
	mov	r1, r11
	lsl	r6, r1, #16
	lsr	r6, #16
	mov	r0, r6
	bl	__cos
	mov	r5, r0
	bl	__Random
	mov	r1, r0
	lsl	r1, #8
	lsr	r1, #16
	mov	r2, #0x80
	lsl	r2, #17
	lsl	r1, #16
	mov	r0, r5
	add	r1, r2
	.call_via r9
	ldr	r3, =0x1450000
	add	r0, r3
	str	r0, [r7, #8]
	mov	r0, r10
	str	r0, [r7, #0xc]
	mov	r0, r6
	bl	__sin
	mov	r5, r0
	bl	__Random
	mov	r1, r0
	lsl	r1, #8
	lsr	r1, #16
	mov	r2, #0x80
	lsl	r2, #17
	lsl	r1, #16
	mov	r0, r5
	add	r1, r2
	.call_via r9
	mov	r3, #0x97
	lsl	r3, #17
	add	r0, r3
	str	r0, [r7, #0x10]
	mov	r0, r6
	bl	__cos
	mov	r5, r0
	bl	__Random
	mov	r1, r0
	mov	r0, #0x3f
	and	r1, r0
	mov	r2, #0x80
	lsl	r2, #12
	lsl	r1, #16
	mov	r0, r5
	add	r1, r2
	.call_via r9
	mov	r5, r0
	mov	r0, r6
	bl	__sin
	mov	r6, r0
	bl	__Random
	mov	r3, #0x3f
	mov	r1, r0
	and	r1, r3
	mov	r2, #0x80
	lsl	r2, #12
	lsl	r1, #16
	mov	r0, r6
	add	r1, r2
	.call_via r9
	ldr	r3, =0x1450000
	mov	r1, #0x8f
	add	r5, r3
	lsl	r1, #17
	add	r3, r0, r1
	mov	r2, #0
	mov	r0, r7
	mov	r1, r5
	bl	__Actor_TravelTo
	mov	r0, r7
	mov	r1, #0
	bl	__Func_80929d8
	ldr	r2, =.Lm897_3b00
	mov	r3, #0x1e
	str	r3, [r2]
	b	.Lm897_1314
.Lm897_1304:
	mov	r3, r8
	add	r3, #1
	lsl	r3, #24
	lsr	r3, #24
	mov	r8, r3
	cmp	r3, #0xf
	bhi	.Lm897_1314
	b	.Lm897_11c8
.Lm897_1314:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_20090c4

