	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Debug_TestEquipAndStatus  @ 0x080b0444
	push	{r5, r6, lr}
	ldr	r3, =gState
	ldr	r2, =0x30d40
	str	r2, [r3, #0x10]
	mov	r2, #0x8e
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x1c
	strb	r2, [r3]
	ldr	r1, =0x48d
	mov	r0, #1
	bl	_GiveItemTo
	mov	r1, r0
	mov	r0, #1
	bl	_EquipItem
	ldr	r1, =0x40b
	mov	r0, #0
	bl	_GiveItemTo
	mov	r1, r0
	mov	r0, #0
	bl	_EquipItem
	mov	r1, #0xe7
	mov	r0, #2
	bl	_GiveItemTo
	mov	r0, #3
	bl	_GetUnit
	ldr	r6, =0x131
	mov	r5, #1
	strb	r5, [r0, r6]
	mov	r0, #5
	bl	_GetUnit
	strb	r5, [r0, r6]
	mov	r0, #2
	bl	_GetUnit
	mov	r3, #0xa0
	lsl	r3, #1
	add	r0, r3
	strb	r5, [r0]
	mov	r1, #0x1e
	mov	r0, #1
	bl	Func_80b0278
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Debug_TestEquipAndStatus

