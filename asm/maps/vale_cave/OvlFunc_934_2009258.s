	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_934_2009258
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm934_12f0
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm934_12f0
	ldr	r0, =0x201
	bl	__SetFlag
	ldr	r0, =0x302
	bl	__SetFlag
	bl	__CutsceneStart
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xbe
	mov	r2, #0x8c
	mov	r0, #8
	lsl	r1, #2
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xbe
	mov	r2, #0x9c
	mov	r0, #8
	lsl	r1, #2
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc6
	mov	r2, #0x9c
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_934_2008cf8
	str	r3, [r0, #0x6c]
	bl	__CutsceneEnd
.Lm934_12f0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_934_2009258

	.section .mdata2, "aw", %progbits
	.global .Lm934_2234
	.global .Lm934_22c4
	.global .Lm934_239c
	.global .Lm934_1f6c
	.global .Lm934_1f9c
	.global .Lm934_2014
	.global .Lm934_2134

.Lm934_1f6c:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1f6c, (0x1f9c-0x1f6c)
.Lm934_1f9c:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1f9c, (0x2014-0x1f9c)
.Lm934_2014:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2014, (0x2134-0x2014)
.Lm934_2134:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2134, (0x21dc-0x2134)
	.global gOvl_0200a1dc
gOvl_0200a1dc:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x21dc, (0x2234-0x21dc)
.Lm934_2234:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x2234, (0x22c4-0x2234)
.Lm934_22c4:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x22c4, (0x239c-0x22c4)
.Lm934_239c:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x239c, (0x2414-0x239c)
