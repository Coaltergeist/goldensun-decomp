	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_1254
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e68
	mov	r6, r0
	ldr	r7, [r3]
	bl	__MapActor_GetActor
	ldr	r3, =gState
	mov	r1, #0xf9
	lsl	r1, #1
	add	r2, r3, r1
	ldrb	r3, [r2]
	mov	r5, r0
	cmp	r3, #1
	bne	.Lc1_1288
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, r6
	mov	r1, #1
	bl	__MapActor_SetAnim
	b	.Lc1_12a2

	.pool_aligned

.Lc1_1288:
	mov	r1, #0x80
	mov	r0, r6
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r0, r6
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
.Lc1_12a2:
	mov	r2, #0
	mov	r3, #0xf
	strb	r2, [r7, #7]
	strb	r3, [r7, #6]
	ldr	r3, =.Lc1_49
	ldr	r3, [r3]
	str	r3, [r5, #8]
	ldr	r3, =.Lc1_20
	ldr	r3, [r3]
	str	r3, [r5, #0x10]
	ldr	r3, =.Lc1_31
	ldr	r3, [r3]
	strh	r3, [r5, #6]
	mov	r3, #0x80
	lsl	r3, #24
	mov	r0, r5
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x40]
	add	r0, #0x55
	mov	r3, #3
	str	r2, [r5, #0x24]
	str	r2, [r5, #0x2c]
	ldr	r1, .Lc1_12fc	@ 0
	strb	r3, [r0]
	mov	r3, r5
	add	r3, #0x22
	strb	r1, [r3]
	mov	r0, r5
	str	r2, [r5, #0xc]
	str	r2, [r5, #0x14]
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetAnim
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r0, #1
	bl	__WaitFrames
	b	.Lc1_130c

	.align	2, 0
.Lc1_12fc:
	.word	0
	.pool

.Lc1_130c:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_1254

