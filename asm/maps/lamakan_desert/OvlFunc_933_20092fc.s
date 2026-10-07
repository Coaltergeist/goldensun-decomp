	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_933_20092fc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x48
	bl	OvlFunc_933_2009054
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xfa
	ldr	r2, [r3]
	ldr	r3, =gState
	lsl	r0, #1
	add	r3, r0
	mov	r1, #0xf0
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r1
	mov	r11, r3
	ldr	r2, [r2]
	mov	r0, r11
	str	r2, [sp, #0x10]
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r6, sp, #0x3c
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	mov	r2, #0xc0
	lsl	r2, #9
	add	r3, r2
	mov	r1, r6
	str	r3, [r6, #8]
	bl	__TestCollision
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r10, r3
	mov	r8, r0
	mov	r3, #4
	mov	r0, r10
	and	r0, r3
	mov	r10, r0
	cmp	r0, #0
	bne	.Lm933_13ba
	bl	__Random
	add	r1, sp, #0x14
	lsl	r0, #12
	mov	r2, #0xf8
	mov	r9, r1
	lsl	r2, #8
	lsr	r0, #16
	add	r0, r2
	mov	r3, r9
	strh	r0, [r3, #0x22]
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #2
	ldr	r5, [r7, #8]
	lsr	r3, #16
	lsl	r3, #16
	ldr	r0, =0xfffa0000
	add	r5, r3
	add	r5, r0
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	ldr	r2, =0x1999
	lsr	r3, #16
	mul	r3, r2
	ldr	r1, =0x7ffd
	add	r3, r1
	ldr	r2, [r7, #0x10]
	ldr	r1, [r7, #0xc]
	str	r3, [sp, #4]
	mov	r3, #0x80
	lsl	r3, #16
	mov	r0, r10
	str	r3, [sp, #8]
	mov	r3, r9
	str	r0, [sp]
	str	r3, [sp, #0xc]
	mov	r0, r5
	mov	r3, #0
	bl	OvlFunc_common0_10c
.Lm933_13ba:
	mov	r0, r8
	cmp	r0, #0
	bge	.Lm933_1408
	mov	r1, #0x81
	mov	r0, r11
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
.Lm933_13ea:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	cmp	r2, r3
	bne	.Lm933_13ea
	mov	r0, r7
	mov	r1, #6
	bl	__Actor_SetAnim
	mov	r0, #3
	bl	__WaitFrames
	b	.Lm933_147c
.Lm933_1408:
	ldr	r3, [r7, #8]
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	mov	r1, #0x80
	lsl	r1, #12
	add	r3, r1
	mov	r0, r7
	mov	r1, r6
	str	r3, [r6, #8]
	bl	__TestCollision
	mov	r8, r0
	cmp	r0, #0
	bgt	.Lm933_147c
	ldr	r3, [r7, #8]
	ldr	r2, =0x5b333
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	mov	r0, r7
	add	r3, r2
	mov	r1, r6
	str	r3, [r6, #8]
	bl	__TestCollision
	mov	r8, r0
	cmp	r0, #0
	bgt	.Lm933_147c
	ldr	r3, [r7, #8]
	ldr	r2, =0xfffa4ccd
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	ldr	r0, =0x5b333
	mov	r1, r6
	add	r3, r0
	mov	r0, r7
	str	r3, [r6, #8]
	bl	__TestCollision
	mov	r8, r0
	cmp	r0, #0
	bgt	.Lm933_147c
	ldr	r1, [sp, #0x10]
	mov	r2, #0xc0
	ldr	r3, [r1, #0x10]
	lsl	r2, #9
	add	r3, r2
	str	r3, [r1, #0x10]
	ldr	r3, [r7, #0x10]
	add	r3, r2
	str	r3, [r7, #0x10]
.Lm933_147c:
	add	sp, #0x48
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_933_20092fc

