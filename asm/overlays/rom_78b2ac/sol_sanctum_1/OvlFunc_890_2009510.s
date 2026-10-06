	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_890_2009510
	push	{r5, lr}
	sub	sp, #8
	bl	__CutsceneStart
	bl	OvlFunc_890_2009264
	ldr	r2, =0
	ldr	r3, =.Lm890_2de4
	strh	r2, [r3]
	ldr	r3, =.Lm890_2ddc
	strh	r2, [r3]
	ldr	r3, =.Lm890_2de0
	strh	r2, [r3]
	ldr	r3, =.Lm890_2dec
	ldr	r0, =0x1001
	strh	r2, [r3]
	bl	__MessageID
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x10
	mov	r1, #6
	mov	r2, #0x1e
	bl	__MapActor_Jump
	mov	r1, #1
	b	.Lm890_1574

	.pool_aligned

.Lm890_1574:
	mov	r2, #0xae
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	ldr	r0, =0x23e0000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x8010
	mov	r1, #0x14
	bl	OvlFunc_890_200a5fc
	mov	r5, #0
.Lm890_1596:
	mov	r0, #0xf6
	bl	__PlaySound
	bl	OvlFunc_890_2008238
	mov	r0, #0xc
	bl	__CutsceneWait
	mov	r0, #0xf6
	bl	__PlaySound
	add	r5, #1
	bl	OvlFunc_890_2008360
	mov	r0, #0xc
	bl	__CutsceneWait
	cmp	r5, #4
	bne	.Lm890_1596
	mov	r1, #6
	ldr	r0, =0x8010
	bl	OvlFunc_890_200a5fc
	ldr	r5, =.Lm890_2de4
	bl	__Random
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #2
	lsr	r3, #16
	add	r3, #0x14
	strh	r3, [r5]
	ldr	r5, =.Lm890_2ddc
	bl	__Random
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #2
	lsr	r3, #16
	add	r3, #0x14
	strh	r3, [r5]
	ldr	r5, =.Lm890_2de0
	bl	__Random
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #2
	lsr	r3, #16
	add	r3, #0x14
	strh	r3, [r5]
	ldr	r5, =.Lm890_2dec
	bl	__Random
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #2
	lsr	r3, #16
	ldr	r2, =.Lm890_2de8
	add	r3, #0x14
	strh	r3, [r5]
	mov	r1, #0xc8
	mov	r3, #0
	str	r3, [r2]
	lsl	r1, #4
	ldr	r0, =OvlFunc_890_2008d9c
	bl	__StartTask
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_890_2008ef8
	bl	__StartTask
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_890_200901c
	bl	__StartTask
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_890_2009140
	lsl	r1, #4
	bl	__StartTask
	mov	r5, #0
.Lm890_163c:
	mov	r0, #0xf6
	bl	__PlaySound
	bl	OvlFunc_890_2008238
	mov	r0, #5
	bl	__CutsceneWait
	mov	r0, #0xf6
	bl	__PlaySound
	add	r5, #1
	bl	OvlFunc_890_2008360
	mov	r0, #5
	bl	__CutsceneWait
	cmp	r5, #6
	bne	.Lm890_163c
	mov	r5, #0
.Lm890_1664:
	mov	r0, #0xf6
	bl	__PlaySound
	bl	OvlFunc_890_2008238
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #0xf6
	bl	__PlaySound
	add	r5, #1
	bl	OvlFunc_890_2008360
	mov	r0, #4
	bl	__CutsceneWait
	cmp	r5, #8
	bne	.Lm890_1664
	mov	r5, #0
.Lm890_168c:
	mov	r0, #0xf6
	bl	__PlaySound
	bl	OvlFunc_890_2008238
	mov	r0, #3
	bl	__CutsceneWait
	mov	r0, #0xf6
	bl	__PlaySound
	add	r5, #1
	bl	OvlFunc_890_2008360
	mov	r0, #3
	bl	__CutsceneWait
	cmp	r5, #0xa
	bne	.Lm890_168c
	mov	r5, #0
.Lm890_16b4:
	mov	r0, #0xf6
	bl	__PlaySound
	bl	OvlFunc_890_2008238
	mov	r0, #2
	bl	__CutsceneWait
	mov	r0, #0xf6
	bl	__PlaySound
	add	r5, #1
	bl	OvlFunc_890_2008360
	mov	r0, #2
	bl	__CutsceneWait
	cmp	r5, #0xc
	bne	.Lm890_16b4
	mov	r3, #4
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0xa
	mov	r0, #0x2d
	mov	r1, #0x1e
	mov	r2, #0x22
	bl	__CopyMapTiles
	mov	r2, #0x28
	mov	r0, #0x10
	mov	r1, #6
	bl	__MapActor_Jump
	ldr	r0, =0x8010
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0x90
	mov	r2, #0x8c
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #0x10
	bl	__MapActor_TravelToAnimWait
	ldr	r0, =OvlFunc_890_2008d9c
	bl	__StopTask
	ldr	r0, =OvlFunc_890_2008ef8
	bl	__StopTask
	ldr	r0, =OvlFunc_890_200901c
	bl	__StopTask
	ldr	r0, =OvlFunc_890_2009140
	bl	__StopTask
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #4
	bl	__Func_8091e9c
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2009510

