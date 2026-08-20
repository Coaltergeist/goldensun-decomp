	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_200c048
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	mov	r9, r0
	ldr	r2, [r3]
	mov	r0, #0xfa
	ldr	r3, =gState
	lsl	r0, #1
	add	r3, r0
	ldr	r3, [r3]
	sub	sp, #0x58
	mov	r1, #0xf0
	str	r3, [sp, #0x20]
	lsl	r1, #1
	add	r2, r1
	ldr	r2, [r2]
	mov	r0, r3
	str	r2, [sp, #0x1c]
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r0, r9
	ldr	r3, [r0]
	add	r2, sp, #0x4c
	mov	r11, r2
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, [r7, #8]
	lsl	r2, #15
	mov	r1, r11
	add	r3, r2
	str	r3, [r1]
	ldr	r3, [r7, #0xc]
	str	r3, [r1, #4]
	ldr	r3, [r0, #8]
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, [r7, #0x10]
	lsl	r2, #15
	add	r3, r2
	str	r3, [r1, #8]
	mov	r0, r7
	bl	__TestCollision
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	str	r3, [sp, #0x18]
	ldr	r2, [sp, #0x18]
	mov	r3, #4
	and	r2, r3
	mov	r10, r0
	str	r2, [sp, #0x18]
	cmp	r2, #0
	bne	.Lm968_4142
	bl	__Random
	mov	r1, #0xf8
	mov	r3, sp
	lsl	r0, #12
	add	r3, #0x24
	lsl	r1, #8
	lsr	r0, #16
	mov	r2, r3
	add	r0, r1
	str	r3, [sp, #0x14]
	strh	r0, [r2, #0x22]
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #2
	ldr	r5, [r7, #8]
	lsr	r3, #16
	lsl	r3, #16
	add	r5, r3
	ldr	r3, =0xfffa0000
	add	r5, r3
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r0, =0x1999
	lsr	r3, #16
	mov	r8, r0
	mov	r1, r8
	mul	r1, r3
	ldr	r6, =0x7ffd
	mov	r0, r9
	ldr	r2, [r0]
	mov	r3, r1
	add	r3, r6
	mov	r1, r2
	mul	r1, r3
	str	r1, [sp, #0x10]
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #16
	mov	r2, r8
	mul	r2, r3
	mov	r0, r9
	mov	r3, r2
	ldr	r2, [r0, #8]
	add	r3, r6
	mul	r3, r2
	ldr	r1, [r7, #0xc]
	ldr	r2, [r7, #0x10]
	str	r3, [sp, #4]
	mov	r3, #0x80
	lsl	r3, #16
	ldr	r0, [sp, #0x18]
	str	r3, [sp, #8]
	ldr	r3, [sp, #0x14]
	str	r0, [sp]
	str	r3, [sp, #0xc]
	mov	r0, r5
	ldr	r3, [sp, #0x10]
	bl	OvlFunc_968_2008118
.Lm968_4142:
	mov	r0, r10
	cmp	r0, #0
	bge	.Lm968_4190
	mov	r1, #0x81
	ldr	r0, [sp, #0x20]
	lsl	r1, #1
	bl	__MapActor_Surprise
	ldr	r3, [r7, #0x10]
	mov	r0, #0x80
	lsl	r0, #12
	add	r3, r0
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	mov	r0, r7
	bl	__Actor_TravelTo
	mov	r0, r7
	mov	r1, #7
	bl	__Actor_SetAnim
	mov	r0, r7
	bl	__Actor_WaitMovement
.Lm968_4172:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	cmp	r2, r3
	bne	.Lm968_4172
	mov	r0, r7
	mov	r1, #6
	bl	__Actor_SetAnim
	mov	r0, #3
	bl	__WaitFrames
	b	.Lm968_428c
.Lm968_4190:
	mov	r1, r9
	ldr	r2, [r1]
	ldr	r3, [r7, #8]
	lsl	r2, #19
	add	r3, r2
	mov	r2, r11
	str	r3, [r2]
	ldr	r3, [r7, #0xc]
	str	r3, [r2, #4]
	ldr	r2, [r1, #8]
	ldr	r3, [r7, #0x10]
	lsl	r2, #19
	add	r3, r2
	mov	r0, r11
	str	r3, [r0, #8]
	mov	r1, r11
	mov	r0, r7
	bl	__TestCollision
	mov	r10, r0
	cmp	r0, #0
	bgt	.Lm968_428c
	mov	r1, r9
	ldr	r3, [r1]
	ldr	r5, =0x5b333
	mov	r0, r9
	ldr	r2, [r0, #8]
	mov	r1, r3
	mul	r1, r5
	mul	r2, r5
	ldr	r3, [r7, #8]
	add	r3, r1
	mov	r0, r11
	sub	r3, r2
	str	r3, [r0]
	ldr	r3, [r7, #0xc]
	str	r3, [r0, #4]
	ldr	r3, [r7, #0x10]
	add	r3, r2
	sub	r3, r1
	str	r3, [r0, #8]
	mov	r1, r11
	mov	r0, r7
	bl	__TestCollision
	mov	r10, r0
	cmp	r0, #0
	ble	.Lm968_4204
	mov	r1, r9
	ldr	r3, [r1, #8]
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, [r7, #8]
	lsl	r2, #15
	add	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r1]
	b	.Lm968_4280
.Lm968_4204:
	mov	r2, r9
	ldr	r3, [r2]
	ldr	r2, [r2, #8]
	add	r3, r2
	mov	r2, r3
	mul	r2, r5
	ldr	r3, [r7, #8]
	mov	r0, r11
	add	r3, r2, r3
	str	r3, [r0]
	ldr	r3, [r7, #0xc]
	str	r3, [r0, #4]
	ldr	r3, [r7, #0x10]
	add	r2, r3
	str	r2, [r0, #8]
	mov	r1, r11
	mov	r0, r7
	bl	__TestCollision
	mov	r10, r0
	cmp	r0, #0
	ble	.Lm968_424e
	mov	r1, r9
	ldr	r3, [r1, #8]
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, [r7, #8]
	lsl	r2, #15
	sub	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r1]
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, [r7, #0x10]
	lsl	r2, #15
	sub	r3, r2
	b	.Lm968_428a
.Lm968_424e:
	mov	r2, r9
	ldr	r3, [r2]
	ldr	r0, [sp, #0x1c]
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, [r0, #8]
	lsl	r2, #15
	add	r3, r2
	str	r3, [r0, #8]
	mov	r1, r9
	ldr	r3, [r1]
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, [r7, #8]
	lsl	r2, #15
	add	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r1, #8]
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, [r0, #0x10]
	lsl	r2, #15
	add	r3, r2
	str	r3, [r0, #0x10]
	ldr	r3, [r1, #8]
.Lm968_4280:
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, [r7, #0x10]
	lsl	r2, #15
	add	r3, r2
.Lm968_428a:
	str	r3, [r7, #0x10]
.Lm968_428c:
	add	sp, #0x58
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200c048

