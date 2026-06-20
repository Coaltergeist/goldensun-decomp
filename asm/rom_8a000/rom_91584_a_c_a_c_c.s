	.include "macros.inc"

.thumb_func_start Func_8091660  @ 0x08091660
	push	{r5, lr}
	ldr	r5, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r5, r2
	ldr	r0, [r3]
	bl	GetFieldActor
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x30]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r0, #0x34]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x38]
	str	r3, [r0, #0x40]
	mov	r2, #0xf9
	mov	r3, #0
	str	r3, [r0, #0x24]
	str	r3, [r0, #0x2c]
	lsl	r2, #1
	add	r3, r5, r2
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L9169e
	mov	r1, #0xc
	bl	_Actor_SetAnim
	b	.L916a4
.L9169e:
	mov	r1, #1
	bl	_Actor_SetAnim
.L916a4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8091660

.thumb_func_start CutsceneStart  @ 0x080916b0
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r6, [r3]
	bl	_Func_801c428
	bl	Func_8091660
	ldr	r2, =0xcb6
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L916ce
	bl	Func_808e118
.L916ce:
	ldr	r2, =0xcc2
	mov	r5, #0
	add	r3, r6, r2
	add	r2, #2
	strh	r5, [r3]
	add	r3, r6, r2
	strh	r5, [r3]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0x10
	str	r3, [r2]
	mov	r2, #0xe6
	lsl	r2, #1
	add	r3, r6, r2
	str	r5, [r3]
	mov	r3, #0xed
	lsl	r3, #1
	add	r2, r6, r3
	ldr	r3, =0xffff
	strh	r3, [r2]
	mov	r3, #0xee
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #1
	neg	r3, r3
	strh	r3, [r2]
	mov	r3, #0xef
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #1
	neg	r3, r3
	mov	r1, #0xc8
	strh	r3, [r2]
	lsl	r1, #4
	ldr	r0, =Task_Cutscene
	bl	StartTask
	mov	r0, #0x99
	lsl	r0, #1
	bl	_ClearFlag
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	ldr	r3, [r3, r2]
	str	r3, [r6, r2]
	add	r2, #4
	add	r3, r6, r2
	str	r5, [r3]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end CutsceneStart

