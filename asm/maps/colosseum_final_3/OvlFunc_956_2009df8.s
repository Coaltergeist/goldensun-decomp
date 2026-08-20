	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_2009df8
	push	{r5, r6, r7, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.Lm956_1e12
	bl	OvlFunc_common1_2c4
	b	.Lm956_1f7e
.Lm956_1e12:
	bl	__CutsceneStart
	mov	r0, r6
	mov	r1, #2
	bl	OvlFunc_common1_4cc
	mov	r7, r0
	cmp	r7, #0
	beq	.Lm956_1e26
	b	.Lm956_1f5e
.Lm956_1e26:
	ldr	r0, =0x20b7
	bl	__MessageID
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xbc
	mov	r1, #1
	mov	r2, #0x98
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	mov	r5, #0x8c
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__CutsceneWait
	lsl	r5, #1
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, r5
	mov	r2, #0xc8
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, r5
	mov	r2, #0x98
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r1, #0x94
	lsl	r1, #1
	mov	r2, #0x98
	mov	r0, #0
	bl	OvlFunc_common1_15b8
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	__Func_8093c00
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	bl	__Func_80933f8
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0xf
	mov	r0, #0
	bl	__Func_8092adc
	bl	__Func_8093c00
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	bl	__Func_80933f8
	mov	r1, #0
	mov	r2, #0xf
	mov	r0, #0
	bl	__Func_8092adc
	bl	__Func_8093c00
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0xf
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x28
	mov	r2, #0
	mov	r0, #0x60
	bl	OvlFunc_common1_1490
	mov	r1, #0x28
	mov	r2, #0xa
	mov	r0, #0x80
	bl	OvlFunc_common1_14f4
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x28
	mov	r2, #0xa
	mov	r0, #0xa0
	bl	OvlFunc_common1_14f4
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r1, #0x48
	mov	r0, #0xa0
	bl	OvlFunc_common1_14f4
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, r6
	bl	__ActorMessage
	bl	OvlFunc_common1_1550
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__SetCameraTarget
	mov	r0, r6
	mov	r1, #2
	bl	OvlFunc_common1_588
	b	.Lm956_1f70
.Lm956_1f5e:
	cmp	r7, #1
	bne	.Lm956_1f70
	ldr	r0, =0x20b6
	bl	__MessageID
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
.Lm956_1f70:
	mov	r1, r6
	mov	r2, #2
	mov	r0, r7
	bl	OvlFunc_common1_5e4
	bl	__CutsceneEnd
.Lm956_1f7e:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2009df8

