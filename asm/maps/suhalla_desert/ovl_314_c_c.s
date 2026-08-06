	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_960_2008b24
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r6, r1
	ldr	r3, [r3]
	mov	r1, #0xc1
	lsl	r1, #1
	add	r2, r3, r1
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #0x63
	bne	.Lm960_b3e
	mov	r3, #0
	strh	r3, [r2]
.Lm960_b3e:
	ldr	r0, =0x20f
	bl	__ClearFlag
	ldr	r3, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa4
	cmp	r2, r3
	bne	.Lm960_b60
	ldr	r2, =0x2f9
	add	r0, r6, r2
	bl	__SetFlag
	b	.Lm960_b6e
.Lm960_b60:
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.Lm960_b6e
	ldr	r3, =0x309
	add	r0, r6, r3
	bl	__SetFlag
.Lm960_b6e:
	mov	r0, #0x84
	lsl	r0, #2
	mov	r1, #0
	bl	__SetFlagByte
	mov	r0, #0x62
	mov	r1, #5
	bl	__StartMapBattle
	ldr	r1, =gState
	ldr	r3, =0x22b
	add	r2, r1, r3
	mov	r3, #3
	strb	r3, [r2]
	mov	r5, r1
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.Lm960_bc6
	cmp	r6, #0xb
	bne	.Lm960_baa
	mov	r0, #0x62
	mov	r1, #7
	bl	__StartMapBattle
	b	.Lm960_bc6
.Lm960_baa:
	cmp	r6, #0xc
	bne	.Lm960_bc6
	mov	r1, #6
	mov	r0, #0x62
	bl	__StartMapBattle
	mov	r0, #0xc
	bl	__MapActor_SetIdle
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm960_bc6:
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r5, r2
	ldr	r0, [r3]
	bl	__MapActor_GetActor
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008b24

.thumb_func_start OvlFunc_960_2008c00
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x86
	lsl	r0, #2
	bl	__GetFlagByte
	ldr	r5, =gState
	mov	r1, #0xfa
	lsl	r1, #1
	add	r5, r1
	mov	r6, r0
	ldr	r0, [r5]
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r8, r0
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r1, r1
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #0xdb
	bl	__PlaySound
	ldr	r0, [r5]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r2, r8
	mov	r3, #0
	add	r2, #0x55
	strb	r3, [r2]
	mov	r2, r7
	add	r2, #0x55
	strb	r3, [r2]
	str	r3, [r7, #0x28]
	add	r2, #0xc
	mov	r3, #1
	strb	r3, [r2]
	mov	r2, r8
	add	r2, #0x61
	strb	r3, [r2]
	ldr	r6, =0x3333
	mov	r5, #0x3b
.Lm960_c6c:
	ldr	r3, [r7, #0x28]
	add	r3, r6
	str	r3, [r7, #0x28]
	mov	r2, r8
	ldr	r3, [r2, #0x28]
	add	r3, r6
	str	r3, [r2, #0x28]
	mov	r0, #1
	sub	r5, #1
	bl	__WaitFrames
	cmp	r5, #0
	bge	.Lm960_c6c
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	bl	__CutsceneEnd
	mov	r0, #0x91
	lsl	r0, #1
	bl	__SetFlag
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.Lm960_cc2
	mov	r0, #0x86
	lsl	r0, #2
	bl	__GetFlagByte
	cmp	r0, #0xb
	bne	.Lm960_cc2
	ldr	r0, =2
	mov	r1, #0x4d
	bl	__SetDestMap
	b	.Lm960_cca
.Lm960_cc2:
	ldr	r0, =2
	mov	r1, #0x1b
	bl	__SetDestMap
.Lm960_cca:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008c00

.thumb_func_start OvlFunc_960_2008ce4
	push	{lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #0x3f
	and	r3, r2
	lsl	r3, #16
	lsr	r2, r3, #16
	cmp	r2, #0x1f
	bls	.Lm960_cfc
	ldr	r3, .Lm960_d14	@ 0x40
	sub	r3, r2
	lsl	r3, #16
.Lm960_cfc:
	lsr	r3, #17
	add	r3, #7
	lsl	r1, r3, #5
	lsl	r2, r3, #10
	orr	r2, r1
	orr	r3, r2
	lsl	r3, #16
	ldr	r2, =0x500019e
	lsr	r3, #16
	strh	r3, [r2]
	b	.Lm960_d20

	.align	2, 0
.Lm960_d14:
	.word	0x40
	.pool

.Lm960_d20:
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008ce4

.thumb_func_start OvlFunc_960_2008d24
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa5
	sub	sp, #8
	cmp	r2, r3
	bne	.Lm960_dae
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, #0xe
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r3, #0xf
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #0x10
	mov	r1, #0x2c
	mov	r2, #1
	bl	__Func_8010704
	mov	r0, #0x64
	mov	r1, #0
	mov	r2, #0
	bl	__Func_808edac
	mov	r3, #0x7f
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0xc
	mov	r1, #0x47
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #0xc
	mov	r2, #0x47
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x47
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0xb
	bl	__Func_8010704
	ldr	r0, =OvlFunc_960_2008ce4
	bl	__StopTask
	ldr	r3, =.Lm960_1a00
	ldrh	r2, [r3]
	ldr	r3, =0x500019e
	strh	r2, [r3]
.Lm960_dae:
	add	sp, #8
	pop	{r1}
	bx	r1
.func_end OvlFunc_960_2008d24

.thumb_func_start OvlFunc_960_2008dc8
	push	{r5, lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa5
	sub	sp, #8
	cmp	r2, r3
	bne	.Lm960_e48
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x55
	mov	r1, #0xf8
	mov	r2, #0xb2
	strb	r5, [r0]
	lsl	r1, #16
	mov	r0, #0xe
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r3, #0xf
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #0x1f
	mov	r1, #0x5f
	mov	r2, #1
	bl	__Func_8010704
	mov	r1, #1
	mov	r2, #1
	mov	r0, #0x64
	neg	r1, r1
	neg	r2, r2
	bl	__Func_808edac
	bl	__Func_808ee0c
	mov	r3, #0xc
	mov	r2, #0x47
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x7f
	mov	r1, #0x7f
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_960_2008ce4
	lsl	r1, #4
	bl	__StartTask
.Lm960_e48:
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_960_2008dc8

.thumb_func_start SuhallaDesert_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa6
	cmp	r2, r3
	bne	.Lm960_e74
	ldr	r0, =.Lm960_19c4
	b	.Lm960_e76
.Lm960_e74:
	ldr	r0, =.Lm960_17b4
.Lm960_e76:
	pop	{r1}
	bx	r1
.func_end SuhallaDesert_GetEvents

.thumb_func_start SuhallaDesert_MapInit
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e70
	mov	r1, #0xe0
	ldr	r7, [r3]
	ldr	r3, [r3, #0x4c]
	lsl	r1, #1
	ldr	r2, =0x201
	add	r3, r1
	mov	r0, #0x84
	str	r2, [r3]
	lsl	r0, #2
	bl	__GetFlagByte
	cmp	r0, #0
	beq	.Lm960_ec0
	ldr	r3, =gState
	mov	r1, #0xf9
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #2
	mov	r1, #0xc8
	strb	r3, [r2]
	ldr	r0, =OvlFunc_960_2008400
	lsl	r1, #4
	bl	__StartTask
.Lm960_ec0:
	ldr	r5, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r6, =0xa4
	cmp	r2, r6
	beq	.Lm960_ed8
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.Lm960_ee4
.Lm960_ed8:
	ldr	r2, =0x500019e
	ldr	r3, =.Lm960_1a00
	ldrh	r2, [r2]
	strh	r2, [r3]
	bl	OvlFunc_960_2008d24
.Lm960_ee4:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	cmp	r2, r6
	bne	.Lm960_ef8
	bl	OvlFunc_960_2008f50
	b	.Lm960_f0c
.Lm960_ef8:
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.Lm960_f04
	bl	OvlFunc_960_2009094
	b	.Lm960_f0c
.Lm960_f04:
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
.Lm960_f0c:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.Lm960_f24
	ldrh	r2, [r7, #0x14]
	ldr	r3, =0xfdff
	and	r3, r2
	strh	r3, [r7, #0x14]
.Lm960_f24:
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end SuhallaDesert_MapInit

.thumb_func_start OvlFunc_960_2008f50
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	mov	r8, r0
	ldr	r0, =0x301
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm960_f6a
	ldr	r0, =0x206
	bl	__SetFlag
.Lm960_f6a:
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm960_f7a
	ldr	r0, =0x207
	bl	__SetFlag
.Lm960_f7a:
	ldr	r0, =0x303
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm960_f8c
	mov	r0, #0x82
	lsl	r0, #2
	bl	__SetFlag
.Lm960_f8c:
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm960_f9e
	ldr	r0, =0x209
	bl	__SetFlag
.Lm960_f9e:
	ldr	r0, =0x305
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm960_fae
	ldr	r0, =0x20a
	bl	__SetFlag
.Lm960_fae:
	mov	r7, #0x80
	mov	r6, #8
	lsl	r7, #4
.Lm960_fb4:
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm960_fd6
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm960_fce
	str	r7, [r5, #0x18]
	str	r7, [r5, #0x1c]
.Lm960_fce:
	ldr	r3, [r5, #0x50]
	mov	r2, #0
	add	r3, #0x26
	strb	r2, [r3]
.Lm960_fd6:
	add	r6, #1
	cmp	r6, #0xc
	ble	.Lm960_fb4
	ldr	r6, =gDMATaskCount
	ldr	r5, =REG_IME
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.Lm960_1008
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x3f42
	add	r3, #4
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDCNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lm960_1008:
	strh	r1, [r5]
	mov	r0, #0xd0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm960_1020
	mov	r3, #0x10
	mov	r0, #0xf4
	mov	r8, r3
	bl	__Func_8091ff0
.Lm960_1020:
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r3, [r6]
	cmp	r3, #0x1f
	bgt	.Lm960_1050
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	mov	r0, r8
	strh	r3, [r6]
	mov	r3, #0x10
	lsl	r2, #2
	sub	r3, r0
	add	r2, r6
	lsl	r3, #8
	add	r2, #4
	orr	r3, r0
	stmia	r2!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2]
.Lm960_1050:
	strh	r1, [r5]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008f50

.thumb_func_start OvlFunc_960_2009094
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	mov	r8, r0
	ldr	r0, =0x311
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm960_10ae
	ldr	r0, =0x206
	bl	__SetFlag
.Lm960_10ae:
	ldr	r0, =0x312
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm960_10be
	ldr	r0, =0x207
	bl	__SetFlag
.Lm960_10be:
	ldr	r0, =0x313
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm960_10d0
	mov	r0, #0x82
	lsl	r0, #2
	bl	__SetFlag
.Lm960_10d0:
	mov	r7, #0x80
	mov	r6, #8
	lsl	r7, #4
.Lm960_10d6:
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm960_10fa
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm960_10f0
	str	r7, [r5, #0x18]
	str	r7, [r5, #0x1c]
.Lm960_10f0:
	ldr	r0, [r5, #0x50]
	mov	r2, r0
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
.Lm960_10fa:
	add	r6, #1
	cmp	r6, #0xa
	ble	.Lm960_10d6
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm960_1128
	ldr	r0, [r5, #0x50]
	ldr	r2, [r0, #0x28]
	cmp	r2, #0
	beq	.Lm960_1118
	mov	r3, #0xa
	strb	r3, [r2, #5]
.Lm960_1118:
	mov	r1, r0
	mov	r2, #1
	add	r1, #0x25
	strb	r2, [r1]
	mov	r2, r0
	mov	r3, #0
	add	r2, #0x26
	strb	r3, [r2]
.Lm960_1128:
	ldr	r0, =0x315
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm960_1138
	ldr	r0, =0x9b7
	bl	__SetFlag
.Lm960_1138:
	ldr	r6, =gDMATaskCount
	ldr	r5, =REG_IME
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.Lm960_1164
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x3f42
	add	r3, #4
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDCNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lm960_1164:
	strh	r1, [r5]
	mov	r0, #0xd0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm960_117c
	mov	r3, #0x10
	mov	r0, #0xf4
	mov	r8, r3
	bl	__Func_8091ff0
.Lm960_117c:
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r3, [r6]
	cmp	r3, #0x1f
	bgt	.Lm960_11ac
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	mov	r0, r8
	strh	r3, [r6]
	mov	r3, #0x10
	lsl	r2, #2
	sub	r3, r0
	add	r2, r6
	lsl	r3, #8
	add	r2, #4
	orr	r3, r0
	stmia	r2!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2]
.Lm960_11ac:
	strh	r1, [r5]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2009094

	.section .data
	.global gOvl_020095c0
	.global .Lm960_15f8
	.global .Lm960_1610
	.global gScript_930__020096b8
	.global .Lm960_1790
	.global gScript_960__020097a8
	.global .Lm960_1458
	.global gOvl_02009488
	.global .Lm960_14d0
	.global .Lm960_1548

	.incbin "overlays/rom_7eaf28/orig.bin", 0x1430, (0x1458-0x1430)
.Lm960_1458:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x1458, (0x1488-0x1458)
gOvl_02009488:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x1488, (0x14d0-0x1488)
.Lm960_14d0:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x14d0, (0x1548-0x14d0)
.Lm960_1548:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x1548, (0x15c0-0x1548)
gOvl_020095c0:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x15c0, (0x15f8-0x15c0)
.Lm960_15f8:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x15f8, (0x1610-0x15f8)
.Lm960_1610:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x1610, (0x16b8-0x1610)
gScript_930__020096b8:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x16b8, (0x1790-0x16b8)
.Lm960_1790:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x1790, (0x17a8-0x1790)
gScript_960__020097a8:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x17a8, (0x17b4-0x17a8)
.Lm960_17b4:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x17b4, (0x19c4-0x17b4)
.Lm960_19c4:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x19c4, (0x1a00-0x19c4)
.Lm960_1a00:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x1a00
