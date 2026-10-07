	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_969_200c8d8
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r0, #0x14
	sub	sp, #8
	bl	__DeleteFieldActor
	mov	r0, #0x13
	bl	__DeleteFieldActor
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r3, #0x11
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0xa
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
	mov	r3, #0x12
	mov	r2, #0x17
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x66
	mov	r1, #4
	mov	r2, #0x4a
	mov	r3, #4
	bl	__CopyMapTiles
	mov	r3, #0x10
	mov	r2, #0x15
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x27
	mov	r1, #0x48
	mov	r2, #0xb
	mov	r3, #0x48
	bl	__CopyMapTiles
	mov	r2, #0x16
	str	r2, [sp]
	mov	r8, r2
	mov	r6, #6
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r5, #0xd
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #7
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r1, r1
	neg	r0, r0
	bl	__Func_80933f8
	bl	__Func_808bb2c
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x8a
	bl	__PlaySound
	mov	r0, #0
	mov	r1, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #0x12
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #0x12
	bl	__MapActor_SetAnim
	mov	r1, #0x12
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0xad
	mov	r5, r0
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r2, #0x80
	mov	r3, #0xcd
	lsl	r2, #14
	lsl	r3, #16
	str	r2, [r5, #0xc]
	str	r3, [r5, #0x10]
	mov	r10, r2
	bl	OvlFunc_969_200d688
	mov	r3, r5
	mov	r6, #0
	add	r3, #0x63
	strb	r6, [r3]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x28]
	mov	r0, #1
	mov	r8, r3
	bl	__MapActor_GetActor
	mov	r3, #0xb2
	mov	r5, r0
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r3, #0xc0
	mov	r2, r10
	lsl	r3, #16
	str	r2, [r5, #0xc]
	str	r3, [r5, #0x10]
	bl	OvlFunc_969_200d688
	mov	r3, r5
	add	r3, #0x63
	strb	r6, [r3]
	mov	r3, r8
	str	r3, [r5, #0x28]
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r3, #0xb4
	mov	r5, r0
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r3, #0xde
	mov	r2, r10
	lsl	r3, #16
	str	r2, [r5, #0xc]
	str	r3, [r5, #0x10]
	mov	r9, r3
	bl	OvlFunc_969_200d688
	mov	r3, r5
	mov	r2, r8
	add	r3, #0x63
	strb	r6, [r3]
	mov	r0, #3
	str	r2, [r5, #0x28]
	bl	__MapActor_GetActor
	mov	r3, #0xa7
	mov	r5, r0
	lsl	r3, #17
	mov	r2, r9
	str	r3, [r5, #8]
	mov	r3, r10
	str	r2, [r5, #0x10]
	str	r3, [r5, #0xc]
	bl	OvlFunc_969_200d688
	mov	r3, r5
	add	r3, #0x63
	strb	r6, [r3]
	mov	r3, r8
	str	r3, [r5, #0x28]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x62
	strb	r6, [r0]
	mov	r0, #6
	bl	__MapActor_GetActor
	add	r0, #0x62
	strb	r6, [r0]
	mov	r0, #0x17
	bl	__MapActor_GetActor
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r3, #4
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #4
	mov	r0, #0x17
	bl	__Func_8092950
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_969_200da28
	bl	__StartTask
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #1
	str	r2, [r3]
	bl	__MapTransitionIn
	ldr	r0, =0x7fff
	mov	r1, #0
	bl	__Func_8091220
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__WaitFrames
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200c8d8

