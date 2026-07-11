	.include "macros.inc"

.thumb_func_start OvlFunc_926_2009dbc
	push	{r5, lr}
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r5, #0
	str	r5, [r0, #0x6c]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	str	r5, [r0, #0x6c]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	str	r5, [r0, #0x6c]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	str	r5, [r0, #0x6c]
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r1, #1
	str	r5, [r0, #0x6c]
	mov	r0, #0xb
	bl	__MapActor_SetAnim
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_80933d4
	mov	r0, #0xe8
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r0, =0x1883
	bl	__MessageID
	mov	r0, #0xa
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xc
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	mov	r1, #0x98
	mov	r2, #0xc8
	bl	__Func_809218c
	mov	r1, #0x90
	mov	r2, #0xf8
	mov	r0, #0xc
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__MapActor_WaitMovement
	mov	r0, #9
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xd
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xe
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xf
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0x10
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0x12
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xa
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xc
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	mov	r1, #0x98
	mov	r2, #0xc8
	bl	__Func_809218c
	mov	r0, #0xc
	mov	r1, #0x90
	mov	r2, #0xf8
	bl	__Func_80921c4
	mov	r1, #0x13
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r0, #0xa
	mov	r1, #0x13
	bl	__Func_809280c
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xa
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xc
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xe
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xf
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x12
	mov	r2, #0
	mov	r0, #0x10
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x10
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0x10
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0xf
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0xf
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0xb0
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0xf
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_809259c
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8093054
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #9
	bl	__MapActor_Emote
	mov	r0, #5
	bl	__CutsceneWait
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #5
	bl	__CutsceneWait
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xb
	bl	__MapActor_Emote
	mov	r0, #5
	bl	__CutsceneWait
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #5
	bl	__CutsceneWait
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xd
	bl	__MapActor_Emote
	mov	r0, #5
	bl	__CutsceneWait
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xe
	bl	__MapActor_Emote
	mov	r0, #5
	bl	__CutsceneWait
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xf
	bl	__MapActor_Emote
	mov	r0, #5
	bl	__CutsceneWait
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #0x10
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x10
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0xf
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0
	mov	r1, #0xf
	mov	r0, #0x12
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #0xc
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_8092848
	mov	r1, #0xf
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_8092848
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xd
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xe
	mov	r1, #0x12
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x12
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	b	.L2224

	.pool_aligned

.L2224:
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xf
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0x10
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8093054
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xf
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0x10
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xf
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0x10
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #0x78
	mov	r2, #0xc8
	bl	__Func_809218c
	mov	r1, #0x78
	mov	r2, #0xf8
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0xa
	bl	__MapActor_WaitMovement
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #5
	mov	r0, #0xb
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	ldr	r1, =gScript_926__0200c638
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
	mov	r0, #0xf
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r0, #0xf
	mov	r1, #0xe8
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0xf
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_80925cc
	mov	r1, #0xe8
	mov	r2, #0xa8
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #0x13
	bl	__MapActor_SetPos
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #12
	str	r3, [r0, #0xc]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x7c
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0x98
	bl	__Func_80921c4
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0x1e
	mov	r0, #0xf
	bl	__Func_8092adc
	ldr	r0, =0x898
	bl	__ClearFlag
	ldr	r0, =0x89b
	bl	__SetFlag
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2009dbc

