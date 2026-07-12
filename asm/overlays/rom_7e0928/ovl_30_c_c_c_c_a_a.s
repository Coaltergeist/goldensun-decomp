	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_2008da4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xa2
	sub	r2, #0xc0
	str	r2, [r3]
	lsl	r0, #1
	sub	sp, #0xc
	bl	__SetFlag
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_956_2008658
	bl	__StartTask
	mov	r3, #0x78
	mov	r2, #0x3c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #6
	mov	r2, #8
	mov	r1, #0x3c
	mov	r0, #0x4a
	bl	__Func_8010704
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	mov	r7, r0
	mov	r6, #0x80
	bl	__Actor_SetSpriteFlags
	mov	r3, r7
	add	r3, #0x55
	mov	r5, #0
	lsl	r6, #14
	strb	r5, [r3]
	mov	r0, #0xb
	str	r6, [r7, #0xc]
	bl	__MapActor_GetActor
	mov	r1, #0
	mov	r7, r0
	bl	__Actor_SetSpriteFlags
	mov	r3, r7
	add	r3, #0x55
	strb	r5, [r3]
	mov	r5, #0x80
	lsl	r5, #11
	str	r5, [r7, #0xc]
	ldr	r0, =0x362
	bl	__GetFlag
	cmp	r0, #0
	beq	.Le5a
	mov	r1, #5
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r7, r0
	str	r5, [r7, #0xc]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, #0xd
	mov	r7, r0
	mov	r2, #0xc
	str	r6, [r7, #0xc]
	mov	r0, #0xf
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xc
	b	.Le80
.Le5a:
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	mov	r7, r0
	lsl	r3, #9
	str	r3, [r7, #0x18]
	str	r3, [r7, #0x1c]
	ldr	r0, =0x367
	bl	__GetFlag
	cmp	r0, #0
	beq	.Le8a
	mov	r3, #9
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x18
.Le80:
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.Le9e
.Le8a:
	mov	r3, #9
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x19
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Le9e:
	mov	r0, #0xda
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lf16
	mov	r3, #0xd
	str	r3, [sp]
	mov	r5, #0xc
	mov	r0, #0xf
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #9
	str	r3, [sp]
	mov	r2, #1
	mov	r3, #1
	mov	r1, #0x19
	mov	r0, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	mov	r7, r0
	bl	__Actor_SetSpriteFlags
	mov	r2, r7
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r7, #0xc]
	mov	r3, r7
	add	r3, #0x23
	mov	r5, #2
	strb	r5, [r3]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #0x80
	mov	r7, r0
	lsl	r3, #11
	str	r3, [r7, #0xc]
	mov	r3, r7
	add	r3, #0x23
	strb	r5, [r3]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, #0x80
	mov	r7, r0
	lsl	r3, #14
	str	r3, [r7, #0xc]
.Lf16:
	mov	r0, #0xdc
	lsl	r0, #2
	bl	__GetFlagByte
	mov	r6, r0
	cmp	r6, #0
	bne	.Lf26
	mov	r6, #0x13
.Lf26:
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r2, #0x80
	mov	r7, r0
	lsl	r2, #12
	lsl	r3, r6, #20
	add	r3, r2
	mov	r2, r7
	str	r3, [r7, #8]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	sub	r2, #0x32
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0x12
	mov	r5, #0xb
	str	r3, [sp]
	mov	r0, #0x12
	mov	r1, #0xa
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x11
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__Func_8010704
	mov	r5, #0xf
.Lf6c:
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0x10]
	mov	r0, #0
	bl	__Func_8011f54
	ldr	r3, [r7, #0xc]
	cmp	r3, #0
	bne	.Lfc8
	cmp	r0, #0
	bne	.Lfc8
	mov	r2, r7
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, r7
	add	r3, #0x55
	strb	r0, [r3]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	ldr	r3, [r7, #0x10]
	ldr	r2, [r7, #8]
	asr	r3, #20
	asr	r2, #20
	add	r3, #0x34
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Lfc8:
	add	r5, #1
	cmp	r5, #0x11
	ble	.Lf6c
	ldr	r0, =0x361
	bl	__GetFlag
	cmp	r0, #0
	beq	.L104a
	mov	r3, #0
	mov	r9, r3
	mov	r2, #2
	mov	r3, #0xb
	mov	r5, #0x12
	mov	r8, r2
	mov	r6, #0x21
	mov	r10, r3
.Lfe8:
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	mov	r2, r8
	strb	r2, [r3]
	mov	r1, #2
	bl	__Actor_SetAnim
	add	r0, r5, #5
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	mov	r2, r8
	strb	r2, [r3]
	mov	r2, r9
	add	r3, #0x32
	strb	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r7, #0xc]
	mov	r1, #0xa
	bl	__Actor_SetAnim
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0x4a
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	add	r5, #1
	str	r6, [sp]
	bl	__Func_8010704
	add	r6, #2
	cmp	r5, #0x16
	ble	.Lfe8
	mov	r0, #0x1c
	mov	r1, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0x1c
	bl	__Func_809ad90
	b	.L108a
.L104a:
	mov	r2, #0
	mov	r5, #0x12
	mov	r8, r2
	mov	r6, #2
.L1052:
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	strb	r6, [r3]
	add	r0, r5, #5
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	strb	r6, [r3]
	mov	r2, r8
	add	r3, #0x32
	strb	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #14
	add	r5, #1
	str	r3, [r7, #0xc]
	cmp	r5, #0x16
	ble	.L1052
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_956_200804c
	lsl	r1, #4
	bl	__StartTask
.L108a:
	mov	r0, #0xd8
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L10b2
	mov	r0, #0x1d
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r3, #0x31
	mov	r2, #0x3d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x3d
	mov	r2, #1
	mov	r3, #4
	bl	__Func_8010704
.L10b2:
	ldr	r0, =0x363
	bl	__GetFlag
	cmp	r0, #0
	beq	.L10f4
	mov	r0, #1
	bl	__Func_80118c0
	mov	r0, #0x1e
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r2, r7
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =0x46a0000
	str	r3, [r7, #8]
	mov	r3, #0xb8
	lsl	r3, #16
	str	r3, [r7, #0x10]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r7
	mov	r1, #3
	bl	__Actor_SetAnim
	ldr	r1, =ActorCmd_ARRAY_956__0200cbec
	mov	r0, r7
	bl	__Actor_SetScript
	b	.L10fa
.L10f4:
	mov	r0, #2
	bl	__Func_80118c0
.L10fa:
	ldr	r0, =0x369
	bl	__GetFlag
	cmp	r0, #0
	beq	.L116c
	mov	r0, #0x1f
	bl	__MapActor_GetActor
	mov	r1, #8
	mov	r7, r0
	bl	__Actor_SetAnim
	mov	r2, r7
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0xa
	mov	r5, #0x54
	str	r3, [sp, #4]
	mov	r0, #0x56
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0xc
	str	r3, [sp, #4]
	mov	r0, #0x56
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	b	.L11a0

	.pool_aligned

.L116c:
	mov	r0, #0x1f
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	mov	r2, #9
	asr	r3, #20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x55
	mov	r1, #9
	mov	r2, #1
	mov	r3, #4
	bl	__Func_8010704
	ldr	r3, [r7, #8]
	mov	r2, #0x3d
	asr	r3, #20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x55
	mov	r1, #9
	mov	r2, #1
	mov	r3, #4
	bl	__Func_8010704
.L11a0:
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	mov	r6, #0
	add	r3, #0x55
	mov	r5, #2
	strb	r6, [r3]
	sub	r3, #0x32
	strb	r5, [r3]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x55
	strb	r6, [r3]
	sub	r3, #0x32
	strb	r5, [r3]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x55
	strb	r6, [r3]
	sub	r3, #0x32
	strb	r5, [r3]
	mov	r0, #8
	mov	r1, #9
	bl	__MapActor_SetAnim
	ldr	r5, =gState
	mov	r2, #0xf9
	lsl	r2, #1
	add	r3, r5, r2
	strb	r6, [r3]
	mov	r1, #3
	mov	r0, #0x27
	bl	OvlFunc_common1_1608
	mov	r1, #0x11
	mov	r0, #0x28
	bl	OvlFunc_common1_1608
	mov	r0, #8
	mov	r1, #2
	bl	__Func_8092950
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #4
	bls	.L1216
	b	.L1350
.L1216:
	ldr	r2, =.L1220
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1220:
	.word	.L1234
	.word	.L12d6
	.word	.L1308
	.word	.L131e
	.word	.L133a
.L1234:
	mov	r2, #0xc0
	lsl	r2, #16
	str	r2, [sp]
	mov	r2, #0x27
	str	r2, [sp, #4]
	mov	r3, #0xbd
	mov	r2, #0x28
	str	r2, [sp, #8]
	lsl	r3, #19
	mov	r1, #8
	mov	r2, #6
	mov	r0, #0
	bl	OvlFunc_common1_1ecc
	mov	r3, #5
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0x7f
	bl	__Func_8010788
	mov	r0, #0x20
	bl	__DeleteFieldActor
	mov	r0, #0x21
	bl	__DeleteFieldActor
	mov	r0, #0x22
	bl	__DeleteFieldActor
	mov	r0, #0x23
	bl	__DeleteFieldActor
	mov	r0, #0x24
	bl	__DeleteFieldActor
	mov	r0, #0x25
	bl	__DeleteFieldActor
	mov	r0, #0x26
	bl	__DeleteFieldActor
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L12b6
	mov	r0, #0x11
	bl	__PlaySound
	mov	r0, #0
	bl	OvlFunc_common1_78
	bl	OvlFunc_common1_0
	mov	r0, #1
	mov	r1, #0
	bl	__MapActor_SetExtra
	mov	r0, #3
	bl	OvlFunc_common1_ea0
.L12b6:
	mov	r0, #1
	mov	r1, #0
	bl	__MapActor_SetExtra
	mov	r0, #2
	mov	r1, #0
	bl	__MapActor_SetExtra
	mov	r0, #3
	mov	r1, #0
	bl	__MapActor_SetExtra
	ldr	r0, =0xe6
	bl	OvlFunc_common1_1fb4
	b	.L1350
.L12d6:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_common1_148
	bl	__StartTask
	mov	r0, #0x27
	bl	__DeleteFieldActor
	mov	r0, #0x28
	bl	__DeleteFieldActor
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1350
	bl	OvlFunc_common1_0
	mov	r0, #1
	bl	OvlFunc_common1_78
	mov	r0, #0
	bl	OvlFunc_common1_ea0
	b	.L1350
.L1308:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1350
	mov	r0, #0x20
	bl	OvlFunc_956_2009a0c
	bl	OvlFunc_common1_488
	b	.L1350
.L131e:
	mov	r0, #1
	bl	OvlFunc_956_2009474
	mov	r0, #4
	bl	__Func_8091e9c
	mov	r0, #0x95
	lsl	r0, #4
	bl	__SetFlag
	ldr	r0, =0x951
	bl	__SetFlag
	b	.L1350
.L133a:
	mov	r0, #1
	neg	r0, r0
	bl	OvlFunc_956_2009474
	mov	r0, #5
	bl	__Func_8091e9c
	mov	r0, #0x95
	lsl	r0, #4
	bl	__SetFlag
.L1350:
	mov	r0, #0
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_956_2008da4
