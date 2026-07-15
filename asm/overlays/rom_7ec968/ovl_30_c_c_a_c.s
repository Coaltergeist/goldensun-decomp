	.include "macros.inc"

.section .text.after_8334, "ax", %progbits
.thumb_func_start OvlFunc_963_20083c4
	push	{r5, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0xdb
	mov	r0, #0
	mov	r1, #0x78
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L402
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0xb
	bl	__MapActor_SetPos
.L402:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xb
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r0, #0xb
	mov	r1, #0x6c
	ldr	r2, =0x1af
	bl	__Func_80921c4
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_809259c
	ldr	r0, =0x2654
	bl	__MessageID
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r2, #0xd2
	mov	r0, #0xb
	mov	r1, #0x84
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xd0
	mov	r0, #0xb
	mov	r1, #0x8a
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xb0
	mov	r2, #0xa
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0x28
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xd2
	lsl	r2, #1
	mov	r1, #0x90
	mov	r0, #0xb
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #9
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8093054
	mov	r0, #0x9b
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5a8
	mov	r1, #0xd0
	mov	r2, #0x28
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xb
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	b	.L5b8
.L5a8:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L5b8:
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0xb0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r2, #0xd0
	mov	r0, #0xb
	mov	r1, #0x8a
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0xb
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L6ce
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xb
	bl	__MapActor_TravelTo
.L6ce:
	mov	r0, #0xb
	bl	__MapActor_WaitMovement
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r3, #0x1b
	str	r3, [sp, #4]
	mov	r5, #7
	mov	r0, #6
	mov	r1, #0x1b
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x1a
	str	r3, [sp, #4]
	mov	r1, #0x1a
	mov	r2, #2
	mov	r3, #1
	mov	r0, #9
	str	r5, [sp]
	bl	__Func_8010704
	ldr	r0, =0x89f
	bl	__SetFlag
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_963_20083c4
