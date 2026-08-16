	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start SetBattleActorKnockback  @ 0x080b8228
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r8, r1
	bl	GetBattleActor
	mov	r7, r0
	mov	r0, r5
	ldr	r6, [r7]
	bl	_GetUnit
	mov	r2, #0x94
	lsl	r2, #1
	add	r0, r2
	ldrb	r3, [r0]
	cmp	r3, #0x94
	beq	.Lb829c
	ldr	r3, =.Lc59a4
	mov	r2, r8
	lsl	r5, r2, #2
	ldr	r3, [r3, r5]
	str	r3, [r6, #0x34]
	ldr	r3, =.Lc59c4
	ldr	r3, [r3, r5]
	str	r3, [r6, #0x30]
	ldr	r3, [r6, #0xc]
	cmp	r3, #0
	beq	.Lb8266
	cmp	r2, #4
	ble	.Lb826c
.Lb8266:
	ldr	r3, =.Lc59e4
	ldr	r3, [r3, r5]
	str	r3, [r6, #0x28]
.Lb826c:
	ldr	r3, =0x9999
	mov	r2, r6
	str	r3, [r6, #0x48]
	add	r2, #0x5a
	mov	r3, #0
	str	r3, [r6, #0x44]
	mov	r0, r6
	strb	r3, [r2]
	bl	_Actor_Stop
	ldr	r3, =.Lc5a04
	ldr	r2, [r7, #0xc]
	ldr	r3, [r3, r5]
	mov	r1, #0x64
	mov	r0, r3
	mul	r0, r2
	bl	__divsi3
	ldr	r3, [r7, #0x10]
	mov	r1, r0
	mov	r2, #0
	mov	r0, r6
	bl	_Actor_TravelTo
.Lb829c:
	mov	r0, r6
	mov	r1, #5
	bl	_Actor_SetAnim
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end SetBattleActorKnockback
