	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_2008d5c
	push	{r5, r6, r7, lr}
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm882_d6c
	b	.Lm882_e96
.Lm882_d6c:
	bl	__CutsceneStart
	mov	r0, #0x83
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm882_e2e
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0x80
	mov	r5, r0
	mov	r2, #0x80
	mov	r0, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	ldr	r6, [r5, #0x50]
	bl	__Func_8012330
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r7, r5
	mov	r0, #0x28
	bl	__WaitFrames
	add	r7, #0x23
	mov	r0, #0x91
	bl	__PlaySound
	ldrb	r2, [r7]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r7]
	ldrb	r2, [r6, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	mov	r2, #0xe9
	strb	r3, [r6, #9]
	mov	r0, #0xb
	ldr	r1, =0x1d90000
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	mov	r2, #0xf0
	ldr	r3, [r5, #0xc]
	lsl	r2, #16
	add	r3, r2
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	ldr	r3, =0x6666
	mov	r1, #0xac
	mov	r2, #0xe9
	lsl	r1, #1
	str	r3, [r5, #0x44]
	mov	r0, #0xb
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	ldrb	r3, [r6, #9]
	mov	r2, #0xc
	orr	r3, r2
	ldrb	r2, [r7]
	strb	r3, [r6, #9]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r7]
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	bl	__MapActor_PlayPendingSound
	mov	r0, #0x83
	lsl	r0, #4
	bl	__SetFlag
.Lm882_e2e:
	bl	OvlFunc_882_2008ec4
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x837
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm882_e92
	ldr	r0, =0x841
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm882_e92
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm882_e92
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #16
	cmp	r3, r2
	ble	.Lm882_e82
	ldr	r5, =0x396
	mov	r0, #0xa3
	lsl	r0, #1
	mov	r1, r5
	bl	OvlFunc_882_2009a64
	mov	r0, #0
	ldr	r1, =0x123
	mov	r2, r5
	bl	__MapActor_TravelToAnimWait
	b	.Lm882_e8a
.Lm882_e82:
	ldr	r0, =0x14f
	ldr	r1, =0x3bd
	bl	OvlFunc_882_2009a64
.Lm882_e8a:
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__SetFlag
.Lm882_e92:
	bl	__CutsceneEnd
.Lm882_e96:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2008d5c

