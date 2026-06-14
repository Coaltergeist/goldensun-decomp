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
	bne	.L4142
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
.L4142:
	mov	r0, r10
	cmp	r0, #0
	bge	.L4190
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
.L4172:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x14]
	cmp	r2, r3
	bne	.L4172
	mov	r0, r7
	mov	r1, #6
	bl	__Actor_SetAnim
	mov	r0, #3
	bl	__WaitFrames
	b	.L428c
.L4190:
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
	bgt	.L428c
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
	ble	.L4204
	mov	r1, r9
	ldr	r3, [r1, #8]
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, [r7, #8]
	lsl	r2, #15
	add	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r1]
	b	.L4280
.L4204:
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
	ble	.L424e
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
	b	.L428a
.L424e:
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
.L4280:
	lsl	r2, r3, #1
	add	r2, r3
	ldr	r3, [r7, #0x10]
	lsl	r2, #15
	add	r3, r2
.L428a:
	str	r3, [r7, #0x10]
.L428c:
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

.thumb_func_start OvlFunc_968_200c2bc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	sub	sp, #0x38
	bl	__CutsceneStart
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0xaa
	bl	__Func_8091ff0
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xa2
	bl	__PlaySound
	mov	r2, #0x10
	mov	r3, #0
	add	r2, sp
	mov	r10, r3
	mov	r8, r3
	mov	r9, r2
	mov	r11, r3
.L431a:
	bl	__Random
	ldr	r2, =0x4ccc
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r0
	mul	r3, r2
	ldr	r2, =0x17ffc
	add	r3, r2
	str	r3, [sp, #0x18]
	bl	__Random
	ldr	r2, =0x4ccc
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r0
	mul	r3, r2
	ldr	r2, =0x17ffc
	add	r3, r2
	str	r3, [sp, #0x1c]
	bl	__Random
	mov	r3, #0xf8
	lsl	r0, #12
	lsr	r0, #16
	lsl	r3, #8
	mov	r2, #0x32
	add	r0, r3
	add	r2, sp
	strh	r0, [r2]
.L4356:
	mov	r3, r8
	mov	r6, #0
	cmp	r3, #7
	bhi	.L43a4
	mov	r5, #0xc0
	lsl	r5, #14
	mov	r7, #0
	add	r5, r11
.L4366:
	bl	__Random
	mov	r3, r0
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r3, #0x88
	lsl	r3, #16
	lsr	r0, #16
	mov	r2, #0xd8
	lsl	r2, #18
	str	r3, [sp, #8]
	lsl	r0, #19
	mov	r3, r9
	add	r0, r2
	str	r3, [sp, #0xc]
	mov	r2, r5
	mov	r1, #0
	mov	r3, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_968_2008118
	mov	r2, #0x80
	lsl	r2, #11
	add	r6, #1
	add	r5, r2
	cmp	r6, #3
	bhi	.L43a4
	mov	r3, r8
	cmp	r3, #7
	bls	.L4366
.L43a4:
	mov	r0, #3
	bl	__WaitFrames
	mov	r2, r8
	cmp	r2, #3
	bne	.L43bc
	mov	r3, r10
	cmp	r3, #2
	bhi	.L43bc
	mov	r2, #1
	add	r10, r2
	b	.L4356
.L43bc:
	mov	r3, r8
	add	r3, #3
	mov	r2, #3
	mov	r1, #1
	str	r2, [sp]
	str	r1, [sp, #4]
	mov	r2, #0x36
	mov	r1, r3
	mov	r0, #0x30
	bl	__CopyMapTiles
	mov	r3, #0x80
	mov	r2, #1
	lsl	r3, #13
	add	r8, r2
	add	r11, r3
	mov	r3, r8
	cmp	r3, #9
	bls	.L431a
	mov	r5, #5
	mov	r6, #2
	mov	r0, #0x6f
	mov	r1, #5
	mov	r2, #0x75
	mov	r3, #5
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x6f
	mov	r1, #0xa
	mov	r2, #0x75
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x6f
	mov	r1, #7
	mov	r2, #0x6f
	mov	r3, #5
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r2, #0x6f
	mov	r0, #0x6f
	mov	r1, #7
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r2, #0
	mov	r8, r2
	mov	r10, r9
	mov	r11, r2
.L442e:
	bl	__Random
	ldr	r2, =0x4ccc
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r0
	mul	r3, r2
	ldr	r2, =0x17ffc
	add	r3, r2
	mov	r2, r10
	str	r3, [r2, #8]
	bl	__Random
	ldr	r2, =0x4ccc
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r0
	mul	r3, r2
	ldr	r2, =0x17ffc
	add	r3, r2
	mov	r2, r10
	str	r3, [r2, #0xc]
	bl	__Random
	mov	r3, #0xf8
	lsl	r0, #12
	lsl	r3, #8
	lsr	r0, #16
	add	r0, r3
	mov	r2, r10
	mov	r3, r8
	strh	r0, [r2, #0x22]
	mov	r6, #0
	cmp	r3, #7
	bhi	.L44ba
	mov	r5, #0xc0
	lsl	r5, #14
	mov	r7, #0
	add	r5, r11
.L447c:
	bl	__Random
	lsl	r3, r0, #3
	sub	r3, r0
	lsr	r3, #16
	mov	r2, #0xc0
	lsl	r2, #18
	lsl	r3, #19
	add	r3, r2
	mov	r2, #0x88
	lsl	r2, #16
	str	r2, [sp, #8]
	mov	r2, r9
	str	r2, [sp, #0xc]
	mov	r0, r3
	mov	r2, r5
	mov	r3, #0
	mov	r1, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	bl	OvlFunc_968_2008118
	mov	r3, #0x80
	lsl	r3, #11
	add	r6, #1
	add	r5, r3
	cmp	r6, #3
	bhi	.L44ba
	mov	r2, r8
	cmp	r2, #7
	bls	.L447c
.L44ba:
	mov	r0, #3
	bl	__WaitFrames
	mov	r1, r8
	mov	r3, r8
	mov	r2, #3
	mov	r0, #1
	add	r3, #3
	str	r2, [sp]
	str	r0, [sp, #4]
	mov	r2, #0x30
	add	r1, #0x1a
	mov	r0, #0x37
	bl	__CopyMapTiles
	mov	r3, #0x80
	mov	r2, #1
	lsl	r3, #13
	add	r8, r2
	add	r11, r3
	mov	r3, r8
	cmp	r3, #9
	bls	.L442e
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x15
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200c2bc

.thumb_func_start OvlFunc_968_200c520
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =0xb333
	sub	sp, #0x38
	add	r2, sp, #0x10
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r8, r2
	mov	r7, r0
	mov	r10, r1
	bl	__Random
	mov	r3, #0xf8
	lsl	r0, #12
	lsl	r3, #8
	lsr	r0, #16
	add	r0, r3
	mov	r2, r8
	ldr	r3, =iwram_3001e40
	strh	r0, [r2, #0x22]
	ldr	r6, [r3]
	mov	r3, #3
	and	r6, r3
	cmp	r6, #0
	bne	.L45d6
	bl	__Random
	lsl	r0, #1
	lsr	r5, r0, #16
	cmp	r5, #0
	beq	.L45aa
	bl	__Random
	mov	r5, r0
	bl	__Random
	mov	r3, r0
	lsl	r0, r3, #2
	add	r0, r3
	lsr	r0, #16
	mov	r3, #0xe0
	lsl	r3, #11
	lsl	r0, #16
	add	r0, r3
	mov	r1, #0xa
	bl	_divsi3_RAM
	lsl	r5, #1
	mov	r3, r10
	lsr	r5, #16
	lsl	r5, #4
	lsl	r2, r3, #19
	mov	r3, #0x88
	lsl	r3, #16
	add	r5, r7, r5
	lsl	r5, #16
	str	r3, [sp, #8]
	mov	r3, r8
	str	r0, [sp, #4]
	str	r3, [sp, #0xc]
	mov	r0, r5
	mov	r1, #0
	mov	r3, #0
	str	r6, [sp]
	bl	OvlFunc_968_2008118
	b	.L45d6
.L45aa:
	bl	__Random
	mov	r3, r0
	lsl	r0, r3, #4
	add	r0, r3
	ldr	r3, =0xfffc0000
	lsl	r2, r7, #19
	add	r2, r3
	mov	r3, #0x88
	lsl	r3, #16
	lsr	r0, #16
	add	r0, r7, r0
	str	r3, [sp, #8]
	mov	r3, r8
	str	r3, [sp, #0xc]
	lsl	r0, #16
	mov	r1, #0
	mov	r3, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	OvlFunc_968_2008118
.L45d6:
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200c520

