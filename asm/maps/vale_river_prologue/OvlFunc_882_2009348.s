	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_2009348
	push	{r5, lr}
	ldr	r0, =0x313
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm882_1356
	b	.Lm882_1458
.Lm882_1356:
	bl	__CutsceneStart
	ldr	r0, =0x833
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm882_13e8
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0x80
	mov	r5, r0
	mov	r2, #0x80
	mov	r0, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0x28
	bl	__WaitFrames
	mov	r0, #0x91
	bl	__PlaySound
	mov	r1, #0xed
	mov	r0, #0xe
	lsl	r1, #17
	ldr	r2, =0x47b0000
	bl	__MapActor_SetPos
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	mov	r2, #0x90
	ldr	r3, [r5, #0xc]
	lsl	r2, #15
	add	r3, r2
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	mov	r3, #0x80
	lsl	r3, #8
	mov	r1, #0xd8
	str	r3, [r5, #0x44]
	lsl	r1, #1
	ldr	r2, =0x47b
	mov	r0, #0xe
	bl	__MapActor_TravelToAnimWait
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
	ldr	r0, =0x833
	bl	__SetFlag
.Lm882_13e8:
	bl	OvlFunc_882_2009498
	ldr	r0, =0x313
	bl	__SetFlag
	ldr	r0, =0x837
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm882_1454
	ldr	r0, =0x841
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm882_1454
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm882_1454
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0x479ffff
	ldr	r3, [r0, #0x10]
	cmp	r3, r2
	bgt	.Lm882_143a
	mov	r0, #0xce
	mov	r1, #0x8c
	lsl	r0, #1
	lsl	r1, #3
	bl	OvlFunc_882_2009a64
	mov	r1, #0xcf
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x42c
	bl	__MapActor_TravelToAnimWait
	b	.Lm882_144c
.Lm882_143a:
	ldr	r0, =0x1bd
	ldr	r1, =0x494
	bl	OvlFunc_882_2009a64
	mov	r0, #0
	ldr	r1, =0x1bf
	ldr	r2, =0x4cb
	bl	__MapActor_TravelToAnimWait
.Lm882_144c:
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__SetFlag
.Lm882_1454:
	bl	__CutsceneEnd
.Lm882_1458:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2009348

