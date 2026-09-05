	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BabisPalace_MapInit
	push	{r5, r6, r7, lr}
	mov	r0, #1
	sub	sp, #0x20
	bl	__Func_80118c0
	mov	r0, #2
	bl	__Func_80118c0
	mov	r0, #4
	bl	__Func_80118c0
	ldr	r6, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r5, r6, r1
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #0x5a
	bne	.Lm952_40e4
	ldr	r0, =0x962
	bl	__SetFlag
	ldrh	r2, [r5]
.Lm952_40e4:
	lsl	r3, r2, #16
	mov	r2, #0xb6
	lsl	r2, #15
	cmp	r3, r2
	bne	.Lm952_40fc
	ldr	r0, =0x962
	bl	__SetFlag
	mov	r0, #0x95
	lsl	r0, #4
	bl	__SetFlag
.Lm952_40fc:
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r6, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8b
	cmp	r2, r3
	bne	.Lm952_410e
	b	.Lm952_430e
.Lm952_410e:
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xb
	bne	.Lm952_411c
	ldr	r0, =0x12f
	bl	__ClearFlag
.Lm952_411c:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm952_41e6
	ldr	r0, =0xf31
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm952_4140
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm952_419e
.Lm952_4140:
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r1, r0
	mov	r2, r1
	add	r2, #0x5c
	mov	r3, #1
	strb	r3, [r2]
	mov	r3, r1
	add	r3, #0x55
	strb	r5, [r3]
	mov	r3, #0x80
	ldr	r6, [r1, #0x50]
	lsl	r3, #11
	str	r3, [r1, #0xc]
	mov	r3, r6
	add	r3, #0x27
	strb	r5, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	mov	r1, #0xc1
	strb	r3, [r6, #9]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__galloc_iwram
	mov	r5, r0
	mov	r0, #0xcd
	bl	__LoadItemIcon
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	ldrb	r0, [r6, #0x1c]
	mov	r1, #0x80
	mov	r2, r5
	bl	__UploadSpriteGFX
	mov	r0, #0x11
	bl	__gfree
.Lm952_419e:
	ldr	r3, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x21
	bne	.Lm952_41d0
	ldr	r0, =0x96f
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm952_41d0
	ldr	r0, =0x96f
	bl	__SetFlag
	mov	r1, #0xd0
	mov	r2, #0xb0
	mov	r0, #0xe
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	bl	OvlFunc_952_200a014
.Lm952_41d0:
	mov	r1, #5
	mov	r0, #0xe
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	b	.Lm952_4208
.Lm952_41e6:
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm952_4208
	ldr	r0, =0x966
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm952_4208
	mov	r1, #0xf0
	mov	r2, #0x90
	mov	r0, #0xa
	lsl	r1, #15
	lsl	r2, #15
	bl	__MapActor_SetPos
.Lm952_4208:
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	ldr	r2, =0x209
	add	r3, r1
	str	r2, [r3]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #4
	orr	r3, r2
	mov	r1, #0xe1
	ldr	r2, =gState
	lsl	r1, #1
	strb	r3, [r0]
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0x63
	bne	.Lm952_4288
	add	r0, sp, #0x10
	bl	__Func_80796c4
	cmp	r0, #0
	ble	.Lm952_4262
	add	r7, sp, #0x10
	mov	r6, #0
	mov	r5, r0
.Lm952_4246:
	ldrsh	r0, [r6, r7]
	bl	__GetUnit
	ldrh	r3, [r0, #0x34]
	strh	r3, [r0, #0x38]
	ldrh	r3, [r0, #0x36]
	sub	r5, #1
	strh	r3, [r0, #0x3a]
	ldrsh	r0, [r6, r7]
	bl	__UpdateStatBarPercent
	add	r6, #2
	cmp	r5, #0
	bne	.Lm952_4246
.Lm952_4262:
	mov	r0, #1
	bl	__AddPartyMember
	mov	r0, #2
	bl	__AddPartyMember
	mov	r0, #3
	bl	__AddPartyMember
	bl	__Func_807a7a0
	bl	OvlFunc_952_20097e8
	ldr	r2, =gState
	mov	r3, #0xe1
	lsl	r3, #1
	add	r1, r2, r3
	mov	r3, #8
	strh	r3, [r1]
.Lm952_4288:
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x62
	bne	.Lm952_430e
	mov	r0, sp
	bl	__Func_80796c4
	cmp	r0, #0
	ble	.Lm952_42c2
	mov	r7, sp
	mov	r6, #0
	mov	r5, r0
.Lm952_42a6:
	ldrsh	r0, [r6, r7]
	bl	__GetUnit
	ldrh	r3, [r0, #0x34]
	strh	r3, [r0, #0x38]
	ldrh	r3, [r0, #0x36]
	sub	r5, #1
	strh	r3, [r0, #0x3a]
	ldrsh	r0, [r6, r7]
	bl	__UpdateStatBarPercent
	add	r6, #2
	cmp	r5, #0
	bne	.Lm952_42a6
.Lm952_42c2:
	mov	r0, #1
	bl	__AddPartyMember
	mov	r0, #2
	bl	__AddPartyMember
	mov	r0, #3
	bl	__AddPartyMember
	bl	__Func_807a7a0
	ldr	r0, =0x966
	bl	__SetFlag
	ldr	r0, =0x967
	bl	__SetFlag
	mov	r1, #0xe0
	mov	r2, #0xf0
	mov	r0, #0xa
	lsl	r1, #14
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r1, #0xf0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	bl	OvlFunc_952_2008674
	ldr	r3, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #8
	strh	r3, [r2]
.Lm952_430e:
	mov	r0, #0
	add	sp, #0x20
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end BabisPalace_MapInit

