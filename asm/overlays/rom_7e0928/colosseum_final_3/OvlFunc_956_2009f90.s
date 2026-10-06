	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_2009f90
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r7, r0
	cmp	r3, #2
	bne	.Lm956_1fae
	bl	OvlFunc_common1_2c4
	b	.Lm956_20d2
.Lm956_1fae:
	bl	__CutsceneStart
	mov	r0, r7
	mov	r1, #3
	bl	OvlFunc_common1_4cc
	mov	r6, r0
	cmp	r6, #0
	bne	.Lm956_20b2
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	ldr	r0, =0x20bb
	mov	r8, r3
	bl	__MessageID
	bl	OvlFunc_956_2008188
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x9a
	mov	r1, #1
	mov	r2, #0xb8
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, r7
	bl	__ActorMessage
	bl	OvlFunc_956_20081b4
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xfc
	lsl	r1, #1
	mov	r2, #0xc8
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	bl	OvlFunc_956_20081c8
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xaa
	mov	r2, #0xc8
	lsl	r1, #2
	mov	r0, #0
	bl	OvlFunc_common1_1578
	mov	r3, #0xc1
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #5
	beq	.Lm956_206e
	mov	r5, #0xc1
	lsl	r5, #1
	add	r5, r8
.Lm956_205a:
	mov	r0, #1
	add	r6, #1
	bl	__WaitFrames
	cmp	r6, #0xef
	bgt	.Lm956_206e
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #5
	bne	.Lm956_205a
.Lm956_206e:
	bl	OvlFunc_956_2008b30
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x3c
	mov	r0, #0
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, r7
	bl	__ActorMessage
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__SetCameraTarget
	mov	r0, r7
	mov	r1, #3
	bl	OvlFunc_common1_588
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #0
	strh	r3, [r2]
	b	.Lm956_20c4
.Lm956_20b2:
	cmp	r6, #1
	bne	.Lm956_20c4
	ldr	r0, =0x20ba
	bl	__MessageID
	mov	r0, r7
	mov	r1, #0
	bl	__ActorMessage
.Lm956_20c4:
	mov	r1, r7
	mov	r2, #3
	mov	r0, r6
	bl	OvlFunc_common1_5e4
	bl	__CutsceneEnd
.Lm956_20d2:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2009f90

