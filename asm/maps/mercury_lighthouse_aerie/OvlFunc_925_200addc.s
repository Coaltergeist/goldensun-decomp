	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_925_200addc
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e70
	ldr	r5, [r3]
	mov	r3, #0xb2
	lsl	r3, #1
	sub	sp, #8
	add	r5, r3
	bl	__CutsceneStart
	mov	r3, #0xe0
	lsl	r3, #18
	str	r3, [r5, #0xc]
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r6, #0
	add	r0, #0x55
	mov	r1, #0xd0
	mov	r2, #0x84
	lsl	r2, #17
	lsl	r1, #15
	strb	r6, [r0]
	mov	r0, #9
	bl	__MapActor_SetPos
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r5, =0xffe00000
	str	r5, [r0, #0xc]
	mov	r0, #9
	bl	__MapActor_GetActor
	str	r5, [r0, #0x3c]
	bl	__Func_8093554
	add	r0, #0x55
	strb	r6, [r0]
	ldr	r1, =0x1999
	ldr	r0, =0xcccc
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xb8
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r3, #5
	mov	r2, #4
	str	r3, [sp]
	mov	r0, #0x1d
	mov	r3, #0x4a
	mov	r1, #0x4a
	str	r2, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8092b08
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092b08
	bl	OvlFunc_925_200b324
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_8092b08
	mov	r1, #1
	mov	r0, #0x12
	bl	__Func_8092b08
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x251
	bl	__SetFlag
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_925_200addc

