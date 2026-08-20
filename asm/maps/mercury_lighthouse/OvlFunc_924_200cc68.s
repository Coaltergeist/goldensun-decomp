	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_200cc68
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e70
	mov	r2, #0xb2
	ldr	r3, [r3]
	lsl	r2, #1
	add	r7, r3, r2
	ldr	r3, =0x9c28
	mov	r10, r3
	ldr	r3, =0x4890000
	mov	r6, #0
	str	r3, [r7, #0xc]
	str	r6, [r7, #0x1c]
	mov	r0, #0
	sub	sp, #8
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xff770000
	ldr	r3, [r0, #0x10]
	mov	r8, r2
	add	r3, r8
	str	r3, [r0, #0x10]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xd
	str	r3, [r5, #0x40]
	bl	__MapActor_GetActor
	mov	r1, #0xaa
	add	r0, #0x55
	mov	r2, #0xdc
	lsl	r1, #18
	lsl	r2, #17
	strb	r6, [r0]
	mov	r0, #0xd
	bl	__MapActor_SetPos
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	add	r3, r8
	str	r3, [r0, #0x10]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	str	r3, [r5, #0x40]
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	__Func_8011ae0
	mov	r0, #0xdf
	bl	__PlaySound
.Lm924_4d0c:
	ldr	r3, [r7, #0xc]
	mov	r2, r10
	sub	r3, r2
	str	r3, [r7, #0xc]
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	add	r3, r10
	str	r3, [r0, #0x10]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xd
	str	r3, [r5, #0x40]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	add	r3, r10
	str	r3, [r0, #0x10]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	str	r3, [r5, #0x40]
	mov	r2, #0x80
	ldr	r3, [r7, #0xc]
	lsl	r2, #19
	cmp	r3, r2
	ble	.Lm924_4d78
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.Lm924_4d70
	ldr	r3, =0xccb
	cmp	r10, r3
	ble	.Lm924_4d70
	ldr	r2, =0xfffffaa0
	add	r10, r2
.Lm924_4d70:
	mov	r0, #1
	bl	__WaitFrames
	b	.Lm924_4d0c
.Lm924_4d78:
	mov	r3, #0x80
	lsl	r3, #19
	str	r3, [r7, #0xc]
	bl	__Func_800fe9c
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r3, #0xdc
	lsl	r3, #17
	str	r3, [r0, #0x10]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x1e
	str	r3, [r5, #0x40]
	bl	__CutsceneWait
	mov	r1, #0xb0
	mov	r2, #0x92
	lsl	r2, #2
	lsl	r1, #2
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r6, #0
	str	r6, [r0, #0x44]
	mov	r1, #6
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #7
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r0, #0x30]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x34]
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0xb8
	mov	r2, #0x92
	lsl	r2, #2
	lsl	r1, #2
	mov	r0, #0
	bl	__MapActor_TravelTo
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r0, #0x44]
	mov	r1, #6
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r0, #0xdf
	bl	__PlaySound
	b	.Lm924_4e86
.Lm924_4e6a:
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.Lm924_4e80
	ldr	r3, =0xcccc
	cmp	r10, r3
	bgt	.Lm924_4e80
	ldr	r2, =0x1999
	add	r10, r2
.Lm924_4e80:
	mov	r0, #1
	bl	__WaitFrames
.Lm924_4e86:
	ldr	r3, [r7, #0xc]
	add	r3, r10
	str	r3, [r7, #0xc]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	sub	r3, r2
	str	r3, [r0, #0x10]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	str	r3, [r5, #0x40]
	ldr	r3, [r7, #0xc]
	ldr	r2, =0x488ffff
	cmp	r3, r2
	ble	.Lm924_4e6a
	mov	r3, #0x80
	lsl	r3, #19
	str	r3, [r7, #0xc]
	mov	r2, #4
	mov	r3, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x5b
	mov	r2, #0x28
	mov	r3, #0x5b
	bl	__CopyMapTiles
	mov	r3, #0x28
	mov	r2, #0x22
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r1, #0x22
	mov	r2, #5
	mov	r0, #0x68
	bl	__Func_8010704
	bl	__Func_800fe9c
	mov	r0, #2
	bl	__WaitFrames
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xd
	bl	__MapActor_SetPos
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200cc68

