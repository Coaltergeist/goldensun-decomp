	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start SetBattleActorKnockback
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r8, r1
	bl	Func_80b7dd0
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
	bl	_Func_800c4ac
	ldr	r3, =.Lc5a04
	ldr	r2, [r7, #0xc]
	ldr	r3, [r3, r5]
	mov	r1, #0x64
	mov	r0, r3
	mul	r0, r2
	bl	Func_af0_from_thumb
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

.thumb_func_start Func_80b82c4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r1
	mov	r9, r2
	mov	r11, r3
	bl	Func_80b7dd0
	mov	r5, r0
	mov	r0, r6
	bl	Func_80b7dd0
	ldr	r7, [r5]
	ldr	r6, [r0]
	mov	r2, #0x4b
	mov	r8, r2
	ldr	r3, [r6, #8]
	ldr	r2, [r7, #8]
	sub	r3, r2
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0x64
	mov	r10, r2
	bl	Func_af0_from_thumb
	ldr	r3, [r6, #0x10]
	ldr	r6, [r7, #0x10]
	sub	r3, r6
	mov	r5, r0
	mov	r1, #0x64
	mov	r0, r8
	mul	r0, r3
	bl	Func_af0_from_thumb
	mov	r3, r10
	add	r3, r5
	add	r6, r0
	asr	r5, #8
	asr	r0, #8
	mov	r2, r0
	mul	r2, r0
	mov	r8, r3
	mov	r3, r5
	mul	r3, r5
	add	r3, r2
	mov	r0, r3
	ldr	r2, =Func_8000948
	bl	_call_via_r2
	mov	r1, r9
	lsl	r0, #8
	bl	Func_af0_from_thumb
	mov	r3, r7
	add	r3, #0x58
	mov	r1, #1
	str	r0, [r7, #0x34]
	str	r0, [r7, #0x30]
	strb	r1, [r3]
	sub	r3, #3
	ldrb	r2, [r3]
	mov	r3, #4
	and	r3, r2
	cmp	r3, #0
	beq	.Lb8352
	mov	r2, r11
	str	r2, [r7, #0x28]
.Lb8352:
	mov	r3, r11
	str	r3, [r7, #0x28]
	ldr	r3, =0xab85
	str	r3, [r7, #0x48]
	mov	r3, r7
	add	r3, #0x5a
	strb	r1, [r3]
	mov	r0, r7
	bl	_Func_800c4ac
	mov	r0, r7
	mov	r1, r8
	mov	r2, #0
	mov	r3, r6
	bl	_Actor_TravelTo
	mov	r0, r7
	mov	r1, #2
	bl	_Actor_SetAnim
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b82c4

.thumb_func_start Func_80b8394
	push	{r5, lr}
	bl	Func_80b7dd0
	ldr	r5, [r0]
	mov	r0, r5
	bl	_Func_800c4ac
	mov	r0, r5
	mov	r1, #2
	bl	_Actor_SetAnim
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80b8394

