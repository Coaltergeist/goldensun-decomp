	.include "macros.inc"

.thumb_func_start OvlFunc_901_2008d84
	push	{lr}
	mov	r0, #0xe7
	bl	__Func_8078a08
	bl	__CutsceneStart
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x12
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0xcc
	mov	r1, #0xd8
	lsl	r2, #1
	mov	r0, #0x12
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0x12
	bl	__MapActor_Jump
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0x12
	bl	__MapActor_Jump
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0x12
	bl	__MapActor_Jump
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0xc4
	mov	r1, #0xd8
	lsl	r2, #1
	mov	r0, #0x12
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0x14
	mov	r0, #0x12
	bl	__Func_8092adc
	ldr	r0, =0x858
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008d84

.thumb_func_start OvlFunc_901_2008e30
	push	{lr}
	sub	sp, #8
	mov	r3, #0xd
	mov	r2, #0x19
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x29
	mov	r1, #0x2b
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x28
	mov	r1, #0x2a
	mov	r2, #0xc
	mov	r3, #0x16
	bl	__CopyMapTiles
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008e30

.thumb_func_start OvlFunc_901_2008e60
	push	{lr}
	sub	sp, #8
	mov	r3, #0xd
	mov	r2, #0x19
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x25
	mov	r1, #0x2b
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x24
	mov	r1, #0x2a
	mov	r2, #0xc
	mov	r3, #0x16
	bl	__CopyMapTiles
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008e60
