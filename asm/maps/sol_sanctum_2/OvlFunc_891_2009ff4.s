	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_891_2009ff4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0
	sub	sp, #8
	mov	r8, r3
	bl	__CutsceneStart
	ldr	r0, =0x80f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm891_2010
	b	.Lm891_2208
.Lm891_2010:
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x90
	mov	r1, #1
	mov	r2, #0xac
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xba
	bl	__PlaySound
	ldr	r5, =.Lm891_2980
	ldr	r6, [r5, #0x14]
	ldr	r4, [r5, #0x10]
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0xc]
	str	r6, [sp, #4]
	str	r4, [sp]
	bl	__CopyMapTiles
	mov	r7, #0
	mov	r6, r5
.Lm891_2052:
	mov	r0, #0xf6
	bl	__PlaySound
	ldr	r4, [r6, #0x28]
	ldr	r5, [r6, #0x2c]
	ldr	r1, [r6, #0x1c]
	ldr	r2, [r6, #0x20]
	ldr	r3, [r6, #0x24]
	ldr	r0, [r6, #0x18]
	str	r4, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #0xf6
	bl	__PlaySound
	ldr	r4, [r6, #0x40]
	ldr	r5, [r6, #0x44]
	ldr	r0, [r6, #0x30]
	ldr	r1, [r6, #0x34]
	ldr	r2, [r6, #0x38]
	ldr	r3, [r6, #0x3c]
	add	r7, #1
	str	r4, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__CutsceneWait
	cmp	r7, #0x14
	bne	.Lm891_2052
	ldr	r7, =.Lm891_2980
	ldr	r4, [r7, #0x58]
	ldr	r5, [r7, #0x5c]
	ldr	r3, [r7, #0x54]
	ldr	r1, [r7, #0x4c]
	ldr	r2, [r7, #0x50]
	ldr	r0, [r7, #0x48]
	str	r4, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	ldr	r0, [r7, #0x60]
	bl	__SetFlag
	bl	OvlFunc_891_2008054
	mov	r3, #1
	mov	r8, r0
	neg	r3, r3
	cmp	r8, r3
	bne	.Lm891_21b0
	ldr	r0, =0x818
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm891_20ce
	b	.Lm891_2208
.Lm891_20ce:
	mov	r1, #1
	mov	r0, #0
	bl	__SetCameraTarget
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r7, #0x64]
	mov	r1, #0x80
	mov	r2, #0x80
	strh	r3, [r0, #6]
	lsl	r1, #10
	lsl	r2, #10
	mov	r0, #0
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r6, #0xfe
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #4
	mov	r0, #0
	mov	r2, #0
	bl	__MapActor_Jump
	ldr	r1, [r7, #0x68]
	ldr	r2, [r7, #0x6c]
	mov	r0, #0
	bl	__MapActor_TravelTo
	mov	r4, r7
	add	r4, #0x80
	ldr	r5, [r4]
	add	r4, #4
	ldr	r4, [r4]
	ldr	r0, [r7, #0x70]
	ldr	r1, [r7, #0x74]
	ldr	r2, [r7, #0x78]
	ldr	r3, [r7, #0x7c]
	str	r5, [sp]
	str	r4, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, r7
	add	r3, #0x88
	mov	r4, r7
	ldr	r0, [r3]
	add	r4, #0x98
	add	r3, #4
	ldr	r1, [r3]
	ldr	r5, [r4]
	add	r3, #4
	add	r4, #4
	ldr	r2, [r3]
	ldr	r4, [r4]
	add	r3, #4
	ldr	r3, [r3]
	str	r5, [sp]
	str	r4, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, r7
	add	r3, #0xa0
	mov	r4, r7
	ldr	r0, [r3]
	add	r4, #0xb0
	add	r3, #4
	ldr	r1, [r3]
	ldr	r5, [r4]
	add	r3, #4
	ldr	r2, [r3]
	add	r4, #4
	add	r3, #4
	ldr	r4, [r4]
	ldr	r3, [r3]
	str	r5, [sp]
	mov	r5, r7
	add	r5, #0xb8
	str	r4, [sp, #4]
	bl	__CopyMapTiles
	ldr	r0, [r5]
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r6, r3
	strb	r6, [r0]
	mov	r3, r7
	add	r3, #0xbc
	ldr	r1, [r3]
	add	r3, #4
	ldr	r2, [r3]
	ldr	r0, [r5]
	bl	__MapActor_TravelToWait
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, [r7, #0x60]
	bl	__ClearFlag
	b	.Lm891_2208
.Lm891_21b0:
	mov	r3, r8
	cmp	r3, #0
	bne	.Lm891_2208
	ldr	r0, =0x818
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm891_2208
	ldr	r0, =0x80b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm891_21f4
	ldr	r0, =0x80d
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm891_21f4
	ldr	r0, =0x80e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm891_21f4
	ldr	r0, =0x80f
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm891_2208
	ldr	r0, =0x80f
	bl	__SetFlag
	bl	OvlFunc_891_2008c8c
	b	.Lm891_2208
.Lm891_21f4:
	ldr	r0, =0x812
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm891_2208
	mov	r0, #5
	bl	__Func_8091e9c
	mov	r3, #1
	mov	r8, r3
.Lm891_2208:
	mov	r3, r8
	cmp	r3, #1
	bne	.Lm891_2216
	bl	__MapTransitionOut
	bl	__WaitMapTransition
.Lm891_2216:
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2009ff4

