	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808d9a4  @ 0x0808d9a4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	ldr	r3, =gState
	mov	r0, #0xfa
	lsl	r0, #1
	mov	r5, r8
	add	r3, r0
	sub	r5, #0xf2
	ldr	r6, [r3]
	cmp	r5, #5
	bhi	.L8d9e6
	bl	ResetPlayerSpeed
	ldr	r3, =gScript_0809e680
	ldrb	r3, [r3, r5]
	ldr	r0, =0x928
	mov	r8, r3
	add	r0, r8
	mov	r1, #1
	bl	_Func_801776c
	ldr	r0, =0x948
	mov	r1, #1
	add	r0, r8
	bl	_Func_801776c
	b	.L8dd72
.L8d9e6:
	mov	r0, #3
	mov	r1, r8
	bl	FindMapActorEvent
	mov	r7, r0
	cmp	r7, #0
	bne	.L8d9f6
	b	.L8dd5a
.L8d9f6:
	ldr	r3, [r7]
	asr	r5, r3, #4
	mov	r3, #0x1f
	mov	r2, #6
	ldrsh	r1, [r7, r2]
	and	r5, r3
	ldrh	r2, [r7, #4]
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r2
	mov	r10, r1
	cmp	r3, #0
	bne	.L8da2c
	cmp	r5, #0
	beq	.L8da2c
	bl	ResetPlayerSpeed
	ldr	r0, =0x928
	mov	r1, #1
	add	r0, r5, r0
	bl	_Func_801776c
	mov	r0, #0xa1
	lsl	r0, #1
	bl	_SetFlag
	b	.L8da34
.L8da2c:
	mov	r0, #0xa1
	lsl	r0, #1
	bl	_ClearFlag
.L8da34:
	ldr	r2, [r7, #8]
	mov	r3, #0xf0
	lsl	r3, #20
	and	r3, r2
	cmp	r3, #0
	bne	.L8da4e
	ldr	r3, =0xfff00000
	mov	r0, #0x80
	and	r3, r2
	lsl	r0, #15
	cmp	r3, r0
	bne	.L8da9a
	b	.L8da82
.L8da4e:
	mov	r0, r10
	bl	Func_808d428
	cmp	r0, #0
	beq	.L8da68
	ldr	r3, =gState
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	ldr	r0, [r3]
	ldr	r3, [r7, #8]
	bl	_call_via_r3
.L8da68:
	mov	r0, #0xa1
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.L8da76
	b	.L8dd6a
.L8da76:
	ldr	r0, =0x948
	mov	r1, #1
	add	r0, r5, r0
	bl	_Func_801776c
	b	.L8dd6a
.L8da82:
	mov	r0, r10
	bl	Func_808d428
	cmp	r0, #0
	beq	.L8da90
	ldrh	r0, [r7, #8]
	b	.L8da92
.L8da90:
	ldr	r0, =0x976
.L8da92:
	mov	r1, #1
	bl	_Func_801776c
	b	.L8dd6a
.L8da9a:
	bl	CutsceneStart
	mov	r0, r10
	bl	Func_808d428
	cmp	r0, #0
	bne	.L8daaa
	b	.L8dd46
.L8daaa:
	ldr	r1, [r7, #8]
	mov	r3, #0xf0
	lsl	r3, #12
	mov	r0, #0x80
	and	r3, r1
	lsl	r0, #9
	mov	r2, #1
	cmp	r3, r0
	bne	.L8dac2
	cmp	r6, #7
	bgt	.L8dac2
	mov	r2, #0
.L8dac2:
	cmp	r2, #0
	bne	.L8dac8
	b	.L8dd3c
.L8dac8:
	ldr	r2, =0x1ff
	ldr	r3, [r7]
	and	r3, r2
	mov	r11, r2
	cmp	r3, #0x13
	bne	.L8dadc
	mov	r0, r8
	bl	Func_808ece0
	ldr	r1, [r7, #8]
.L8dadc:
	ldr	r3, =0xfff00000
	mov	r0, #0xc0
	and	r3, r1
	lsl	r0, #14
	cmp	r3, r0
	bne	.L8db98
	ldr	r3, [r7]
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0x13
	bne	.L8daf8
	mov	r0, r8
	bl	Func_808ed1c
.L8daf8:
	mov	r0, r8
	bl	Func_808ed4c
	mov	r6, r0
	bl	Func_808f0d8
	mov	r0, #0x53
	bl	_PlaySound
	ldrh	r0, [r7, #8]
	mov	r1, #5
	bl	_Func_8019908
	ldr	r5, =0x970
	mov	r1, #3
	mov	r0, r5
	bl	_Func_801776c
	mov	r1, #0
	ldr	r0, =0x3e7
	bl	Func_808c2dc
	mov	r0, #1
	bl	_Func_801ef08
	mov	r0, #0x7e
	bl	_PlaySound
	add	r0, r5, #1
	mov	r1, #1
	bl	_Func_801776c
	bl	_Func_801f5d4
	mov	r1, #2
	mov	r0, r6
	bl	_Actor_SetAnim
	mov	r0, #0xf6
	bl	_PlaySound
	add	r5, #2
	mov	r0, #0x1e
	bl	CutsceneWait
	mov	r0, r5
	mov	r1, #1
	bl	_Func_801776c
	mov	r0, r8
	bl	Func_808ed78
	mov	r2, #1
	neg	r2, r2
	cmp	r10, r2
	bne	.L8db6a
	b	.L8dd50
.L8db6a:
	mov	r0, r10
	bl	_SetFlag
	b	.L8dd50

	.pool_aligned

.L8db98:
	mov	r0, #0xa0
	lsl	r0, #15
	cmp	r3, r0
	bne	.L8dc18
	ldr	r3, =iwram_3001ebc
	ldr	r5, [r3]
	ldr	r3, [r7]
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0x13
	bne	.L8dbb4
	mov	r0, r8
	bl	Func_808ec8c
.L8dbb4:
	mov	r2, #1
	neg	r2, r2
	cmp	r10, r2
	beq	.L8dbd0
	ldr	r2, .L8dbf8	@ 0x1000
	mov	r1, r10
	orr	r1, r2
	ldr	r3, =gState
	mov	r0, #0x8d
	lsl	r0, #2
	mov	r10, r1
	add	r3, r0
	mov	r2, r10
	strh	r2, [r3]
.L8dbd0:
	ldrh	r1, [r7, #8]
	mov	r0, #0x63
	bl	GetEncounterGroup
	mov	r1, #0xbe
	lsl	r1, #1
	add	r3, r5, r1
	strh	r0, [r3]
	ldr	r5, =gState
	ldr	r3, =0x22b
	add	r2, r5, r3
	mov	r3, #2
	strb	r3, [r2]
	ldrh	r1, [r7, #8]
	mov	r0, #0x63
	bl	Func_808b320
	mov	r0, #0xf7
	b	.L8dc08

	.align	2, 0
.L8dbf8:
	.word	0x1000
	.pool

.L8dc08:
	lsl	r0, #1
	add	r3, r5, r0
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	_PlaySound
	ldr	r0, =0x973
	b	.L8dd3e
.L8dc18:
	mov	r2, #0x80
	lsl	r2, #14
	cmp	r3, r2
	bne	.L8dc80
	ldr	r3, =gState
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	mov	r1, #0
	bl	Func_808ef70
	mov	r5, r0
	mov	r0, #0x1e
	bl	WaitFrames
	ldr	r3, [r7]
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0x13
	bne	.L8dc48
	mov	r0, r8
	bl	Func_808ed1c
.L8dc48:
	mov	r0, r5
	bl	Func_808f0d8
	mov	r0, #0x53
	bl	_PlaySound
	ldrh	r0, [r7, #8]
	mov	r1, #5
	bl	_Func_8019908
	ldr	r0, =0x969
	mov	r1, #3
	bl	_Func_801776c
	ldrh	r0, [r7, #8]
	bl	_AddCoins
	mov	r2, #1
	neg	r2, r2
	cmp	r10, r2
	beq	.L8dc78
	mov	r0, r10
	bl	_SetFlag
.L8dc78:
	mov	r0, r5
	bl	_DeleteActor
	b	.L8dd50
.L8dc80:
	ldr	r3, =ewram_2000434
	ldr	r2, =0xfff
	ldr	r0, [r3]
	and	r1, r2
	bl	Func_808ef70
	mov	r9, r0
	mov	r0, #0x1e
	bl	WaitFrames
	ldrh	r0, [r7, #8]
	bl	_GiveItem
	mov	r3, #1
	mov	r6, r0
	neg	r3, r3
	ldr	r5, =0xffff
	cmp	r6, r3
	bne	.L8dcde
	ldr	r0, [r7, #8]
	ldr	r1, =0xfff
	and	r0, r1
	mov	r1, #2
	bl	_Func_8019908
	ldr	r5, =0x968
	mov	r1, #1
	mov	r0, r5
	add	r5, #4
	bl	_Func_801776c
	mov	r0, r5
	mov	r1, #1
	bl	_Func_801776c
	mov	r0, r9
	bl	DeleteMapActorPtr
	ldr	r3, [r7]
	mov	r2, r11
	and	r3, r2
	cmp	r3, #0x13
	bne	.L8dd50
	mov	r0, r8
	bl	Func_808ec50
	b	.L8dd50
.L8dcde:
	ldr	r3, [r7]
	mov	r0, r11
	and	r3, r0
	cmp	r3, #0x13
	bne	.L8dcee
	mov	r0, r8
	bl	Func_808ed1c
.L8dcee:
	mov	r0, r9
	bl	Func_808f0d8
	mov	r0, #0x53
	bl	_PlaySound
	ldr	r0, [r7, #8]
	mov	r1, #2
	and	r0, r5
	bl	_Func_8019908
	ldr	r1, =ewram_2000434
	ldr	r3, [r1]
	cmp	r6, r3
	bne	.L8dd16
	ldr	r0, =0x96a
	mov	r1, #3
	bl	_Func_801776c
	b	.L8dd26
.L8dd16:
	mov	r0, r6
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x96b
	mov	r1, #3
	bl	_Func_801776c
.L8dd26:
	mov	r2, #1
	neg	r2, r2
	cmp	r10, r2
	beq	.L8dd34
	mov	r0, r10
	bl	_SetFlag
.L8dd34:
	mov	r0, r9
	bl	_DeleteActor
	b	.L8dd50
.L8dd3c:
	ldr	r0, =0x96f
.L8dd3e:
	mov	r1, #1
	bl	_Func_801776c
	b	.L8dd50
.L8dd46:
	ldr	r0, =0x948
	mov	r1, #1
	add	r0, r5, r0
	bl	_Func_801776c
.L8dd50:
	bl	CutsceneEnd
	bl	MapActor_PlayPendingSound
	b	.L8dd6a
.L8dd5a:
	ldr	r0, =0x92d
	mov	r1, #1
	bl	_Func_801776c
	ldr	r0, =0x94d
	mov	r1, #1
	bl	_Func_801776c
.L8dd6a:
	mov	r0, #0xa1
	lsl	r0, #1
	bl	_ClearFlag
.L8dd72:
	mov	r0, #0
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808d9a4

