	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_896_200a400
	push	{r5, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r5, #0
.Lm896_2410:
	mov	r1, #1
	ldr	r0, =0x4039d2
	bl	__Func_8091200
	mov	r0, #8
	bl	__Func_8091254
	mov	r0, #8
	bl	__CutsceneWait
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #8
	bl	__Func_8091254
	mov	r0, #8
	bl	__CutsceneWait
	cmp	r5, #1
	bne	.Lm896_244e
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
.Lm896_244e:
	add	r3, r5, #1
	lsl	r3, #24
	lsr	r5, r3, #24
	cmp	r5, #6
	bne	.Lm896_2410
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x28
	mov	r2, #0xd
	mov	r3, #0x2e
	mov	r0, #0
	bl	__CopyMapTiles
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xe8
	mov	r2, #0x80
	mov	r3, #0x90
	lsl	r3, #16
	lsl	r2, #13
	lsl	r1, #16
	mov	r0, #0xde
	bl	OvlFunc_896_200c260
	mov	r5, r0
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, #1
	bl	__Func_8019908
	ldr	r0, =0x1078
	mov	r1, #1
	bl	__Func_801776c
	mov	r0, #5
	ldr	r1, =0x1330000
	ldr	r2, =0x1150000
	bl	__MapActor_SetPos
	mov	r0, #9
	ldr	r1, =0x1330000
	ldr	r2, =0x1150000
	bl	__MapActor_SetPos
	mov	r0, #0xb
	ldr	r1, =0x1330000
	ldr	r2, =0x1150000
	bl	__MapActor_SetPos
	mov	r0, #0xa
	ldr	r1, =0x1330000
	ldr	r2, =0x1150000
	bl	__MapActor_SetPos
	mov	r0, #0xe
	ldr	r1, =0x1330000
	ldr	r2, =0x1150000
	bl	__MapActor_SetPos
	mov	r0, #0
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #0xe8
	mov	r2, #0x9c
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm896_250e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lm896_250e:
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #0xda
	mov	r2, #0xac
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x91
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0x32
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x90
	bl	__PlaySound
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x32
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x32
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x90
	bl	__PlaySound
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #6
	mov	r0, #1
	mov	r2, #0x28
	bl	__MapActor_Jump
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #2
	bl	__Func_8091e9c
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200a400

