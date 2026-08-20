	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_923_200996c
	push	{r5, r6, lr}
	mov	r0, #0x94
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm923_1a26
	mov	r0, #0x94
	lsl	r0, #2
	bl	__SetFlag
	bl	__CutsceneStart
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0x88
	mov	r2, #0x90
	str	r5, [r0, #0x18]
	lsl	r1, #16
	mov	r0, #3
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x80
	lsl	r1, #7
	mov	r0, #3
	mov	r2, #0xa
	bl	__Func_8092adc
	ldr	r5, =iwram_3001ebc
	ldr	r3, =0x201
	ldr	r2, [r5]
	mov	r6, #0xe0
	lsl	r6, #1
	str	r3, [r2, r6]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #3
	mov	r1, #0
	bl	__MapActor_Face
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x48
	mov	r1, #0x88
	mov	r0, #3
	bl	__MapActor_TravelToAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r0, #3
	mov	r1, #0
	bl	__MapActor_SetPos
	ldr	r0, =0x872
	bl	__SetFlag
	ldr	r2, [r5]
	mov	r3, #0x81
	lsl	r3, #2
	str	r3, [r2, r6]
	bl	__CutsceneEnd
.Lm923_1a26:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_923_200996c

	.section .mdata2, "aw", %progbits
	.global gScript_923__0200a820
gScript_923__0200a820:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2820, (0x2874-0x2820)
	.global gScript_884__0200a874
	.global gScript_923__0200a874
gScript_884__0200a874:
gScript_923__0200a874:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2874, (0x28c8-0x2874)
	.global gScript_923__0200a8c8
gScript_923__0200a8c8:
	.incbin "overlays/rom_7aa430/orig.bin", 0x28c8, (0x291c-0x28c8)
