	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_934_20095cc
	push	{r5, lr}
	sub	sp, #0x20
	bl	__CutsceneStart
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_934_2008758
	cmp	r0, #0
	beq	.Lm934_168a
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r3, [r5, #0xc]
	ldr	r2, [r5, #8]
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	bl	OvlFunc_934_20088ec
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #7
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0x10
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xb
	bl	__MapActor_TravelBy
	mov	r0, #0x2d
	bl	__CutsceneWait
	mov	r0, #0xf0
	bl	__PlaySound
	mov	r1, #8
	mov	r0, #0xb
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	ldr	r2, [r5, #0x10]
	mov	r1, #0
	asr	r2, #20
	str	r3, [sp]
	str	r1, [sp, #4]
	mov	r3, #4
	sub	r2, #1
	mov	r0, #0
	mov	r1, #0xd
	bl	OvlFunc_934_2008528
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x14
	bne	.Lm934_165c
	ldr	r0, =0x205
	bl	__SetFlag
	b	.Lm934_168a
.Lm934_165c:
	mov	r0, #0x81
	lsl	r0, #2
	bl	__SetFlag
	mov	r3, #0x10
	mov	r5, #0xe
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x11
	mov	r2, #2
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0xf
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
.Lm934_168a:
	bl	__CutsceneEnd
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_934_20095cc

	.section .mdata1, "aw", %progbits
	.global .Lm934_1f00
.Lm934_1f00:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1f00, (0x1f60-0x1f00)
