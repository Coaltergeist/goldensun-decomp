	.include "macros.inc"
	.include "gba.inc"

.section .text.after_90cc, "ax", %progbits

.thumb_func_start OvlFunc_968_2009150
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	ldr	r1, =gScript_968__0200d21c
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0
	bl	__MapActor_WaitScript
	mov	r0, #0
	mov	r1, #6
	bl	__Func_8092950
	mov	r1, #0x80
	lsl	r1, #11
	mov	r2, #0x80
	str	r1, [r5, #0x28]
	mov	r0, #0
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x36
	bgt	.L11a0
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r2, #0xd2
	b	.L11b2
.L11a0:
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r2, #0xee
.L11b2:
	mov	r3, #0xa
	ldrsh	r1, [r5, r3]
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, =OvlFunc_968_20085e4
	mov	r1, #0x81
	str	r3, [r5, #0x6c]
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r3, #0
	str	r3, [r5, #0x6c]
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009150

.thumb_func_start OvlFunc_968_2009218
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r7, [r3]
	ldr	r3, =0xcba
	add	r2, r7, r3
	mov	r3, #0
	strh	r3, [r2]
	ldr	r2, =0xcb6
	mov	r5, #1
	add	r3, r7, r2
	strh	r5, [r3]
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	ldr	r0, =0x2688
	mov	r1, #1
	bl	__Func_801776c
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #0
	ldr	r0, =0x10005
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r0, #0x8e
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x46
	bl	__CutsceneWait
	ldr	r0, =0x982
	bl	__GetFlag
	cmp	r0, #0
	bne	.L12ae
	ldr	r0, =0x983
	bl	__GetFlag
	cmp	r0, #0
	bne	.L12ae
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	and	r3, r5
	cmp	r3, #0
	beq	.L12a8
	ldr	r0, =0x982
	bl	__SetFlag
	b	.L12ae
.L12a8:
	ldr	r0, =0x983
	bl	__SetFlag
.L12ae:
	ldr	r0, =0x982
	bl	__GetFlag
	cmp	r0, #0
	bne	.L138e
	ldr	r0, =0x982
	bl	__SetFlag
	ldr	r0, =0x983
	bl	__ClearFlag
	mov	r3, #7
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x67
	mov	r1, #0x1b
	mov	r2, #0x59
	mov	r3, #0x1b
	bl	__CopyMapTiles
	mov	r5, #3
	mov	r6, #2
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1b
	mov	r3, #0x5c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1d
	mov	r3, #0x5d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1b
	mov	r3, #0x5e
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1b
	mov	r3, #0x60
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1d
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x19
	mov	r3, #0x5b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5c
	mov	r2, #0x19
	mov	r3, #0x5d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x19
	mov	r3, #0x5f
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x19
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x1b
	mov	r3, #0x60
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x1d
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	b	.L1462
.L138e:
	ldr	r0, =0x983
	bl	__SetFlag
	ldr	r0, =0x982
	bl	__ClearFlag
	mov	r3, #7
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6f
	mov	r1, #0x1b
	mov	r2, #0x59
	mov	r3, #0x1b
	bl	__CopyMapTiles
	mov	r5, #3
	mov	r6, #2
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x19
	mov	r3, #0x5b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x19
	mov	r3, #0x5d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x19
	mov	r3, #0x5f
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x19
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1b
	mov	r3, #0x60
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1d
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5e
	mov	r2, #0x1b
	mov	r3, #0x5c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x1d
	mov	r3, #0x5d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5e
	mov	r2, #0x1b
	mov	r3, #0x5e
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x1b
	mov	r3, #0x60
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x1d
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
.L1462:
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_80933d4
	mov	r0, #0xe4
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x21e0000
	mov	r3, #1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #0xe4
	mov	r1, #1
	lsl	r0, #17
	neg	r1, r1
	ldr	r2, =0x1a70000
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
	bl	__CutsceneEnd
	ldr	r3, =0xcb6
	add	r2, r7, r3
	mov	r3, #0
	strh	r3, [r2]
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009218

.thumb_func_start OvlFunc_968_20094f4
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x35
	beq	.L150a
	b	.L1612
.L150a:
	ldr	r0, =0x986
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1612
	ldr	r0, =0x986
	bl	__SetFlag
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L152e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.L152e:
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xce
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0x58
	bl	__Func_80921c4
	mov	r1, #0xce
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0x68
	bl	__Func_80921c4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x2691
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xce
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0x58
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L15fe
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.L15fe:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
.L1612:
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_20094f4
