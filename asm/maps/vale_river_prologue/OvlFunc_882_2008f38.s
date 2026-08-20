	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_2008f38
	push	{r5, lr}
	ldr	r0, =0x311
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm882_f46
	b	.Lm882_1070
.Lm882_f46:
	bl	__CutsceneStart
	ldr	r0, =0x831
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm882_1002
	mov	r0, #0xc
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
	mov	r2, #0xca
	mov	r0, #0xc
	ldr	r1, =0x17d0000
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	mov	r2, #0x80
	ldr	r3, [r5, #0xc]
	lsl	r2, #17
	add	r3, r2
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	mov	r3, #0x80
	lsl	r3, #8
	mov	r1, #0x91
	str	r3, [r5, #0x44]
	ldr	r2, =0x341
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_8092b08
	mov	r1, #0x81
	mov	r2, #0xd5
	lsl	r2, #2
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_8092b08
	mov	r2, #0xda
	mov	r1, #0xe0
	lsl	r2, #2
	mov	r0, #0xc
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
	ldr	r0, =0x831
	bl	__SetFlag
.Lm882_1002:
	bl	OvlFunc_882_20090a4
	ldr	r0, =0x311
	bl	__SetFlag
	ldr	r0, =0x837
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm882_106c
	ldr	r0, =0x841
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm882_106c
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm882_106c
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #16
	cmp	r3, r2
	ble	.Lm882_1050
	ldr	r1, =0x34b
	mov	r0, #0xdb
	bl	OvlFunc_882_2009a64
	mov	r0, #0
	mov	r1, #0xb3
	ldr	r2, =0x33d
	bl	__MapActor_TravelToAnimWait
	b	.Lm882_1064
.Lm882_1050:
	mov	r1, #0xe3
	lsl	r1, #2
	mov	r0, #0xd6
	bl	OvlFunc_882_2009a64
	mov	r0, #0
	mov	r1, #0xdb
	ldr	r2, =0x38f
	bl	__MapActor_TravelToAnimWait
.Lm882_1064:
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__SetFlag
.Lm882_106c:
	bl	__CutsceneEnd
.Lm882_1070:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2008f38

