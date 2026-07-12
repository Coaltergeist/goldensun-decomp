	.include "macros.inc"

.thumb_func_start OvlFunc_963_2008124
	push	{r5, r6, lr}
	ldr	r0, =0x89f
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.L148
	ldr	r1, =gState
	mov	r0, #0xe2
	ldr	r3, =0x69
	lsl	r0, #1
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0xa
	strh	r3, [r2]
.L148:
	ldr	r5, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r5, r0
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	ldr	r3, =0xa9
	cmp	r6, r3
	bne	.L200
	ldr	r0, =0x897
	bl	__GetFlag
	cmp	r0, #0
	beq	.L16e
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.L16e:
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r5, r0
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L1b6
	ldr	r0, =0x8fb
	bl	__GetFlag
	cmp	r0, #0
	beq	.L196
	mov	r0, #0x90
	lsl	r0, #2
	add	r3, r5, r0
	strh	r6, [r3]
	ldr	r3, =0x242
	add	r2, r5, r3
	mov	r3, #1
	strh	r3, [r2]
.L196:
	ldr	r0, =0x8fc
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1b0
	mov	r0, #0x90
	lsl	r0, #2
	add	r3, r5, r0
	strh	r6, [r3]
	ldr	r3, =0x242
	add	r2, r5, r3
	mov	r3, #5
	strh	r3, [r2]
.L1b0:
	ldr	r0, =0x12f
	bl	__ClearFlag
.L1b6:
	ldr	r5, =gState
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r5, r0
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	bne	.L1ea
	ldr	r0, =0x8fb
	bl	__SetFlag
	ldr	r0, =0x96f
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1ea
	mov	r3, #8
	mov	r2, #0x1b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #6
	mov	r1, #0
	mov	r2, #2
	mov	r3, #1
	bl	__Func_8010704
.L1ea:
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r5, r0
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #5
	bne	.L24c
	ldr	r0, =0x8fc
	bl	__SetFlag
	b	.L24c
.L200:
	ldr	r3, =0xaa
	cmp	r6, r3
	bne	.L24c
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0xf
	bl	__MapActor_GetActor
	ldr	r3, =0x19999
	mov	r2, #0x38
	str	r3, [r0, #0x1c]
	mov	r3, #0x66
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6c
	mov	r1, #0x26
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L24c:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_963_2008124

.thumb_func_start OvlFunc_963_2008288
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0
	sub	sp, #8
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r5, #2
	mov	r1, #0x24
	mov	r2, #0x47
	mov	r3, #8
	mov	r0, #0x42
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__WaitFrames
	mov	r3, #8
	mov	r1, #0x24
	mov	r2, #0x47
	mov	r0, #0x44
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__WaitFrames
	mov	r2, #0x10
	mov	r1, #3
	neg	r2, r2
	mov	r0, #0
	bl	__Func_8092208
	mov	r0, r6
	bl	__Func_8091e9c
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_963_2008288
